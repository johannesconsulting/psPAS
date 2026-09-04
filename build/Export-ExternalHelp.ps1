[CmdletBinding()]
param()

$repositoryRoot = Split-Path -Parent $PSScriptRoot
$modulePath = Join-Path $repositoryRoot 'psPAS\psPAS.psd1'
$moduleName = [System.IO.Path]::GetFileNameWithoutExtension($modulePath)
$markdownPath = Join-Path $repositoryRoot 'docs\collections\_commands\*.md'
$outputFolder = Join-Path $repositoryRoot 'psPAS\en-US'
$stagingFolder = Join-Path ([System.IO.Path]::GetTempPath()) "psPAS-help-$([guid]::NewGuid().ToString('N'))"

try {
	Import-Module $modulePath -Force -ErrorAction Stop
	Import-Module Microsoft.PowerShell.PlatyPS -Force -ErrorAction Stop

	$markdownFiles = @(Measure-PlatyPSMarkdown -Path $markdownPath | Where-Object FileType -match 'CommandHelp')
	if ($markdownFiles.Count -eq 0) {
		throw 'No command help markdown files were found.'
	}

	$commandHelp = @($markdownFiles | Import-MarkdownCommandHelp -Path { $_.FilePath })
	New-Item -Path $stagingFolder -ItemType Directory -Force | Out-Null
	$commandHelp | Export-MamlCommandHelp -OutputFolder $stagingFolder -Force | Out-Null

	$generatedPath = Get-ChildItem -Path $stagingFolder -Recurse -Filter "$moduleName-Help.xml" -File |
		Select-Object -First 1 -ExpandProperty FullName
	if (-not $generatedPath) {
		throw "Microsoft.PowerShell.PlatyPS did not generate $moduleName-Help.xml."
	}

	$xml = New-Object System.Xml.XmlDocument
	$xml.PreserveWhitespace = $true
	$xml.Load($generatedPath)
	$namespaces = New-Object System.Xml.XmlNamespaceManager($xml.NameTable)
	$namespaces.AddNamespace('command', 'http://schemas.microsoft.com/maml/dev/command/2004/10')
	$namespaces.AddNamespace('maml', 'http://schemas.microsoft.com/maml/2004/10')
	$namespaces.AddNamespace('dev', 'http://schemas.microsoft.com/maml/dev/2004/10')

	$examples = @($xml.SelectNodes('//command:example', $namespaces))
	$repairedExamples = 0
	foreach ($example in $examples) {
		$paragraphs = @($example.SelectNodes('./maml:introduction/maml:para', $namespaces))
		$markdown = ($paragraphs | ForEach-Object { $_.InnerText }) -join "`n`n"
		$match = [regex]::Match($markdown, '(?ms)\A\s*```[^\r\n]*\r?\n(?<code>.*?)\r?\n```\s*(?<remarks>.*)\z')
		if (-not $match.Success) {
			$title = $example.SelectSingleNode('./maml:title', $namespaces).InnerText
			throw "Could not identify the code fence for $title."
		}

		$codeNode = $example.SelectSingleNode('./dev:code', $namespaces)
		$codeNode.InnerText = $match.Groups['code'].Value.Trim()

		$introductionNode = $example.SelectSingleNode('./maml:introduction', $namespaces)
		while ($introductionNode.HasChildNodes) {
			$introductionNode.RemoveChild($introductionNode.FirstChild) | Out-Null
		}

		$remarksNode = $example.SelectSingleNode('./dev:remarks', $namespaces)
		while ($remarksNode.HasChildNodes) {
			$remarksNode.RemoveChild($remarksNode.FirstChild) | Out-Null
		}

		foreach ($remark in ($match.Groups['remarks'].Value.Trim() -split '\r?\n\r?\n' | Where-Object { $_.Trim() })) {
			$remarkNode = $xml.CreateElement('maml', 'para', $namespaces.LookupNamespace('maml'))
			$remarkNode.InnerText = $remark.Trim()
			$remarksNode.AppendChild($remarkNode) | Out-Null
		}

		$repairedExamples++
	}

	if ($repairedExamples -ne $examples.Count) {
		throw "Repaired $repairedExamples of $($examples.Count) examples."
	}

	$xml.Save($generatedPath)
	$nonEmptyCodeNodes = @($xml.SelectNodes('//command:example/dev:code[string-length(normalize-space(.)) > 0]', $namespaces)).Count
	if ($nonEmptyCodeNodes -ne $examples.Count) {
		throw "Only $nonEmptyCodeNodes of $($examples.Count) examples contain code after repair."
	}

	New-Item -Path $outputFolder -ItemType Directory -Force | Out-Null
	Move-Item -LiteralPath $generatedPath -Destination (Join-Path $outputFolder "$moduleName-Help.xml") -Force
	Write-Output "Exported $($examples.Count) examples from $($markdownFiles.Count) command help files."
}
finally {
	if (Test-Path -LiteralPath $stagingFolder) {
		Remove-Item -LiteralPath $stagingFolder -Recurse -Force
	}
}
# .ExternalHelp psPAS-help.xml
function Get-PASAccountActivity {
	[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSReviewUnusedParameter', '', Justification = 'False Positive')]
	[CmdletBinding()]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[Alias('id')]
		[string]$AccountID

	)

	begin {
		Assert-VersionRequirement -RequiredVersion 13.2
	}#begin

	process {

		#URL for Request
		$URI = "$($psPASSession.BaseURI)/api"

		#Create request URL
		$URI = "$URI/Accounts/$($AccountID | Get-EscapedString)/Activities"

		#Send request to web service
		$result = Invoke-PASRestMethod -Uri $URI -Method GET

		if ($null -ne $result) {

			$result = $result.Activities
			$typename = 'psPAS.CyberArk.Vault.Account.Activity.Gen2'

			#Return Results
			$result | Add-ObjectDetail -typename $typename

		}

	}#process

	end { }#end

}
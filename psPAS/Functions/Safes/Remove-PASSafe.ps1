# .ExternalHelp psPAS-help.xml
function Remove-PASSafe {
	[CmdletBinding(SupportsShouldProcess)]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateNotNullOrEmpty()]
		[string]$SafeName

	)

	begin {
		Assert-VersionRequirement -RequiredVersion 12.1
	}#begin

	process {

		#Create URL for request
		$URI = "$($psPASSession.BaseURI)/api/Safes/$($SafeName | Get-EscapedString)"

		if ($PSCmdlet.ShouldProcess($SafeName, 'Delete Safe')) {

			#Send request to web service
			Invoke-PASRestMethod -Uri $URI -Method DELETE

		}

	}#process

	end { }#end

}
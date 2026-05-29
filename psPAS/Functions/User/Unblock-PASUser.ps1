# .ExternalHelp psPAS-help.xml
function Unblock-PASUser {
	[CmdletBinding()]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[int]$id
	)

	begin {
		Assert-VersionRequirement -RequiredVersion 10.10
		$Request = @{'WebSession' = $psPASSession.WebSession }

	}#begin

	process {

		#Create request
		$Request['URI'] = "$($psPASSession.BaseURI)/api/Users/$id/Activate"
		$Request['Method'] = 'POST'

		#send request to web service
		$result = Invoke-PASRestMethod @Request

		if ($null -ne $result) {

			$result | Add-ObjectDetail -typename psPAS.CyberArk.Vault.User

		}

	}#process

	end { }#end

}
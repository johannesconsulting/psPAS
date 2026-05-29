# .ExternalHelp psPAS-help.xml
function Get-PASServerWebService {
	[CmdletBinding()]
	param(
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[Microsoft.PowerShell.Commands.WebRequestSession]$WebSession,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[string]$BaseURI,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[string]$PVWAAppName = 'PasswordVault'

	)

	begin { }#begin

	process {

		#Create URL for request
		$URI = "$BaseURI/$PVWAAppName/API/verify/"

		$Request = @{
			Uri    = $URI
			Method = 'GET'
		}

		if ($PSBoundParameters.ContainsKey('WebSession')) {
			$Request['WebSession'] = $WebSession
		}

		#send request to web service
		$result = Invoke-PASRestMethod @Request

		if ($null -ne $result) {

			#return results
			$result | Select-Object ServerName, ServerId, ApplicationName , AuthenticationMethods, Features

		}

	}#process

	end { }#end

}
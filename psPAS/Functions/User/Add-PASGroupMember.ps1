# .ExternalHelp psPAS-help.xml
function Add-PASGroupMember {
	[CmdletBinding()]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[Alias('ID')]
		[int]$groupId,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[string]$memberId,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateSet('domain', 'vault')]
		[string]$memberType,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[string]$domainName
	)

	begin {
		Assert-VersionRequirement -RequiredVersion 10.6
	}#begin

	process {

		#Create URL for request
		$URI = "$($psPASSession.BaseURI)/API/UserGroups/$groupId/Members"

		#create request body
		$Body = $PSBoundParameters | Get-PASParameter -ParametersToRemove GroupName, groupId | ConvertTo-Json

		#send request to web service
		$result = Invoke-PASRestMethod -Uri $URI -Method POST -Body $Body

		if ($null -ne $result) {

			$result

		}

	}#process

	end { }#end

}
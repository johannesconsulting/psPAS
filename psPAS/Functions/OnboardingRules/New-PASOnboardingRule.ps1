# .ExternalHelp psPAS-help.xml
function New-PASOnboardingRule {
	[CmdletBinding(SupportsShouldProcess)]
	param(

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateLength(1, 99)]
		[string]$TargetPlatformId,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateLength(1, 28)]
		[string]$TargetSafeName,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[boolean]$IsAdminIDFilter,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateSet('Workstation', 'Server')]
		[string]$MachineTypeFilter,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateSet('Windows', 'Unix')]
		[string]$SystemTypeFilter,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateLength(0, 512)]
		[string]$UserNameFilter,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateSet('Equals', 'Begins', 'Ends')]
		[string]$UserNameMethod,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateLength(0, 255)]
		[string]$AddressFilter,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateSet('Equals', 'Begins', 'Ends')]
		[string]$AddressMethod,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateSet('Any', 'Privileged', 'NonPrivileged')]
		[string]$AccountCategoryFilter,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateLength(0, 255)]
		[string]$RuleName,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateLength(0, 255)]
		[string]$RuleDescription
	)

	begin {
		Assert-VersionRequirement -RequiredVersion 10.2
	}#begin

	process {

		#Create URL for request
		$URI = "$($psPASSession.BaseURI)/api/AutomaticOnboardingRules"

		#create request body
		$body = $PSBoundParameters | Get-PASParameter | ConvertTo-Json

		#Set variables for ShouldProcess
		$SafeName = $TargetSafeName
		$PlatformID = $TargetPlatformId

		if ($PSCmdlet.ShouldProcess($SafeName, "Add On-Boarding Rule Using '$PlatformID'")) {

			#send request to web service
			$result = Invoke-PASRestMethod -Uri $URI -Method POST -Body $Body

			if ($null -ne $result) {

				$result | Add-ObjectDetail -typename psPAS.CyberArk.Vault.OnboardingRule

			}

		}

	}#process

	end { }#end

}
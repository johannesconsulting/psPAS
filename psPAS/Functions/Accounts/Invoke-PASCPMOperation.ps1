# .ExternalHelp psPAS-help.xml
function Invoke-PASCPMOperation {
	[System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidUsingPlainTextForPassword', 'ChangeCredsForGroup', Justification = 'Parameter does not hold password')]
	[CmdletBinding(SupportsShouldProcess)]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true
		)]
		[ValidateNotNullOrEmpty()]
		[Alias('id')]
		[string[]]$AccountID,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'VerifyCredentials'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Verify'
		)]
		[switch]$VerifyTask,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Password/Update'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'SetNextPassword'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Change'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ChangeCredentials'
		)]
		[switch]$ChangeTask,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Reconcile'
		)]
		[switch]$ReconcileTask,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'SetNextPassword'
		)]
		[boolean]$ChangeImmediately,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'SetNextPassword'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Password/Update'
		)]
		[securestring]$NewCredentials,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'Change'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Password/Update'
		)]
		[boolean]$ChangeEntireGroup,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'ChangeCredentials'
		)]
		[ValidateSet('Yes', 'No')]
		[string]$ImmediateChangeByCPM,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'ChangeCredentials'
		)]
		[ValidateSet('Yes', 'No')]
		[string]$ChangeCredsForGroup,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'VerifyCredentials'
		)]
		[Alias('UseClassicAPI')]
		[switch]$UseGen1API
	)

	begin {

		#Create hashtable for splatting
		$ThisRequest = @{ }
		$ThisRequest['WebSession'] = $psPASSession.WebSession
		$ThisRequest['Method'] = 'PUT'

		# Determine if multiple AccountIDs were supplied (directly bound, not via pipeline)
		$BulkOperation = $false
		if (Test-IsMultiValue -Value $PSBoundParameters['AccountID']) {

			#Bulk operations not supported by the Gen1 / classic API parameter sets
			if ($PSCmdlet.ParameterSetName -match 'Credentials$') {

				throw 'Bulk operations are not supported when using the Gen1 (classic) API.'

			}

			#Bulk CPM operations require 15.0 or above
			Assert-VersionRequirement -RequiredVersion 15.0

			$BulkOperation = $true

		}

	}#Begin

	process {

		#Get parameters to include in request body
		$boundParameters = $PSBoundParameters |
			Get-PASParameter -ParametersToRemove ImmediateChangeByCPM, AccountID, VerifyTask, ChangeTask, ReconcileTask

		switch ($PSCmdlet.ParameterSetName) {

			'ChangeCredentials' {

				#!Depracated above 13.2
				Assert-VersionRequirement -MaximumVersion 13.2

				#add ImmediateChangeByCPM to header as key=value pair
				$ThisRequest['WebSession'].Headers['ImmediateChangeByCPM'] = $ImmediateChangeByCPM

				#create request body
				$ThisRequest['Body'] = $boundParameters | ConvertTo-Json

			}

			'VerifyCredentials' {

				Assert-VersionRequirement -SelfHosted

				#Empty Body
				$ThisRequest['Body'] = @{ } | ConvertTo-Json

			}

			{ $PSItem -match 'Credentials$' } {

				$URI = "$($psPASSession.BaseURI)/WebServices/PIMServices.svc"
				break

			}

			default {

				#Not using classic API
				#At least version 9.10 required to verify/change/reconcile
				Assert-VersionRequirement -RequiredVersion 9.10

				$URI = "$($psPASSession.BaseURI)/API"

				#verify/change/reconcile method
				$ThisRequest['Method'] = 'POST'

				#deal with NewCredentials SecureString
				if ($PSBoundParameters.ContainsKey('NewCredentials')) {

					#Specifying next password value, or changing in the vault requires 10.1 or above
					Assert-VersionRequirement -RequiredVersion 10.1

					#Include decoded password in request
					$boundParameters['NewCredentials'] = $(ConvertTo-InsecureString -SecureString $NewCredentials)

				}

				if ($BulkOperation) {

					#Build BulkItems array, one entry per supplied AccountID
					$BulkItems = [System.Collections.Generic.List[object]]::new()

					foreach ($id in $AccountID) {

						$Item = @{ accountId = $id }

						#Include any task-specific properties on each bulk item
						foreach ($key in $boundParameters.Keys) {
							$Item[$key] = $boundParameters[$key]
						}

						$BulkItems.Add($Item)

					}

					$ThisRequest['Body'] = @{ 'bulkItems' = $BulkItems } | ConvertTo-Json -Depth 4

				} else {

					#create request body for single account operation
					$ThisRequest['Body'] = $boundParameters | ConvertTo-Json

				}

			}

		}

		if ($BulkOperation) {

			#Bulk request URI uses the parameter set name as the operation segment, suffixed with /Bulk
			$ThisRequest['URI'] = "$URI/Accounts/$($PSCmdlet.ParameterSetName)/Bulk"

			if ($PSCmdlet.ShouldProcess(($AccountID -join ','), "Initiate Bulk CPM $($PSBoundParameters.Keys | Where-Object{$_ -like '*Task'})")) {

				#Send the bulk request to the web service
				Invoke-PASRestMethod @ThisRequest

			}

		} else {

			#Use AccountID + ParameterSet name for required URI
			$ThisRequest['URI'] = "$URI/Accounts/$AccountID/$($PSCmdlet.ParameterSetName)"

			if ($PSCmdlet.ShouldProcess($AccountID, "Initiate CPM $($PSBoundParameters.Keys | Where-Object{$_ -like '*Task'})")) {

				#Send the request to the web service
				Invoke-PASRestMethod @ThisRequest

			}

		}

		if ($ThisRequest['WebSession'].Headers.ContainsKey('ImmediateChangeByCPM')) {

			#Ensure ImmediateChangeByCPM is removed from WebSession Header
			$ThisRequest['WebSession'].Headers.Remove('ImmediateChangeByCPM') | Out-Null

		}

	}#Process

	end { }#End

}

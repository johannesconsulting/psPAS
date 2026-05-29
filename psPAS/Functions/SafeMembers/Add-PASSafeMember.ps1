# .ExternalHelp psPAS-help.xml
function Add-PASSafeMember {
	[CmdletBinding(DefaultParameterSetName = 'Gen2')]
	param(
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ConnectOnly'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ReadOnly'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Approver'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'AccountsManager'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Full'
		)]
		[ValidateNotNullOrEmpty()]
		[string]$SafeName,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ConnectOnly'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ReadOnly'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Approver'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'AccountsManager'
		)]
		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Full'
		)]
		[Alias('UserName')]
		[ValidateNotNullOrEmpty()]
		[ValidateScript( { $_ -notmatch '.*(\?|\&).*' })]
		[string]$MemberName,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ConnectOnly'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ReadOnly'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Approver'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'AccountsManager'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Full'
		)]
		[string]$SearchIn,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ConnectOnly'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ReadOnly'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Approver'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'AccountsManager'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Full'
		)]
		[datetime]$MembershipExpirationDate,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('RestrictedRetrieve')]
		[boolean]$UseAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('Retrieve')]
		[boolean]$RetrieveAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('ListContent')]
		[boolean]$ListAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('Add')]
		[boolean]$AddAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('Update')]
		[boolean]$UpdateAccountContent,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('UpdateMetadata')]
		[boolean]$UpdateAccountProperties,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$InitiateCPMAccountManagementOperations,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$SpecifyNextAccountContent,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('Rename')]
		[boolean]$RenameAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('Delete')]
		[boolean]$DeleteAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('Unlock')]
		[boolean]$UnlockAccounts,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$ManageSafe,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$ManageSafeMembers,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$BackupSafe,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('ViewAudit')]
		[boolean]$ViewAuditLog,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('ViewMembers')]
		[boolean]$ViewSafeMembers,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$requestsAuthorizationLevel1,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$requestsAuthorizationLevel2,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$AccessWithoutConfirmation,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('AddRenameFolder')]
		[boolean]$CreateFolders,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[boolean]$DeleteFolders,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[Alias('MoveFilesAndFolders')]
		[boolean]$MoveAccountsAndFolders,

		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ConnectOnly'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'ReadOnly'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Approver'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'AccountsManager'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Full'
		)]
		[parameter(
			Mandatory = $false,
			ValueFromPipelinebyPropertyName = $true,
			ParameterSetName = 'Gen2'
		)]
		[ValidateNotNullOrEmpty()]
		[ValidateSet('User', 'Group', 'Role')]
		[string]$memberType,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'ConnectOnly'
		)]
		[switch]$ConnectOnly,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'ReadOnly'
		)]
		[switch]$ReadOnly,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'Approver'
		)]
		[switch]$Approver,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'AccountsManager'
		)]
		[switch]$AccountsManager,

		[parameter(
			Mandatory = $true,
			ValueFromPipelinebyPropertyName = $false,
			ParameterSetName = 'Full'
		)]
		[switch]$Full
	)

	begin {

		Assert-VersionRequirement -RequiredVersion 12.1

		#array for parameter names which appear in the top-tier of the JSON object
		$keysToKeep = [Collections.Generic.List[String]]@(
			'MemberName', 'SearchIn', 'MembershipExpirationDate', 'Permissions', 'MemberType'
		)

	}#begin

	process {

		#Get Parameters for request body
		$boundParameters = $PSBoundParameters | Get-PASParameter -ParametersToRemove SafeName, UseGen1API


		switch ($PSCmdlet.ParameterSetName) {

			( { $PSItem -match '^Gen2' -or '^ReadOnly' -or '^ConnectOnly' -or '^Approver' -or '^AccountsManager' -or '^Full' } ) {

				#Create URL for request
				$URI = "$($psPASSession.BaseURI)/api/Safes/$($SafeName | Get-EscapedString)/Members"

				if ($PSBoundParameters.ContainsKey('MemberType')) {

					Assert-VersionRequirement -RequiredVersion 12.6

				}

				if ($PSBoundParameters.ContainsKey('MembershipExpirationDate')) {

					#Convert MembershipExpirationDate to string in Required format
					$Date = Get-Date $MembershipExpirationDate | ConvertTo-UnixTime

					#Include date string in request
					$boundParameters['MembershipExpirationDate'] = $Date

				}

				#Add permissions array to request in correct order
				switch ($PSCmdlet.ParameterSetName) {

					'Gen2' {
						$boundParameters['Permissions'] = $boundParameters | ConvertTo-SortedPermission -Gen2
					}

					'ConnectOnly' {
						$boundParameters['Permissions'] = $boundParameters | ConvertTo-SortedPermission -ConnectOnly
					}

					'ReadOnly' {
						$boundParameters['Permissions'] = $boundParameters | ConvertTo-SortedPermission -ReadOnly
					}

					'Approver' {
						$boundParameters['Permissions'] = $boundParameters | ConvertTo-SortedPermission -Approver
					}

					'AccountsManager' {
						$boundParameters['Permissions'] = $boundParameters | ConvertTo-SortedPermission -AccountsManager
					}

					'Full' {
						$boundParameters['Permissions'] = $boundParameters | ConvertTo-SortedPermission -Full
					}
				}


				#Create required request object
				$body = $boundParameters | Get-PASParameter -ParametersToKeep $keysToKeep | ConvertTo-Json

				break

			}

		}

		#Send request to Web Service
		$result = Invoke-PASRestMethod -Uri $URI -Method POST -Body $Body

		if ($null -ne $result) {

			switch ($PSCmdlet.ParameterSetName) {

				( { $PSItem -match '^Gen2' -or '^ReadOnly' -or '^ConnectOnly' -or '^Approver' -or '^AccountsManager' -or '^Full' } ) {

					$result |
						Select-Object *, @{Name = 'UserName'; 'Expression' = { $PSItem.MemberName } } |
						Add-ObjectDetail -typename psPAS.CyberArk.Vault.Safe.Member.Gen2

					break

				}

			}

		}

	}#process

	end { }#end

}
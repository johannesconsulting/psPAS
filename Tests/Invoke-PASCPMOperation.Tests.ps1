Describe $($PSCommandPath -Replace '.Tests.ps1') {

	BeforeAll {
		#Get Current Directory
		$Here = Split-Path -Parent $PSCommandPath

		#Assume ModuleName from Repository Root folder
		$ModuleName = Split-Path (Split-Path $Here -Parent) -Leaf

		#Resolve Path to Module Directory
		$ModulePath = Resolve-Path "$Here\..\$ModuleName"

		#Define Path to Module Manifest
		$ManifestPath = Join-Path "$ModulePath" "$ModuleName.psd1"

		if ( -not (Get-Module -Name $ModuleName -All)) {

			Import-Module -Name "$ManifestPath" -ArgumentList $true -Force -ErrorAction Stop

		}

		$Script:RequestBody = $null
		$psPASSession = [ordered]@{
			BaseURI            = 'https://SomeURL/SomeApp'
			User               = $null
			ExternalVersion    = [System.Version]'0.0'
			WebSession         = New-Object Microsoft.PowerShell.Commands.WebRequestSession
			StartTime          = $null
			ElapsedTime        = $null
			LastCommand        = $null
			LastCommandTime    = $null
			LastCommandResults = $null
		}

		New-Variable -Name psPASSession -Value $psPASSession -Scope Script -Force

	}


	AfterAll {

		$Script:RequestBody = $null

	}

	InModuleScope $(Split-Path (Split-Path (Split-Path -Parent $PSCommandPath) -Parent) -Leaf ) {


		Context 'Standard Operation' {

			BeforeEach {
				Mock Invoke-PASRestMethod -MockWith { }

				$AccountID = 'SomeID'
				$Password = 'SomePassword' | ConvertTo-SecureString -AsPlainText -Force

				$Script:RequestBody = $null
				$Script:psPASSession.BaseURI = 'https://SomeURL/SomeApp'
				$psPASSession.ExternalVersion = '0.0'
				$psPASSession.WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
			}

			It 'sends verify request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $AccountID -VerifyTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/SomeID/Verify'
				}

			}

			It 'sends verify request using expected method' {

				Invoke-PASCPMOperation -AccountID $AccountID -VerifyTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'POST'
				}

			}

			It 'sends verify request to expected classic api endpoint' {

				Invoke-PASCPMOperation -AccountID $AccountID -VerifyTask -UseClassicAPI

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/WebServices/PIMServices.svc/Accounts/SomeID/VerifyCredentials'
				}

			}

			It 'sends change request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/SomeID/Change'
				}

			}

			It 'sends change request using expected method' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'POST'
				}

			}

			It 'sends change request to expected classic api endpoint' {
				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask -ImmediateChangeByCPM 'Yes' -ChangeCredsForGroup 'No'

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/WebServices/PIMServices.svc/Accounts/SomeID/ChangeCredentials'
				}

			}

			It 'sends change request to classic api using expected method' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask -ImmediateChangeByCPM 'Yes' -ChangeCredsForGroup 'No'

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'PUT'
				}

			}

			It 'sends change request, when specifying value, to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask -ChangeImmediately $true -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/SomeID/SetNextPassword'
				}

			}

			It 'sends change request, when specifying value, with expected method' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask -ChangeImmediately $true -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'POST'
				}

			}

			It 'sends change request, when updating only the vault, to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/SomeID/Password/Update'
				}

			}

			It 'sends change request, when updating only the vault, with expected method' {

				Invoke-PASCPMOperation -AccountID $AccountID -ChangeTask -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'POST'
				}

			}

			It 'sends reconcile request to expected api endpoint' {
				Invoke-PASCPMOperation -AccountID $AccountID -ReconcileTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/SomeID/Reconcile'
				}

			}

			It 'sends reconcile request using expected method' {

				Invoke-PASCPMOperation -AccountID $AccountID -ReconcileTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'POST'
				}

			}

		}

		Context 'Bulk Operation' {

			BeforeEach {
				Mock Invoke-PASRestMethod -MockWith { }

				$BulkAccountIDs = @('Acc1', 'Acc2', 'Acc3')
				$Password = 'SomePassword' | ConvertTo-SecureString -AsPlainText -Force

				$Script:RequestBody = $null
				$Script:psPASSession.BaseURI = 'https://SomeURL/SomeApp'
				$psPASSession.ExternalVersion = '15.0'
				$psPASSession.WebSession = New-Object Microsoft.PowerShell.Commands.WebRequestSession
			}

			It 'sends bulk verify request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -VerifyTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/Verify/Bulk'
				}

			}

			It 'sends bulk verify request using expected method' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -VerifyTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Method -eq 'POST'
				}

			}

			It 'sends bulk verify request with expected body' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -VerifyTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Parsed = $Body | ConvertFrom-Json
					$Parsed.bulkItems.Count -eq 3 -and
					$Parsed.bulkItems[0].accountId -eq 'Acc1' -and
					$Parsed.bulkItems[1].accountId -eq 'Acc2' -and
					$Parsed.bulkItems[2].accountId -eq 'Acc3'
				}

			}

			It 'sends bulk change request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -ChangeTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/Change/Bulk'
				}

			}

			It 'sends bulk change request including ChangeEntireGroup on each item' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -ChangeTask -ChangeEntireGroup $true

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Parsed = $Body | ConvertFrom-Json
					$Parsed.bulkItems.Count -eq 3 -and
					$Parsed.bulkItems[0].ChangeEntireGroup -eq $true -and
					$Parsed.bulkItems[2].ChangeEntireGroup -eq $true
				}

			}

			It 'sends bulk reconcile request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -ReconcileTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/Reconcile/Bulk'
				}

			}

			It 'sends bulk SetNextPassword request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -ChangeTask -ChangeImmediately $true -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/SetNextPassword/Bulk'
				}

			}

			It 'sends bulk SetNextPassword request including credentials on each item' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -ChangeTask -ChangeImmediately $true -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$Parsed = $Body | ConvertFrom-Json
					$Parsed.bulkItems.Count -eq 3 -and
					$Parsed.bulkItems[0].NewCredentials -eq 'SomePassword' -and
					$Parsed.bulkItems[0].changeImmediately -eq $true
				}

			}

			It 'sends bulk Password/Update request to expected api endpoint' {

				Invoke-PASCPMOperation -AccountID $BulkAccountIDs -ChangeTask -NewCredentials $Password

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/Password/Update/Bulk'
				}

			}

			It 'throws when bulk operation requested via Gen1 API' {

				{ Invoke-PASCPMOperation -AccountID $BulkAccountIDs -VerifyTask -UseGen1API } | Should -Throw

			}

			It 'throws when bulk operation requested below required version' {

				$psPASSession.ExternalVersion = '14.6'
				{ Invoke-PASCPMOperation -AccountID $BulkAccountIDs -VerifyTask } | Should -Throw

			}

			It 'sends single (non-bulk) request when only one AccountID supplied' {

				Invoke-PASCPMOperation -AccountID 'OnlyOne' -VerifyTask

				Assert-MockCalled Invoke-PASRestMethod -Times 1 -Scope It -ParameterFilter {

					$URI -eq 'https://SomeURL/SomeApp/API/Accounts/OnlyOne/Verify'
				}

			}

		}

	}

}
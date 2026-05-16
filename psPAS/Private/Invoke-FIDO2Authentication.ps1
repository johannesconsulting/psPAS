function Invoke-FIDO2Authentication {
	<#
	.SYNOPSIS
	Performs FIDO2 authentication using DSInternals.Win32.WebAuthn

	.DESCRIPTION
	Handles the two-step FIDO2 authentication flow:
	1. Request assertion options from CyberArk API
	2. Use FIDO2 device to generate assertion
	3. Submit assertion back to CyberArk API

	.PARAMETER BaseURI
	The base URI for the CyberArk PVWA

	.PARAMETER UserName
	The username for FIDO2 authentication

	.PARAMETER LogonRequest
	Hashtable containing the logon request parameters

	.EXAMPLE
	Invoke-FIDO2Authentication -BaseURI 'https://pvwa.example.com/PasswordVault' -UserName 'administrator' -LogonRequest $request

	.NOTES
	Requires Windows 10 1903+ and the DSInternals.Win32.WebAuthn assembly
	#>
	[CmdletBinding()]
	param(
		[Parameter(Mandatory = $true)]
		[string]$BaseURI,

		[Parameter(Mandatory = $true)]
		[ValidateNotNullOrEmpty()]
		[string]$UserName,

		[Parameter(Mandatory = $false)]
		[hashtable]$LogonRequest
	)

	begin {

		if ((Test-IsCoreCLR) -and -not $IsWindows) {
			throw 'FIDO2 authentication is only supported on Windows platforms'
		}

		$assemblyPath = Join-Path $Script:ModuleRoot 'lib\DSInternals.Win32.WebAuthn.dll'
		if (-not (Test-Path $assemblyPath)) {
			throw "DSInternals.Win32.WebAuthn assembly not found at: $assemblyPath"
		}
		Add-Type -Path $assemblyPath -ErrorAction Stop

		#Base64Url encode a byte array
		$toB64Url = { param([byte[]]$Bytes) [Convert]::ToBase64String($Bytes).Replace('+', '-').Replace('/', '_').TrimEnd('=') }

	}

	process {

		#Passthrough parameters shared with each API call
		$commonParams = @{}
		foreach ($key in 'UseDefaultCredentials', 'SkipCertificateCheck', 'Certificate', 'CertificateThumbprint') {
			if ($LogonRequest -and $LogonRequest.ContainsKey($key)) { $commonParams[$key] = $LogonRequest[$key] }
		}

		#Request assertion options
		$assertionOptions = (Invoke-PASRestMethod @commonParams `
				-Uri "$BaseURI/api/auth/fido/logon" -Method POST `
				-Body (@{ username = $UserName; type = 'fido' } | ConvertTo-Json)).assertionOptions

		#Build allowed credentials list
		$allowCredentials = New-Object 'System.Collections.Generic.List[DSInternals.Win32.WebAuthn.PublicKeyCredentialDescriptor]'
		foreach ($cred in $assertionOptions.allowCredentials) {
			$allowCredentials.Add((New-Object DSInternals.Win32.WebAuthn.PublicKeyCredentialDescriptor -ArgumentList @(
						(ConvertFrom-Base64UrlString -InputString $cred.id),
						[DSInternals.Win32.WebAuthn.AuthenticatorTransport]::NoRestrictions,
						'public-key'
					)))
		}

		#Build CollectedClientData with correct origin (bypasses DSInternals' UriBuilder :80/ issue)
		$clientData = New-Object DSInternals.Win32.WebAuthn.FIDO.CollectedClientData -Property @{
			Type        = 'webauthn.get'
			Challenge   = ConvertFrom-Base64UrlString -InputString $assertionOptions.challenge
			Origin      = "https://$($assertionOptions.rpId)"
			CrossOrigin = $false
		}

		#Get assertion from FIDO2 device
		$assertion = (New-Object DSInternals.Win32.WebAuthn.WebAuthnApi).AuthenticatorGetAssertion(
			$assertionOptions.rpId,
			$clientData,
			[DSInternals.Win32.WebAuthn.UserVerificationRequirement]::Required,
			[DSInternals.Win32.WebAuthn.AuthenticatorAttachment]::Any,
			60000,
			$allowCredentials
		)

		#Build response payload
		$credentialId = & $toB64Url $allowCredentials[0].Id
		$assertionResponse = [ordered]@{
			Id         = $credentialId
			RawId      = $credentialId
			Type       = 'public-key'
			Extensions = @{}
			Response   = [ordered]@{
				AuthenticatorData = & $toB64Url $assertion.AuthenticatorData
				ClientDataJson    = & $toB64Url $assertion.ClientDataJson
				Signature         = & $toB64Url $assertion.Signature
				UserHandle        = if ($assertion.UserHandle.Length) { & $toB64Url $assertion.UserHandle } else { $null }
			}
		}

		$additionalInfo = & $toB64Url ([System.Text.Encoding]::UTF8.GetBytes(($assertionResponse | ConvertTo-Json -Depth 10 -Compress)))

		#Submit assertion
		Invoke-PASRestMethod @commonParams `
			-Uri "$BaseURI/api/auth/fido/logon" -Method POST `
			-Body (@{ userName = $UserName; AdditionalInfo = $additionalInfo } | ConvertTo-Json) `
			-SessionVariable 'FIDOSession'

	}

}

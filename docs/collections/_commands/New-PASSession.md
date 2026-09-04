---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASSession
---

# New-PASSession

## SYNOPSIS

Authenticates a user to Idira (CyberArk) Vault/API.

## SYNTAX

### Gen2 (Default)

```
New-PASSession -BaseURI <string> [-Credential <pscredential>] [-newPassword <securestring>]
 [-type <string>] [-concurrentSession <bool>] [-PVWAAppName <string>] [-SkipVersionCheck]
 [-Certificate <X509Certificate>] [-CertificateThumbprint <string>] [-SkipCertificateCheck]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ISPSS-URL-ServiceUser

```
New-PASSession -Credential <pscredential> -IdentityTenantURL <string> -PrivilegeCloudURL <string>
 -ServiceUser [-PVWAAppName <string>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <string>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ISPSS-Subdomain-ServiceUser

```
New-PASSession -Credential <pscredential> -TenantSubdomain <string> -ServiceUser
 [-PVWAAppName <string>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <string>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ISPSS-URL-IdentityUser

```
New-PASSession -Credential <pscredential> -IdentityTenantURL <string> -PrivilegeCloudURL <string>
 -IdentityUser [-PVWAAppName <string>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <string>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ISPSS-Subdomain-IdentityUser

```
New-PASSession -Credential <pscredential> -TenantSubdomain <string> -IdentityUser
 [-PVWAAppName <string>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <string>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1Radius

```
New-PASSession -Credential <pscredential> -BaseURI <string> -UseGen1API
 -useRadiusAuthentication <bool> [-OTP <string>] [-OTPMode <string>] [-OTPDelimiter <string>]
 [-RadiusChallenge <string>] [-connectionNumber <int>] [-PVWAAppName <string>] [-SkipVersionCheck]
 [-Certificate <X509Certificate>] [-CertificateThumbprint <string>] [-SkipCertificateCheck]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1

```
New-PASSession -Credential <pscredential> -BaseURI <string> -UseGen1API
 [-newPassword <securestring>] [-connectionNumber <int>] [-PVWAAppName <string>] [-SkipVersionCheck]
 [-Certificate <X509Certificate>] [-CertificateThumbprint <string>] [-SkipCertificateCheck]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen2Radius

```
New-PASSession -Credential <pscredential> -BaseURI <string> [-type <string>] [-OTP <string>]
 [-OTPMode <string>] [-OTPDelimiter <string>] [-RadiusChallenge <string>]
 [-concurrentSession <bool>] [-PVWAAppName <string>] [-SkipVersionCheck]
 [-Certificate <X509Certificate>] [-CertificateThumbprint <string>] [-SkipCertificateCheck]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ISPSS-Subdomain-SAML

```
New-PASSession -TenantSubdomain <String> -SAMLResponse <String> [-PVWAAppName <String>]
 [-SkipVersionCheck] [-Certificate <X509Certificate>] [-CertificateThumbprint <String>]
 [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### integrated

```
New-PASSession -BaseURI <string> [-UseDefaultCredentials] [-concurrentSession <bool>]
 [-PVWAAppName <string>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <string>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### shared

```
New-PASSession -BaseURI <string> -UseSharedAuthentication [-PVWAAppName <string>]
 [-SkipVersionCheck] [-Certificate <X509Certificate>] [-CertificateThumbprint <string>]
 [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen2SAML

```
New-PASSession -BaseURI <string> [-SAMLAuth] [-SAMLResponse <string>] [-concurrentSession <bool>]
 [-PVWAAppName <string>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <string>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1SAML

```
New-PASSession -BaseURI <string> -UseGen1API -SAMLResponse <string> [-PVWAAppName <string>]
 [-SkipVersionCheck] [-Certificate <X509Certificate>] [-CertificateThumbprint <string>]
 [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ISPSS-URL-SAML

```
New-PASSession -IdentityTenantURL <String> -PrivilegeCloudURL <String> -SAMLResponse <String>
 [-PVWAAppName <String>] [-SkipVersionCheck] [-Certificate <X509Certificate>]
 [-CertificateThumbprint <String>] [-SkipCertificateCheck] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Facilitates user authentication to an Idira (CyberArk) Vault via a self-hosted PVWA, or to an Idira (CyberArk) Identity Security Platform Shared Services (Privilege Cloud/ISPSS) tenant, and retains an authentication token as well as web request session data to be used in future API calls.

Users can also set a new password via the authentication process.

By default, the Gen2 API is used against a self-hosted PVWA. The -UseGen1API switch parameter exists for legacy environments still running the older Gen1 API endpoint, but is unlikely to be needed today.

To authenticate to a Privilege Cloud/ISPSS tenant, use the TenantSubdomain or IdentityTenantURL/PrivilegeCloudURL parameter sets, together with -IdentityUser, -ServiceUser, or -SAMLResponse to select the authentication flow. These require the IdentityCommand module to be installed; it is a separate dependency (see Related Links) and is not installed automatically alongside psPAS.

Shared authentication is not supported in Privilege Cloud.

On successful authentication, the idle session timeout configured on the server is also retrieved
(see Get-PASSessionTimeout) and stored in the session's IdleTimeout property. This is used by
Get-PASSession to calculate SessionTimeRemaining.

## EXAMPLES

### EXAMPLE 1

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type CyberArk
```

Logon with local CyberArk user credential

### EXAMPLE 2

```
New-PASSession -TenantSubdomain YourTenantName -Credential $Cred -IdentityUser
```

Authenticates to Identity Shared Services using an Identity User and provides an authenticated session to the associated Privilege Cloud environment.

Assumes a Shared Services URL of https://YourTenantName.id.cyberark.cloud

Requires the IdentityCommand module to be installed for the authentication flow to complete.

See: Get-Help IdentityCommand

### EXAMPLE 3

```
New-PASSession -IdentityTenantURL https://SomeTenantName.id.cyberark.cloud -PrivilegeCloudURL https://SomeName.privilegecloud.cyberark.cloud -Credential $Cred -IdentityUser
```

Authenticates to Identity Shared Services using an Identity User and provides an authenticated session to a specified Privilege Cloud environment, specifying explicit URL values for the Identity and Privilege Cloud tenants.

Requires the IdentityCommand module to be installed for the authentication flow to complete.

See: Get-Help IdentityCommand

### EXAMPLE 4

```
New-PASSession -TenantSubdomain PCloudTenantID -Credential $cred -ServiceUser
```

Authenticates to Privilege Cloud Shared Services using an API Service User (OAuth client credentials), where 'PCloudTenantID' is the Subdomain configured for the Privilege Cloud portal.

The subdomain value provided will be used to discover the identity portal URL.

### EXAMPLE 5

```
New-PASSession -IdentityTenantURL 'https://ABC123.id.cyberark.cloud' -PrivilegeCloudURL 'https://XYZ789.privilegecloud.cyberark.cloud' -Credential $cred -ServiceUser
```

Authenticates to Privilege Cloud Shared Services using an API Service User, specifying explicit URL values for the Identity & Privilege Cloud tenants.

### EXAMPLE 6

```
New-PASSession -TenantSubdomain YourTenantName -SAMLResponse $SAMLResponse
```

Exchanges a SAML assertion obtained from a federated identity provider for an authenticated Identity Shared Services session, and provides an authenticated session to the associated Privilege Cloud environment.

Assumes a Shared Services URL of https://YourTenantName.id.cyberark.cloud

Requires the IdentityCommand module to be installed for the authentication flow to complete.

See: Get-Help IdentityCommand

### EXAMPLE 7

```
New-PASSession -IdentityTenantURL https://SomeTenantName.id.cyberark.cloud -PrivilegeCloudURL https://SomeName.privilegecloud.cyberark.cloud -SAMLResponse $SAMLResponse
```

Exchanges a SAML assertion for an authenticated Identity Shared Services session and provides an authenticated session to a specified Privilege Cloud environment, specifying explicit URL values for the Identity and Privilege Cloud tenants.

Requires the IdentityCommand module to be installed for the authentication flow to complete.

See: Get-Help IdentityCommand

### EXAMPLE 8

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type LDAP -concurrentSession $true
```

Logon with LDAP credential, establishing a concurrent session

### EXAMPLE 9

```
New-PASSession -BaseURI https://PVWA -UseDefaultCredentials
```

Logon using Windows Integrated Authentication

### EXAMPLE 10

```
New-PASSession -Credential $cred -BaseURI https://PVWA -UseGen1API
```

Logon to Version 9 with credential Request would be sent to PVWA URL https://PVWA/PasswordVault/

### EXAMPLE 11

```
New-PASSession -Credential $cred -BaseURI https://PVWA -PVWAAppName CustomVault -UseGen1API
```

Logon to Version 9 where PVWA Virtual Directory has non-default name Request would be sent to PVWA URL https://PVWA/CustomVault/

### EXAMPLE 12

```
New-PASSession -UseSharedAuthentication -BaseURI https://PVWA.domain.com
```

Gets authorisation token by authenticating to a CyberArk Vault using shared authentication.

### EXAMPLE 13

```
New-PASSession -UseSharedAuthentication -BaseURI https://pvwa.some.co -CertificateThumbprint 0e194289c57e666115109d6e2800c24fb7db6edb
```

Authenticate with provided CertificateThumbprint when IIS authentication via certificates is required.

### EXAMPLE 14

```
New-PASSession -Credential $cred -BaseURI https://PVWA -UseGen1API -useRadiusAuthentication $True
```

Logon using RADIUS via the Gen1 API

### EXAMPLE 15

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type RADIUS -OTP 123456
```

Logon using RADIUS (Challenge) & OTP (Response)

### EXAMPLE 16

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type RADIUS -OTP push -OTPMode Append
```

Logon to using RADIUS & DUO Push Authentication (working with DUO 2FA Append Mode Configuration)

### EXAMPLE 17

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type RADIUS -OTP 123456 -OTPMode Append -OTPDelimiter $null
```

Logon to using RADIUS & provide password appended with OTP, with no delimiter separating the password & OTP values.

### EXAMPLE 18

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type RADIUS -OTP 123456 -RadiusChallenge Password -OTPMode Challenge
```

For RADIUS, send OTP first and password value as response to challenge.

### EXAMPLE 19

```
New-PASSession -Credential $cred -BaseURI https://PVWA -type Windows -OTP 123456
```

Perform initial Windows authentication and satisfy secondary RADIUS challenge

### EXAMPLE 20

```
Add-Type -AssemblyName System.Security
# Get Valid Certs
$MyCerts = [System.Security.Cryptography.X509Certificates.X509Certificate2[]](Get-ChildItem Cert:\CurrentUser\My)

# Select Cert
$Cert = [System.Security.Cryptography.X509Certificates.X509Certificate2UI]::SelectFromCollection(
    $MyCerts,
    'Choose a certificate',
    'Choose a certificate',
    'SingleSelection'
) | select -First 1

New-PASSession -Credential $cred -BaseURI $url -type PKI -Certificate $Cert
```

Logon with PKI auth, using a selected certificate stored on local machine or smart card + LDAP credentials

### EXAMPLE 21

```
Add-Type -AssemblyName System.Security
# Get Valid Certs
$MyCerts = [System.Security.Cryptography.X509Certificates.X509Certificate2[]](Get-ChildItem Cert:\CurrentUser\My)
# Select Cert
$Cert = [System.Security.Cryptography.X509Certificates.X509Certificate2UI]::SelectFromCollection(
    $MyCerts,
    'Choose a certificate',
    'Choose a certificate',
    'SingleSelection'
) | select -First 1

New-PASSession -BaseURI $url -type PKIPN -Certificate $Cert
```

Logon with PKIPN auth, using a selected certificate stored on smart card.

### EXAMPLE 22

```
New-PASSession -Credential $cred -BaseURI $url -SkipCertificateCheck
```

Skip SSL Certificate validation for the session.

### EXAMPLE 23

```
New-PASSession -BaseURI $url -SAMLAuth
```

Perform saml sso authentication from version 11.4

### EXAMPLE 24

```
New-PASSession -BaseURI $url -SAMLResponse $SAMLResponse
```

Perform saml authentication

Minimum version required 11.4

### EXAMPLE 25

```
import-module -name 'C:\PS-SAML-Interactive.psm1'

$loginURL = 'https://company.okta.com/home/app1/0oa11xddwdzhvlbiZ5d7/aln1k2HsUl5d7'
$baseURL = 'https://pvwa.mycompany.com'

$loginResponse = New-SAMLInteractive -LoginIDP $loginURL

New-PASSession -SAMLAuth -concurrentSession $true -BaseURI $baseURL -SAMLResponse $loginResponse
```

Use the PS-SAML-Interactive module to get the SAML Response.

Perform saml authentication using the SAMLResponse

Minimum version required 11.4

### EXAMPLE 26

```
New-PASSession -SAMLResponse $SAMLToken -UseGen1API -BaseURI https://PVWA.domain.com
```

Authenticates to a CyberArk Vault using SAML authentication & Gen1 API.

## PARAMETERS

### -BaseURI

A string containing the base web address to send the request to.

Pass the PVWA HTTP address.

Do not include "/PasswordVault/"
A string containing the base web address to send the request to.

Pass the PVWA HTTP address.

Do not include "/PasswordVault/"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: integrated
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: shared
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1Radius
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Certificate

See Invoke-WebRequest

Specifies the client certificate that is used for a secure web request.

Enter a variable that contains a certificate or a command or expression that gets the certificate.
See Invoke-WebRequest

Specifies the client certificate that is used for a secure web request.

Enter a variable that contains a certificate or a command or expression that gets the certificate.

```yaml
Type: System.Security.Cryptography.X509Certificates.X509Certificate
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CertificateThumbprint

See Invoke-WebRequest

The thumbprint of the certificate to use for client certificate authentication.
See Invoke-WebRequest

The thumbprint of the certificate to use for client certificate authentication.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -concurrentSession

Enables multiple simultaneous connection sessions as the same user.

Minimum version required 11.3
Enables multiple simultaneous connection sessions as the same user.

Minimum version required 11.3

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2SAML
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: integrated
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- cf
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -connectionNumber

In order to allow more than one connection for the same user simultaneously, each request should be sent with different 'connectionNumber'.

Valid values: 1-100
In order to allow more than one connection for the same user simultaneously, each request should be sent with different 'connectionNumber'.

Valid values: 1-100

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Credential

A Valid PSCredential object.

```yaml
Type: System.Management.Automation.PSCredential
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ISPSS-URL-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-URL-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1Radius
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: true
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IdentityTenantURL

Specify the URL value of the CyberArk Identity Portal to authenticate against.

E.G.:

- https://identity-tenant-id.id.cyberark.cloud
- https://identity-tenant-id.my.idaptive.app
Specify the URL value of the CyberArk Identity Portal to authenticate against.

E.G.:

- https://identity-tenant-id.id.cyberark.cloud

- https://identity-tenant-id.my.idaptive.app

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ISPSS-URL-SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-URL-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-URL-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IdentityUser

Specify switch parameter to authenticate with standard Interactive Identity User.

Authentication process will require use of the IdentityCommand module.

See: Get-Help IdentityCommand.
Specify switch parameter to authenticate with standard Interactive Identity User.

Authentication process will require use of the IdentityCommand module.

See: Get-Help IdentityCommand.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ISPSS-URL-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -newPassword

Optional parameter, enables you to change a CyberArk users password.

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OTP

One Time Passcode, if known, for RADIUS authentication.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OTPDelimiter

The character to use as a delimiter when appending the OTP to the password.

Defaults to comma ",".
The character to use as a delimiter when appending the OTP to the password.

Defaults to comma ",".

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OTPMode

Specify if OTP is to be sent in 'Append' (appended to the password) or 'Challenge' mode (sent in response to RADIUS Challenge).

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PrivilegeCloudURL

Specify the URL value used to access the CyberArk Privilege Cloud API.

E.G.:

- https://subdomain.privilegecloud.cyberark.cloud
Specify the URL value used to access the CyberArk Privilege Cloud API.

E.G.:

- https://subdomain.privilegecloud.cyberark.cloud

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ISPSS-URL-SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-URL-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-URL-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PVWAAppName

The name of the CyberArk PVWA Virtual Directory.

Defaults to PasswordVault
The name of the CyberArk PVWA Virtual Directory.

Defaults to PasswordVault

```yaml
Type: System.String
DefaultValue: PasswordVault
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RadiusChallenge

Specify if Radius challenge is satisfied by 'OTP' or 'Password'.

If "OTP" (Default), Password will be sent first, with OTP as the challenge response.

If "Password", then OTP value will be sent first, and Password will be sent as the challenge response.
Specify if Radius challenge is satisfied by 'OTP' or 'Password'.

If "OTP" (Default), Password will be sent first, with OTP as the challenge response.

If "Password", then OTP value will be sent first, and Password will be sent as the challenge response.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SAMLAuth

Specify to authenticate after retrieval of saml token via SSO.

Minimum version required 11.4
Specify to authenticate after retrieval of saml token via SSO.

Minimum version required 11.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2SAML
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SAMLResponse

SAML response token that identifies the session, encoded in BASE 64.

The PS-SAML-Interactive can be used to get this value (see related links).
SAML response token that identifies the session, encoded in BASE 64.

The PS-SAML-Interactive can be used to get this value (see related links).

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- SAMLToken
ParameterSets:
- Name: ISPSS-URL-SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2SAML
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ServiceUser

Specify switch parameter to authenticate with Identity API Oauth Service User

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ISPSS-URL-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipCertificateCheck

Skips certificate validation checks.

Using this parameter is not secure and is not recommended.

This switch is only intended to be used against known hosts using a self-signed certificate for testing purposes.

Use at your own risk.
Skips certificate validation checks.

Using this parameter is not secure and is not recommended.

This switch is only intended to be used against known hosts using a self-signed certificate for testing purposes.

Use at your own risk.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SkipVersionCheck

If the SkipVersionCheck switch is specified, Get-PASServer will not be called after successfully authenticating.

Get-PASServer is not supported before version 9.7.
If the SkipVersionCheck switch is specified, Get-PASServer will not be called after successfully authenticating.

Get-PASServer is not supported before version 9.7.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TenantSubdomain

The subdomain name value of the Shared Services Privilege Cloud Tenant.

The value provided for the subdomain parameter will be used to discover the identity tenant api URL.

- API operations will target URL: https://<TenantSubdomain>.privilegecloud.cyberark.cloud
- Authentication will be performed against https://<DiscoveredIdentitySubdomain>.id.cyberark.cloud
The subdomain name value of the Shared Services Privilege Cloud Tenant.

The value provided for the subdomain parameter will be used to discover the identity tenant api URL.

- API operations will target URL: https://<TenantSubdomain>.privilegecloud.cyberark.cloud

- Authentication will be performed against https://<DiscoveredIdentitySubdomain>.id.cyberark.cloud

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ISPSS-Subdomain-SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-ServiceUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ISPSS-Subdomain-IdentityUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -type

When using the Gen2 API, specify the type of authentication to use.

Valid values are:

- CyberArk
- LDAP
- Windows (Minimum version required 10.4)
- RADIUS
- PKI
- PKIPN
When using the Gen2 API, specify the type of authentication to use.

Valid values are:

- CyberArk

- LDAP

- Windows (Minimum version required 10.4)

- RADIUS

- PKI

- PKIPN

```yaml
Type: System.String
DefaultValue: CyberArk
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Radius
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseDefaultCredentials

See Invoke-WebRequest

Uses the credentials of the current user to send the web request
See Invoke-WebRequest

Uses the credentials of the current user to send the web request

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: integrated
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Specify to send the authentication request via the Gen1 API endpoint.

Should be specified for versions earlier than 10.4
Specify to send the authentication request via the Gen1 API endpoint.

Should be specified for versions earlier than 10.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- UseClassicAPI
ParameterSets:
- Name: Gen1SAML
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1Radius
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -useRadiusAuthentication

Whether or not users will be authenticated via a RADIUS server.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1Radius
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseSharedAuthentication

Specify the UseSharedAuthentication switch to use the Shared Authentication API endpoint to logon

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: shared
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases:
- wi
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.Management.Automation.PSCredential

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASSession](https://pspas.pspete.dev/commands/New-PASSession)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PrivCloud-SS/Latest/en/Content/ISPSS/ISPSS-API-Authentication.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PrivCloud-SS/Latest/en/Content/ISPSS/ISPSS-API-Authentication.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/CyberArk%20Authentication%20-%20Logon_v10.htm#CyberArkLDAPRadiusWindows](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/CyberArk%20Authentication%20-%20Logon_v10.htm#CyberArkLDAPRadiusWindows)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/SAML](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/SAML_%20Authentication_%20Logon_newgen.htm#SAMLlogon)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Shared%20Logon%20Authentication%20-%20Logon.htm#Sharedlogonauthentication](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Shared%20Logon%20Authentication%20-%20Logon.htm#Sharedlogonauthentication)
- [https://github.com/allynl93/PS-SAML-Interactive](https://github.com/allynl93/PS-SAML-Interactive)
- [https://github.com/pspete/IdentityCommand](https://github.com/pspete/IdentityCommand)

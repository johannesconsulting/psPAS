---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASOpenIDConnectProvider
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASOpenIDConnectProvider
---

# Set-PASOpenIDConnectProvider

## SYNOPSIS

Updates an existing OIDC Identity Provider.

## SYNTAX

### Default (Default)

```
Set-PASOpenIDConnectProvider -id <String> [-authenticationFlow <String>]
 [-authenticationEndpointUrl <String>] [-issuer <String>] [-description <String>]
 [-discoveryEndpointUrl <String>] [-jwkSet <String>] [-clientId <String>]
 [-clientSecret <SecureString>] [-clientSecretMethod <String>] [-userNameClaim <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASOpenIDConnectProvider [-id] <string> [[-authenticationFlow] <string>]
 [[-authenticationEndpointUrl] <string>] [[-issuer] <string>] [[-description] <string>]
 [[-discoveryEndpointUrl] <string>] [[-jwkSet] <string>] [[-clientId] <string>]
 [[-clientSecret] <securestring>] [[-clientSecretMethod] <string>] [[-userNameClaim] <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing OIDC Identity Provider.
Requires membership of Vault Admins group.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-PASOpenIDConnectProvider -id SomeOIDCProvider -discoveryEndpointUrl https://SomeURL -clientId SomeIDValue -clientSecretMethod POST
```

Updates an existing OIDC Identity Provider with ID SomeOIDCProvider.

### EXAMPLE 2

```powershell
Get-PASOpenIDConnectProvider -id AzureAD | Set-PASOpenIDConnectProvider -description "Azure AD - Production"
```

Updates the description of the OIDC Identity Provider "AzureAD", with the id value supplied via the pipeline.

### EXAMPLE 3

```powershell
$ClientSecret = ConvertTo-SecureString "SomeNewSecretValue" -AsPlainText -Force
Set-PASOpenIDConnectProvider -id AzureAD -clientSecret $ClientSecret -clientSecretMethod Basic
```

Rotates the client secret used by the OIDC Identity Provider "AzureAD".

### EXAMPLE 4

```powershell
Set-PASOpenIDConnectProvider -id AzureAD -authenticationFlow Code -userNameClaim upn -WhatIf
```

Shows what would happen if the authentication flow and username claim of the "AzureAD" OIDC Identity Provider were updated, without making the change.

## PARAMETERS

### -authenticationEndpointUrl

The URL of the provider's authorization endpoint.
Authentication requests will be sent to this URL.
The URL of the provider's authorization endpoint.
Authentication requests will be sent to this URL.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -authenticationFlow

The OIDC connection flow.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -clientId

The unique identifier for the client application.
This ID is created by the provider, and assigned to each client application upon registration.
The unique identifier for the client application.
This ID is created by the provider, and assigned to each client application upon registration.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -clientSecret

The client secret is only known to the application and the provider for secure communication during the authentication flow.
This secret is created by the provider, and assigned to each client application upon registration.
The client secret is only known to the application and the provider for secure communication during the authentication flow.
This secret is created by the provider, and assigned to each client application upon registration.

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -clientSecretMethod

The client authentication method for the client secret.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
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
DefaultValue: None
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

### -description

A description of the provider.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -discoveryEndpointUrl

OIDC defines a discovery mechanism, called OpenID Connect Discovery, where an OIDC Identity provider publishes its metadata at a well-known URL.

This URL is metadata that describes the provider's configuration.
OIDC defines a discovery mechanism, called OpenID Connect Discovery, where an OIDC Identity provider publishes its metadata at a well-known URL.

This URL is metadata that describes the provider's configuration.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -id

The unique identifier of the provider.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -issuer

The Issuer Identifier for the OpenID Provider.
Used to verify that the response was issued from a specific provider.
The Issuer Identifier for the OpenID Provider.
Used to verify that the response was issued from a specific provider.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -jwkSet

The JSON web key set provided by the OIDC Identity Provider for validating JSON web tokens during the authentication flow.

The JSON must include a "keys" parameter, which is an array of JWT signing keys.
The JSON web key set provided by the OIDC Identity Provider for validating JSON web tokens during the authentication flow.

The JSON must include a "keys" parameter, which is an array of JWT signing keys.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -userNameClaim

The property in the ID token provided by the OIDC Identity Provider that contains the user name.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: false
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
DefaultValue: None
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

### System.String

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Update-Provider.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Update-Provider.htm)

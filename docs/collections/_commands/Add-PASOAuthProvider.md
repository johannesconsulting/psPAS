---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASOAuthProvider
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASOAuthProvider
---

# Add-PASOAuthProvider

## SYNOPSIS

Adds a new OAuth 2.0 provider.

## SYNTAX

### Default (Default)

```
Add-PASOAuthProvider [[-id] <String>] [[-accessTokenValidationMode] <Int32>]
 [[-introspectionUrl] <String>] [[-issuerUrl] <String>] [[-publicKey] <String>]
 [[-signatureValidationMode] <Int32>] [-allowedUsers] <PSObject[]> [-audience] <String>
 [[-jwksUrl] <String>] [-clientCredentials] <PSObject> [-clientIdClaimType] <String> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASOAuthProvider [[-id] <string>] [[-accessTokenValidationMode] <int>]
 [[-introspectionUrl] <string>] [[-issuerUrl] <string>] [[-publicKey] <string>]
 [[-signatureValidationMode] <int>] [-allowedUsers] <psobject[]> [-audience] <string>
 [[-jwksUrl] <string>] [-clientCredentials] <psobject> [-clientIdClaimType] <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new OAuth 2.0 provider.
Requires membership of Vault Admins group.

## EXAMPLES

### EXAMPLE 1

```powershell
Add-PASOAuthProvider -id SomeOAuthProvider -accessTokenValidationMode 1 -introspectionUrl 'https://as.example.com/oauth2/introspect' -audience 'https://pvwa/passwordvault' -clientIdClaimType sub -clientCredentials @{ accountId = 'acc_12345' } -allowedUsers @( @{ userName = 'vaultuser'; priority = 1 } )
```

Adds an OAuth 2.0 provider named SomeOAuthProvider that validates access tokens remotely.

### EXAMPLE 2

```powershell
Add-PASOAuthProvider -id LocalOAuthProvider -accessTokenValidationMode 2 -issuerUrl 'https://as.example.com' -publicKey '-----BEGIN PUBLIC KEY-----...' -audience 'https://pvwa/passwordvault' -clientIdClaimType sub -clientCredentials @{ accountId = 'acc_12345' }
```

Adds an OAuth 2.0 provider named LocalOAuthProvider that validates access tokens locally.

## PARAMETERS

### -accessTokenValidationMode

How access tokens are validated.
Valid values are 1 (Remotely) or 2 (Locally).
How access tokens are validated.
Valid values are 1 (Remotely) or 2 (Locally).

```yaml
Type: System.Int32
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
AcceptedValues:
- 1
- 2
HelpMessage: ''
```

### -allowedUsers

User accounts used to log in to PVWA when the access token is valid.

```yaml
Type: System.Management.Automation.PSObject[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -audience

Audience (aud) value that must be present in incoming access tokens.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -clientCredentials

Client credentials account used to authenticate to the Authorization Server for token validation.

```yaml
Type: System.Management.Automation.PSObject
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -clientIdClaimType

The access token claim type where the client ID is stored.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: true
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

### -id

The unique identifier (name) of the OAuth provider.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -introspectionUrl

Authorization Server introspection URL used to validate access tokens remotely.
Required when accessTokenValidationMode is 1 (Remotely).
Authorization Server introspection URL used to validate access tokens remotely.
Required when accessTokenValidationMode is 1 (Remotely).

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

### -issuerUrl

Authorization Server issuer URL, used to validate the access token issuer.
Required when accessTokenValidationMode is 2 (Locally).
Authorization Server issuer URL, used to validate the access token issuer.
Required when accessTokenValidationMode is 2 (Locally).

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

### -jwksUrl

JWKS endpoint URL exposing public keys used to validate token signatures.
Required for local validation if publicKey is not provided.
JWKS endpoint URL exposing public keys used to validate token signatures.
Required for local validation if publicKey is not provided.

```yaml
Type: System.String
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

### -publicKey

Public key used to verify the access token signature for local validation.
Required for local validation if jwksUrl is not provided.
Public key used to verify the access token signature for local validation.
Required for local validation if jwksUrl is not provided.

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

### -signatureValidationMode

How strictly to validate token signatures.
Valid values are 1 (AllowStrongSignedOnly) or 2 (AllowSignedOnly).
How strictly to validate token signatures.
Valid values are 1 (AllowStrongSignedOnly) or 2 (AllowSignedOnly).

```yaml
Type: System.Int32
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
AcceptedValues:
- 1
- 2
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.
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

### System.Int32

{{ Fill in the Description }}

### System.Management.Automation.PSObject[]

{{ Fill in the Description }}

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASOAuthProvider](https://pspas.pspete.dev/commands/Add-PASOAuthProvider)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/oauth-add-provider.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/oauth-add-provider.htm)

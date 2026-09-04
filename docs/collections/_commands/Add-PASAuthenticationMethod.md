---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASAuthenticationMethod
---

# Add-PASAuthenticationMethod

## SYNOPSIS

Adds a new authentication method

## SYNTAX

### Default (Default)

```
Add-PASAuthenticationMethod [-id] <String> [[-displayName] <String>] [[-enabled] <Boolean>]
 [[-mobileEnabled] <Boolean>] [[-logoffUrl] <String>] [[-secondFactorAuth] <String>]
 [[-signInLabel] <String>] [[-usernameFieldLabel] <String>] [[-passwordFieldLabel] <String>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASAuthenticationMethod [-id] <string> [[-displayName] <string>] [[-enabled] <bool>]
 [[-mobileEnabled] <bool>] [[-logoffUrl] <string>] [[-secondFactorAuth] <string>]
 [[-signInLabel] <string>] [[-usernameFieldLabel] <string>] [[-passwordFieldLabel] <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new authentication method.

Membership of Vault admins group required.

## EXAMPLES

### EXAMPLE 1

```
Add-PASAuthenticationMethod -id SomeID -displayName SomeAuth -enabled $true
```

Creates new authentication method.

### EXAMPLE 2

```
Add-PASAuthenticationMethod -id RADIUS -displayName "RADIUS Authentication" -enabled $true -secondFactorAuth radius -signInLabel "RADIUS Login" -usernameFieldLabel Username -passwordFieldLabel Passcode
```

Creates a new RADIUS authentication method, enabled for use, with RADIUS configured as the second factor and custom sign-in field labels.

### EXAMPLE 3

```
Add-PASAuthenticationMethod -id SAML -displayName "SAML SSO" -enabled $true -mobileEnabled $false -logoffUrl https://sso.example.com/logoff
```

Creates a new SAML authentication method that is enabled for the desktop client, disabled for the mobile application, and specifies a logoff URL for the third-party identity provider.

### EXAMPLE 4

```
Import-Csv .\AuthenticationMethods.csv | Add-PASAuthenticationMethod
```

Creates a new authentication method for each row in AuthenticationMethods.csv, matching column names to parameters.

## PARAMETERS

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

### -displayName

The display name of the authentication method.

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

### -enabled

Whether or not the authentication method is enabled for use.

```yaml
Type: System.Boolean
DefaultValue: False
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

### -id

The authentication module unique identifier.

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

### -logoffUrl

The logoff page URL of the third-party server.

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

### -mobileEnabled

Whether or not the authentication method is available from the mobile application.

```yaml
Type: System.Boolean
DefaultValue: False
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

### -passwordFieldLabel

Defines the label of the password field for this authentication method.

Relevant only for CyberArk, RADIUS, and LDAP authentication methods.
Defines the label of the password field for this authentication method.

Relevant only for CyberArk, RADIUS, and LDAP authentication methods.

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

### -secondFactorAuth

Defines which second factor authentication to use when connecting to the Vault.

An empty value will disable the second factor authentication.
Defines which second factor authentication to use when connecting to the Vault.

An empty value will disable the second factor authentication.

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

### -signInLabel

Defines the sign-in text for this authentication method.

Relevant only for CyberArk, RADIUS and LDAP authentication methods.
Defines the sign-in text for this authentication method.

Relevant only for CyberArk, RADIUS and LDAP authentication methods.

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

### -usernameFieldLabel

Defines the label of the username field for this authentication method.

Relevant only for CyberArk, RADIUS, and LDAP authentication methods.
Defines the label of the username field for this authentication method.

Relevant only for CyberArk, RADIUS, and LDAP authentication methods.

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

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASAuthenticationMethod](https://pspas.pspete.dev/commands/Add-PASAuthenticationMethod)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Add_Authentication_method.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Add_Authentication_method.htm)

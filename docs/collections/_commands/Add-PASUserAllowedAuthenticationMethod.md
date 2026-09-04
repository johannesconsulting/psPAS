---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASUserAllowedAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASUserAllowedAuthenticationMethod
---

# Add-PASUserAllowedAuthenticationMethod

## SYNOPSIS

Adds allowed authentication methods to multiple Vault users.

## SYNTAX

### Default (Default)

```
Add-PASUserAllowedAuthenticationMethod [-userIds] <Int32[]>
 [-allowedAuthenticationMethods] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASUserAllowedAuthenticationMethod [-userIds] <int[]> [-allowedAuthenticationMethods] <string[]>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds new authentication methods to a list of accounts in a single request.

## EXAMPLES

### Example 1

```powershell
Add-PASUserAllowedAuthenticationMethod -userIds 36,37 -allowedAuthenticationMethods SAML, RADIUS
```

Adds specified authentication methods to specified users

### Example 2

```powershell
Add-PASUserAllowedAuthenticationMethod -userIds 40 -allowedAuthenticationMethods RADIUS
```

Adds the RADIUS authentication method to the user with id 40

### Example 3

```powershell
Add-PASUserAllowedAuthenticationMethod -userIds 36,37,40 -allowedAuthenticationMethods SAML,RADIUS,LDAP -WhatIf
```

Shows what would happen if the SAML, RADIUS & LDAP authentication methods were added to users 36, 37 & 40, without making the change

### Example 4

```powershell
$userIds = 101,102,103,104
Add-PASUserAllowedAuthenticationMethod -userIds $userIds -allowedAuthenticationMethods PKI
```

Adds the PKI authentication method to a list of users held in the $userIds variable

## PARAMETERS

### -allowedAuthenticationMethods

A list of the non-Vault authentication methods (specified by ID) that the users can use to log on.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### -userIds

A list of user IDs to add the allowed authentication methods to

```yaml
Type: System.Int32[]
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

### System.Int32[]

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASUserAllowedAuthenticationMethod](https://pspas.pspete.dev/commands/Add-PASUserAllowedAuthenticationMethod)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulk-add-allowed-auth.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulk-add-allowed-auth.htm)

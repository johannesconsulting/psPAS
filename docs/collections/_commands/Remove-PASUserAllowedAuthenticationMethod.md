---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASUserAllowedAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASUserAllowedAuthenticationMethod
---

# Remove-PASUserAllowedAuthenticationMethod

## SYNOPSIS

Delete allowed authentication methods from multiple users

## SYNTAX

### Default (Default)

```
Remove-PASUserAllowedAuthenticationMethod [-userIds] <Int32[]>
 [-allowedAuthenticationMethods] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASUserAllowedAuthenticationMethod [-userIds] <int[]>
 [-allowedAuthenticationMethods] <string[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes allowed authentication methods from multiple Vault users using a single request.

Requires the Add/Update Users authorizations to be held by the user running the command.

## EXAMPLES

### Example 1

```powershell
Remove-PASUserAllowedAuthenticationMethod -userIds 67,68,69 -allowedAuthenticationMethods LDAP
```

Deletes the LDAP authentication methods from users with ids 67, 68 & 69

### Example 2

```powershell
Remove-PASUserAllowedAuthenticationMethod -userIds 70 -allowedAuthenticationMethods RADIUS
```

Deletes the RADIUS authentication method from the user with id 70

### Example 3

```powershell
Remove-PASUserAllowedAuthenticationMethod -userIds 67,68,69 -allowedAuthenticationMethods LDAP -WhatIf
```

Shows what would happen if the LDAP authentication method was removed from users 67, 68 & 69, without making the change

### Example 4

```powershell
$userIds = 101,102,103,104
Remove-PASUserAllowedAuthenticationMethod -userIds $userIds -allowedAuthenticationMethods SAML,PKI
```

Deletes both the SAML and PKI authentication methods from a list of users held in the $userIds variable

## PARAMETERS

### -allowedAuthenticationMethods

A list of strings of all the non-Vault authentication methods (specified by ID) that the users cannot use to log on.

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

A list of strings of the user IDs from which to delete the allowed authentication methods.

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

- [https://pspas.pspete.dev/commands/Remove-PASUserAllowedAuthenticationMethod](https://pspas.pspete.dev/commands/Remove-PASUserAllowedAuthenticationMethod)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulk-delete-allowed-auth.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulk-delete-allowed-auth.htm)

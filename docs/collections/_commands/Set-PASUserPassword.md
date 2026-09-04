---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASUserPassword
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASUserPassword
---

# Set-PASUserPassword

## SYNOPSIS

Updates a vault user

## SYNTAX

### Default (Default)

```
Set-PASUserPassword [-id] <Int32> [-NewPassword] <SecureString> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASUserPassword [-id] <int> [-NewPassword] <securestring> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing user in the vault

## EXAMPLES

### EXAMPLE 1

```
Set-PASUserPassword -id 123 -NewPassword $SecureString
```

Resets password on account with id 123

### EXAMPLE 2

```
Get-PASUser -search Bob | Set-PASUserPassword -NewPassword $SecureString
```

Finds vault users matching the search term "Bob" and resets the password on each matching account to the value held in $SecureString, using the id value supplied via the pipeline

### EXAMPLE 3

```
Set-PASUserPassword -id 123 -NewPassword $SecureString -WhatIf
```

Shows what would happen if the password was reset for the user with id 123, without making the change

### EXAMPLE 4

```
$NewPassword = ConvertTo-SecureString "NewComplexPassw0rd!" -AsPlainText -Force
Set-PASUserPassword -id 123 -NewPassword $NewPassword
```

Creates a new secure string password value and resets the password for the user with id 123

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

### -id

The name of the user to update in the vault

```yaml
Type: System.Int32
DefaultValue: 0
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

### -NewPassword

The password to set on the account.

Must meet the password complexity requirements
The password to set on the account.

Must meet the password complexity requirements

```yaml
Type: System.Security.SecureString
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

### System.Int32

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASUserPassword](https://pspas.pspete.dev/commands/Set-PASUserPassword)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/reset-user-password.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/reset-user-password.htm)

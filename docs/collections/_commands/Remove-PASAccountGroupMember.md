---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASAccountGroupMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASAccountGroupMember
---

# Remove-PASAccountGroupMember

## SYNOPSIS

Deletes a member of an account group.

## SYNTAX

### Default (Default)

```
Remove-PASAccountGroupMember [-AccountID] <String> [-GroupID] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASAccountGroupMember [-AccountID] <string> [-GroupID] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes an account member from an account group.

This account can be either a password account or an SSH Key account.

The following permissions are required on the safe:
 - Add Accounts
 - Update Account Content
 - Update Account Properties
  -Create Folders

## EXAMPLES

### EXAMPLE 1

```
Remove-PASAccountGroupMember -AccountID 21_7 -GroupID 21_9
```

Removes member with ID of 21_& from account group with ID of 21_9

### EXAMPLE 2

```
Remove-PASAccountGroupMember -AccountID 21_7 -GroupID 21_9 -WhatIf
```

Shows what would happen if the member with ID of 21_7 was removed from account group 21_9, without actually removing it.

### EXAMPLE 3

```
'21_7', '21_8' | ForEach-Object { [PSCustomObject]@{GroupID = '21_9'; AccountID = $_ } } | Remove-PASAccountGroupMember
```

Removes accounts 21_7 and 21_8 as members of account group 21_9, passing GroupID and AccountID values down the pipeline.

## PARAMETERS

### -AccountID

The unique ID of the account group.

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

### -GroupID

The unique ID of the account group.

```yaml
Type: System.String
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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASAccountGroupMember](https://pspas.pspete.dev/commands/Remove-PASAccountGroupMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/DeleteMemberFromAccountGroup.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/DeleteMemberFromAccountGroup.htm)

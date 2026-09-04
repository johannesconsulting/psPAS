---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountGroupMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountGroupMember
---

# Get-PASAccountGroupMember

## SYNOPSIS

Returns all the members of a specific account group.

## SYNTAX

### Default (Default)

```
Get-PASAccountGroupMember [-GroupID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASAccountGroupMember [-GroupID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns all the members of a specific account group.

These accounts can be either password accounts or SSH Key accounts.

The following permissions are required on the safe:
 - Add Accounts
 - Update Account Content
 - Update Account Properties
  -Create Folders

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccountGroupMember -GroupID 21_9
```

List all members of account group with ID of 21_9

### EXAMPLE 2

```
Get-PASAccountGroup -Safe TargetSafe | Get-PASAccountGroupMember
```

Lists the members of every account group in the TargetSafe safe, passing each group's GroupID down the pipeline.

### EXAMPLE 3

```
'21_9', '21_10' | ForEach-Object { Get-PASAccountGroupMember -GroupID $_ }
```

Lists the members of account groups 21_9 and 21_10.

## PARAMETERS

### -GroupID

The unique ID of the account groups.

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

- [https://pspas.pspete.dev/commands/Get-PASAccountGroupMember](https://pspas.pspete.dev/commands/Get-PASAccountGroupMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAccountGroupMembers.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAccountGroupMembers.htm)

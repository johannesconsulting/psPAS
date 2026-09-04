---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASAccountGroupMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASAccountGroupMember
---

# Add-PASAccountGroupMember

## SYNOPSIS

Adds an account as a member of an account group.

## SYNTAX

### Default (Default)

```
Add-PASAccountGroupMember [-GroupID] <String> [-AccountID] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASAccountGroupMember [-GroupID] <string> [-AccountID] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds an account as a member of an account group.

The account can contain either password or SSH key.

The account must be stored in the same safe as the account group.

The following permissions are required on the safe where the account group will be created:
- Add Accounts
- Update Account Content
- Update Account Properties

## EXAMPLES

### EXAMPLE 1

```
Add-PASAccountGroupMember -GroupID $groupID -AccountID $accID
```

Adds account with ID held in $accID to group with ID held in $groupID

### EXAMPLE 2

```
Add-PASAccountGroupMember -GroupID 21_9 -AccountID 21_12
```

Adds the account with ID 21_12 as a member of account group 21_9.

### EXAMPLE 3

```
'19_1', '19_2', '19_3' | ForEach-Object { [PSCustomObject]@{GroupID = '21_9'; AccountID = $_ } } | Add-PASAccountGroupMember
```

Adds accounts 19_1, 19_2 and 19_3 as members of account group 21_9, passing GroupID and AccountID values down the pipeline.

## PARAMETERS

### -AccountID

The ID of the account to add as a member

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

The unique ID of the account group

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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASAccountGroupMember](https://pspas.pspete.dev/commands/Add-PASAccountGroupMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add-account-to-account-group.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add-account-to-account-group.htm)

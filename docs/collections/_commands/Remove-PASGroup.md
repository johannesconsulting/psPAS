---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASGroup
---

# Remove-PASGroup

## SYNOPSIS

Deletes a user group

## SYNTAX

### Default (Default)

```
Remove-PASGroup -ID <Int32> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASGroup [-ID] <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a vault group.

To delete a vault group, the following authorizations are required:
- Add/Update Users

## EXAMPLES

### EXAMPLE 1

```
Remove-PASGroup -GroupID 3
```

Deletes vault group with ID of 3

### EXAMPLE 2

```
Get-PASGroup -groupName "Old Project Team" | Remove-PASGroup
```

Finds the group named "Old Project Team" and deletes it, using the id value supplied via the pipeline

### EXAMPLE 3

```
Remove-PASGroup -ID 3 -WhatIf
```

Shows what would happen if the group with id 3 was deleted, without making the change

### EXAMPLE 4

```
1,2,3 | ForEach-Object { Remove-PASGroup -ID $_ }
```

Deletes the groups with ids 1, 2 & 3

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

### -ID

The Group ID

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases:
- GroupID
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASGroup](https://pspas.pspete.dev/commands/Remove-PASGroup)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Users%20Web%20Services%20-%20Delete%20User%20Group.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Users%20Web%20Services%20-%20Delete%20User%20Group.htm)

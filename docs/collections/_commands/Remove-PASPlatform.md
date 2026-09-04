---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPlatform
---

# Remove-PASPlatform

## SYNOPSIS

Deletes a platform.

## SYNTAX

### targets

```
Remove-PASPlatform -TargetPlatform -ID <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### dependents

```
Remove-PASPlatform -DependentPlatform -ID <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### groups

```
Remove-PASPlatform -GroupPlatform -ID <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### rotationalGroups

```
Remove-PASPlatform -RotationalGroup -ID <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes, target, dependent, group or rotational group platform.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASPlatform -TargetPlatform -ID 9
```

Deletes Target Platform with ID of 9

### EXAMPLE 2

```
Remove-PASPlatform -DependentPlatform -ID 9
```

Deletes Dependent Platform with ID of 9

### EXAMPLE 3

```
Remove-PASPlatform -GroupPlatform -ID 39
```

Deletes Group Platform with ID of 39

### EXAMPLE 4

```
Remove-PASPlatform -RotationalGroup -ID 59
```

Deletes Rotational Group Platform with ID of 59

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

### -DependentPlatform

Specify if ID relates to Dependent platform

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: dependents
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -GroupPlatform

Specify if ID relates to Group platform

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groups
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ID

The unique ID number of the platform to delete.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RotationalGroup

Specify if ID relates to Rotational Group platform

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: rotationalGroups
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TargetPlatform

Specify if ID relates to Target platform

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

PAS 11.4 minimum

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASPlatform](https://pspas.pspete.dev/commands/Remove-PASPlatform)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-target-platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-target-platform.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-dependent-platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-dependent-platform.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-goup-platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-goup-platform.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-rotational-group-platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-delete-rotational-group-platform.htm)

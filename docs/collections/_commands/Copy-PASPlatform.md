---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Copy-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Copy-PASPlatform
---

# Copy-PASPlatform

## SYNOPSIS

Duplicates a platform

## SYNTAX

### targets

```
Copy-PASPlatform -TargetPlatform -ID <int> -name <string> [-description <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### dependents

```
Copy-PASPlatform -DependentPlatform -ID <int> -name <string> [-description <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### groups

```
Copy-PASPlatform -GroupPlatform -ID <int> -name <string> [-description <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### rotationalGroups

```
Copy-PASPlatform -RotationalGroup -ID <int> -name <string> [-description <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Duplicates target, dependent, group or rotational group platform to a new platform.

## EXAMPLES

### EXAMPLE 1

```
Copy-PASPlatform -TargetPlatform -ID 9 -name SomeNewPlatform -description "Some Description"
```

Duplicates Target Platform with ID of 9 to SomeNewPlatform

### EXAMPLE 2

```
Copy-PASPlatform -DependentPlatform -ID 9 -name SomeNewPlatform -description "Some Description"
```

Duplicates Dependent Platform with ID of 9 to SomeNewPlatform

### EXAMPLE 3

```
Copy-PASPlatform -GroupPlatform -ID 39 -name SomeNewPlatform -description "Some Description"
```

Duplicates Group Platform with ID of 39 to SomeNewPlatform

### EXAMPLE 4

```
Copy-PASPlatform -RotationalGroup -ID 59 -name SomeNewPlatform -description "Some Description"
```

Duplicates Rotational Group Platform with ID of 59 to SomeNewPlatform

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

### -description

A description for the duplicate platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
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

The unique ID number of the platform to duplicate

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

### -name

The name for the duplicate platform

```yaml
Type: System.String
DefaultValue: None
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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum version 11.4

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Copy-PASPlatform](https://pspas.pspete.dev/commands/Copy-PASPlatform)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-target-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-target-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-dependent-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-dependent-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-group-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-group-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-rotational-group-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-duplicate-rotational-group-platforms.htm)

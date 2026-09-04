---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Rename-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Rename-PASPlatform
---

# Rename-PASPlatform

## SYNOPSIS

Renames a target platform.

## SYNTAX

### Default (Default)

```
Rename-PASPlatform -ID <Int32> -Name <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Rename-PASPlatform [-ID] <int> [-Name] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Renames an existing target platform.

The user must be a member of the Vault Admins group.

This command is only applicable to Self-Hosted implementations.

## EXAMPLES

### EXAMPLE 1

```
Rename-PASPlatform -ID 42 -Name "NewPlatformName"
```

Renames the target platform with ID 42 to "NewPlatformName"

### EXAMPLE 2

```
Get-PASPlatform -PlatformType Target | Where-Object {$_.Name -eq "OldName"} | Rename-PASPlatform -Name "NewName"
```

Finds a target platform by name and renames it

### EXAMPLE 3

```
Rename-PASPlatform -ID 42 -Name "NewPlatformName" -WhatIf
```

Shows what would happen when renaming the target platform with ID 42, without making the change

### EXAMPLE 4

```
Get-PASPlatform -PlatformType Target | Where-Object {$_.Name -like "Legacy*"} | ForEach-Object { Rename-PASPlatform -ID $_.ID -Name ($_.Name -replace "Legacy","Current") }
```

Renames every target platform whose name starts with "Legacy" by replacing that prefix with "Current"

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

The unique ID of the platform to rename.

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

### -Name

The new name for the platform.

Platform names must be unique across the system.
The new name for the platform.

Platform names must be unique across the system.

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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum version 15.0

Self-Hosted implementations only

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Rename-PASPlatform](https://pspas.pspete.dev/commands/Rename-PASPlatform)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-update-target-platform.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-update-target-platform.htm)

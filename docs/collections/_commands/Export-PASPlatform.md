---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Export-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Export-PASPlatform
---

# Export-PASPlatform

## SYNOPSIS

Export a platform

## SYNTAX

### PlatformID

```
Export-PASPlatform -PlatformID <string> -path <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### RotationalGroupID

```
Export-PASPlatform -path <string> [-RotationalGroupID <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### DependentID

```
Export-PASPlatform -path <string> [-DependentID <int>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### GroupPlatformID

```
Export-PASPlatform -path <string> [-GroupPlatformID <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Export a platform to a zip file in order to import it to a different Vault environment.

Vault Admin group membership required.

## EXAMPLES

### EXAMPLE 1

```
Export-PASPlatform -PlatformID YourPlatform -Path C:\Platform.zip
```

Exports UnixSSH to Platform.zip platform package.

### EXAMPLE 2

```
Export-PASPlatform -RotationalGroupID RotGroup1 -path C:\Platforms\RotGroup1.zip
```

Exports the rotational group platform with ID "RotGroup1" to RotGroup1.zip.

### EXAMPLE 3

```
Export-PASPlatform -DependentID 15 -path C:\Platforms\DependentPlatform15.zip
```

Exports the dependent platform with ID 15 to DependentPlatform15.zip.

### EXAMPLE 4

```
Export-PASPlatform -GroupPlatformID GroupPlatform1 -path C:\Platforms
```

Exports the group platform "GroupPlatform1" to the C:\Platforms folder, using the platform's own file name.

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

### -DependentID

Exports a Dependent platform

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: DependentID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -GroupPlatformID

Exports a Group platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: GroupPlatformID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -path

The path to export the platform configuration to.
If the path includes a file name and extension, the platform is saved to that exact file; otherwise the path is treated as a destination folder.
The path to export the platform configuration to.
If the path includes a file name and extension, the platform is saved to that exact file; otherwise the path is treated as a destination folder.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: GroupPlatformID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: DependentID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: RotationalGroupID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PlatformID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PlatformID

The name of the platform.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: PlatformID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RotationalGroupID

Exports a Rotational Group platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: RotationalGroupID
  Position: Named
  IsRequired: false
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk version 10.4

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Export-PASPlatform](https://pspas.pspete.dev/commands/Export-PASPlatform)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/ExportPlatform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/ExportPlatform.htm)

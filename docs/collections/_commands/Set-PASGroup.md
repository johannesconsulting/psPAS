---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASGroup
---

# Set-PASGroup

## SYNOPSIS

Renames a Vault group

## SYNTAX

### Default (Default)

```
Set-PASGroup [-GroupName] <String> -ID <Int32> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASGroup [-ID] <int> [-GroupName] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates a Vault group.
The authenticated user requires the following permissions:
- Add\Update users

Requires CyberArk Version 12.0+

## EXAMPLES

### EXAMPLE 1

```powershell
Set-PASGroup -GroupID 420 -GroupName SomeName
```

Renames group with id 420 to "SomeName"

### EXAMPLE 2

```powershell
Get-PASGroup -groupName "Contractors" | Set-PASGroup -GroupName "Contractors - EMEA"
```

Finds the group named "Contractors" and renames it to "Contractors - EMEA", using the id value supplied via the pipeline

### EXAMPLE 3

```powershell
Set-PASGroup -ID 420 -GroupName SomeName -WhatIf
```

Shows what would happen if the group with id 420 was renamed to "SomeName", without making the change

### EXAMPLE 4

```powershell
$group = Set-PASGroup -ID 420 -GroupName "PSMShadowUsers"
```

Renames the group with id 420 to "PSMShadowUsers" and saves the updated group details returned by the API in the $group variable

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

### -GroupName

A new name for the group

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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASGroup](https://pspas.pspete.dev/commands/Set-PASGroup)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/12.0/en/Content/WebServices/Update-group.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/12.0/en/Content/WebServices/Update-group.htm)

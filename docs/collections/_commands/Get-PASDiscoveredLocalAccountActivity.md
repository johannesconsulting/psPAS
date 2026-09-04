---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDiscoveredLocalAccountActivity
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDiscoveredLocalAccountActivity
---

# Get-PASDiscoveredLocalAccountActivity

## SYNOPSIS

Get discovery rule activities of a discovered account

## SYNTAX

### Default (Default)

```
Get-PASDiscoveredLocalAccountActivity [-id] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASDiscoveredLocalAccountActivity [-id] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Get discovery rule activities of a discovered account

Applies to the accounts that are discovered by the EPM scanning of endpoints, including loosely connected devices:
- Windows loosely connected devices
- Mac loosely connected devices
- Linux loosely connected devices

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASDiscoveredLocalAccountActivity -id SomeId
```

Get discovery rule activities for specified discovered account

### EXAMPLE 2

```powershell
Get-PASDiscoveredLocalAccount -search "administrator" | Get-PASDiscoveredLocalAccountActivity
```

Gets discovery rule activities for every discovered account matching the search, using the id from the pipeline.

### EXAMPLE 3

```powershell
Get-PASDiscoveredLocalAccount -id "50ce70c5-2196-4e64-9c1a-c0f1b3d0f9a1" | Get-PASDiscoveredLocalAccountActivity
```

Gets the discovered account with the specified id and returns its discovery rule activities via the pipeline.

## PARAMETERS

### -id

The unique id of the discovered account

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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDiscoveredLocalAccountActivity](https://pspas.pspete.dev/commands/Get-PASDiscoveredLocalAccountActivity)

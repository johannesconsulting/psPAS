---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASComponentDetail
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASComponentDetail
---

# Get-PASComponentDetail

## SYNOPSIS

Returns details & health information about CyberArk component instances.

## SYNTAX

### Default (Default)

```
Get-PASComponentDetail [-ComponentID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASComponentDetail [-ComponentID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns details about specific components and all their installed instances,
as well as system health information for each one.

## EXAMPLES

### EXAMPLE 1

```
Get-PASComponentDetail -ComponentID CPM
```

Displays CPM Component information

### EXAMPLE 2

```
Get-PASComponentDetail -ComponentID PVWA
```

Displays PVWA Component information

### EXAMPLE 3

```
Get-PASComponentDetail -ComponentID SessionManagement
```

Displays PSM Component information

## PARAMETERS

### -ComponentID

Specify component type to return information on (PVWA, SessionManagement, CPM or AIM)

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

Requires minimum version of CyberArk 10.1.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASComponentDetail](https://pspas.pspete.dev/commands/Get-PASComponentDetail)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/SystemDetails.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/SystemDetails.htm)

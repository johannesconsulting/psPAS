---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: ''
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASLinkedGroup
---

# Get-PASLinkedGroup

## SYNOPSIS

Gets linked group details

## SYNTAX

### Default (Default)

```
Get-PASLinkedGroup [-id] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASLinkedGroup [-id] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets details of associated linked groups for a given accountID

Requires CyberArk Version 12.2 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASLinkedGroup -id 66_6
```

Gets linked group details associated with account with ID 66_6

### EXAMPLE 2

```powershell
Get-PASAccount -safeName TargetSafe | Get-PASLinkedGroup
```

Gets linked group details for every account in the TargetSafe safe.

### EXAMPLE 3

```powershell
'19_1', '36_3' | ForEach-Object { Get-PASLinkedGroup -id $_ }
```

Gets linked group details for each of the specified account IDs.

## PARAMETERS

### -id

The account id

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- AccountID
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

- [https://pspas.pspete.dev/commands/Get-PASLinkedGroup](https://pspas.pspete.dev/commands/Get-PASLinkedGroup)

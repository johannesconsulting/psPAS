---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: ''
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASLinkedAccount
---

# Get-PASLinkedAccount

## SYNOPSIS

Gets linked account details

## SYNTAX

### Default (Default)

```
Get-PASLinkedAccount -id <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASLinkedAccount [-id] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets details of associated linked accounts for a given accountID

Requires CyberArk Version 12.2 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASLinkedAccount -id 66_6
```

Gets linked account details associated with account with ID 66_6

### EXAMPLE 2

```powershell
Get-PASAccount -id 66_6 | Get-PASLinkedAccount
```

Gets the account and returns its linked account details, using the account ID supplied via the pipeline.

### EXAMPLE 3

```powershell
Get-PASAccount -search "Bob" | Get-PASLinkedAccount
```

Gets linked account details for every account matching the search, using each account ID from the pipeline.

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

- [https://pspas.pspete.dev/commands/Get-PASLinkedAccount](https://pspas.pspete.dev/commands/Get-PASLinkedAccount)

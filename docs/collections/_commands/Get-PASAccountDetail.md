---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountDetail
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountDetail
---

# Get-PASAccountDetail

## SYNOPSIS

Gets extended overview of account details

## SYNTAX

### Default (Default)

```
Get-PASAccountDetail -id <String> [<CommonParameters>]
```

### Gen2ID

```
Get-PASAccountDetail -id <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets extended details of an account, including data on compliance, activities, dependencies, recordings & platform configuration settings.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASAccountDetail -id 123_45
```

Displays extended details of account with id 123_45

### EXAMPLE 2

```powershell
Get-PASAccount -id 123_45 | Get-PASAccountDetail
```

Gets the extended account details for the account returned by Get-PASAccount, using the id from the pipeline.

### EXAMPLE 3

```powershell
Get-PASAccount -search "Administrator" | Get-PASAccountDetail
```

Gets extended account details, including compliance, activity and dependency information, for every account matching the search.

### EXAMPLE 4

```powershell
$Detail = Get-PASAccountDetail -id 123_45
$Detail | Format-List *
```

Retrieves the extended account overview and displays all returned properties.

## PARAMETERS

### -id

The Account ID of the account to get extended details for.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- AccountID
ParameterSets:
- Name: Gen2ID
  Position: Named
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

This is not an officially documented API method and is subject to change.

It is assumed to require minimum version of 10.4.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASAccountDetail](https://pspas.pspete.dev/commands/Get-PASAccountDetail)
- [https://documenter.getpostman.com/view/998920/RzZ9Gz1U#d20c01c2-f7fc-4717-bf10-d8c51cb11411](https://documenter.getpostman.com/view/998920/RzZ9Gz1U#d20c01c2-f7fc-4717-bf10-d8c51cb11411)

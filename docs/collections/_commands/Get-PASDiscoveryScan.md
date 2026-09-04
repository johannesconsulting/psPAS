---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDiscoveryScan
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDiscoveryScan
---

# Get-PASDiscoveryScan

## SYNOPSIS

Returns configured discovery scans.

## SYNTAX

### byQuery (Default)

```
Get-PASDiscoveryScan [<CommonParameters>]
```

### byID

```
Get-PASDiscoveryScan -taskId <int> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns discovery scans configured in the Vault.

Specify a taskId to return details of a single discovery scan.

Membership of Vault admins or PVWAAccountsFeedAdmins group required.

## EXAMPLES

### EXAMPLE 1

```
Get-PASDiscoveryScan
```

Returns all configured discovery scans.

### EXAMPLE 2

```
Get-PASDiscoveryScan -taskId 1
```

Returns details of the discovery scan with taskId 1.

## PARAMETERS

### -taskId

The unique ID of the discovery scan to return details of.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases:
- id
ParameterSets:
- Name: byID
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDiscoveryScan](https://pspas.pspete.dev/commands/Get-PASDiscoveryScan)

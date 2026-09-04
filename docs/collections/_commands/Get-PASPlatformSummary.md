---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPlatformSummary
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPlatformSummary
---

# Get-PASPlatformSummary

## SYNOPSIS

Get list of all platform system types

## SYNTAX

### Default (Default)

```
Get-PASPlatformSummary [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPlatformSummary [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Retrieve basic information on all existing platform system types.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASPlatformSummary
```

Returns list and count of each current platform system types.

### EXAMPLE 2

```powershell
Get-PASPlatformSummary | Format-Table
```

Displays the platform system type summary in table format.

### EXAMPLE 3

```powershell
(Get-PASPlatformSummary).Count
```

Returns the total number of platform system types configured in the Vault.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPlatformSummary](https://pspas.pspete.dev/commands/Get-PASPlatformSummary)

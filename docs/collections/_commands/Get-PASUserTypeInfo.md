---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASUserTypeInfo
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASUserTypeInfo
---

# Get-PASUserTypeInfo

## SYNOPSIS

Output information about user types

## SYNTAX

### Default (Default)

```
Get-PASUserTypeInfo [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASUserTypeInfo [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information about user types.

Requires the Audit Users permission.

Requires minimum version 13.2

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASUserTypeInfo
```

Output information about available user types

### EXAMPLE 2

```powershell
$userTypes = Get-PASUserTypeInfo
```

Saves the available user type information in the $userTypes variable

### EXAMPLE 3

```powershell
Get-PASUserTypeInfo | Where-Object { $_.UserTypeName -eq 'EPVUser' }
```

Returns information about only the EPVUser user type

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

- [https://pspas.pspete.dev/commands/Get-PASUserTypeInfo](https://pspas.pspete.dev/commands/Get-PASUserTypeInfo)
- [https://docs.cyberark.com/PAS/13.2/en/Content/SDK/API-GetUserTypes.htm](https://docs.cyberark.com/PAS/13.2/en/Content/SDK/API-GetUserTypes.htm)

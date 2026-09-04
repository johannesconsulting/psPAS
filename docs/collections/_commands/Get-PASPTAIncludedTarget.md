---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTAIncludedTarget
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTAIncludedTarget
---

# Get-PASPTAIncludedTarget

## SYNOPSIS

Returns included target property from PTA

## SYNTAX

### Default (Default)

```
Get-PASPTAIncludedTarget [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTAIncludedTarget [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns included target property from PTA security configuration

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASPTAIncludedTarget
```

Returns all configured included targets from PTA configuration

### EXAMPLE 2

```powershell
(Get-PASPTAIncludedTarget).cidr
```

Returns only the CIDR values of the configured included targets

### EXAMPLE 3

```powershell
Get-PASPTAIncludedTarget | Where-Object { $_.cidr -eq '192.168.60.10/24' }
```

Returns the included target matching the specified CIDR value

### EXAMPLE 4

```powershell
(Get-PASPTAIncludedTarget | Measure-Object).Count
```

Returns the number of included targets currently configured in PTA

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

- [https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedGroup](https://pspas.pspete.dev/commands/Get-PASPTAIncludedTarget)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetAdministration.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetAdministration.htm)

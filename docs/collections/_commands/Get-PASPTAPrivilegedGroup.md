---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTAPrivilegedGroup
---

# Get-PASPTAPrivilegedGroup

## SYNOPSIS

Get configured PTA PrivilegedDomainGroupsList

## SYNTAX

### Default (Default)

```
Get-PASPTAPrivilegedGroup [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTAPrivilegedGroup [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Return PrivilegedDomainGroupsList from PTA

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASPTAPrivilegedGroup
```

Return PrivilegedDomainGroupsList from PTA

### EXAMPLE 2

```powershell
Get-PASPTAPrivilegedGroup | Where-Object { $_.domain -eq 'cyberark.local' }
```

Returns only the configured privileged domain groups for the cyberark.local domain.

### EXAMPLE 3

```powershell
Get-PASPTAPrivilegedGroup | Where-Object { $_.group -eq 'Domain Admins' } | Remove-PASPTAPrivilegedGroup
```

Finds the Domain Admins group configuration and removes it from PTA.

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

- [https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedGroup](https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedGroup)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetSecurity.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetSecurity.htm)

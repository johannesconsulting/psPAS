---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTAGlobalCatalog
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTAGlobalCatalog
---

# Get-PASPTAGlobalCatalog

## SYNOPSIS

Get Global Catalog connectivity details from PTA.

## SYNTAX

### Default (Default)

```
Get-PASPTAGlobalCatalog [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTAGlobalCatalog [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the Global Catalog connectivity details as set in PTA Administration.
Membership of either Vault Admins or Security Admins group is required.
Requires minimum version of 13.0.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASPTAGlobalCatalog
```

Returns Global Catalog configuration details from PTA

### EXAMPLE 2

```powershell
(Get-PASPTAGlobalCatalog).ldap_server
```

Returns just the configured Global Catalog server address

### EXAMPLE 3

```powershell
Get-PASPTAGlobalCatalog | Select-Object ldap_server, ldap_port, ssl
```

Returns only the connectivity-related properties of the Global Catalog configuration

### EXAMPLE 4

```powershell
if ((Get-PASPTAGlobalCatalog).ssl) { 'Global Catalog connection is encrypted' } else { 'Global Catalog connection is not encrypted' }
```

Returns a message indicating whether the Global Catalog connection is configured to use SSL

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

- [https://pspas.pspete.dev/commands/Get-PASPTAGlobalCatalog](https://pspas.pspete.dev/commands/Get-PASPTAGlobalCatalog)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-Global-Catalog.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-Global-Catalog.htm)

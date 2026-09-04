---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPSMServer
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPSMServer
---

# Get-PASPSMServer

## SYNOPSIS

Lists configured PSM Servers

## SYNTAX

### Default (Default)

```
Get-PASPSMServer [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPSMServer [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows Vault admins to get a list of all PSM servers defined for an environment.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPSMServer
```

Lists all configured PSM Servers

### EXAMPLE 2

```
Get-PASPSMServer | Where-Object { $_.PSMServerID -eq 'PSM-LoadBalancer-EMEA' }
```

Returns the configuration for the PSM server named "PSM-LoadBalancer-EMEA".

### EXAMPLE 3

```
Get-PASPSMServer | Select-Object -ExpandProperty PSMServerID
```

Lists the PSMServerID of every PSM server configured in the environment.

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

- [https://pspas.pspete.dev/commands/Get-PASPSMServer](https://pspas.pspete.dev/commands/Get-PASPSMServer)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Get_All_PSM_Servers.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Get_All_PSM_Servers.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASConnectionComponent
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASConnectionComponent
---

# Get-PASConnectionComponent

## SYNOPSIS

Returns configured connection components

## SYNTAX

### Default (Default)

```
Get-PASConnectionComponent [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASConnectionComponent [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows Vault admins to get the list of all connection components of an entire environment.

## EXAMPLES

### EXAMPLE 1

```
Get-PASConnectionComponent
```

Lists all connection components configured in the environment

### EXAMPLE 2

```
Get-PASConnectionComponent | Where-Object { $_.PSMConnectorID -eq 'PSM-RDP' }
```

Returns the connection component configuration for the "PSM-RDP" connector.

### EXAMPLE 3

```
Get-PASConnectionComponent | Where-Object { $_.Enabled } | Select-Object PSMConnectorID
```

Lists the PSMConnectorID of every enabled connection component in the environment.

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

- [https://pspas.pspete.dev/commands/Get-PASConnectionComponent](https://pspas.pspete.dev/commands/Get-PASConnectionComponent)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Get_All_Connection_Components.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Get_All_Connection_Components.htm)

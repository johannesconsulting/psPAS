---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASOAuthProvider
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASOAuthProvider
---

# Get-PASOAuthProvider

## SYNOPSIS

Gets configured OAuth 2.0 providers.

## SYNTAX

### Default (Default)

```
Get-PASOAuthProvider [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASOAuthProvider [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets all configured OAuth 2.0 providers.
Requires membership of Vault Admins group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASOAuthProvider
```

Returns all configured OAuth 2.0 providers.

### EXAMPLE 2

```powershell
Get-PASOAuthProvider | Where-Object { $_.name -eq 'SomeProvider' }
```

Returns all configured OAuth 2.0 providers and filters the results to the provider named "SomeProvider".

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

- [https://pspas.pspete.dev/commands/Get-PASOAuthProvider](https://pspas.pspete.dev/commands/Get-PASOAuthProvider)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/oauth-get-all-providers.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/oauth-get-all-providers.htm)

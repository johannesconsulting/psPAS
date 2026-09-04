---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASOpenIDConnectProvider
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASOpenIDConnectProvider
---

# Get-PASOpenIDConnectProvider

## SYNOPSIS

Returns details of configured OIDC Identity Providers.

## SYNTAX

### Default (Default)

```
Get-PASOpenIDConnectProvider [[-id] <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASOpenIDConnectProvider [[-id] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

returns either a list of all OIDC Identity Providers, or details of a specific Provider.
Requires membership of Vault Admins group.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASOpenIDConnectProvider
```

Returns details of all configured OIDC Providers.

### EXAMPLE 2

```powershell
Get-PASOpenIDConnectProvider -id SomeOIDCProvider
```

Returns details of OIDC Provider with ID SomeOIDCProvider

### EXAMPLE 3

```powershell
Get-PASOpenIDConnectProvider | Where-Object { $_.IdpType -eq 'Okta' }
```

Returns details of all configured OIDC Providers, filtered to those with an IdpType of Okta.

### EXAMPLE 4

```powershell
[PSCustomObject]@{id = 'SomeOIDCProvider'} | Get-PASOpenIDConnectProvider
```

Returns details of OIDC Provider with ID SomeOIDCProvider, using pipeline input.

## PARAMETERS

### -id

An identifier of a specific provider to retrieve details of.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASOpenIDConnectProvider](https://pspas.pspete.dev/commands/Get-PASOpenIDConnectProvider)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Get-Specific-Provider.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Get-Specific-Provider.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Get-All-Providers.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Get-All-Providers.htm)

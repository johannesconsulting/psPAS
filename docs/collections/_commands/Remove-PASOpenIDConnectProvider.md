---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASOpenIDConnectProvider
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASOpenIDConnectProvider
---

# Remove-PASOpenIDConnectProvider

## SYNOPSIS

Deletes a configured OIDC Identity Provider.

## SYNTAX

### Default (Default)

```
Remove-PASOpenIDConnectProvider [[-id] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASOpenIDConnectProvider [[-id] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes an OIDC Identity Provider.
Requires membership of Vault Admins group.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASOpenIDConnectProvider -id SomeOIDCProvider
```

Deletes OIDC Identity Provider with ID SomeOIDCProvider

### EXAMPLE 2

```powershell
Remove-PASOpenIDConnectProvider -id SomeOIDCProvider -WhatIf
```

Shows what would happen if the OIDC Identity Provider "SomeOIDCProvider" were deleted, without actually deleting it.

### EXAMPLE 3

```powershell
Get-PASOpenIDConnectProvider | Where-Object { $_.id -eq 'DeprecatedProvider' } | Remove-PASOpenIDConnectProvider
```

Deletes the OIDC Identity Provider named "DeprecatedProvider", with the id value supplied via the pipeline.

## PARAMETERS

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- cf
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -id

The unique identifier of the provider to delete.

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

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- wi
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
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

- [https://pspas.pspete.dev/commands/Remove-PASOpenIDConnectProvider](https://pspas.pspete.dev/commands/Remove-PASOpenIDConnectProvider)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Delete-Provider.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/OIDC-Delete-Provider.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASSafeShareLogo
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASSafeShareLogo
---

# Get-PASSafeShareLogo

## SYNOPSIS

Returns details of configured SafeShare Logo

## SYNTAX

### Default (Default)

```
Get-PASSafeShareLogo [-ImageType] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASSafeShareLogo [-ImageType] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets configuration details of logo displayed in the SafeShare WebGUI

Deprecated from version 13.2

## EXAMPLES

### EXAMPLE 1

```
Get-PASSafeShareLogo -ImageType Square
```

Retrieves Safe Share Logo

### EXAMPLE 2

```
Get-PASSafeShareLogo -ImageType Watermark
```

Retrieves the configured SafeShare watermark logo.

### EXAMPLE 3

```
Get-PASSafeShareLogo -ImageType Square | Set-Content -Path C:\Temp\SafeShareLogo.png -Encoding Byte
```

Retrieves the configured SafeShare square logo and saves it to a file.

## PARAMETERS

### -ImageType

The requested logo type: Square or Watermark.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
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

## OUTPUTS

## NOTES

SafeShare no longer available from CyberArk

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASSafeShareLogo](https://pspas.pspete.dev/commands/Get-PASSafeShareLogo)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Server%20Web%20Services%20-%20Logo.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Server%20Web%20Services%20-%20Logo.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPlatformSafe
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPlatformSafe
---

# Get-PASPlatformSafe

## SYNOPSIS

Get safes by platform id

## SYNTAX

### Default (Default)

```
Get-PASPlatformSafe [-PlatformID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPlatformSafe [-PlatformID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns all safes for a given platform ID

## EXAMPLES

### EXAMPLE 1

```
Get-PASPlatformSafe -PlatformID WINDOMAIN
```

### EXAMPLE 2

```
Get-PASPlatform -Active $true | Get-PASPlatformSafe
```

Returns the safes associated with each currently active platform.

### EXAMPLE 3

```
"WinDomain", "WinServerLocal" | ForEach-Object { Get-PASPlatformSafe -PlatformID $_ }
```

Returns the safes associated with both the "WinDomain" and "WinServerLocal" platforms.

## PARAMETERS

### -PlatformID

The unique ID/Name of the platform.

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

Minimum CyberArk version 11.1

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPlatformSafe](https://pspas.pspete.dev/commands/Get-PASPlatformSafe)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-safe-by-platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-safe-by-platform.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPlatformPSMConfigSession%20Mngmnt%20-%20Get_Session_Management_Policy_Platform.htm
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPlatformPSMConfig
---

# Get-PASPlatformPSMConfig

## SYNOPSIS

Lists PSM Policy Section of a target platform.

## SYNTAX

### Default (Default)

```
Get-PASPlatformPSMConfig [-ID] <Int32> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPlatformPSMConfig [-ID] <int> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows Vault admins to retrieve the PSM Policy Section of a target platform.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPlatformPSMConfig -ID 42
```

Lists PSM Policy Section of target platform with ID of 42.

### EXAMPLE 2

```
23, 42 | ForEach-Object { Get-PASPlatformPSMConfig -ID $_ }
```

Lists the PSM Policy Section for the target platforms with IDs 23 and 42.

### EXAMPLE 3

```
(Get-PASPlatformPSMConfig -ID 23).PSMConnectors
```

Returns only the configured PSM connection components for the target platform with ID 23.

## PARAMETERS

### -ID

The numeric ID of the target platform to list PSM Policy of.

```yaml
Type: System.Int32
DefaultValue: 0
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPlatformPSMConfig](https://pspas.pspete.dev/commands/Get-PASPlatformPSMConfig)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Get_Session_Management_Policy_Platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Get_Session_Management_Policy_Platform.htm)

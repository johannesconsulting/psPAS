---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTARule
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTARule
---

# Get-PASPTARule

## SYNOPSIS

Returns risky activities rules from PTA

## SYNTAX

### Default (Default)

```
Get-PASPTARule [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTARule [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns risky activities rules configured in PTA

## EXAMPLES

### EXAMPLE 1

```
Get-PASPTARule
```

Returns all risky activities rules from PTA

### EXAMPLE 2

```
Get-PASPTARule | Format-Table -AutoSize
```

Displays the risky activities rules configured in PTA in table format.

### EXAMPLE 3

```
Get-PASPTARule | ConvertTo-Json -Depth 5
```

Returns the risky activities rules from PTA as a JSON formatted string.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

Minimum Version CyberArk 10.4

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPTARule](https://pspas.pspete.dev/commands/Get-PASPTARule)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSettings.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSettings.htm)

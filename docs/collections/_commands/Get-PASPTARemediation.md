---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTARemediation
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTARemediation
---

# Get-PASPTARemediation

## SYNOPSIS

Returns automatic remediation settings from PTA

## SYNTAX

### Default (Default)

```
Get-PASPTARemediation [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTARemediation [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns automatic remediation settings configured in PTA

## EXAMPLES

### EXAMPLE 1

```
Get-PASPTARemediation
```

Returns all automatic remediation settings from PTA

### EXAMPLE 2

```
Get-PASPTARemediation | ConvertTo-Json
```

Returns the automatic remediation settings from PTA as a JSON formatted string, useful for reviewing or exporting the configuration.

### EXAMPLE 3

```
Get-PASPTARemediation | Export-Csv -Path .\PTARemediationSettings.csv -NoTypeInformation
```

Exports the current automatic remediation settings from PTA to a CSV file.

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

- [https://pspas.pspete.dev/commands/Get-PASPTARemediation](https://pspas.pspete.dev/commands/Get-PASPTARemediation)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSettings.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSettings.htm)

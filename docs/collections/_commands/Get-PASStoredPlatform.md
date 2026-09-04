---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASStoredPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASStoredPlatform
---

# Get-PASStoredPlatform

## SYNOPSIS

Returns the details of the platform imported and stored in memory

## SYNTAX

### Default (Default)

```
Get-PASStoredPlatform [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASStoredPlatform [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the details of the platform stored in memory, and a list of the existing conflicted platforms that can be updated using these platform details.

## EXAMPLES

### Example 1

```powershell
Get-PASStoredPlatform
```

Output the detail of the platform stored in memory

### Example 2

```powershell
if (Get-PASStoredPlatform) { "A platform package is stored and ready to be imported." }
```

Checks whether a platform package is currently held in memory before continuing with an import

### Example 3

```powershell
Get-PASStoredPlatform | Format-List *
```

Displays all properties of the platform currently stored in memory, including any conflicting platforms that would be affected by an update

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

- [https://pspas.pspete.dev/commands/Get-PASStoredPlatform](https://pspas.pspete.dev/commands/Get-PASStoredPlatform)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/getstoredplatformdetails.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/getstoredplatformdetails.htm)

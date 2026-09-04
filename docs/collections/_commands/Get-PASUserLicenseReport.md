---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASUserLicenseReport
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASUserLicenseReport
---

# Get-PASUserLicenseReport

## SYNOPSIS

Returns information about usage of the Privilege Cloud user licenses defined in your system

## SYNTAX

### Default (Default)

```
Get-PASUserLicenseReport [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASUserLicenseReport [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information about usage of the Privilege Cloud user licenses

A license is in use in one of the following scenarios:
- A user is connected using a license
- A user is added to a Safe using a license

User license types
- Privileged Basic User
- Privileged Standard Lite User
- Privileged Standard User
- Privileged External User
- Credential Providers (CPs/CCPs)
- Total Applications

## EXAMPLES

### Example 1

```powershell
Get-PASUserLicenseReport
```

Returns information about usage of the Privilege Cloud user licenses

### Example 2

```powershell
$LicenseReport = Get-PASUserLicenseReport
$LicenseReport | Format-List *
```

Retrieves the Privilege Cloud user license usage report and displays all returned properties.

### Example 3

```powershell
Get-PASUserLicenseReport | Export-Csv -Path C:\Reports\UserLicenseReport.csv -NoTypeInformation
```

Exports the Privilege Cloud user license usage report to a CSV file for offline reporting.

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

- [https://pspas.pspete.dev/commands/Get-PASUserLicenseReport](https://pspas.pspete.dev/commands/Get-PASUserLicenseReport)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/privcloud-user-licenses-report.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/privcloud-user-licenses-report.htm)

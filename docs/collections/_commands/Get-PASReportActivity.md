---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASReportActivity
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASReportActivity
---

# Get-PASReportActivity

## SYNOPSIS

Returns the activity groups and activities available for use in reports

## SYNTAX

### Default (Default)

```
Get-PASReportActivity [[-Type] <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASReportActivity [[-Type] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the list of activity groups available for reports, and the activities within
each group. The response is intended to populate filters or selection lists in reporting
features.

## EXAMPLES

### Example 1

```powershell
Get-PASReportActivity
```

Returns all available activity groups and their activities.

### Example 2

```powershell
Get-PASReportActivity -Type ActivitiesReport
```

Returns activity groups and activities scoped to the ActivitiesReport report type.

## PARAMETERS

### -Type

The type of report to return activity groups/activities for.

This is not the same as the activityGroup values returned in the response.
The type of report to return activity groups/activities for.

This is not the same as the activityGroup values returned in the response.

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
AcceptedValues:
- ActivitiesReport
- ActiveNonActiveSafesReport
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

### psPAS.CyberArk.Vault.Report.ActivityGroup

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASReportActivity](https://pspas.pspete.dev/commands/Get-PASReportActivity)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-get-reportparams-activities.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-get-reportparams-activities.htm)

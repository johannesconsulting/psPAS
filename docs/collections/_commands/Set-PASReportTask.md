---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASReportTask
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASReportTask
---

# Set-PASReportTask

## SYNOPSIS

Updates an existing report schedule

## SYNTAX

### Default (Default)

```
Set-PASReportTask [-id] <String> [[-name] <String>] [[-keepTaskDefinition] <Boolean>]
 [[-notifyOnFailure] <Boolean>] [[-Subscribers] <Subscriber[]>] [[-startTime] <DateTime>]
 [[-recurrenceType] <String>] [[-recurrenceValue] <String>] [[-daysOfWeek] <String>]
 [[-weekNumber] <String>] [[-filters] <TaskFilter[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASReportTask [-id] <string> [[-name] <string>] [[-keepTaskDefinition] <bool>]
 [[-notifyOnFailure] <bool>] [[-Subscribers] <Subscriber[]>] [[-startTime] <datetime>]
 [[-recurrenceType] <string>] [[-recurrenceValue] <string>] [[-daysOfWeek] <string>]
 [[-weekNumber] <string>] [[-filters] <TaskFilter[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing report schedule.

A `[Subscriber]` Class has been created to assist with formatting of subscriber data for this request,
and a `[TaskFilter]` Class to assist with formatting filter data - see the examples below.

This command is only available for self-hosted PAS, and requires CyberArk version 14.6 or later.

## EXAMPLES

### Example 1

```powershell
Set-PASReportTask -id 9c91791b-76cf-46c4-a961-b562b9447dc3 -name 'Weekly License Report'
```

Renames the report schedule. The schedule, subscribers, filters and all other properties of the task
are left unchanged.

### Example 2

```powershell
Set-PASReportTask -id 9c91791b-76cf-46c4-a961-b562b9447dc3 -recurrenceType Weekly -recurrenceValue 1 -daysOfWeek '2,4'
```

Updates the schedule to run weekly on Tuesday and Thursday. The existing start time is retained.

### Example 3

```powershell
Get-PASReportTask -name 'Weekly License Report' | Set-PASReportTask -startTime (Get-Date '2026-09-01 02:00') -notifyOnFailure $true
```

Finds the report schedule by name and updates its start time, enabling failure notifications.

### Example 4

```powershell
$LdapInfo = [LdapInfo]::new('cyberark.local', 'CN=pspete,OU=Users,DC=cyberark,DC=local')
$Subscriber = [Subscriber]::new('pspete', 'User', $true, $LdapInfo)
Set-PASReportTask -id 9c91791b-76cf-46c4-a961-b562b9447dc3 -Subscribers $Subscriber
```

Replaces the subscribers of the report schedule, notifying "pspete" of the results.

### Example 5

```powershell
$Filter = [TaskFilter]::new('safe', 'SomeSafe')
Set-PASReportTask -id 9c91791b-76cf-46c4-a961-b562b9447dc3 -filters $Filter
```

Replaces the filters of the report schedule, restricting the report to the "SomeSafe" safe.

### Example 6

```powershell
Set-PASReportTask -id 9c91791b-76cf-46c4-a961-b562b9447dc3 -name 'Some Report' -WhatIf
```

Shows what would happen if the report schedule was updated, without actually updating it.

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

### -daysOfWeek

The days of the week on which the report runs, as a comma separated list of day numbers,
where 0 is Sunday and 6 is Saturday.

Applicable to a weekly recurrence.
The days of the week on which the report runs, as a comma separated list of day numbers, where 0 is Sunday and 6 is Saturday.

Applicable to a weekly recurrence.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -filters

The filters to apply to the report.

Any filters currently configured on the task are replaced by the supplied value.

Use the `[TaskFilter]` Class to format the required data. The set of valid filter names
differs per the task's existing subType - see NOTES. A filter name not documented for the
subType generates a warning, but is still sent to the API.

Requires CyberArk version 15.0 or later.
The filters to apply to the report.

Any filters currently configured on the task are replaced by the supplied value.

Use the `[TaskFilter]` Class to format the required data.
The set of valid filter names differs per the task's existing subType - see NOTES.
A filter name not documented for the subType generates a warning, but is still sent to the API.

Requires CyberArk version 15.0 or later.

```yaml
Type: TaskFilter[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -id

The unique ID of the report schedule to update.

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

### -keepTaskDefinition

Whether the task definition is retained after the report has been generated.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -name

The name of the report schedule.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -notifyOnFailure

Whether subscribers are notified if report generation fails.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -recurrenceType

Recurrence type.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -recurrenceValue

Frequency multiplier (e.g. every 2 weeks).
Frequency multiplier (e.g.
every 2 weeks).

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -startTime

Scheduled start time.

Must be later than the current date and time, otherwise the API returns an error.
Scheduled start time.

Must be later than the current date and time, otherwise the API returns an error.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Subscribers

The subscribers to notify of the report results.

Any subscribers currently configured on the task are replaced by the supplied value.

Use the `[Subscriber]` Class to format the required data.
The subscribers to notify of the report results.

Any subscribers currently configured on the task are replaced by the supplied value.

Use the `[Subscriber]` Class to format the required data.

```yaml
Type: Subscriber[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -weekNumber

Week number for monthly recurrence.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.
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

You can pipe objects with an `id` property to this command, such as the output of `Get-PASReportTask`.

### System.Boolean

{{ Fill in the Description }}

### Subscriber[]

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### TaskFilter[]

{{ Fill in the Description }}

## OUTPUTS

### psPAS.CyberArk.Vault.Task

## NOTES

Minimum CyberArk version 14.6. Self-hosted PAS only.

`-Subscribers` and `-filters` replace the current values in full rather than adding to them.
To add to the existing collections, read the current values from `Get-PASReportTask` first.

The filter names accepted by `-filters` differ per the task's existing `subType`. The
following names are documented by CyberArk for each subType; anything else generates a
warning (not an error) since CyberArk may support filters here which are not yet reflected
in this list:

- InventoryReports.InventoryReportUI (Privileged accounts): accountName, deviceType,
  platformId, numberOfDays, activitiesOption, onlyAccountsWithFailures, onlyDisabledAccounts,
  freeSearch, group, includeServiceAccounts, safe
- CyberArk.Reports.ApplicationReports.ApplicationReportUI (Applications): freeSearch,
  includeSubLocations, location
- InventoryReports.ComplianceReportUI (Compliance Status): accountName, deviceType,
  platformId, numberOfDays, activitiesOption, onlyAccountsWithFailures, onlyDisabledAccounts,
  freeSearch, accountChangeMode, expiresIn, expireOption, includeAboutToExpire,
  onlyExpiredAccounts, safe
- CyberArk.Reports.EntitlementReport.EntitlementReportUI (Entitlement): includeCommandPermissions,
  includeSubLocations, location, safe, includeDisabledUsers, includeGroups, targetAccount,
  targetPolicyID, targetSystem, userOrGroup, userType
- CyberArk.Reports.ActivitiesReport.ActivitiesReportUI (Activity log): activitiesFilter,
  clientId, displayOnlyAlerts, includeSubLocations, historyOptions, actionsInPrevDays,
  historyFromDate, historyToDate, location, safe, userType, includeDeletedUsers, requestId,
  targetAccount, targetPolicyID, targetSystem, userOrGroup
- CyberArk.Reports.LicenseCapacityReport.LicenseCapacityReportUI (License capacity): none
- CyberArk.Reports.UsersReport.UsersListReportUI (Users): includeDisabledUsers,
  includeSubLocations, historyOptions, actionsInPrevDays, historyFromDate, historyToDate,
  location, userOrGroup, userActivityType
- CyberArk.Reports.ActiveNonActiveSafesReport.ActiveNonActiveSafesReportUI (Safes):
  activitiesFilter, ignoreBackupActivities, includeSubLocations, historyOptions,
  actionsInPrevDays, historyFromDate, historyToDate, location, safe, safeType
- CyberArk.Reports.OwnersListReport.OwnersListReportUI (Owners): safe, userOrGroup

For the `activitiesFilter` filter (Activity log and Safes subTypes), the value is a
comma-separated list of activity `code`s. Use `Get-PASReportActivity` to look up the
available activity groups/codes for the connected environment.

`-daysOfWeek` is supplied as day numbers, but the API returns the configured days as names
(for example `Monday`).

The API validates the schedule against the configured recurrence, and may move `startTime`
forward to the next occurrence which satisfies `-daysOfWeek`.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASReportTask](https://pspas.pspete.dev/commands/Set-PASReportTask)
- [https://pspas.pspete.dev/commands/Get-PASReportTask](https://pspas.pspete.dev/commands/Get-PASReportTask)
- [https://pspas.pspete.dev/commands/New-PASReportTask](https://pspas.pspete.dev/commands/New-PASReportTask)
- [https://pspas.pspete.dev/commands/Remove-PASReportTask](https://pspas.pspete.dev/commands/Remove-PASReportTask)

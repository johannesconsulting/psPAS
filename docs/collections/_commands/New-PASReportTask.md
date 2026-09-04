---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASReportTask
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASReportTask
---

# New-PASReportTask

## SYNOPSIS

Creates a new schedule for reports

## SYNTAX

### Default (Default)

```
New-PASReportTask [[-version] <Int32>] [[-type] <String>] [-subType] <String> [-name] <String>
 [-keepTaskDefinition] <Boolean> [[-startTime] <DateTime>] [[-recurrenceType] <String>]
 [[-recurrenceValue] <String>] [[-daysOfWeek] <String>] [[-weekNumber] <String>]
 [[-Subscribers] <Subscriber[]>] [-notifyOnFailure] <Boolean> [-Filters <TaskFilter[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASReportTask [[-version] <int>] [[-type] <string>] [-subType] <string> [-name] <string>
 [-keepTaskDefinition] <bool> [[-startTime] <datetime>] [[-recurrenceType] <string>]
 [[-recurrenceValue] <string>] [[-daysOfWeek] <string>] [[-weekNumber] <string>]
 [[-Subscribers] <Subscriber[]>] [-notifyOnFailure] <bool> [[-Filters] <TaskFilter[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Creates a new schedule for reports

A `[Subscriber]` Class has been created to assist witho formatting of data for this request, see the example below

A `[TaskFilter]` Class has been created to assist with formatting filter data for report tasks

## EXAMPLES

### Example 1

```powershell
$Subscriber = [Subscriber]::AddSubscriber()
Enter subscriber name: pspete
Enter subscriber type: User
Notify on success? (true/false): true
Add LDAP info? (yes/no): yes
Enter LDAP directory name: PSPETE.DEV
Enter full DN:

 > $Subscriber

name   type notifyOnSuccess ldapInfo
----   ---- --------------- --------
pspete User            True LdapInfo

New-PASReportTask -version 1 -type 'Report' -subType 'CyberArk.Reports.LicenseCapacityReport.LicenseCapacityReportUI' `
-name 'Some Report' -keepTaskDefinition $true -Subscribers $Subscriber -notifyOnFailure $true
```

Adds a new report schedule

### Example 2

```powershell
$LdapInfo = [LdapInfo]::new('cyberark.local', 'CN=pspete,OU=Users,DC=cyberark,DC=local')
$Subscriber = [Subscriber]::new('pspete', 'User', $true, $LdapInfo)
New-PASReportTask -subType 'CyberArk.Reports.LicenseCapacityReport.LicenseCapacityReportUI' -name 'Weekly License Report' `
-keepTaskDefinition $true -startTime (Get-Date '02:00') -recurrenceType Weekly -recurrenceValue 1 -daysOfWeek '1,3,5' `
-Subscribers $Subscriber -notifyOnFailure $true
```

Creates a report schedule that runs weekly on Monday, Wednesday and Friday, non-interactively building the subscriber and LDAP info objects and notifying "pspete" of the results.

### Example 3

```powershell
New-PASReportTask -subType 'CyberArk.Reports.LicenseCapacityReport.LicenseCapacityReportUI' -name 'Some Report' `
-keepTaskDefinition $true -notifyOnFailure $false -WhatIf
```

Shows what would happen if the report schedule was created, without actually creating it.

### Example 4

```powershell
$Filter = [TaskFilter]::new('SomeColumn', 'SomeValue')
New-PASReportTask -subType 'CyberArk.Reports.ActivitiesReport.ActivitiesReportUI' -name 'Filtered Activity Report' `
-keepTaskDefinition $true -notifyOnFailure $false -Filters $Filter
```

Creates a report schedule with a filter applied, restricting the report to rows where "SomeColumn" matches "SomeValue".

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

Days of the week to trigger the task.

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

### -Filters

Create definition for one or more report filters using the `[TaskFilter]` Class.

Only applicable to report tasks; each filter narrows the report by a name/value pair
matching one of the columns available in the underlying report.

The set of valid filter names differs per subType - see NOTES. A filter name not
documented for the specified subType generates a warning, but is still sent to the API.

Requires CyberArk version 15.0 or later.
Create definition for one or more report filters using the `[TaskFilter]` Class.

Only applicable to report tasks; each filter narrows the report by a name/value pair matching one of the columns available in the underlying report.

The set of valid filter names differs per subType - see NOTES.
A filter name not documented for the specified subType generates a warning, but is still sent to the API.

Requires CyberArk version 15.0 or later.

```yaml
Type: TaskFilter[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 12
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -keepTaskDefinition

Keep task definition after execution.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -name

Task name.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -notifyOnFailure

Notify the task creator if execution fails.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 11
  IsRequired: true
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

Create definition for one or more subscribers using the `[Subscriber]` Class.

`[Subscriber]::AddSubscriber()` interactively prompts for required details.
Create definition for one or more subscribers using the `[Subscriber]` Class.

`[Subscriber]::AddSubscriber()` interactively prompts for required details.

```yaml
Type: Subscriber[]
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

### -subType

Task subtype.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues:
- InventoryReports.InventoryReportUI
- CyberArk.Reports.ApplicationReports.ApplicationReportUI
- InventoryReports.ComplianceReportUI
- CyberArk.Reports.EntitlementReport.EntitlementReportUI
- CyberArk.Reports.ActivitiesReport.ActivitiesReportUI
- CyberArk.Reports.LicenseCapacityReport.LicenseCapacityReportUI
- CyberArk.Reports.UsersReport.UsersListReportUI
- CyberArk.Reports.ActiveNonActiveSafesReport.ActiveNonActiveSafesReportUI
- CyberArk.Reports.OwnersListReport.OwnersListReportUI
HelpMessage: ''
```

### -type

Task type.

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

### -version

Task definition version

```yaml
Type: System.Int32
DefaultValue: 0
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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### Subscriber[]

{{ Fill in the Description }}

### TaskFilter[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

The filter names accepted by the `-Filters` parameter differ per report `-subType`. The
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASReportTask](https://pspas.pspete.dev/commands/New-PASReportTask)
- [https://pspas.pspete.dev/commands/Get-PASReportActivity](https://pspas.pspete.dev/commands/Get-PASReportActivity)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/create-task.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/create-task.htm)

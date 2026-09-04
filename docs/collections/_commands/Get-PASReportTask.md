---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASReportTask
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASReportTask
---

# Get-PASReportTask

## SYNOPSIS

Returns details of available report schedules

## SYNTAX

### byQuery (Default)

```
Get-PASReportTask [-search <string>] [-subType <string>] [-name <string>]
 [-FilterLogicalOperator <string>] [-limit <int>] [<CommonParameters>]
```

### byID

```
Get-PASReportTask [-id <String>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns all available report schedules (tasks) for the user

All matching tasks are returned; if the API paginates the results across multiple
pages, subsequent pages are requested automatically.

## EXAMPLES

### Example 1

```powershell
Get-PASReportTask
```

Returns all report schedules for the user

### Example 2

```powershell
Get-PASReportTask -id 6b35d0ae-4fc2-4a30-ab2e-89a944cf4b10
```

Returns the specified report schedule

### Example 3

```powershell
Get-PASReportTask -search "Privileged accounts" -limit 10
```

Returns all report schedules matching the term "Privileged accounts", requesting 10 results per page.

### Example 4

```powershell
Get-PASReportTask -subType InventoryReports.InventoryReportUI
```

Returns report schedules of the InventoryReports.InventoryReportUI subtype.

## PARAMETERS

### -FilterLogicalOperator

The logical operator (AND/OR) used to combine multiple filter parameters, when both
subType and name are specified together. Defaults to AND.
The logical operator (AND/OR) used to combine multiple filter parameters, when both subType and name are specified together.
Defaults to AND.

```yaml
Type: System.String
DefaultValue: AND
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues:
- AND
- OR
HelpMessage: ''
```

### -id

When specified, returns a specific report schedule, otherwise returns all the user has access to.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -limit

The number of report schedules to return on one page.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -name

Filters report schedules by task name.

Only the EQ operator is supported; other operators are rejected by the API.
Filters report schedules by task name.

Only the EQ operator is supported; other operators are rejected by the API.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -search

A simple, case-insensitive keyword search across common textual fields.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -subType

Filters report schedules by task subtype.

Only the EQ operator is supported; other operators are rejected by the API.
Filters report schedules by task subtype.

Only the EQ operator is supported; other operators are rejected by the API.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

### psPAS.CyberArk.Vault.Task

## NOTES

Undocumented by CyberArk; the API's filter parameter was tested against every property returned
by this command. Only subType and name are accepted as filter fields, and each only supports the
EQ operator - other operators were not exhaustively tested.

folder, type, keepTaskDefinition, notifyOnFailure, createdAt, createdBy, lastModifiedAt,
lastModifiedBy, schedule, subscribers, and filters are all rejected by the API as filter fields,
despite being returned in the response body.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASReportTask](https://pspas.pspete.dev/commands/Get-PASReportTask)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-tasks.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-tasks.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASReport
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASReport
---

# Get-PASReport

## SYNOPSIS

Returns a list of available reports

## SYNTAX

### Default (Default)

```
Get-PASReport [-limit <Int32>] [-search <String>] [-sort <String>] [-sortDirection <String>]
 [-createdBy <String>] [-name <String>] [-records <String>] [-status <String>] [-type <String>]
 [-FilterLogicalOperator <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASReport [[-limit] <int>] [[-search] <string>] [[-sort] <string>] [[-sortDirection] <string>]
 [[-createdBy] <string>] [[-name] <string>] [[-records] <string>] [[-status] <string>]
 [[-type] <string>] [[-FilterLogicalOperator] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns a list of reports available to the authenticated user

All matching reports are returned; if the API paginates the results across multiple
pages, subsequent pages are requested automatically.

## EXAMPLES

### Example 1

```powershell
Get-PASReport
```

Returns a list of all available reports

### Example 2

```powershell
Get-PASReport -search "Accounts" -limit 10
```

Returns all reports with a name, description, reportType, or (where available) human-readable status/category
field matching the term "Accounts", requesting 10 results per page.

### Example 3

```powershell
Get-PASReport -status Done -createdBy pspete
```

Returns reports with a status of Done, created by the user pspete.

### Example 4

```powershell
Get-PASReport -status Done -type InventoryReports.InventoryReportUI -FilterLogicalOperator OR
```

Returns reports with a status of Done, or a type of InventoryReports.InventoryReportUI.

### Example 5

```powershell
Get-PASReport -sort CreatedAt -sortDirection desc
```

Returns reports sorted by their creation date, most recently created first.

## PARAMETERS

### -createdBy

Filters reports by the username of the report's creator.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskUsername.
Filters reports by the username of the report's creator.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskUsername.

```yaml
Type: System.String
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

### -FilterLogicalOperator

The logical operator (AND/OR) used to combine multiple filter parameters, when more than one
of createdBy, name, records, status, or type is specified together. Defaults to AND.
The logical operator (AND/OR) used to combine multiple filter parameters, when more than one of createdBy, name, records, status, or type is specified together.
Defaults to AND.

```yaml
Type: System.String
DefaultValue: AND
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -limit

The number of reports to return on one page.

```yaml
Type: System.Int32
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
AcceptedValues: []
HelpMessage: ''
```

### -name

Filters reports by report name.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskName.
Filters reports by report name.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskName.

```yaml
Type: System.String
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

### -records

Filters reports by the number of records they contain.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name ReportNumberOfRecords.
Filters reports by the number of records they contain.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name ReportNumberOfRecords.

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

### -search

A simple, case-insensitive keyword search.

Searches across name, description, createdBy, status, and statusAdditionalInfo.
A simple, case-insensitive keyword search.

Searches across name, description, createdBy, status, and statusAdditionalInfo.

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

### -sort

The property to sort returned reports by.

Valid Values:
- CreatedAt

Undocumented by CyberArk; observed from PVWA browser network traffic.
CreatedAt is the only property confirmed to work; other properties were tried and did not sort as expected.
The property to sort returned reports by.

Valid Values: - CreatedAt

Undocumented by CyberArk; observed from PVWA browser network traffic.
CreatedAt is the only property confirmed to work; other properties were tried and did not sort as expected.

```yaml
Type: System.String
DefaultValue: None
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

### -sortDirection

The direction to sort reports in, when a value for sort is also specified.

When desc is specified, the sort value is prefixed with "-" to request descending order.
When not specified, ascending order is used.

Undocumented by CyberArk; observed from PVWA browser network traffic.
The direction to sort reports in, when a value for sort is also specified.

When desc is specified, the sort value is prefixed with "-" to request descending order.
When not specified, ascending order is used.

Undocumented by CyberArk; observed from PVWA browser network traffic.

```yaml
Type: System.String
DefaultValue: None
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

### -status

Filters reports by generation status (e.g. Done).

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskStatus.
Filters reports by generation status (e.g.
Done).

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskStatus.

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

### -type

Filters reports by report type.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskSubtype.
Filters reports by report type.

Only the EQ operator is supported; other operators are rejected by the API.
Undocumented by CyberArk; observed to map to the internal field name TaskSubtype.

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

## OUTPUTS

### psPAS.CyberArk.Vault.Report

## NOTES

Undocumented by CyberArk; the API's filter parameter was tested against every property returned
by this command. Only createdBy, name, records, status, and type are accepted as filter fields,
and each only supports the EQ operator - all other documented operators (NE, GT, GE, LT, LE, IN,
NOTIN, CONTAINS, NOTCONTAINS, STARTSWITH, ENDSWITH, IS NULL, IS NOTNULL) are rejected by the API
for these fields.

createdAt and size are recognized by the API (errors reference their internal field names,
CreatedAt and FileSize) but reject every operator tried, so neither is usable as a filter field
at this time.

duration, filename, filters, isScheduled, lastUsedAt, lastUsedBy, location, safe, statusAdditionalInfo,
and taskId are not recognized as filter fields at all.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASReport](https://pspas.pspete.dev/commands/Get-PASReport)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-reports.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-reports.htm)

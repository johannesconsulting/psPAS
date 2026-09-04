---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Export-PASReport
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Export-PASReport
---

# Export-PASReport

## SYNOPSIS

Exports a report to an Excel or CSV

## SYNTAX

### Default (Default)

```
Export-PASReport [-ReportFormat] <String> [-path] <String> -Safe <String> -Folder <String>
 -FileName <String> -Type <String> [<CommonParameters>]
```

### __AllParameterSets

```
Export-PASReport [-Safe] <string> [-Folder] <string> [-FileName] <string> [-Type] <string>
 [-ReportFormat] <string> [-path] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Exports a report to an Excel or CSV

## EXAMPLES

### Example 1

```powershell
Export-PASReport -Safe 'PVWAReports' -Folder 'Root\33' `
    -FileName 'InventoryReports.InventoryReportUI_2025-09-07_180314.094.xml' `
    -Type 'InventoryReports.InventoryReportUI' -ReportFormat XLSX -path C:\Temp\
```

Exports a report in XLSX format

### Example 2

```powershell
Export-PASReport -Safe 'PVWAReports' -Folder 'Root\33' `
    -FileName 'InventoryReports.InventoryReportUI_2025-09-07_180314.094.xml' `
    -Type 'InventoryReports.InventoryReportUI' -ReportFormat XLS -path C:\Temp\
```

Exports a report in XLS format

### Example 3

```powershell
Export-PASReport -Safe 'PVWAReports' -Folder 'Root\33' `
    -FileName 'InventoryReports.InventoryReportUI_2025-09-07_180314.094.xml' `
    -Type 'InventoryReports.InventoryReportUI' -ReportFormat CSV -path C:\Temp\Report.csv
```

Exports a report in CSV format

## PARAMETERS

### -FileName

The name of the report file to export from the Report Safe

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
AcceptedValues: []
HelpMessage: ''
```

### -Folder

The folder in the Report Safe the report is stored in

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- location
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -path

The path to save the report to

For CSV reports, the path must include the required filename.
The path to save the report to

For CSV reports, the path must include the required filename.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ReportFormat

The format to export the report in
- XLSX
- XLS
- CSV
The format to export the report in - XLSX

- XLS

- CSV

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Safe

The Safe the report is stored in

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

### -Type

The Type name of the report to be exported

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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASUserAllowedAuthenticationMethod](https://pspas.pspete.dev/commands/Export-PASReport)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/download-report.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/download-report.htm)

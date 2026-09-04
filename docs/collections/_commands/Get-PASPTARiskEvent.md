---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTARiskEvent
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTARiskEvent
---

# Get-PASPTARiskEvent

## SYNOPSIS

Output all PTA Risk Events

## SYNTAX

### 13.2 (Default)

```
Get-PASPTARiskEvent [-type <string>] [-status <string>] [-sort <string>] [-size <int>]
 [<CommonParameters>]
```

### 14.0

```
Get-PASPTARiskEvent [-type <string>] [-status <string>] [-FromTime <datetime>] [-ToTime <datetime>]
 [-sort <string>] [-size <int>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Output details of all PTA Risk Events, or those matching the criteria specified.

Requires minimum version of 13.2

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASPTARiskEvent -type RISK_UNCONSTRAINED_DELEGATION -status OPEN
```

Get all open risk events related to unconstrained delegation.

### EXAMPLE 2

```powershell
Get-PASPTARiskEvent -status OPEN -sort score -size 50
```

Returns up to 50 open risk events, sorted by risk score.

### EXAMPLE 3

```powershell
Get-PASPTARiskEvent -FromTime (Get-Date).AddDays(-7) -ToTime (Get-Date) -status OPEN
```

Returns open risk events with a detection time in the last 7 days. Requires minimum version 14.0.

### EXAMPLE 4

```powershell
Get-PASPTARiskEvent -type RISK_RISKY_SPN -status CLOSED
```

Returns all closed risk events related to risky SPNs.

## PARAMETERS

### -FromTime

Filter by start time of a detection time window

Requires 14.0
Filter by start time of a detection time window

Requires 14.0

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 14.0
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -size

The maximum number of returned events in a given page.

If not specified, the server limits the results to 100.

The maximum number that can be specified is 1000.
The maximum number of returned events in a given page.

If not specified, the server limits the results to 100.

The maximum number that can be specified is 1000.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 13.2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 14.0
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -sort

Sort the events you are searching for

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 13.2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 14.0
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -status

Return only open or closed risk events

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 13.2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 14.0
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ToTime

Filter by end time of a detection time window

Requires 14.0
Filter by end time of a detection time window

Requires 14.0

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 14.0
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -type

Return only the risk events of a specific type, using the type name

Valid values:

RISK_UNCONSTRAINED_DELEGATION

RISK_RISKY_SPN
Return only the risk events of a specific type, using the type name

Valid values:

RISK_UNCONSTRAINED_DELEGATION

RISK_RISKY_SPN

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 13.2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 14.0
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

### System.DateTime

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPTARiskEvent](https://pspas.pspete.dev/commands/Get-PASPTARiskEvent)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetRiskEvents.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetRiskEvents.htm)

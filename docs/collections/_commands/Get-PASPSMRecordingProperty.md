---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPSMRecordingProperty
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPSMRecordingProperty
---

# Get-PASPSMRecordingProperty

## SYNOPSIS

Get property details of PSM Recordings

## SYNTAX

### Default (Default)

```
Get-PASPSMRecordingProperty [-RecordingID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPSMRecordingProperty [-RecordingID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the property details of a recorded session.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPSMRecordingProperty -RecordingID 123_45
```

Returns details of activities in PSM Recording with Id 123_45

### EXAMPLE 2

```
Get-PASPSMRecordingProperty -SessionID 123_45
```

Returns the property details of PSM Recording with Id 123_45, using the SessionID alias for the RecordingID parameter.

### EXAMPLE 3

```
Get-PASPSMRecording -RecordingID 123_45 | Get-PASPSMRecordingProperty
```

Gets the PSM Recording with Id 123_45, and returns its property details. The RecordingID is passed via the pipeline.

### EXAMPLE 4

```
Get-PASPSMRecording -Safe Win-Safe -FromTime (Get-Date).AddDays(-1) | Get-PASPSMRecordingProperty
```

Returns property details for every PSM Recording created on the Win-Safe safe in the last 24 hours.

## PARAMETERS

### -RecordingID

Unique ID of the recorded PSM session

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- SessionID
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

Minimum CyberArk Version 10.6

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPSMRecordingProperty](https://pspas.pspete.dev/commands/Get-PASPSMRecordingProperty)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetRecordingProperties.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetRecordingProperties.htm)

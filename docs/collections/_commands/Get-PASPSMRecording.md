---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPSMRecording
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPSMRecording
---

# Get-PASPSMRecording

## SYNOPSIS

Get details of PSM Recording

## SYNTAX

### byQuery (Default)

```
Get-PASPSMRecording [-Limit <int>] [-Sort <string>] [-Search <string>] [-Safe <string>]
 [-FromTime <datetime>] [-ToTime <datetime>] [-Activities <string>] [<CommonParameters>]
```

### byRecordingID

```
Get-PASPSMRecording [-RecordingID <String>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the details of recordings of PSM, PSMP or OPM sessions.

By default, recordings from the last 48 hours are returned.
- When specifying `ToTime` without `FromTime`, recordings from the 48 hours before `ToTime` are returned.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPSMRecording -Sort -FileName
```

Lists PSM recordings from the last 24 hours, sorted by descending filename.

### EXAMPLE 2

```
Get-PASPSMRecording -RecordingID $Id
```

Gets details of specified PSM recording

Minimum required version 10.6

### EXAMPLE 3

```
Get-PASPSMRecording -FromTime (Get-Date).AddDays(-7)
```

Lists all PSM recordings from the last week.

## PARAMETERS

### -Activities

Returns recordings with specific activities.

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

### -FromTime

Returns recordings from a specific date

```yaml
Type: System.DateTime
DefaultValue: 0
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

### -Limit

The number of recordings that are returned in the list.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -RecordingID

Unique ID of the recorded PSM session

Minimum required version 10.6
Unique ID of the recorded PSM session

Minimum required version 10.6

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byRecordingID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Safe

Returns recordings from a specific safe

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

### -Search

Returns recordings that are filtered by properties that contain the specified search text.

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

### -Sort

The sort can be done by each property on the recording file:
 - RiskScore
 - FileName
 - SafeName
 - FolderName
 - PSMVaultUserName
 - FromIP
 - RemoteMachine
 - Client
 - Protocol
 - AccountUserName
 - AccountAddress
 - AccountPlatformID
 - PSMStartTime
 - TicketID
The sort can be in ascending or descending order.

To sort in descending order, specify "-" before the recording property by which to sort.
The sort can be done by each property on the recording file:  - RiskScore  - FileName  - SafeName  - FolderName  - PSMVaultUserName  - FromIP  - RemoteMachine  - Client  - Protocol  - AccountUserName  - AccountAddress  - AccountPlatformID  - PSMStartTime  - TicketID The sort can be in ascending or descending order.

To sort in descending order, specify "-" before the recording property by which to sort.

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

### -ToTime

Returns recordings from a specific date
- When specifying `ToTime` without `FromTime`, recordings from the 48 hours prior to `ToTime` are returned.
Returns recordings from a specific date - When specifying `ToTime` without `FromTime`, recordings from the 48 hours prior to `ToTime` are returned.

```yaml
Type: System.DateTime
DefaultValue: 0
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

### System.DateTime

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk Version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPSMRecording](https://pspas.pspete.dev/commands/Get-PASPSMRecording)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetRecordings.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetRecordings.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetRecording.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetRecording.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPSMSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPSMSession
---

# Get-PASPSMSession

## SYNOPSIS

Get details of Live PSM Sessions

## SYNTAX

### byQuery (Default)

```
Get-PASPSMSession [-Limit <int>] [-Sort <string>] [-Search <string>] [-Safe <string>]
 [-FromTime <datetime>] [-ToTime <datetime>] [-Activities <string>] [<CommonParameters>]
```

### bySessionID

```
Get-PASPSMSession [-liveSessionId <String>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the details of active PSM sessions.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPSMSession
```

Lists all Live PSM Sessions.

### EXAMPLE 2

```
Get-PASPSMSession -liveSessionId 123_45
```

Returns details of active PSM Session with Id 123_45

Minimum required version 10.6

### EXAMPLE 3

```
Get-PASPSMSession -Safe Win-Safe -Sort "-PSMStartTime" -Limit 10
```

Returns the 10 most recently started Live PSM Sessions on the Win-Safe safe.

### EXAMPLE 4

```
Get-PASPSMSession -FromTime (Get-Date).AddHours(-1) -ToTime (Get-Date) -Search RDP
```

Returns Live PSM Sessions started in the last hour that match the search text "RDP".

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

The number of sessions that are returned in the list.

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

### -liveSessionId

The ID of an active session to get details of.

Minimum required version 10.6
The ID of an active session to get details of.

Minimum required version 10.6

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: bySessionID
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

For querying sessions by ID, Required CyberArk Version is 10.6

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPSMSession](https://pspas.pspete.dev/commands/Get-PASPSMSession)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetLiveSessions.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetLiveSessions.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetActiveSession.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetActiveSession.htm)

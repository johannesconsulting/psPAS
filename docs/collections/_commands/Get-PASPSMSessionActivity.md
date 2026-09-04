---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPSMSessionActivity
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPSMSessionActivity
---

# Get-PASPSMSessionActivity

## SYNOPSIS

Get activity details of Live PSM Sessions

## SYNTAX

### Default (Default)

```
Get-PASPSMSessionActivity [-liveSessionId] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPSMSessionActivity [-liveSessionId] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns activity details of active PSM sessions.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPSMSessionActivity -liveSessionId 123_45
```

Returns details of activities in active PSM Session with Id 123_45

### EXAMPLE 2

```
Get-PASPSMSessionActivity -SessionID 123_45
```

Returns details of activities in active PSM Session with Id 123_45, using the SessionID alias for the liveSessionId parameter.

### EXAMPLE 3

```
Get-PASPSMSession -liveSessionId 123_45 | Get-PASPSMSessionActivity
```

Gets the active PSM Session with Id 123_45, and returns its activity details. The liveSessionId is passed via the pipeline.

### EXAMPLE 4

```
Get-PASPSMSession -Safe Win-Safe | Get-PASPSMSessionActivity
```

Returns activity details for every active PSM Session on the Win-Safe safe.

## PARAMETERS

### -liveSessionId

The ID of an active session to get activities from.

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

- [https://pspas.pspete.dev/commands/Get-PASPSMSessionActivity](https://pspas.pspete.dev/commands/Get-PASPSMSessionActivity)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetActiveSessionProperties.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetActiveSessionProperties.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Test-PASPSMRecording
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Test-PASPSMRecording
---

# Test-PASPSMRecording

## SYNOPSIS

Determine if a PSM Session / Recording is valid

## SYNTAX

### Default (Default)

```
Test-PASPSMRecording [-SessionID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Test-PASPSMRecording [-SessionID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Determines if a provided PSM Session / Recording is valid.

Returns $True if valid.

## EXAMPLES

### EXAMPLE 1

```
Test-PASPSMRecording -SessionID 334_3
```

Tests validity of recorded PSM Session File

### EXAMPLE 2

```
if (Test-PASPSMRecording -SessionID 334_3) { Export-PASPSMRecording -RecordingID 334_3 -path C:\PSMRecordings\ }
```

Tests validity of the PSM Recording with Id 334_3, and only exports it if it is valid.

### EXAMPLE 3

```
[PSCustomObject]@{SessionID = '334_3'} | Test-PASPSMRecording
```

Tests validity of the PSM Session/Recording with Id 334_3. The SessionID value is passed via the pipeline, by property name.

### EXAMPLE 4

```
'334_3', '335_9', '338_2' | ForEach-Object { Test-PASPSMRecording -SessionID $_ }
```

Tests validity of multiple PSM Session/Recording Ids.

## PARAMETERS

### -SessionID

Unique ID of the recorded PSM session

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

Minimum CyberArk Version 11.2

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Test-PASPSMRecording](https://pspas.pspete.dev/commands/Test-PASPSMRecording)

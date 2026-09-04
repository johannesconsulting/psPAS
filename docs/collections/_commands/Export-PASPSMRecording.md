---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Export-PASPSMRecording
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Export-PASPSMRecording
---

# Export-PASPSMRecording

## SYNOPSIS

Saves a PSM Recording

## SYNTAX

### Default (Default)

```
Export-PASPSMRecording [-RecordingID] <String> [-path] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Export-PASPSMRecording [-RecordingID] <string> [-path] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Saves a specific recorded session to a file

## EXAMPLES

### EXAMPLE 1

```
Export-PASPSMRecording -RecordingID 123_45 -path C:\PSMRecording.avi
```

Saves PSM Recording with Id 123_45 to C:\PSMRecording.avi

### EXAMPLE 2

```
Export-PASPSMRecording -RecordingID 123_45 -path C:\PSMRecordings\
```

Saves PSM Recording with Id 123_45 into the C:\PSMRecordings\ folder, using the recording's original file name.

### EXAMPLE 3

```
Get-PASPSMRecording -RecordingID 123_45 | Export-PASPSMRecording -path C:\PSMRecordings\
```

Gets the PSM Recording with Id 123_45, and saves it to the C:\PSMRecordings\ folder. The RecordingID is passed via the pipeline.

### EXAMPLE 4

```
Get-PASPSMRecording -Safe Win-Safe -FromTime (Get-Date).AddDays(-1) | Export-PASPSMRecording -path C:\PSMRecordings\
```

Saves every PSM Recording created on the Win-Safe safe in the last 24 hours to the C:\PSMRecordings\ folder.

## PARAMETERS

### -path

The path to save the PSM recording to.
If the path includes a file name and extension, the recording is saved to that exact file; otherwise the path is treated as a destination folder.
The path to save the PSM recording to.
If the path includes a file name and extension, the recording is saved to that exact file; otherwise the path is treated as a destination folder.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
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

### -RecordingID

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

Minimum CyberArk Version 10.6

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Export-PASPSMRecording](https://pspas.pspete.dev/commands/Export-PASPSMRecording)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/PlayRecording.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/PlayRecording.htm)

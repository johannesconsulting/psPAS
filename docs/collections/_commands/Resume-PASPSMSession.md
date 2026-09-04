---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Resume-PASPSMSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Resume-PASPSMSession
---

# Resume-PASPSMSession

## SYNOPSIS

Resumes a Suspended PSM Session.

## SYNTAX

### Default (Default)

```
Resume-PASPSMSession [-LiveSessionId] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Resume-PASPSMSession [-LiveSessionId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Resumes a suspended, active PSM session, identified by the unique ID of the PSM Session,
allowing a privileged user to continue working.

## EXAMPLES

### EXAMPLE 1

```
Resume-PASPSMSession -LiveSessionId $SessionUUID
```

Resumes the suspended Live PSM Session identified by the session UUID.

### EXAMPLE 2

```
Get-PASPSMSession -liveSessionId $SessionUUID | Resume-PASPSMSession
```

Gets the PSM Session identified by the session UUID, and resumes it. The LiveSessionId is passed via the pipeline.

### EXAMPLE 3

```
Resume-PASPSMSession -SessionGuid $SessionUUID -WhatIf
```

Shows what would happen if the PSM Session identified by the session UUID were resumed, without actually resuming it.

## PARAMETERS

### -Confirm

Prompts you for confirmation before running the cmdlet.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- cf
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LiveSessionId

The unique ID/SessionGuid of a Suspended PSM Session.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- SessionGuid
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

### -WhatIf

Shows what would happen if the cmdlet runs.
The cmdlet is not run.
Shows what would happen if the cmdlet runs.
The cmdlet is not run.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- wi
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
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

Minimum CyberArk Version 10.2

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Resume-PASPSMSession](https://pspas.pspete.dev/commands/Resume-PASPSMSession)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Suspend-ResumeSession.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Suspend-ResumeSession.htm)

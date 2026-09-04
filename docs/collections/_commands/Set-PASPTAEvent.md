---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPTAEvent
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPTAEvent
---

# Set-PASPTAEvent

## SYNOPSIS

Updates the status of a security event

## SYNTAX

### 11.3 (Default)

```
Set-PASPTAEvent -EventID <string> [-mStatus <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### 14.0

```
Set-PASPTAEvent -EventID <string> [-mStatus <string>] [-closeReason <string>] [-reasonText <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates the status of a security event to open or closed

## EXAMPLES

### EXAMPLE 1

```
Set-PASPTAEvent -EventID $id
```

### EXAMPLE 2

```
Set-PASPTAEvent -EventID $id -mStatus CLOSED
```

Closes the security event matching the specified EventID.

### EXAMPLE 3

```
Set-PASPTAEvent -EventID $id -mStatus CLOSED -closeReason HANDLED -reasonText 'Confirmed as expected administrative activity'
```

Closes the security event and records a close reason and explanatory text. Requires minimum version 14.0.

### EXAMPLE 4

```
Set-PASPTAEvent -EventID $id -mStatus CLOSED -WhatIf
```

Shows what would happen if the security event was closed, without making the change.

## PARAMETERS

### -closeReason

The close reason for the security event after you have investigated and handled the event successfully or determined to close it for other reasons

```yaml
Type: System.String
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

### -EventID

The event ID.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 14.0
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 11.3
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -mStatus

The status to update (open or closed).

```yaml
Type: System.String
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
- Name: 11.3
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -reasonText

Free text for the user to elaborate on the close reason. Limited to 100 characters
Free text for the user to elaborate on the close reason.
Limited to 100 characters

```yaml
Type: System.String
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

Minimum Version CyberArk 11.3

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPTAEvent](https://pspas.pspete.dev/commands/Set-PASPTAEvent)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/CloseOpenSecurityEvent.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/CloseOpenSecurityEvent.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPTARiskEvent
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPTARiskEvent
---

# Set-PASPTARiskEvent

## SYNOPSIS

Update PTA Risk Events

## SYNTAX

### 13.2 (Default)

```
Set-PASPTARiskEvent -ID <string> -status <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### 14.0

```
Set-PASPTARiskEvent -ID <string> -status <string> [-closeReason <string>] [-reasonText <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Update the status of a risk event to open or closed.

Requires minimum version of 13.2

## EXAMPLES

### EXAMPLE 1

```powershell
Set-PASPTARiskEvent -ID 123 -Status CLOSED
```

Close PTA Risk Event with id 1234

### EXAMPLE 2

```powershell
Set-PASPTARiskEvent -ID 456 -status CLOSED -closeReason HANDLED -reasonText 'Reviewed and remediated by security team'
```

Closes the risk event and records a close reason and explanatory text. Requires minimum version 14.0.

### EXAMPLE 3

```powershell
Get-PASPTARiskEvent -status OPEN | Set-PASPTARiskEvent -status CLOSED
```

Finds all open risk events and closes them.

### EXAMPLE 4

```powershell
Set-PASPTARiskEvent -ID 456 -status CLOSED -WhatIf
```

Shows what would happen if the risk event was closed, without making the change.

## PARAMETERS

### -closeReason

The close reason for the risk event
Valid Values:
- HANDLED
- NOTREAL
- OTHER
- NONE

Requires version 14.0
The close reason for the risk event Valid Values: - HANDLED

- NOTREAL

- OTHER

- NONE


Requires version 14.0

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

### -ID

The ID of the PTA Risk Event

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
- Name: 13.2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -reasonText

Free text close reason

Requires version 14.0
Free text close reason

Requires version 14.0

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

### -status

The status to update on the risk event

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
- Name: 13.2
  Position: Named
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPTARiskEvent](https://pspas.pspete.dev/commands/Set-PASPTARiskEvent)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/CloseOpenRiskEvent.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/CloseOpenRiskEvent.htm)

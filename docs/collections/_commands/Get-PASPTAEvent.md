---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTAEvent
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTAEvent
---

# Get-PASPTAEvent

## SYNOPSIS

Returns PTA security events

## SYNTAX

### 11.3 (Default)

```
Get-PASPTAEvent [-fromUpdateDate <DateTime>] [-status <String>] [<CommonParameters>]
```

### 11.4

```
Get-PASPTAEvent [-fromUpdateDate <DateTime>] [-status <String>] [-accountID <String>]
 [<CommonParameters>]
```

### 10.3

```
Get-PASPTAEvent [-lastUpdatedEventDate <DateTime>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns PTA security events

Default operation requires minimum version of 11.3
Minimum required version 10.3.

## EXAMPLES

### EXAMPLE 1

```
Get-PASPTAEvent
```

Returns all PTA security events

Minimum required version 11.3

### EXAMPLE 2

```
Get-PASPTAEvent -fromUpdateDate $date
```

Returns all PTA security events since $date

Minimum required version 11.3

### EXAMPLE 3

```
Get-PASPTAEvent -status OPEN
```

Returns all PTA security events with an Open status.

Minimum required version 10.3

### EXAMPLE 4

```
Get-PASPTAEvent -lastUpdatedEventDate $date
```

Returns all PTA security events since $date

Minimum required version 10.3

### EXAMPLE 5

```
Get-PASPTAEvent -accountID 27_4
```

Returns all PTA security events relating to the account with ID 27_4

Minimum required version 11.4

## PARAMETERS

### -accountID

The unique account identifier of the account relating to the Security Event.

Minimum required version 11.4
The unique account identifier of the account relating to the Security Event.

Minimum required version 11.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 11.4
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -fromUpdateDate

Starting date from which to get security events.

Minimum required version 11.3
Starting date from which to get security events.

Minimum required version 11.3

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 11.3
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 11.4
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -lastUpdatedEventDate

Starting date from which to get security events.

Minimum required version 10.3
Starting date from which to get security events.

Minimum required version 10.3

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.3
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

The status of the security event (open or closed).

Minimum required version 11.3
The status of the security event (open or closed).

Minimum required version 11.3

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 11.4
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

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### System.DateTime

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum Version CyberArk 10.3

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPTAEvent](https://pspas.pspete.dev/commands/Get-PASPTAEvent)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSecurityEvents.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSecurityEvents.htm)

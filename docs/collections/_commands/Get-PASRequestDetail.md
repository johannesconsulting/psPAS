---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASRequestDetail
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASRequestDetail
---

# Get-PASRequestDetail

## SYNOPSIS

Gets requests

## SYNTAX

### Default (Default)

```
Get-PASRequestDetail [-RequestType] <String> [-RequestID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASRequestDetail [-RequestType] <string> [-RequestID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets Requests

Officially supported from version 9.10.

Reports received that function works in 9.9 also.

## EXAMPLES

### EXAMPLE 1

```
Get-PASRequestDetail -RequestType IncomingRequests -RequestID $ID
```

Gets details of request with ID held in $ID

### EXAMPLE 2

```
Get-PASRequestDetail -RequestType MyRequests -RequestID TargetSafe_12
```

Gets details of your own request with ID TargetSafe_12.

### EXAMPLE 3

```
[PSCustomObject]@{RequestType = 'IncomingRequests'; RequestID = 'TargetSafe_15' } | Get-PASRequestDetail
```

Gets request details using pipeline input, since both RequestType and RequestID accept values by property name.

## PARAMETERS

### -RequestID

The request's uniqueID, composed of the Safe Name and internal RequestID.

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

### -RequestType

Specify whether outgoing or incoming requests will be searched for

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

Minimum CyberArk Version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASRequestDetail](https://pspas.pspete.dev/commands/Get-PASRequestDetail)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetDetailsMyRequest.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetDetailsMyRequest.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetDetailsRequestConfirmation.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetDetailsRequestConfirmation.htm)

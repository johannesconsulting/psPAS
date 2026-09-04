---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASRequest
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASRequest
---

# Get-PASRequest

## SYNOPSIS

Gets and displays status for incoming, outgoing or bulk action requests

Getting bulk action requests requires Add accounts, Update account content, and Update account properties authorization on at least one Safe.

## SYNTAX

### Requests

```
Get-PASRequest -RequestType <string> -OnlyWaiting <bool> -Expired <bool> [<CommonParameters>]
```

### bulkactions

```
Get-PASRequest -id <int> [-DisplayExtendedItems <bool>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Check the status of the bulk account access, incoming or outgoing request

## EXAMPLES

### EXAMPLE 1

```
Get-PASRequest -RequestType IncomingRequests -OnlyWaiting $true
```

Lists waiting incoming requests

### EXAMPLE 2

```
Get-PASRequest -RequestType MyRequests -Expired $false
```

Lists your none expired (outgoing) requests.

### EXAMPLE 3

```
Get-PASRequest -id 1234 -DisplayExtendedItems $true
```

Gets status of bulk action request

## PARAMETERS

### -DisplayExtendedItems

Determines whether the succeededItems or failedItems parameters return data for the items, in addition to the index.

When this parameter is set to True, the API throughput may be higher.

Requires minimum version of 13.2
Determines whether the succeededItems or failedItems parameters return data for the items, in addition to the index.

When this parameter is set to True, the API throughput may be higher.

Requires minimum version of 13.2

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: bulkactions
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Expired

Expired requests will be included in the list

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Requests
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -id

The id of a bulk action request.

Requires minimum version of 13.2
The id of a bulk action request.

Requires minimum version of 13.2

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: bulkactions
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OnlyWaiting

Only requests waiting for approval will be listed

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Requests
  Position: Named
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
- Name: Requests
  Position: Named
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

### System.Int32

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk Version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASRequest](https://pspas.pspete.dev/commands/Get-PASRequest)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetMyRequests.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetMyRequests.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetIncomingRequestList.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetIncomingRequestList.htm)

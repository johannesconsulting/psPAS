---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Approve-PASRequest
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Approve-PASRequest
---

# Approve-PASRequest

## SYNOPSIS

Confirm a single request

## SYNTAX

### Default (Default)

```
Approve-PASRequest [-RequestId] <String[]> [[-Reason] <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Approve-PASRequest [-RequestId] <string[]> [[-Reason] <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Enables a request confirmer to confirm a single request, identified by its requestID.

Bulk Confirmation of requests is supported from Version 14.6

## EXAMPLES

### EXAMPLE 1

```
Approve-PASRequest -RequestID <ID> -Reason "<Reason>"
```

Confirms request \<ID\>

### EXAMPLE 2

```
Approve-PASRequest -RequestId 'TargetSafe_15', 'TargetSafe_16', 'TargetSafe_17' -Reason "Emergency access approved"
```

Confirms three incoming requests in a single bulk call. Requires CyberArk version 14.6 or above, self-hosted only.

### EXAMPLE 3

```
Approve-PASRequest -RequestId TargetSafe_15 -Reason "Approved by manager" -WhatIf
```

Shows what would happen if the request was confirmed, without actually confirming it.

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

### -Reason

The reason why the request is approved

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RequestId

The ID(s) of the request(s) to confirm
Specify multiple requestIDs to confirm in bulk using a single request (Requires version 14.6)
The ID(s) of the request(s) to confirm Specify multiple requestIDs to confirm in bulk using a single request (Requires version 14.6)

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
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

## OUTPUTS

## NOTES

Minimum CyberArk Version 9.10

Bulk Confirmation requires version 14.6

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Approve-PASRequest](https://pspas.pspete.dev/commands/Approve-PASRequest)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ConfirmRequest.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ConfirmRequest.htm)
- [https://docs.cyberark.com/pam-self-hosted/14.6/en/content/webservices/bulkconfirmrequest.htm](https://docs.cyberark.com/pam-self-hosted/14.6/en/content/webservices/bulkconfirmrequest.htm)

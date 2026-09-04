---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Deny-PASRequest
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Deny-PASRequest
---

# Deny-PASRequest

## SYNOPSIS

Reject a single request

## SYNTAX

### Default (Default)

```
Deny-PASRequest [-RequestId] <String[]> [[-Reason] <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Deny-PASRequest [-RequestId] <string[]> [[-Reason] <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Enables a request confirmer to reject requests identified by their requestID.

Officially supported from version 9.10.

Bulk rejection of requests using a single command invocation is supported from version 14.6

## EXAMPLES

### EXAMPLE 1

```
Deny-PASRequest -RequestID <ID> -Reason "<Reason>"
```

Denies request \<ID\>

### EXAMPLE 2

```
Deny-PASRequest -RequestID SomeSafe1_1, SomeSafe1_2, SomeSafe1_3 -Reason " Some Reason"
```

Denies requests SomeSafe1_1, SomeSafe1_2 & SomeSafe1_3

### EXAMPLE 3

```
Deny-PASRequest -RequestID <ID> -Reason "<Reason>" -WhatIf
```

Shows what would happen when the request is denied, without performing the action

### EXAMPLE 4

```
Deny-PASRequest -RequestID <ID>
```

Denies request \<ID\> without specifying a reason

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

The reason why the request is rejected

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RequestId

The ID of the request(s) to reject

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

### System.String[]

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk Version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Deny-PASRequest](https://pspas.pspete.dev/commands/Deny-PASRequest)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/RejectRequest.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/RejectRequest.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulkrejectrequest.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulkrejectrequest.htm)

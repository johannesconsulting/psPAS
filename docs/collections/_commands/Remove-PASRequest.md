---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASRequest
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASRequest
---

# Remove-PASRequest

## SYNOPSIS

Deletes a request from the Vault

## SYNTAX

### Default (Default)

```
Remove-PASRequest [-RequestID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASRequest [-RequestID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a request from the Vault.

The "Manage" Safe vault permission is required.

Officially supported from version 9.10.

Reports received that function works in 9.9 also.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASRequest -RequestID TargetSafe_15
```

Deletes request TargetSafe_15 from the Vault.

### EXAMPLE 2

```
Remove-PASRequest -RequestID TargetSafe_15 -WhatIf
```

Shows what would happen if the request was deleted, without actually deleting it.

### EXAMPLE 3

```
'TargetSafe_15', 'TargetSafe_16' | ForEach-Object { [PSCustomObject]@{RequestID = $_ } } | Remove-PASRequest
```

Deletes multiple requests by passing each RequestID down the pipeline.

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

### -RequestID

The ID (composed of the Safe Name and internal RequestID) of the request to delete.

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

- [https://pspas.pspete.dev/commands/Remove-PASRequest](https://pspas.pspete.dev/commands/Remove-PASRequest)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/DeleteMyRequest.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/DeleteMyRequest.htm)

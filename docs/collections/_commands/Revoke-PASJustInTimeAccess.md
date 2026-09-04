---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Revoke-PASJustInTimeAccess
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Revoke-PASJustInTimeAccess
---

# Revoke-PASJustInTimeAccess

## SYNOPSIS

Revoke JIT access to a target Windows machine

## SYNTAX

### Default (Default)

```
Revoke-PASJustInTimeAccess [-AccountID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Revoke-PASJustInTimeAccess [-AccountID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Requests and receives access, with administrative rights, to a target Windows machine.
The domain user who issuing the command will be removed from the local Administrators group of the target machine.

## EXAMPLES

### EXAMPLE 1

```
Revoke-PASJustInTimeAccess -AccountID 36_3
```

Revokes JIT access on the server for which the account with id 36_3 is a local account with local admin membership.

### EXAMPLE 2

```
Get-PASAccount -id 36_3 | Revoke-PASJustInTimeAccess
```

Revokes JIT access using the account object returned by Get-PASAccount.

### EXAMPLE 3

```
'36_3', '44_9' | ForEach-Object { Revoke-PASJustInTimeAccess -AccountID $_ }
```

Revokes JIT access for each of the specified local admin accounts.

## PARAMETERS

### -AccountID

The ID of the local account that will be used to remove the authenticated user from the Administrators group on the target machine.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
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

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.
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

- [https://pspas.pspete.dev/commands/Revoke-PASJustInTimeAccess](https://pspas.pspete.dev/commands/Revoke-PASJustInTimeAccess)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAccess.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAccess.htm)

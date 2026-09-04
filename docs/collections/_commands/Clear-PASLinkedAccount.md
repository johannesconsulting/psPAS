---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Clear-PASLinkedAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Clear-PASLinkedAccount
---

# Clear-PASLinkedAccount

## SYNOPSIS

Clears one or more linked account associations.

## SYNTAX

### Default (Default)

```
Clear-PASLinkedAccount [-AccountID] <String[]> [-extraPasswordIndex] <Int32> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Clear-PASLinkedAccount [-AccountID] <string[]> [-extraPasswordIndex] <int> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Clears the association between a linked account and a source account.

Multiple accounts can be processed in a single bulk request by supplying more than one value for `-AccountID`.
Bulk unlinking requires CyberArk version 15.2 or later.

The following Safe authorizations are required on the Safe where the source account is stored to run this command:
- List accounts
- Update account properties
- Manage Safe
  - Only required when `RequireManageSafeToClearLinkedAccount` is enabled in the configuration.

## EXAMPLES

### EXAMPLE 1

```powershell
Clear-PASLinkedAccount -AccountID 12_34 -extraPasswordIndex 3
```

Clears extraPass3 from account with ID 12_34

### EXAMPLE 2

```powershell
Clear-PASLinkedAccount -AccountID 12_34, 56_78 -extraPasswordIndex 3
```

Clears extraPass3 from accounts with IDs 12_34 and 56_78 in a single bulk request.

### EXAMPLE 3

```powershell
Clear-PASLinkedAccount -AccountID 12_34 -extraPasswordIndex 3 -WhatIf
```

Shows what would happen if extraPass3 were cleared from account 12_34, but does not perform the action.

### EXAMPLE 4

```powershell
Get-PASAccount -id 12_34 | Clear-PASLinkedAccount -extraPasswordIndex 3
```

Clears extraPass3 from the account returned by Get-PASAccount, using pipeline input for -AccountID.

## PARAMETERS

### -AccountID

The id value of the source account.

When more than one value is supplied, a bulk unlink request is sent.
The id value of the source account.

When more than one value is supplied, a bulk unlink request is sent.

```yaml
Type: System.String[]
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

### -extraPasswordIndex

The linked account's extra password index.

The index can be for a Reconcile account, Logon account, or other linked account that is defined in the Platform configuration.
The linked account's extra password index.

The index can be for a Reconcile account, Logon account, or other linked account that is defined in the Platform configuration.

```yaml
Type: System.Int32
DefaultValue: 0
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Clear-PASLinkedAccount](https://pspas.pspete.dev/commands/Clear-PASLinkedAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Link-account-unlink.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Link-account-unlink.htm)

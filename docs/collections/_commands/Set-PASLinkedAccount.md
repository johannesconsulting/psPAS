---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASLinkedAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASLinkedAccount
---

# Set-PASLinkedAccount

## SYNOPSIS

Associates one or more linked accounts to existing accounts.

## SYNTAX

### Default (Default)

```
Set-PASLinkedAccount [-AccountID] <String[]> [-safe] <String> [-extraPasswordIndex] <String>
 [-name] <String> [-folder] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASLinkedAccount [-AccountID] <string[]> [-safe] <string> [-extraPasswordIndex] <string>
 [-name] <string> [-folder] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Associates a Reconcile account, Logon account, or other type of linked account that is defined in the platform configuration.

Multiple source accounts can be linked in a single bulk request by supplying more than one value for `-AccountID`.
Bulk linking requires CyberArk version 15.2 or later.

Requires the following Safe member authorizations:
- List accounts
  - Required for both the Safe of the linked account and the Safe of the source account.
- Update account properties.
  - Require for the Safe of the source account

Requires CyberArk Version 12.1+

## EXAMPLES

### EXAMPLE 1

```powershell
Set-PASLinkedAccount -AccountID 29_4 -safe Some_Safe -extraPasswordIndex 1 -name SomeAdmin -folder root
```

Adds "SomeAdmin" account from "Some_Safe" as the logon account for account with id 29_4

### EXAMPLE 2

```powershell
Set-PASLinkedAccount -AccountID 29_4 -safe Some_Safe -extraPasswordIndex 2 -name SomeAccount -folder root
```

Adds "SomeAccount" account from "Some_Safe" as the extrapass2 account for account with id 29_4

### EXAMPLE 3

```powershell
Set-PASLinkedAccount -AccountID 29_4 -safe Some_Safe -extraPasswordIndex 3 -name SomeReconcile -folder root
```

Adds "SomeReconcile" account from "Some_Safe" as the reconcile account for account with id 29_4

### EXAMPLE 4

```powershell
Set-PASLinkedAccount -AccountID 29_4, 30_5 -safe Some_Safe -extraPasswordIndex 1 -name SomeAdmin -folder root
```

Adds "SomeAdmin" as the logon account for accounts 29_4 and 30_5 in a single bulk request.

## PARAMETERS

### -AccountID

The AccountID of the account to associate a linked account to.

When more than one value is supplied, a bulk link request is sent.
The AccountID of the account to associate a linked account to.

When more than one value is supplied, a bulk link request is sent.

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

The linked account's extra password index (1,2, or 3).

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -folder

The folder in which the linked account is stored in it's safe.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -name

The accountname of the linked account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -safe

The Safe in which the linked account is stored.

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

Bulk operations require CyberArk version 15.2 or later and are triggered when `-AccountID` contains more than one value.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASLinkedAccount](https://pspas.pspete.dev/commands/Set-PASLinkedAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Link-account.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Link-account.htm)

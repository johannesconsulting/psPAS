---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASAccountGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASAccountGroup
---

# New-PASAccountGroup

## SYNOPSIS

Adds a new account group to the Vault

## SYNTAX

### Default (Default)

```
New-PASAccountGroup [-GroupName] <String> [-GroupPlatformID] <String> [-Safe] <String> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASAccountGroup [-GroupName] <string> [-GroupPlatformID] <string> [-Safe] <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Defines a new account group in the vault.

The following permissions are required on the safe where the account group will be created:
 - Add Accounts
 - Update Account Content
 - Update Account Properties
  -Create Folders

## EXAMPLES

### EXAMPLE 1

```
New-PASAccountGroup -GroupName UATGroup -GroupPlatformID UnixGroup-NonProd -Safe UAT-Team
```

Creates new account group named UATGroup and assigns to platform in the UAT-Team Safe.

### EXAMPLE 2

```
New-PASAccountGroup -GroupName ProdDBGroup -GroupPlatformID OracleGroup-Prod -Safe Prod-DB -WhatIf
```

Shows what would happen if the ProdDBGroup account group was created in the Prod-DB safe, without actually creating it.

### EXAMPLE 3

```
[PSCustomObject]@{GroupName = 'FinanceGroup'; GroupPlatformID = 'WinGroup-Finance'; Safe = 'Finance-Safe' } | New-PASAccountGroup
```

Creates a new account group using pipeline input, since GroupName, GroupPlatformID and Safe all accept values by property name.

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

### -GroupName

The name of the group to create

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

### -GroupPlatformID

The name of the platform for the group.

The associated platform must be set to "PolicyType=Group" or "PolicyType=RotationalGroup"

To add Account Group with Policy Type of Rotational Group requires minimum version of 12.2
The name of the platform for the group.

The associated platform must be set to "PolicyType=Group" or "PolicyType=RotationalGroup"

To add Account Group with Policy Type of Rotational Group requires minimum version of 12.2

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

### -Safe

The Safe where the group will be created

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

Minimum version 9.9.5

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASAccountGroup](https://pspas.pspete.dev/commands/New-PASAccountGroup)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add-account-group.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add-account-group.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASGroup
---

# New-PASGroup

## SYNOPSIS

Creates a vault group.

## SYNTAX

### Default (Default)

```
New-PASGroup [-groupName] <String> [[-description] <String>] [[-location] <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASGroup [-groupName] <string> [[-description] <string>] [[-location] <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new Vault group.

Requires the following permissions:
- Add Users
- Update Users

## EXAMPLES

### EXAMPLE 1

```
New-PASGroup -groupName SomeNewGroup -description "Some Description" -location \PSP\CyberArk\Groups
```

Creates SomeNewGroup in the \PSP\CyberArk\Groups vault location

### EXAMPLE 2

```
New-PASGroup -groupName VaultGroup -description "Some Description" -location \
```

Creates VaultGroup in the root vault location

### EXAMPLE 3

```
New-PASGroup -groupName SomeNewGroup -WhatIf
```

Shows what would happen if SomeNewGroup was created, without making any changes

### EXAMPLE 4

```
[PSCustomObject]@{groupName = 'FinanceAdmins'; description = 'Finance Admin Group'; location = '\Finance'} | New-PASGroup
```

Creates FinanceAdmins in the \Finance vault location, using pipeline input

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

### -description

A description for the group

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

### -groupName

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

### -location

The vault location to create the group in.

Preceded by "\"
The vault location to create the group in.

Preceded by "\"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
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

Minimum Version 11.1

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASGroup](https://pspas.pspete.dev/commands/New-PASGroup)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/rest-api-create-group.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/rest-api-create-group.htm)

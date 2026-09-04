---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Disable-PASCPMAutoManagement
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Disable-PASCPMAutoManagement
---

# Disable-PASCPMAutoManagement

## SYNOPSIS

Disables an account for Automatic CPM Management.

## SYNTAX

### Default (Default)

```
Disable-PASCPMAutoManagement -AccountID <String> [-Reason <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### manualManagementReason

```
Disable-PASCPMAutoManagement -AccountID <string> [-Reason <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Disables an account for CPM management by setting automaticManagementEnabled to $false,
and optionally sets a value for manualManagementReason.

## EXAMPLES

### EXAMPLE 1

```
Disables-PASCPMAutoManagement -AccountID 543_2
```

Sets automaticManagementEnabled to $false on account with ID 543_2

### EXAMPLE 2

```
Disables-PASCPMAutoManagement -AccountID 543_2 -Reason "Some Reason"
```

Sets automaticManagementEnabled to $false & sets manualManagementReason on account with ID 543_2

### EXAMPLE 3

```
Get-PASAccount -id 543_2 | Disable-PASCPMAutoManagement -Reason "Maintenance window"
```

Disables automatic CPM management for the account returned by Get-PASAccount, using pipeline input for -AccountID, and sets a reason

### EXAMPLE 4

```
Get-PASAccount -Safe UNIX -Keywords root | Disable-PASCPMAutoManagement
```

Disables automatic CPM management for every account returned by the Get-PASAccount query

## PARAMETERS

### -AccountID

The ID of the account to disable automatic CPM management.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
ParameterSets:
- Name: (All)
  Position: Named
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

### -Reason

The value to set for manualManagementReason

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: manualManagementReason
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
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

Applicable to and requires 10.4+

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Disable-PASCPMAutoManagement](https://pspas.pspete.dev/commands/Disable-PASCPMAutoManagement)
- [https://pspas.pspete.dev/commands/Set-PASAccount](https://pspas.pspete.dev/commands/Set-PASAccount)

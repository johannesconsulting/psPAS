---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Enable-PASCPMAutoManagement
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Enable-PASCPMAutoManagement
---

# Enable-PASCPMAutoManagement

## SYNOPSIS

Enables an account for Automatic CPM Management.

## SYNTAX

### Default (Default)

```
Enable-PASCPMAutoManagement [-AccountID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Enable-PASCPMAutoManagement [-AccountID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Enables an account for CPM management by setting automaticManagementEnabled to $true,
and clearing any value set for manualManagementReason.

Attempting to set automaticManagementEnabled to $true without clearing manualManagementReason
at the same time results in an error.

This function requests the API to perform both operations with a single command.

## EXAMPLES

### EXAMPLE 1

```
Enable-PASCPMAutoManagement -AccountID 543_2
```

Sets automaticManagementEnabled to $true & clears any value set for manualManagementReason
on account with ID 543_2

### EXAMPLE 2

```
Get-PASAccount -id 543_2 | Enable-PASCPMAutoManagement
```

Gets the specified account and enables it for automatic CPM management, using the account ID from the pipeline.

### EXAMPLE 3

```
Get-PASAccount -search "Administrator" | Enable-PASCPMAutoManagement
```

Enables automatic CPM management for every account returned by the search.

## PARAMETERS

### -AccountID

The ID of the account to enable for automatic management by CPM.

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

Applicable to and requires 10.4+

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Enable-PASCPMAutoManagement](https://pspas.pspete.dev/commands/Enable-PASCPMAutoManagement)
- [https://pspas.pspete.dev/commands/Set-PASAccount](https://pspas.pspete.dev/commands/Set-PASAccount)

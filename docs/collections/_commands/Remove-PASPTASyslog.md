---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPTASyslog
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPTASyslog
---

# Remove-PASPTASyslog

## SYNOPSIS

Removes SYSLOG configuration from PTA

## SYNTAX

### Default (Default)

```
Remove-PASPTASyslog [-ID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPTASyslog [-ID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes a SYSLOG configuration from PTA

## EXAMPLES

### Example 1

```powershell
Remove-PASPTASyslog -ID SomeID
```

Removes specified SYSLOG configuration from PTA

### Example 2

```powershell
Remove-PASPTASyslog -ID 65f2a1c3b8e4a900123abcde -WhatIf
```

Shows what would happen if the SYSLOG configuration with the specified ID were removed, without making the change

### Example 3

```powershell
[PSCustomObject]@{ID = '65f2a1c3b8e4a900123abcde'} | Remove-PASPTASyslog
```

Removes the SYSLOG configuration using an ID value supplied via the pipeline

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

### -ID

The ID of the SYSLOG configuration to delete

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

- [https://pspas.pspete.dev/commands/Remove-PASPTASyslog](https://pspas.pspete.dev/commands/Remove-PASPTASyslog)

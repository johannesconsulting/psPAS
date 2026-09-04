---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPTAExcludedTarget
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPTAExcludedTarget
---

# Remove-PASPTAExcludedTarget

## SYNOPSIS

Removes excluded target from PTA

## SYNTAX

### Default (Default)

```
Remove-PASPTAExcludedTarget [-ID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPTAExcludedTarget [-ID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Remove configured excluded target

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASPTAExcludedTarget -ID 65b6aa31721d9b5f3a56ca7e
```

Removes excluded target matching ID

### EXAMPLE 2

```powershell
Remove-PASPTAExcludedTarget -ID 65b6aa31721d9b5f3a56ca7e -WhatIf
```

Shows what would happen if the excluded target matching ID was removed, without making the change.

### EXAMPLE 3

```powershell
[PSCustomObject]@{ID = '65b6aa31721d9b5f3a56ca7f' } | Remove-PASPTAExcludedTarget
```

Removes the excluded target matching the ID, using pipeline input.

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

The ID of the Excluded Target to remove

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

- [https://pspas.pspete.dev/commands/Remove-PASPTAExcludedTarget](https://pspas.pspete.dev/commands/Remove-PASPTAExcludedTarget)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm)

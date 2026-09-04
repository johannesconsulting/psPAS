---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPTAPrivilegedGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPTAPrivilegedGroup
---

# Remove-PASPTAPrivilegedGroup

## SYNOPSIS

Deletes PTA configured privileged group

## SYNTAX

### Default (Default)

```
Remove-PASPTAPrivilegedGroup [-ID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPTAPrivilegedGroup [-ID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Delete privileged group configured in PTA

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASPTAPrivilegedGroup -ID 65b6aa31721d9b5f3a56ca7e
```

Deletes group configuration matching ID

### EXAMPLE 2

```powershell
Get-PASPTAPrivilegedGroup | Where-Object { $_.group -eq 'Domain Admins' } | Remove-PASPTAPrivilegedGroup
```

Finds the Domain Admins group configuration and removes it from PTA.

### EXAMPLE 3

```powershell
Remove-PASPTAPrivilegedGroup -ID 65b6aa31721d9b5f3a56ca7e -WhatIf
```

Shows what would happen if the group configuration matching ID was removed, without making the change.

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

The ID of the group configuration to delete

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

- [https://pspas.pspete.dev/commands/Remove-PASPTAPrivilegedGroup](https://pspas.pspete.dev/commands/Remove-PASPTAPrivilegedGroup)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm)

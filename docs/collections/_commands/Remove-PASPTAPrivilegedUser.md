---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPTAPrivilegedUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPTAPrivilegedUser
---

# Remove-PASPTAPrivilegedUser

## SYNOPSIS

Delete configured privileged user from PTA

## SYNTAX

### Default (Default)

```
Remove-PASPTAPrivilegedUser [-ID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPTAPrivilegedUser [-ID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes configured privileged user from PTA

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASPTAPrivilegedUser -ID 65b6aa31721d9b5f3a56ca7e
```

Deletes user configuration matching ID

### EXAMPLE 2

```powershell
Get-PASPTAPrivilegedUser | Where-Object { $_.user -eq 'Bob' } | Remove-PASPTAPrivilegedUser
```

Finds the privileged user configuration for Bob and removes it from PTA.

### EXAMPLE 3

```powershell
Remove-PASPTAPrivilegedUser -ID 65b6aa31721d9b5f3a56ca7e -WhatIf
```

Shows what would happen if the user configuration matching ID was removed, without making the change.

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

The ID of the user configuration to delete

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

- [https://pspas.pspete.dev/commands/Remove-PASPTAPrivilegedUser](https://pspas.pspete.dev/commands/Remove-PASPTAPrivilegedUser)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/DeleteSecurity.htm)

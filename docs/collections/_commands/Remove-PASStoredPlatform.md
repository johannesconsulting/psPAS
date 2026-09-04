---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASStoredPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASStoredPlatform
---

# Remove-PASStoredPlatform

## SYNOPSIS

Removes the platform stored in memory.

## SYNTAX

### Default (Default)

```
Remove-PASStoredPlatform [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASStoredPlatform [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes the platform stored in memory.

Requires Vault Admin membership

## EXAMPLES

### Example 1

```powershell
Remove-PASStoredPlatform
```

Delete the stored platform from memory

### Example 2

```powershell
Remove-PASStoredPlatform -WhatIf
```

Shows what would happen if the stored platform was deleted, without actually deleting it

### Example 3

```powershell
if (Get-PASStoredPlatform) { Remove-PASStoredPlatform -Confirm:$false }
```

Removes the stored platform only if one is currently present in memory, without prompting for confirmation

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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASStoredPlatform](https://pspas.pspete.dev/commands/Remove-PASStoredPlatform)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/deletestoredplatform.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/deletestoredplatform.htm)

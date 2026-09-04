---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Reset-PASTheme
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Reset-PASTheme
---

# Reset-PASTheme

## SYNOPSIS

Revert the UI to the default theme

## SYNTAX

### Default (Default)

```
Reset-PASTheme [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Reset-PASTheme [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deactivates the custom theme and revert the UI to the default theme

## EXAMPLES

### Example 1

```powershell
Reset-PASTheme
```

Reverts the UI to the default theme

### Example 2

```powershell
Reset-PASTheme -WhatIf
```

Shows what would happen if the UI theme was reset to the default, without actually making the change

### Example 3

```powershell
Reset-PASTheme -Confirm:$false
```

Reverts the UI to the default theme without prompting for confirmation

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

- [https://pspas.pspete.dev/commands/Reset-PASTheme](https://pspas.pspete.dev/commands/Reset-PASTheme)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-deactivate.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-deactivate.htm)

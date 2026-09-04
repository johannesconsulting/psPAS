---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Enable-PASTheme
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Enable-PASTheme
---

# Enable-PASTheme

## SYNOPSIS

Activate Theme

## SYNTAX

### Default (Default)

```
Enable-PASTheme -ThemesNames <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Enable-PASTheme [-ThemesNames] <string[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Sets a specific theme. It can be the default one or custom themes

## EXAMPLES

### EXAMPLE 1

```
Enable-PASTheme -ThemesNames "Default Dark"
```

Sets the theme to the default dark theme

### EXAMPLE 2

```
Enable-PASTheme -ThemesNames "Custom Light", "Custom Dark"
```

Activates both the "Custom Light" and "Custom Dark" themes together, so the UI can switch between them based on the user's light/dark mode preference.

### EXAMPLE 3

```
Enable-PASTheme -ThemesNames "Custom Dark" -WhatIf
```

Shows what would happen if the "Custom Dark" theme was activated, without actually making the change.

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

### -ThemesNames

The Name of the theme to activate

```yaml
Type: System.String[]
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

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Enable-PASTheme](https://pspas.pspete.dev/commands/Enable-PASTheme)
- [https://docs.cyberark.com/pam-self-hosted/14.4/en/content/sdk/rest-api-cust-ui-themes-activate.htm](https://docs.cyberark.com/pam-self-hosted/14.4/en/content/sdk/rest-api-cust-ui-themes-activate.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASTheme
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASTheme
---

# Remove-PASTheme

## SYNOPSIS

Delete Theme

## SYNTAX

### Default (Default)

```
Remove-PASTheme [-ThemeName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASTheme [-ThemeName] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes a specific theme

## EXAMPLES

### EXAMPLE 1

```
Remove-PASTheme -ThemeName "Custom Dark"
```

Removes the theme "Custom Dark"

### EXAMPLE 2

```
Remove-PASTheme -ThemeName "Custom Dark" -WhatIf
```

Shows what would happen if the "Custom Dark" theme was removed, without actually removing it.

### EXAMPLE 3

```
"Custom Dark", "Custom Light" | ForEach-Object { Remove-PASTheme -ThemeName $_ -Confirm:$false }
```

Removes both the "Custom Dark" and "Custom Light" themes without prompting for confirmation.

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

### -ThemeName

The name of the theme

```yaml
Type: System.String
DefaultValue: 0
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

- [https://pspas.pspete.dev/commands/Remove-PASTheme](https://pspas.pspete.dev/commands/Remove-PASTheme)
- [https://docs.cyberark.com/pam-self-hosted/14.4/en/content/sdk/rest-api-cust-ui-themes-delete.htm](https://docs.cyberark.com/pam-self-hosted/14.4/en/content/sdk/rest-api-cust-ui-themes-delete.htm)

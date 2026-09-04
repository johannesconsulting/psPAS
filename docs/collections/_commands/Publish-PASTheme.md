---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Publish-PASTheme
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Publish-PASTheme
---

# Publish-PASTheme

## SYNOPSIS

Updates draft state a custom theme

## SYNTAX

### Default (Default)

```
Publish-PASTheme [-ThemeName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Publish-PASTheme [-ThemeName] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates the draft state of a specific custom theme from $true to $false

## EXAMPLES

### Example 1

```powershell
Publish-PASTheme -ThemeName SomeTheme
```

Update the draft state of SomeTheme

### Example 2

```powershell
Publish-PASTheme -ThemeName "Custom Dark" -WhatIf
```

Shows what would happen if the draft state of "Custom Dark" was updated, without actually making the change

### Example 3

```powershell
"Custom Dark", "Custom Light" | ForEach-Object { Publish-PASTheme -ThemeName $_ }
```

Publishes both the "Custom Dark" and "Custom Light" draft themes

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

The name of the custom theme to update its draft state.

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

- [https://pspas.pspete.dev/commands/Publish-PASTheme](https://pspas.pspete.dev/commands/Publish-PASTheme)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-update-draft.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-update-draft.htm)

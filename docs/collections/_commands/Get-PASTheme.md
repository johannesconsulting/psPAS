---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASTheme
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASTheme
---

# Get-PASTheme

## SYNOPSIS

Return Custom Theme Details

## SYNTAX

### byAll (Default)

```
Get-PASTheme [-FindAll] [<CommonParameters>]
```

### ByName

```
Get-PASTheme -ThemeName <String> [<CommonParameters>]
```

### ByActive

```
Get-PASTheme -Active [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns a list of all available custom themes, a specific theme, or the current active theme.

Requires Membership of the Vault Admin group.

## EXAMPLES

### Example 1

```powershell
Get-PASTheme
```

Return all available custom themes

### Example 2

```powershell
Get-PASTheme -ThemeName SomeTheme
```

Return details of the specified theme

### Example 3

```powershell
Get-PASTheme -Active
```

Return details fo the active theme

## PARAMETERS

### -Active

Specify to return the details of the currently active theme

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByActive
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FindAll

Specify to return the details of all available themes

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byAll
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

The name of the theme to return details of

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ByName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASTheme](https://pspas.pspete.dev/commands/Get-PASTheme)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-ret-list.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-ret-list.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-ret-theme.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-ret-theme.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-ret-current.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-themes-ret-current.htm)

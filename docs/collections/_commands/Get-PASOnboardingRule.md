---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASOnboardingRule
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASOnboardingRule
---

# Get-PASOnboardingRule

## SYNOPSIS

Gets all automatic on-boarding rules

## SYNTAX

### Default (Default)

```
Get-PASOnboardingRule [-Names <String>] [<CommonParameters>]
```

### Names

```
Get-PASOnboardingRule [-Names <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information on defined on-boarding rules.

Vault Admin membership required.

## EXAMPLES

### EXAMPLE 1

```
Get-PASOnboardingRule
```

List information on all On-boarding rules

### EXAMPLE 2

```
Get-PASOnboardingRule -Names Rule1,Rule2
```

List information on On-boarding rules "Rule1" & "Rule2"

### EXAMPLE 3

```
Get-PASOnboardingRule -Names Rule1
```

List information on the On-boarding rule named "Rule1"

### EXAMPLE 4

```
[PSCustomObject]@{Names='Rule1,Rule2'} | Get-PASOnboardingRule
```

Passes the rule names to retrieve via the pipeline

## PARAMETERS

### -Names

A filter that specifies the rule name.

Separate a list of rules with commas.

If not specified, all rules will be returned.

For version 10.2 onwards (not a supported parameter on earlier versions)
A filter that specifies the rule name.

Separate a list of rules with commas.

If not specified, all rules will be returned.

For version 10.2 onwards (not a supported parameter on earlier versions)

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Names
  Position: Named
  IsRequired: false
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASOnboardingRule](https://pspas.pspete.dev/commands/Get-PASOnboardingRule)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAutoOnboardingRules.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAutoOnboardingRules.htm)

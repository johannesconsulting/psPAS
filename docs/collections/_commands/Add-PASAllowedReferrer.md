---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASAllowedReferrer
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASAllowedReferrer
---

# Add-PASAllowedReferrer

## SYNOPSIS

Adds an entry to the allowed referrer list.

## SYNTAX

### Default (Default)

```
Add-PASAllowedReferrer [-referrerURL] <String> [[-regularExpression] <Boolean>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASAllowedReferrer [-referrerURL] <string> [[-regularExpression] <bool>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new web application URL to the allowed referrer list.

Vault admins group membership required.

## EXAMPLES

### EXAMPLE 1

```
Add-PASAllowedReferrer -referrerURL "https://CompanyA/portal/"
```

Adds portal URL which permits access from any page or sub-directory

### EXAMPLE 2

```
Add-PASAllowedReferrer -referrerURL "https://CompanyB/management/dashboard"
```

Adds URL that only allows access from a specific page

### EXAMPLE 3

```
Add-PASAllowedReferrer -referrerURL "https://CompanyC/.*" -regularExpression $true
```

Adds a URL pattern that is evaluated as a regular expression

### EXAMPLE 4

```
Import-Csv referrers.csv | Add-PASAllowedReferrer
```

Adds every allowed referrer URL listed in the referrerURL column of referrers.csv

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

### -referrerURL

A URL from where access to PVWA will be allowed:

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

### -regularExpression

Whether or not the URL is a regular expression.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.
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

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASAllowedReferrer](https://pspas.pspete.dev/commands/Add-PASAllowedReferrer)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Add_Allowed_Referrer.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Add_Allowed_Referrer.htm)

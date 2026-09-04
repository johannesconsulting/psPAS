---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTASecurityConfigurationCategory
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTASecurityConfigurationCategory
---

# Get-PASPTASecurityConfigurationCategory

## SYNOPSIS

Returns PTA security configuration categories

## SYNTAX

### Default (Default)

```
Get-PASPTASecurityConfigurationCategory [-categoryKey <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTASecurityConfigurationCategory [[-categoryKey] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns PTA security configuration categories

## EXAMPLES

### EXAMPLE 1

```
Get-PASPTASecurityConfigurationCategory
```

Returns all PTA security configuration categories

### EXAMPLE 2

```
Get-PASPTASecurityConfigurationCategory -categoryKey PrivilegedUsersAndGroups
```

Returns PTA security configuration details for the PrivilegedUsersAndGroups category.

### EXAMPLE 3

```
Get-PASPTASecurityConfigurationCategory -Category SuspectedCredentialsTheft
```

Returns PTA security configuration details for the SuspectedCredentialsTheft category, using the Category alias.

### EXAMPLE 4

```
'IrregularHoursUser', 'IrregularDaysUser' | ForEach-Object { Get-PASPTASecurityConfigurationCategory -categoryKey $_ }
```

Returns PTA security configuration details for both the IrregularHoursUser and IrregularDaysUser categories.

## PARAMETERS

### -categoryKey

The PTA category to return information on

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Category
ParameterSets:
- Name: (All)
  Position: 0
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

Minimum Version CyberArk 14.2

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPTASecurityConfigurationCategory](https://pspas.pspete.dev/commands/Get-PASPTASecurityConfigurationCategory)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/getsecuritycategories.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/getsecuritycategories.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Reset-PASPTASecurityConfigurationCategory
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Reset-PASPTASecurityConfigurationCategory
---

# Reset-PASPTASecurityConfigurationCategory

## SYNOPSIS

Resets PTA security configuration category to default values

## SYNTAX

### Default (Default)

```
Reset-PASPTASecurityConfigurationCategory [-categoryKey] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Reset-PASPTASecurityConfigurationCategory [-categoryKey] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Resets PTA security configuration category to default values

## EXAMPLES

### EXAMPLE 1

```
Reset-PASPTASecurityConfigurationCategory -categoryKey "ActiveDormantUser"
```

Resets the ActiveDormantUser category to default values

### EXAMPLE 2

```
Reset-PASPTASecurityConfigurationCategory -categoryKey "SuspectedCredentialsTheft"
```

Resets the SuspectedCredentialsTheft category to default values

### EXAMPLE 3

```
[PSCustomObject]@{categoryKey = 'IrregularHoursUser'} | Reset-PASPTASecurityConfigurationCategory
```

Resets the IrregularHoursUser category to default values, using pipeline input

### EXAMPLE 4

```
Reset-PASPTASecurityConfigurationCategory -categoryKey "FailedVaultLogonAttempts" -WhatIf
```

Shows what would happen if the FailedVaultLogonAttempts category was reset to default values, without making any changes

## PARAMETERS

### -categoryKey

The key of the PTA security configuration category to reset

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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum Version CyberArk 14.2

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Reset-PASPTASecurityConfigurationCategory](https://pspas.pspete.dev/commands/Reset-PASPTASecurityConfigurationCategory)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resetsecuritycategory.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resetsecuritycategory.htm)

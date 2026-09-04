---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Reset-PASPTASecurityConfigurationProperty
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Reset-PASPTASecurityConfigurationProperty
---

# Reset-PASPTASecurityConfigurationProperty

## SYNOPSIS

Resets PTA security configuration property to default value

## SYNTAX

### Default (Default)

```
Reset-PASPTASecurityConfigurationProperty [-propertyKey] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Reset-PASPTASecurityConfigurationProperty [-propertyKey] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Resets PTA security configuration property to default value

Minimum required version 14.2

## EXAMPLES

### EXAMPLE 1

```
Reset-PASPTASecurityConfigurationProperty -propertyKey "ActiveDormantUserDays"
```

Resets the ActiveDormantUserDays property to its default value

### EXAMPLE 2

```
Reset-PASPTASecurityConfigurationProperty -propertyKey "FailedVaultLogonAttemptsThreshold"
```

Resets the FailedVaultLogonAttemptsThreshold property to its default value

### EXAMPLE 3

```
[PSCustomObject]@{propertyKey = 'SCTPasswordRetrievalTimeWindow'} | Reset-PASPTASecurityConfigurationProperty
```

Resets the SCTPasswordRetrievalTimeWindow property to its default value, using pipeline input

### EXAMPLE 4

```
Reset-PASPTASecurityConfigurationProperty -propertyKey "UPAExcludedAccountsList" -WhatIf
```

Shows what would happen if the UPAExcludedAccountsList property was reset to its default value, without making any changes

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

### -propertyKey

The key of the PTA security configuration property to reset

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

Minimum Version CyberArk 14.2

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Reset-PASPTASecurityConfigurationProperty](https://pspas.pspete.dev/commands/Reset-PASPTASecurityConfigurationProperty)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resetsecurityproperty.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resetsecurityproperty.htm)

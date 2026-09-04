---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPTASecurityConfigurationProperty
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPTASecurityConfigurationProperty
---

# Remove-PASPTASecurityConfigurationProperty

## SYNOPSIS

Removes PTA security configuration property

## SYNTAX

### Default (Default)

```
Remove-PASPTASecurityConfigurationProperty [-propertyKey] <String> [-id] <String> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPTASecurityConfigurationProperty [-propertyKey] <string> [-id] <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

This deletes a specific PTA security configuration property

## EXAMPLES

### EXAMPLE 1

```
Remove-PASPTASecurityConfigurationProperty -propertyKey "PrivilegedUsersList" -id "someid"
```

Removes the specified id from the PrivilegedUsersList property

### EXAMPLE 2

```
Remove-PASPTASecurityConfigurationProperty -propertyKey "SCTExcludedAccountsList" -id "someid"
```

Removes the specified id from the SCTExcludedAccountsList property

### EXAMPLE 3

```
[PSCustomObject]@{propertyKey = 'IrregularIpUserExcludedSourceIpsList'; id = '10.0.0.5'} | Remove-PASPTASecurityConfigurationProperty
```

Removes the specified id from the IrregularIpUserExcludedSourceIpsList property, using pipeline input

### EXAMPLE 4

```
Remove-PASPTASecurityConfigurationProperty -propertyKey "PrivilegedDomainGroupsList" -id "someid" -WhatIf
```

Shows what would happen if the specified id was removed from the PrivilegedDomainGroupsList property, without making any changes

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

### -id

The ID of the item to remove from the property

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -propertyKey

The key of the PTA security configuration property

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

- [https://pspas.pspete.dev/commands/Remove-PASPTASecurityConfigurationProperty](https://pspas.pspete.dev/commands/Remove-PASPTASecurityConfigurationProperty)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/deletesecurity.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/deletesecurity.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPTARemediation
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPTARemediation
---

# Set-PASPTARemediation

## SYNOPSIS

Updates automatic remediation settings in PTA

## SYNTAX

### Default (Default)

```
Set-PASPTARemediation [[-changePassword_SuspectedCredentialsTheft] <Boolean>]
 [[-changePassword_OverPassTheHash] <Boolean>]
 [[-reconcilePassword_SuspectedPasswordChange] <Boolean>]
 [[-pendAccount_UnmanagedPrivilegedAccount] <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASPTARemediation [[-changePassword_SuspectedCredentialsTheft] <bool>]
 [[-changePassword_OverPassTheHash] <bool>] [[-reconcilePassword_SuspectedPasswordChange] <bool>]
 [[-pendAccount_UnmanagedPrivilegedAccount] <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates automatic remediation settings configured in PTA

## EXAMPLES

### EXAMPLE 1

```
Set-PASPTARemediation -changePassword_SuspectedCredentialsTheft $true
```

Enables the "Change password on Suspected Credentials Theft" rule.

### EXAMPLE 2

```
Set-PASPTARemediation -reconcilePassword_SuspectedPasswordChange $false
```

Disables the "reconcile on suspected password change" rule.

### EXAMPLE 3

```
Set-PASPTARemediation -changePassword_OverPassTheHash $true -pendAccount_UnmanagedPrivilegedAccount $true
```

Enables the "Change Password on Over Pass The Hash" rule and the "Add Unmanaged Accounts to Pending Accounts" rule.

### EXAMPLE 4

```
Set-PASPTARemediation -pendAccount_UnmanagedPrivilegedAccount $false -WhatIf
```

Shows what would happen if the "Add Unmanaged Accounts to Pending Accounts" rule was disabled, without making any changes.

## PARAMETERS

### -changePassword_OverPassTheHash

Indicate if the Change Password on Over Pass The Hash command is active

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

### -changePassword_SuspectedCredentialsTheft

Indicate if Change Password on Suspected Credential Theft the command is active

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
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

### -pendAccount_UnmanagedPrivilegedAccount

Indicate if the Add Unmanaged Accounts to Pending Accounts command is active

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -reconcilePassword_SuspectedPasswordChange

Indicate if the Reconcile Password on Suspected Password Change command is active

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
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

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum Version CyberArk 10.4

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPTARemediation](https://pspas.pspete.dev/commands/Set-PASPTARemediation)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/AutomaticRemediation_UpdateConfiguration.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/AutomaticRemediation_UpdateConfiguration.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Clear-PASDependentLinkedAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Clear-PASDependentLinkedAccount
---

# Clear-PASDependentLinkedAccount

## SYNOPSIS

Clears a linked account from a dependent account

## SYNTAX

### SaaS

```
Clear-PASDependentLinkedAccount -AccountID <string> -dependentAccountId <string>
 -extraPasswordIndex <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SelfHosted

```
Clear-PASDependentLinkedAccount -AccountID <string> -dependentAccountId <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Unlink an account from a dependent account

## EXAMPLES

### Example 1 - Privilege Cloud

```powershell
Clear-PASDependentLinkedAccount -AccountID 32_1 -dependentAccountId 32_2 -extraPasswordIndex 1
```

Clears linked account index 1 from dependent account 32_2

### Example 2 - Self-Hosted

```powershell
Clear-PASDependentLinkedAccount -AccountID 32_1 -dependentAccountId 32_2
```

Clears the linked account from dependent account 32_2

Requires Self-Hosted CyberArk PAS v15.2 or greater.

### Example 3 - WhatIf

```powershell
Clear-PASDependentLinkedAccount -AccountID 32_1 -dependentAccountId 32_2 -WhatIf
```

Shows what would happen if the linked account were cleared from dependent account 32_2, but does not perform the action.

### Example 4 - Pipeline Input

```powershell
Get-PASAccount -id 32_1 | Clear-PASDependentLinkedAccount -dependentAccountId 32_2 -extraPasswordIndex 1
```

Clears linked account index 1 from dependent account 32_2, using pipeline input from Get-PASAccount for the parent account ID.

## PARAMETERS

### -AccountID

The ID of the parent account for the linked account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
ParameterSets:
- Name: SaaS
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: SelfHosted
  Position: Named
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

### -dependentAccountId

The ID of the Dependent account for the Parent Account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- dependentid
ParameterSets:
- Name: SaaS
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: SelfHosted
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -extraPasswordIndex

The index of the account to unlink from the dependent account.
Used for Privilege Cloud environments.
The index of the account to unlink from the dependent account.
Used for Privilege Cloud environments.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SaaS
  Position: Named
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Clear-PASDependentLinkedAccount](https://pspas.pspete.dev/commands/Clear-PASDependentLinkedAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/account-dependents-cpm.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/account-dependents-cpm.htm)

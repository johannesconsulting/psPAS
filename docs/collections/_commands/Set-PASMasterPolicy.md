---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASMasterPolicy
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASMasterPolicy
---

# Set-PASMasterPolicy

## SYNOPSIS

Updates Master Policy

## SYNTAX

### Default (Default)

```
Set-PASMasterPolicy [[-DualControl] <Boolean>] [[-MultiLevelApproval] <Boolean>]
 [[-OnlyManagersApproval] <Boolean>] [[-ConfirmersNumber] <Int32>]
 [[-EnforceExclusiveAccess] <Boolean>] [[-EnforceOneTimePassword] <Boolean>]
 [[-TransparentConnection] <Boolean>] [[-AllowViewPassword] <Boolean>] [[-RequireReason] <Boolean>]
 [[-AllowFreeText] <Boolean>] [[-PasswordChangeDays] <Int32>] [[-PasswordVerificationDays] <Int32>]
 [[-RequireMonitoringAndIsolation] <Boolean>] [[-RecordActivity] <Boolean>]
 [[-RetentionPeriod] <Int32>] [-PolicyId <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASMasterPolicy [[-PolicyId] <int>] [[-DualControl] <bool>] [[-MultiLevelApproval] <bool>]
 [[-OnlyManagersApproval] <bool>] [[-ConfirmersNumber] <int>] [[-EnforceExclusiveAccess] <bool>]
 [[-EnforceOneTimePassword] <bool>] [[-TransparentConnection] <bool>] [[-AllowViewPassword] <bool>]
 [[-RequireReason] <bool>] [[-AllowFreeText] <bool>] [[-PasswordChangeDays] <int>]
 [[-PasswordVerificationDays] <int>] [[-RequireMonitoringAndIsolation] <bool>]
 [[-RecordActivity] <bool>] [[-RetentionPeriod] <int>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows a Vault Admin to update Master Policy Settings

## EXAMPLES

### Example 1

```powershell
Set-PASMasterPolicy -DualControl $false
```

Disables Dual Control in master Policy

### Example 2

```powershell
Set-PASMasterPolicy -DualControl $true -ConfirmersNumber 2 -RequireReason $true
```

Enables Dual Control in the Master Policy, sets the required number of confirmers to 2, and requires a reason to be entered before an account can be accessed.

### Example 3

```powershell
Set-PASMasterPolicy -RecordActivity $true -RetentionPeriod 90 -WhatIf
```

Shows what would happen if session recording were enabled with a 90 day retention period, without applying the change.

### Example 4

```powershell
2 | Set-PASMasterPolicy -DualControl $true
```

Enables Dual Control on policy ID 2, received from the pipeline. Managing a policy other than the default Master Policy (ID 1) requires CyberArk version 15.0 or later.

## PARAMETERS

### -AllowFreeText

Allow free text reason.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowViewPassword

Allow view password policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
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

### -ConfirmersNumber

Configure number of confirmers policy.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DualControl

Set Dual control policy.

```yaml
Type: System.Boolean
DefaultValue: None
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

### -EnforceExclusiveAccess

Enforce exclusive access policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -EnforceOneTimePassword

Enforce one-time password policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MultiLevelApproval

Configure Multi-level approvals.

```yaml
Type: System.Boolean
DefaultValue: None
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

### -OnlyManagersApproval

Configure approval by managers only policy.

```yaml
Type: System.Boolean
DefaultValue: None
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

### -PasswordChangeDays

Password change frequency policy.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 11
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PasswordVerificationDays

Password verification frequency policy.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 12
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PolicyId

The ID of the policy to update.

```yaml
Type: System.Int32
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RecordActivity

Record activity policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 14
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RequireMonitoringAndIsolation

Require monitoring and isolation policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 13
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RequireReason

Require reason policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RetentionPeriod

Retention period policy.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 15
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TransparentConnection

Transparent connection policy.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
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

### System.Boolean

### System.Int32

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASMasterPolicy](https://pspas.pspete.dev/commands/Set-PASMasterPolicy)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/update-policy-by-id.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/update-policy-by-id.htm)

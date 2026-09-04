---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASOnboardingRule
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASOnboardingRule
---

# Set-PASOnboardingRule

## SYNOPSIS

Updates an automatic onboarding rule.

## SYNTAX

### Default (Default)

```
Set-PASOnboardingRule [-Id] <Int32> [[-TargetPlatformId] <String>] [[-TargetSafeName] <String>]
 [[-IsAdminIDFilter] <Boolean>] [[-MachineTypeFilter] <String>] [[-SystemTypeFilter] <String>]
 [[-UserNameFilter] <String>] [[-UserNameMethod] <String>] [[-AddressFilter] <String>]
 [[-AddressMethod] <String>] [[-AccountCategoryFilter] <String>] [[-RuleName] <String>]
 [[-RuleDescription] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASOnboardingRule [-Id] <int> [[-TargetPlatformId] <string>] [[-TargetSafeName] <string>]
 [[-IsAdminIDFilter] <bool>] [[-MachineTypeFilter] <string>] [[-SystemTypeFilter] <string>]
 [[-UserNameFilter] <string>] [[-UserNameMethod] <string>] [[-AddressFilter] <string>]
 [[-AddressMethod] <string>] [[-AccountCategoryFilter] <string>] [[-RuleName] <string>]
 [[-RuleDescription] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing automatic onboarding rule.

## EXAMPLES

### EXAMPLE 1

```
Set-PASOnboardingRule -Id 1 -TargetPlatformId WINDOMAIN -TargetSafeName SafeName -SystemTypeFilter Windows
```

Updates Onboarding Rule with ID 1

### EXAMPLE 2

```
Set-PASOnboardingRule -Id 1 -RuleDescription "Updated to include cyberark.local addresses"
```

Updates only the description of on-boarding rule 1; all other existing properties of the rule are preserved.

### EXAMPLE 3

```
Get-PASOnboardingRule | Where-Object { $_.RuleName -eq 'Unix Root Accounts' } | Set-PASOnboardingRule -AccountCategoryFilter Privileged
```

Finds the "Unix Root Accounts" rule and updates it, via the pipeline, to only match privileged accounts.

### EXAMPLE 4

```
Set-PASOnboardingRule -Id 1 -TargetSafeName NewSafeName -WhatIf
```

Shows what would happen if the target safe for on-boarding rule 1 was changed, without actually updating the rule.

## PARAMETERS

### -AccountCategoryFilter

Filter for Privileged or Non-Privileged accounts.

```yaml
Type: System.String
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

### -AddressFilter

IP Address or DNS name of the machine by which to filter.

```yaml
Type: System.String
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

### -AddressMethod

The method to use when applying the address filter (Equals / Begins with/ Ends with).

This parameter is ignored if AddressFilter is not specified.
The method to use when applying the address filter (Equals / Begins with/ Ends with).

This parameter is ignored if AddressFilter is not specified.

```yaml
Type: System.String
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

### -Id

The ID of the rule to update.

```yaml
Type: System.Int32
DefaultValue: 0
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

### -IsAdminIDFilter

Whether or not UNIX accounts with UID=0 or Windows accounts with SID ending in 500 will be onboarded automatically
using this rule.

If set to false, all accounts matching the rule will be onboarded.
Whether or not UNIX accounts with UID=0 or Windows accounts with SID ending in 500 will be onboarded automatically using this rule.

If set to false, all accounts matching the rule will be onboarded.

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

### -MachineTypeFilter

The Machine Type by which to filter.

Leave blank for "Any"
The Machine Type by which to filter.

Leave blank for "Any"

```yaml
Type: System.String
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

### -RuleDescription

A description of the rule.

```yaml
Type: System.String
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

### -RuleName

Name of the rule

If left blank, a name will be generated automatically.
Name of the rule

If left blank, a name will be generated automatically.

```yaml
Type: System.String
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

### -SystemTypeFilter

The System Type by which to filter.

```yaml
Type: System.String
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

### -TargetPlatformId

The ID of the platform that will be associated to the on-boarded account.

```yaml
Type: System.String
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

### -TargetSafeName

The name of the Safe where the on-boarded account will be stored.

```yaml
Type: System.String
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

### -UserNameFilter

The name of the user by which to filter.

```yaml
Type: System.String
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

### -UserNameMethod

The method to use when applying the user name filter (Equals / Begins with/ Ends with).

This parameter is ignored if UserNameFilter is not specified.
The method to use when applying the user name filter (Equals / Begins with/ Ends with).

This parameter is ignored if UserNameFilter is not specified.

```yaml
Type: System.String
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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum Version: 10.5

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASOnboardingRule](https://pspas.pspete.dev/commands/Set-PASOnboardingRule)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/EditAutomaticOnboardingRule.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/EditAutomaticOnboardingRule.htm)

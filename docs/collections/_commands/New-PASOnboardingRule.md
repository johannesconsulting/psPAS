---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASOnboardingRule
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASOnboardingRule
---

# New-PASOnboardingRule

## SYNOPSIS

Adds a new on-boarding rule to the Vault

## SYNTAX

### Gen2 (Default)

```
New-PASOnboardingRule -TargetPlatformId <string> -TargetSafeName <string> -SystemTypeFilter <string>
 [-IsAdminIDFilter <bool>] [-MachineTypeFilter <string>] [-UserNameFilter <string>]
 [-UserNameMethod <string>] [-AddressFilter <string>] [-AddressMethod <string>]
 [-AccountCategoryFilter <string>] [-RuleName <string>] [-RuleDescription <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Gen1

```
New-PASOnboardingRule -DecisionSafeName <string> -DecisionPlatformId <string>
 -SystemTypeFilter <string> [-IsAdminUIDFilter <string>] [-MachineTypeFilter <string>]
 [-UserNameFilter <string>] [-AddressFilter <string>] [-RuleName <string>]
 [-RuleDescription <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new on-boarding rule to the Vault, that filters discovered local privileged pending accounts.

When a discovered pending account matches a rule, it will be automatically on-boarded to the safe that
is defined in the rule and the password will be reconciled.

If a newly discovered account does not match any rule, it will be added to the PendingAccounts list.

This function must be run with a Vault Admin account.

## EXAMPLES

### EXAMPLE 1

```
New-PASOnboardingRule -DecisionPlatformId DecisionPlatform -DecisionSafeName DecisionSafe -SystemTypeFilter Windows
```

Adds Onboarding Rule for Windows Accounts

### EXAMPLE 2

```
New-PASOnboardingRule -TargetPlatformId WinDomain -TargetSafeName WindowsAccounts -SystemTypeFilter Windows -AddressFilter cyberark.local -AddressMethod Ends -AccountCategoryFilter Privileged -RuleName "Windows Domain Accounts" -RuleDescription "Onboards discovered privileged Windows accounts"
```

Adds an on-boarding rule using the current (version 10.2 onwards) parameter set, restricting matches to privileged Windows accounts discovered on machines in the cyberark.local domain.

### EXAMPLE 3

```
New-PASOnboardingRule -TargetPlatformId UnixSSH -TargetSafeName UnixAccounts -SystemTypeFilter Unix -UserNameFilter root -UserNameMethod Equals -WhatIf
```

Shows what would happen if an on-boarding rule for discovered root accounts was created, without actually creating the rule.

## PARAMETERS

### -AccountCategoryFilter

Filter for Privileged or Non-Privileged accounts.

For Version 10.2 onwards
Filter for Privileged or Non-Privileged accounts.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
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

For Version 10.2 onwards
IP Address or DNS name of the machine by which to filter.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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

For Version 10.2 onwards
The method to use when applying the address filter (Equals / Begins with/ Ends with).

This parameter is ignored if AddressFilter is not specified.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
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

### -DecisionPlatformId

The ID of the platform that will be associated to the on-boarded account.

For Versions 9.8 to 10.1
The ID of the platform that will be associated to the on-boarded account.

For Versions 9.8 to 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DecisionSafeName

The name of the Safe where the on-boarded account will be stored.

For Versions 9.8 to 10.1
The name of the Safe where the on-boarded account will be stored.

For Versions 9.8 to 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IsAdminIDFilter

Whether or not UNIX accounts with UID=0 or Windows accounts with SID ending in 500 will be onboarded automatically using this rule.

If set to false, all accounts matching the rule will be onboarded.

For Version 10.2 onwards
Whether or not UNIX accounts with UID=0 or Windows accounts with SID ending in 500 will be onboarded automatically using this rule.

If set to false, all accounts matching the rule will be onboarded.

For Version 10.2 onwards

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IsAdminUIDFilter

Whether or not only pending accounts whose UID is set to will be on-boarded
automatically according to this rule.

For Versions 9.8 to 10.1
Whether or not only pending accounts whose UID is set to will be on-boarded automatically according to this rule.

For Versions 9.8 to 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
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
  Position: Named
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

For Version 10.2 onwards
A description of the rule.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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

For Version 10.2 onwards
Name of the rule

If left blank, a name will be generated automatically.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
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
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TargetPlatformId

The ID of the platform that will be associated to the on-boarded account.

For Version 10.2 onwards
The ID of the platform that will be associated to the on-boarded account.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TargetSafeName

The name of the Safe where the on-boarded account will be stored.

For Version 10.2 onwards
The name of the Safe where the on-boarded account will be stored.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
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
  Position: Named
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

For Version 10.2 onwards
The method to use when applying the user name filter (Equals / Begins with/ Ends with).

This parameter is ignored if UserNameFilter is not specified.

For Version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
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

### System.String

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Before running:
Create the Safe and the reconcile account according to the rule's definition.
Associate the reconcile account with the platform that is defined in the rule.
Make sure that the user whose credentials will be used for this session is a member of
the Safe specified in the TargetSafeName parameter with the Add accounts permission.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASOnboardingRule](https://pspas.pspete.dev/commands/New-PASOnboardingRule)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/AddAutomaticOnboardingRule.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/AddAutomaticOnboardingRule.htm)

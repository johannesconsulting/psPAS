---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASDependentLinkedAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASDependentLinkedAccount
---

# Set-PASDependentLinkedAccount

## SYNOPSIS

Sets a Linked Account for a Dependent Account

## SYNTAX

### SaaS

```
Set-PASDependentLinkedAccount -accountId <string> -dependentAccountId <string>
 -extraPasswordAccountId <string> -extraPasswordIndex <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### SelfHosted

```
Set-PASDependentLinkedAccount -accountId <string> -dependentAccountId <string>
 -extraPasswordIndex <string> -safe <string> -name <string> [-folder <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Links an account to a dependent account

## EXAMPLES

### Example 1 - Privilege Cloud

```powershell
Set-PASDependentLinkedAccount -accountId 12_3 -dependentAccountId 12_4 -extraPasswordAccountId 56_7 -extraPasswordIndex 1
```

Links account with ID 56_7 to linked account index 1 for dependent account 12_4 with parent account 12_3

### Example 2 - Self-Hosted

```powershell
Set-PASDependentLinkedAccount -accountId 22_3 -dependentAccountId 22_4 -extraPasswordIndex 1 -safe somesafe -name accountname
```

Links the account named accountname in the somesafe Safe to linked account index 1 (logon account) for dependent account 22_4 with parent account 22_3

### Example 3 - Self-Hosted with folder

```powershell
Set-PASDependentLinkedAccount -accountId 22_3 -dependentAccountId 22_4 -extraPasswordIndex 2 -safe somesafe -name reconcileaccount -folder Reconcile
```

Links the account named reconcileaccount in the Reconcile folder of the somesafe Safe to linked account index 2 (reconcile account) for dependent account 22_4 with parent account 22_3

### Example 4 - WhatIf

```powershell
Set-PASDependentLinkedAccount -accountId 12_3 -dependentAccountId 12_4 -extraPasswordAccountId 56_7 -extraPasswordIndex 3 -WhatIf
```

Shows what would happen if account 56_7 were linked as index 3 for dependent account 12_4, but does not perform the link

## PARAMETERS

### -accountId

The ID of the parent account for the dependent account

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

The ID of the dependent account

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

### -extraPasswordAccountId

The ID of the account to link to the dependent account.
Used for Privilege Cloud environments.
The ID of the account to link to the dependent account.
Used for Privilege Cloud environments.

```yaml
Type: System.String
DefaultValue: None
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

### -extraPasswordIndex

The index to link the account to

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelfHosted
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -folder

The folder containing the account to link to the dependent account.
Used for Self-Hosted environments. Defaults to Root.
The folder containing the account to link to the dependent account.
Used for Self-Hosted environments.
Defaults to Root.

```yaml
Type: System.String
DefaultValue: Root
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SelfHosted
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -name

The name of the account to link to the dependent account.
Used for Self-Hosted environments.
The name of the account to link to the dependent account.
Used for Self-Hosted environments.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
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

### -safe

The Safe containing the account to link to the dependent account.
Used for Self-Hosted environments.
The Safe containing the account to link to the dependent account.
Used for Self-Hosted environments.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASDependentLinkedAccount](https://pspas.pspete.dev/commands/Set-PASDependentLinkedAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/account-dependents-cpm.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/account-dependents-cpm.htm)

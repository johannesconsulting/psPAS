---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPolicyACL
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPolicyACL
---

# Add-PASPolicyACL

## SYNOPSIS

Adds a new privileged command rule

## SYNTAX

### Default (Default)

```
Add-PASPolicyACL [-Command] <String> [-CommandGroup] <Boolean> [-PermissionType] <String>
 [-PolicyId] <String> [[-Restrictions] <String>] [-UserName] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPolicyACL [-Command] <string> [-CommandGroup] <bool> [-PermissionType] <string>
 [-PolicyId] <string> [[-Restrictions] <string>] [-UserName] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new privileged command rule to a policy.

Not supported in Privilege Cloud

## EXAMPLES

### EXAMPLE 1

```
Add-PASPolicyACL -Command "chmod" -CommandGroup $false -PermissionType Allow -PolicyId UNIXSSH -UserName user1
```

Adds Rule to UNIXSSH platform

### EXAMPLE 2

```
Add-PASPolicyACL -Command "rm -rf /" -CommandGroup $false -PermissionType Deny -PolicyId UNIXSSH -Restrictions "*" -UserName "*"
```

Denies all users from running the "rm -rf /" command on any account under the UNIXSSH platform.

### EXAMPLE 3

```
Add-PASPolicyACL -Command NetworkCommands -CommandGroup $true -PermissionType Allow -PolicyId UNIXSSH -UserName opsteam
```

Allows opsteam to run all commands in the NetworkCommands command group on accounts under the UNIXSSH platform.

### EXAMPLE 4

```
[PSCustomObject]@{PolicyId = 'UNIXSSH'; Command = 'shutdown'; CommandGroup = $false; PermissionType = 'Deny'; UserName = 'user1' } | Add-PASPolicyACL
```

Adds the same rule using pipeline input, since every parameter accepts values by property name.

## PARAMETERS

### -Command

The Command to Add

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

### -CommandGroup

Boolean to define if commandgroup

```yaml
Type: System.Boolean
DefaultValue: False
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

### -PermissionType

Allow or Deny Permission

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PolicyId

String value of Policy ID

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Restrictions

A restrictions string

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

### -UserName

The user this rule applies to.

Specify "*" for all users
The user this rule applies to.

Specify "*" for all users

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: true
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

### System.String

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPolicyACL](https://pspas.pspete.dev/commands/Add-PASPolicyACL)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Policy%20ACL.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Policy%20ACL.htm)

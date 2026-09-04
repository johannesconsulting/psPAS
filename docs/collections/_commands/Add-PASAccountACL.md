---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASAccountACL
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASAccountACL
---

# Add-PASAccountACL

## SYNOPSIS

Adds a new privileged command rule to an account.

## SYNTAX

### Default (Default)

```
Add-PASAccountACL [-AccountPolicyId] <String> [-AccountAddress] <String> [-AccountUserName] <String>
 [-Command] <String> [-CommandGroup] <Boolean> [-PermissionType] <String> [[-Restrictions] <String>]
 [-UserName] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASAccountACL [-AccountPolicyId] <string> [-AccountAddress] <string> [-AccountUserName] <string>
 [-Command] <string> [-CommandGroup] <bool> [-PermissionType] <string> [[-Restrictions] <string>]
 [-UserName] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new privileged command rule to an account.

Not supported in Privilege Cloud

## EXAMPLES

### EXAMPLE 1

```
Add-PASAccountACL -AccountPolicyID UNIXSSH -AccountAddress ServerA.domain.com -AccountUserName root `
-Command 'for /l %a in (0,0,0) do xyz' -CommandGroup $false -PermissionType Deny -UserName TestUser
```

This will add a new Privileged Command Rule to root for user TestUser

### EXAMPLE 2

```
Add-PASAccountACL -AccountPolicyID UNIXSSH -AccountAddress ServerB.domain.com -AccountUserName oracle `
-Command "/usr/local/bin/backup.sh" -CommandGroup $false -PermissionType Allow -Restrictions "*" -UserName dba_user
```

Allows dba_user to run the backup.sh command against the oracle account on ServerB.domain.com, with no additional restrictions.

### EXAMPLE 3

```
Add-PASAccountACL -AccountPolicyID UNIXSSH -AccountAddress ServerA.domain.com -AccountUserName root `
-Command NetworkCommands -CommandGroup $true -PermissionType Allow -UserName TestUser
```

Adds a rule allowing TestUser to run all commands in the NetworkCommands command group against the root account on ServerA.domain.com.

### EXAMPLE 4

```
Get-PASAccount -Keywords root -Safe UnixSafe | Add-PASAccountACL -AccountUserName root -Command reboot -CommandGroup $false -PermissionType Deny -UserName TestUser
```

Denies TestUser from running the reboot command against the root account found by Get-PASAccount, using the account's PolicyID and Address values passed down the pipeline.

## PARAMETERS

### -AccountAddress

The address of the account whose privileged commands will be listed.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Address
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

### -AccountPolicyId

The PolicyID associated with account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- PlatformID
- PolicyID
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

### -AccountUserName

The name of the account's user.

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
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Command

The Command

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
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CommandGroup

Boolean for Command Group

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
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

Allow or Deny permission

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
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Restrictions

A restriction string

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
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserName

The user this rule applies to

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASAccountACL](https://pspas.pspete.dev/commands/Add-PASAccountACL)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Account%20ACL.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Account%20ACL.htm)

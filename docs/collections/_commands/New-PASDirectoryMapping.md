---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASDirectoryMapping
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASDirectoryMapping
---

# New-PASDirectoryMapping

## SYNOPSIS

Adds a new Directory Mapping for an existing directory

## SYNTAX

### Default (Default)

```
New-PASDirectoryMapping [-DirectoryName] <String> [-MappingName] <String> [-LDAPBranch] <String>
 [-DomainGroups] <String[]> [[-VaultGroups] <String[]>] [[-Location] <String>]
 [[-LDAPQuery] <String>] [[-MappingAuthorizations] <Authorizations>]
 [[-UserActivityLogPeriod] <Int32>] [-UsedQuota <Int32>] [-AuthorizedInterfaces <String[]>]
 [-EnableENEWhenDisconnected <Boolean>] [-allowedAuthenticationMethods <String[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASDirectoryMapping [-DirectoryName] <string> [-MappingName] <string> [-LDAPBranch] <string>
 [-DomainGroups] <string[]> [[-VaultGroups] <string[]>] [[-Location] <string>]
 [[-LDAPQuery] <string>] [[-MappingAuthorizations] <Authorizations>]
 [[-UserActivityLogPeriod] <int>] [[-UsedQuota] <int>] [[-AuthorizedInterfaces] <string[]>]
 [[-EnableENEWhenDisconnected] <bool>] [[-allowedAuthenticationMethods] <string[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a directory mapping.

Membership of the Vault Admins group required.

Minimum required version 10.4

## EXAMPLES

### EXAMPLE 1

```
New-PASDirectoryMapping -DirectoryName "domain.com" -LDAPBranch "DC=DOMAIN,DC=COM" -DomainGroups ADGroup -MappingName Map3 -MappingAuthorizations RestoreAllSafes, BackupAllSafes
```

Creates a new LDAP directory mapping in the Vault with the following authorizations:
BackupAllSafes, RestoreAllSafes

### EXAMPLE 2

```
New-PASDirectoryMapping -DirectoryName "domain.com" -LDAPBranch "DC=DOMAIN,DC=COM" -DomainGroups ADGroup -MappingName Map2 -MappingAuthorizations BackupAllSafes, RestoreAllSafes
```

Creates a new LDAP directory mapping in the Vault with the following authorizations:
BackupAllSafes, RestoreAllSafes

### EXAMPLE 3

```
New-PASDirectoryMapping -DirectoryName "domain.com" -LDAPBranch "DC=DOMAIN,DC=COM" -DomainGroups ADGroup -MappingName Map1 -MappingAuthorizations AddUpdateUsers, AddSafes, BackupAllSafes
```

Creates a new LDAP directory mapping in the Vault with the following authorizations:
AddUpdateUsers, AddSafes, BackupAllSafes

## PARAMETERS

### -allowedAuthenticationMethods

All the non-Vault authentication methods (specified by ID) that the user can use to log on.

Requires 14.4
All the non-Vault authentication methods (specified by ID) that the user can use to log on.

Requires 14.4

```yaml
Type: System.String[]
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

### -AuthorizedInterfaces

Sets the authorized interface from the available interfaces defined by the license.

Requires 14.0
Sets the authorized interface from the available interfaces defined by the license.

Requires 14.0

```yaml
Type: System.String[]
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

### -DirectoryName

The name of the directory the mapping is for.

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

### -DomainGroups

Users who belong to these LDAP groups will be automatically assigned to the relevant roles in the PAS system.

```yaml
Type: System.String[]
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

### -EnableENEWhenDisconnected

Whether or not to monitor this user type's activity.

Requires 14.0
Whether or not to monitor this user type's activity.

Requires 14.0

```yaml
Type: System.Boolean
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

### -LDAPBranch

The LDAP branch that will be used for external directory queries

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

### -LDAPQuery

Match LDAP query results to mapping

Minimum required version 10.7
Match LDAP query results to mapping

Minimum required version 10.7

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

### -Location

The path of the Vault location that mapped users are added under.

This value cannot be updated.

Minimum required version 10.7
The path of the Vault location that mapped users are added under.

This value cannot be updated.

Minimum required version 10.7

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

### -MappingAuthorizations

Specify authorizations that will be applied when an LDAP User Account is created in the Vault.
To apply specific authorizations to a mapping, the user must have the same authorizations.
Possible authorizations: AddSafes, AuditUsers, AddUpdateUsers, ResetUsersPasswords, ActivateUsers,
AddNetworkAreas, ManageServerFileCategories, BackupAllSafes, RestoreAllSafes.
Specify authorizations that will be applied when an LDAP User Account is created in the Vault.
To apply specific authorizations to a mapping, the user must have the same authorizations.
Possible authorizations: AddSafes, AuditUsers, AddUpdateUsers, ResetUsersPasswords, ActivateUsers, AddNetworkAreas, ManageServerFileCategories, BackupAllSafes, RestoreAllSafes.

```yaml
Type: Authorizations
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
AcceptedValues:
- AddUpdateUsers
- AddSafes
- AddNetworkAreas
- ManageServerFileCategories
- AuditUsers
- BackupAllSafes
- RestoreAllSafes
- ResetUsersPasswords
- ActivateUsers
HelpMessage: ''
```

### -MappingName

The name of the PAS role that will be created.

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

### -UsedQuota

Sets the disk quota allocated to the user in MB.

Requires 14.0
Sets the disk quota allocated to the user in MB.

Requires 14.0

```yaml
Type: System.Int32
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

### -UserActivityLogPeriod

Retention period in days for user activity logs

Minimum required version 10.10
Retention period in days for user activity logs

Minimum required version 10.10

```yaml
Type: System.Int32
DefaultValue: 0
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

### -VaultGroups

A list of Vault groups that a mapped user will be added to.

Minimum required version 10.7
A list of Vault groups that a mapped user will be added to.

Minimum required version 10.7

```yaml
Type: System.String[]
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

### System.String[]

{{ Fill in the Description }}

### Authorizations

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASDirectoryMapping](https://pspas.pspete.dev/commands/New-PASDirectoryMapping)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Create_Directory_Mapping.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Create_Directory_Mapping.htm)

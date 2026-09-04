---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPendingAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPendingAccount
---

# Add-PASPendingAccount

## SYNOPSIS

Adds discovered account or SSH key as a pending account in the accounts feed.

## SYNTAX

### Default (Default)

```
Add-PASPendingAccount [-UserName] <String> [-Address] <String> [-AccountDiscoveryDate] <DateTime>
 [[-OSType] <String>] [-AccountEnabled] <String> [[-AccountOSGroups] <String>]
 [[-AccountType] <String>] [[-DiscoveryPlatformType] <String>] [[-Domain] <String>]
 [[-LastLogonDate] <String>] [[-LastPasswordSet] <String>] [[-PasswordNeverExpires] <Boolean>]
 [[-OSVersion] <String>] [[-OU] <String>] [[-AccountCategory] <String>]
 [[-AccountCategoryCriteria] <String>] [[-UserDisplayName] <String>]
 [[-AccountDescription] <String>] [[-AccountExpirationDate] <String>] [[-UID] <String>]
 [[-GID] <String>] [[-MachineOSFamily] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPendingAccount [-UserName] <string> [-Address] <string> [-AccountDiscoveryDate] <datetime>
 [[-OSType] <string>] [-AccountEnabled] <string> [[-AccountOSGroups] <string>]
 [[-AccountType] <string>] [[-DiscoveryPlatformType] <string>] [[-Domain] <string>]
 [[-LastLogonDate] <string>] [[-LastPasswordSet] <string>] [[-PasswordNeverExpires] <bool>]
 [[-OSVersion] <string>] [[-OU] <string>] [[-AccountCategory] <string>]
 [[-AccountCategoryCriteria] <string>] [[-UserDisplayName] <string>]
 [[-AccountDescription] <string>] [[-AccountExpirationDate] <string>] [[-UID] <string>]
 [[-GID] <string>] [[-MachineOSFamily] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Enables an account or SSH key that is discovered by an external scanner to be added
as a pending account to the Accounts Feed.

Users can identify privileged accounts and determine which are on-boarded to the vault.

Deprecated from version 13.2

## EXAMPLES

### EXAMPLE 1

```
Add-PASPendingAccount -UserName Administrator -Address ServerA.domain.com -AccountDiscoveryDate 2017-01-01T00:00:00Z -AccountEnabled enabled
```

Adds matching discovered account as pending account.

### EXAMPLE 2

```
Add-PASPendingAccount -UserName oracle -Address unixsrv01.domain.com -AccountDiscoveryDate 2020-05-12T00:00:00Z -OSType Unix -AccountEnabled enabled -AccountType local -AccountCategory Privileged -AccountCategoryCriteria "oracle;dba"
```

Adds a privileged local Unix account discovered on unixsrv01.domain.com as a pending account.

### EXAMPLE 3

```
Add-PASPendingAccount -UserName Bob -Address ServerB.domain.com -AccountDiscoveryDate 2020-06-01T00:00:00Z -OSType Windows -AccountEnabled enabled -AccountType domain -Domain domain.com -DiscoveryPlatformType WinDomain -OU "OU=Servers,DC=domain,DC=com" -UserDisplayName "Bob Smith" -PasswordNeverExpires $false
```

Adds a domain Windows account as a pending account, including domain, OU and display name details.

### EXAMPLE 4

```
Import-Csv .\DiscoveredAccounts.csv | Add-PASPendingAccount
```

Adds every account contained in the CSV file as a pending account, matching column names to parameter names by property name.

## PARAMETERS

### -AccountCategory

Whether the discovered account is privileged or non-privileged.

```yaml
Type: System.String
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

### -AccountCategoryCriteria

Criteria that determines whether or not the discovered account is privileged.

For example, the user or groupname, etc.

Separate multiple strings with ";".
Criteria that determines whether or not the discovered account is privileged.

For example, the user or groupname, etc.

Separate multiple strings with ";".

```yaml
Type: System.String
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

### -AccountDescription

A description of the user, as defined in the discovery source.

This will be saved as an account after it is added to the pending accounts.
A description of the user, as defined in the discovery source.

This will be saved as an account after it is added to the pending accounts.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 17
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AccountDiscoveryDate

The date when the account was discovered.

```yaml
Type: System.DateTime
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

### -AccountEnabled

The account status in the discovery source.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AccountExpirationDate

The account expiration date defined in the discovery source.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 18
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AccountOSGroups

The name of the group that the account belongs to

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

### -AccountType

Account Type

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

### -Address

The name or address of the machine where the account is used.

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

### -DiscoveryPlatformType

Platform where discovered account is used

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

### -Domain

The domain of the account.

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

### -GID

The Unique Group ID

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 20
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LastLogonDate

Date, according to discovery source, when the account was last used to logon.

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

### -LastPasswordSet

Date, according to discovery source, when the password for the account was last set

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

### -MachineOSFamily

The type of machine where the account was discovered.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 21
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OSType

The OS where the password was discovered.
Windows or Unix
The OS where the password was discovered.
Windows or Unix

```yaml
Type: System.String
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

### -OSVersion

OS Version where the account was discovered

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

### -OU

OU of the account

```yaml
Type: System.String
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

### -PasswordNeverExpires

If the password will ever expire in the discovery source

```yaml
Type: System.Boolean
DefaultValue: False
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

### -UID

The unique User ID

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 19
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserDisplayName

User's display name

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 16
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserName

The name of the account user

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

### System.DateTime

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPendingAccount](https://pspas.pspete.dev/commands/Add-PASPendingAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Discovered%20Account%20v10.8.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Discovered%20Account%20v10.8.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASAccount
---

# Add-PASAccount

## SYNOPSIS

Adds a new privileged account to the Vault

Can target either the Gen2 API present from 10.4 onwards, or the previous Gen1 API endpoint.

## SYNTAX

### Gen2

```
Add-PASAccount -platformID <string> -SafeName <string> [-name <string>] [-address <string>]
 [-userName <string>] [-secretType <string>] [-secret <securestring>]
 [-platformAccountProperties <hashtable>] [-automaticManagementEnabled <bool>]
 [-manualManagementReason <string>] [-remoteMachines <string>]
 [-accessRestrictedToRemoteMachines <bool>] [-AllowAccountDuplications <bool>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Gen1

```
Add-PASAccount -userName <string> -platformID <string> -SafeName <string> -password <securestring>
 [-address <string>] [-accountName <string>] [-disableAutoMgmt <bool>]
 [-disableAutoMgmtReason <string>] [-groupName <string>] [-groupPlatformID <string>] [-Port <int>]
 [-ExtraPass1Name <string>] [-ExtraPass1Folder <string>] [-ExtraPass1Safe <string>]
 [-ExtraPass3Name <string>] [-ExtraPass3Folder <string>] [-ExtraPass3Safe <string>]
 [-DynamicProperties <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new privileged account to the Vault.

Parameters are processed to create request object from passed parameters in the required format.

## EXAMPLES

### EXAMPLE 1

```
Add-PASAccount -address ThisServer -userName ThisUser -platformID UNIXSSH -SafeName UNIXSafe -automaticManagementEnabled $false
```

Using the Gen2 API, adds an account which is disabled for automatic password management

Requires minimum version of 10.4

### EXAMPLE 2

```
Add-PASAccount -safe Prod_Access -PlatformID WINDOMAIN -Address domain.com -Password $secureString -username domainUser
```

Using the Gen1 API, adds account domain.com\domainuser to the Prod_Access Safe using the WINDOMAIN platform.

The contents of $secureString will be set as the password value.

### EXAMPLE 3

```
$props = @{SSHCertificate = "yes";}
Add-PASAccount -address domain -userName ThisUser -platformID UNIXVIASSHCERTIFICATE -SafeName UNIXSafe -secretType Key -secret $key -platformAccountProperties $props
```

Using the Gen2 API, adds an account configured for the Unix via SSH Certificate platform

Requires minimum version of 10.4
Unix via SSH Certificate platform is supported in versions 11.2 and above.

## PARAMETERS

### -accessRestrictedToRemoteMachines

Whether access is restricted to the defined remote machines.

Requires minimum version of 10.4
Whether access is restricted to the defined remote machines.

Requires minimum version of 10.4

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

### -accountName

The name of the account

Relevant for CyberArk versions earlier than 10.4
The name of the account

Relevant for CyberArk versions earlier than 10.4

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

### -address

The Address of the machine where the account will be used

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

### -AllowAccountDuplications

Whether to allow duplicated accounts to be added to the system.

This parameter is only enforced only if AccountDuplicationEnforcementLevel in the General Configurations is set to Notify or Prevent.

Only Applies to Self Hosted, and requires version 14.6
Whether to allow duplicated accounts to be added to the system.

This parameter is only enforced only if AccountDuplicationEnforcementLevel in the General Configurations is set to Notify or Prevent.

Only Applies to Self Hosted, and requires version 14.6

```yaml
Type: System.Boolean
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

### -automaticManagementEnabled

Whether CPM Password Management should be enabled

Requires minimum version of 10.4
Whether CPM Password Management should be enabled

Requires minimum version of 10.4

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

### -disableAutoMgmt

Whether or not automatic management wll be disabled for the account

Relevant for CyberArk versions earlier than 10.4
Whether or not automatic management wll be disabled for the account

Relevant for CyberArk versions earlier than 10.4

```yaml
Type: System.Boolean
DefaultValue: False
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

### -disableAutoMgmtReason

The reason why automatic management wll be disabled for the account

Relevant for CyberArk versions earlier than 10.4
The reason why automatic management wll be disabled for the account

Relevant for CyberArk versions earlier than 10.4

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

### -DynamicProperties

Hashtable of name=value pairs

Relevant for CyberArk versions earlier than 10.4
Hashtable of name=value pairs

Relevant for CyberArk versions earlier than 10.4

```yaml
Type: System.Collections.Hashtable
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

### -ExtraPass1Folder

Folder where logon account is stored

Relevant for CyberArk versions earlier than 10.4
Folder where logon account is stored

Relevant for CyberArk versions earlier than 10.4

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

### -ExtraPass1Name

Logon account name

Relevant for CyberArk versions earlier than 10.4
Logon account name

Relevant for CyberArk versions earlier than 10.4

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

### -ExtraPass1Safe

Safe where logon account is stored

Relevant for CyberArk versions earlier than 10.4
Safe where logon account is stored

Relevant for CyberArk versions earlier than 10.4

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

### -ExtraPass3Folder

Folder where reconcile account is stored

Relevant for CyberArk versions earlier than 10.4
Folder where reconcile account is stored

Relevant for CyberArk versions earlier than 10.4

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

### -ExtraPass3Name

Reconcile account name

Relevant for CyberArk versions earlier than 10.4
Reconcile account name

Relevant for CyberArk versions earlier than 10.4

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

### -ExtraPass3Safe

Safe where reconcile account is stored

Relevant for CyberArk versions earlier than 10.4
Safe where reconcile account is stored

Relevant for CyberArk versions earlier than 10.4

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

### -groupName

A groupname with which the account will be associated

Relevant for CyberArk versions earlier than 10.4
A groupname with which the account will be associated

Relevant for CyberArk versions earlier than 10.4

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

### -groupPlatformID

Group platform to base created group ID on, if ID doesn't exist

Relevant for CyberArk versions earlier than 10.4
Group platform to base created group ID on, if ID doesn't exist

Relevant for CyberArk versions earlier than 10.4

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

### -manualManagementReason

A reason for disabling CPM Password Management

Requires minimum version of 10.4
A reason for disabling CPM Password Management

Requires minimum version of 10.4

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

### -name

The name of the account.

Requires minimum version of 10.4
The name of the account.

Requires minimum version of 10.4

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

### -password

The password value as a secure string

Relevant for CyberArk versions earlier than 10.4
The password value as a secure string

Relevant for CyberArk versions earlier than 10.4

```yaml
Type: System.Security.SecureString
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

### -platformAccountProperties

key-value pairs to associate with the account, as defined by the account platform.

These properties are validated against the mandatory and optional properties of the specified platform's definition.

Requires minimum version of 10.4
key-value pairs to associate with the account, as defined by the account platform.

These properties are validated against the mandatory and optional properties of the specified platform's definition.

Requires minimum version of 10.4

```yaml
Type: System.Collections.Hashtable
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

### -platformID

The CyberArk platform to assign to the account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- PolicyID
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -Port

Port number over which the account will be used

Relevant for CyberArk versions earlier than 10.4
Port number over which the account will be used

Relevant for CyberArk versions earlier than 10.4

```yaml
Type: System.Int32
DefaultValue: 0
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

### -remoteMachines

For supported platforms, a list of remote machines the account can connect to.

Requires minimum version of 10.4
For supported platforms, a list of remote machines the account can connect to.

Requires minimum version of 10.4

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

### -SafeName

The safe where the account will be created

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- safe
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -secret

The password value

Requires minimum version of 10.4
The password value

Requires minimum version of 10.4

```yaml
Type: System.Security.SecureString
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

### -secretType

The type of password.

Requires minimum version of 10.4
The type of password.

Requires minimum version of 10.4

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

### -userName

Username on the target machine

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

### System.Security.SecureString

{{ Fill in the Description }}

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASAccount](https://pspas.pspete.dev/commands/Add-PASAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Account%20v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Account%20v10.htm)

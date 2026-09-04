---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASUser
---

# New-PASUser

## SYNOPSIS

Creates a new vault user

## SYNTAX

### Gen2 (Default)

```
New-PASUser -UserName <string> [-InitialPassword <securestring>] [-userType <string>]
 [-unAuthorizedInterfaces <string[]>] [-enableUser <bool>] [-authenticationMethod <string[]>]
 [-ChangePassOnNextLogon <bool>] [-passwordNeverExpires <bool>] [-distinguishedName <string>]
 [-vaultAuthorization <string[]>] [-ExpiryDate <datetime>] [-Location <string>]
 [-userActivityLogRetentionDays <int>] [-loginFromHour <int>] [-loginToHour <int>]
 [-workStreet <string>] [-workCity <string>] [-workState <string>] [-workZip <string>]
 [-workCountry <string>] [-homePage <string>] [-homeEmail <string>] [-businessEmail <string>]
 [-otherEmail <string>] [-homeNumber <string>] [-businessNumber <string>] [-cellularNumber <string>]
 [-faxNumber <string>] [-pagerNumber <string>] [-description <string>] [-FirstName <string>]
 [-MiddleName <string>] [-LastName <string>] [-street <string>] [-city <string>] [-state <string>]
 [-zip <string>] [-country <string>] [-title <string>] [-organization <string>]
 [-department <string>] [-profession <string>] [-allowedAuthenticationMethods <string[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Gen1

```
New-PASUser -UserName <string> -InitialPassword <securestring> [-Email <string>]
 [-ChangePasswordOnTheNextLogon <bool>] [-ExpiryDate <datetime>] [-UserTypeName <string>]
 [-Disabled <bool>] [-Location <string>] [-FirstName <string>] [-LastName <string>] [-UseGen1API]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new user to the vault

Default operation using the Gen2 API requires minimum version of 10.9

## EXAMPLES

### EXAMPLE 1

```
New-PASUser -UserName NewUser -InitialPassword $securePWD -UseGen1API
```

Creates a Vault user named NewUser, with password set to securestring value from $securePWD, using the Gen1 API

### EXAMPLE 2

```
New-PASUser -UserName NewUser -InitialPassword $securePWD
```

Creates a Vault user named NewUser, with password set to securestring value from $securePWD

Minimum required version 10.9

### EXAMPLE 3

```
New-PASUser -UserName NewUser -InitialPassword $securePWD -unAuthorizedInterfaces "PACLI" -vaultAuthorization ManageDirectoryMapping
```

Creates a Vault user as per the provided parameter values

Minimum required version 10.9

## PARAMETERS

### -allowedAuthenticationMethods

All the non-Vault authentication methods (specified by ID) that the user can use to log on.

Minimum required version 14.4
All the non-Vault authentication methods (specified by ID) that the user can use to log on.

Minimum required version 14.4

```yaml
Type: System.String[]
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

### -authenticationMethod

The authentication method that the user will use to log on.

Valid Values:
- "AuthTypePass", for CyberArk Authentication (default)
- "AuthTypeLDAP", for LDAP authentication
- "AuthTypeRADIUS", for RADIUS authentication

Minimum required version 10.9
The authentication method that the user will use to log on.

Valid Values: - "AuthTypePass", for CyberArk Authentication (default)

- "AuthTypeLDAP", for LDAP authentication

- "AuthTypeRADIUS", for RADIUS authentication


Minimum required version 10.9

```yaml
Type: System.String[]
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

### -businessEmail

The user's email address

Minimum required version 10.9
The user's email address

Minimum required version 10.9

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

### -businessNumber

The user's phone number

Minimum required version 10.9
The user's phone number

Minimum required version 10.9

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

### -cellularNumber

The user's phone number

Minimum required version 10.9
The user's phone number

Minimum required version 10.9

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

### -ChangePassOnNextLogon

Whether or not user will be forced to change password on first logon

Minimum required version 10.9
Whether or not user will be forced to change password on first logon

Minimum required version 10.9

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

### -ChangePasswordOnTheNextLogon

Whether or not user will be forced to change password on first logon

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

### -city

Address detail for the user

Minimum required version 10.9
Address detail for the user

Minimum required version 10.9

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

### -country

Address detail for the user

Minimum required version 10.9
Address detail for the user

Minimum required version 10.9

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

### -department

Personal detail for the user

Minimum required version 10.9
Personal detail for the user

Minimum required version 10.9

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

### -description

Description Text

Minimum required version 10.9
Description Text

Minimum required version 10.9

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

### -Disabled

Whether or not the user will be created as a disabled user

Default is Enabled
Whether or not the user will be created as a disabled user

Default is Enabled

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

### -distinguishedName

The distinguished name of the user.

Minimum required version 10.9
The distinguished name of the user.

Minimum required version 10.9

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

### -Email

The user's email address

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

### -enableUser

Whether the user will be enabled upon creation.

Minimum required version 10.9
Whether the user will be enabled upon creation.

Minimum required version 10.9

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

### -ExpiryDate

Expiry Date to set on account.

Default is Never
Expiry Date to set on account.

Default is Never

```yaml
Type: System.DateTime
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

### -faxNumber

The user's phone number

Minimum required version 10.9
The user's phone number

Minimum required version 10.9

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

### -FirstName

The user's first name

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

### -homeEmail

The user's email address

Minimum required version 10.9
The user's email address

Minimum required version 10.9

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

### -homeNumber

The user's phone number

Minimum required version 10.9
The user's phone number

Minimum required version 10.9

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

### -homePage

The user's email address

Minimum required version 10.9
The user's email address

Minimum required version 10.9

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

### -InitialPassword

The password to set on the account, as a Secure String

Must meet the password complexity requirements
The password to set on the account, as a Secure String

Must meet the password complexity requirements

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

### -LastName

The user's last name

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

### -Location

The Vault Location where the user will be created

Default location is "Root"
The Vault Location where the user will be created

Default location is "Root"

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

### -loginFromHour

The start of the timeframe the user account is permitted to authenticate.

Provide an hour of the day in 24-hour format (0-23)

Minimum required version 13.2
The start of the timeframe the user account is permitted to authenticate.

Provide an hour of the day in 24-hour format (0-23)

Minimum required version 13.2

```yaml
Type: System.Int32
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

### -loginToHour

The end of the timeframe the user account is permitted to authenticate.

Provide an hour of the day in 24-hour format (0-23)

Minimum required version 13.2
The end of the timeframe the user account is permitted to authenticate.

Provide an hour of the day in 24-hour format (0-23)

Minimum required version 13.2

```yaml
Type: System.Int32
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

### -MiddleName

The User's Middle Name

Minimum required version 10.9
The User's Middle Name

Minimum required version 10.9

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

### -organization

Personal detail for the user

Minimum required version 10.9
Personal detail for the user

Minimum required version 10.9

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

### -otherEmail

The user's email address

Minimum required version 10.9
The user's email address

Minimum required version 10.9

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

### -pagerNumber

The user's phone number

Minimum required version 10.9
The user's phone number

Minimum required version 10.9

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

### -passwordNeverExpires

Whether or not the user's password will expire

Minimum required version 10.9
Whether or not the user's password will expire

Minimum required version 10.9

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

### -profession

Personal detail for the user

Minimum required version 10.9
Personal detail for the user

Minimum required version 10.9

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

### -state

Address detail for the user

Minimum required version 10.9
Address detail for the user

Minimum required version 10.9

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

### -street

Address detail for the user

Minimum required version 10.9
Address detail for the user

Minimum required version 10.9

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

### -title

Personal detail for the user

Minimum required version 10.9
Personal detail for the user

Minimum required version 10.9

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

### -unAuthorizedInterfaces

The CyberArk interfaces that this user is not authorized to use.

Minimum required version 10.9
The CyberArk interfaces that this user is not authorized to use.

Minimum required version 10.9

```yaml
Type: System.String[]
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

### -UseGen1API

Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 10.9
Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 10.9

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- UseClassicAPI
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -userActivityLogRetentionDays

The number of days that a user's account activity records are stored before being deleted.
These activity records includes logon, logoff, and user management.

If this parameter is set to zero, user activities in the Vault will not be written in the audit log.

Default value: 90 days

Minimum required version 13.2
The number of days that a user's account activity records are stored before being deleted.
These activity records includes logon, logoff, and user management.

If this parameter is set to zero, user activities in the Vault will not be written in the audit log.

Default value: 90 days

Minimum required version 13.2

```yaml
Type: System.Int32
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

### -UserName

The name of the user to create in the vault

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

### -userType

The user type

Minimum required version 10.9
The user type

Minimum required version 10.9

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

### -UserTypeName

The Type of User to create.

EPVUser type will be created by default.
The Type of User to create.

EPVUser type will be created by default.

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

### -vaultAuthorization

The user permissions in the vault.

To grant authorization to a user, the same authorization must be held by the account logged on to the API.

Valid values:
-  AddSafes
-  AuditUsers
-  AddUpdateUsers
-  ResetUsersPasswords
-  ActivateUsers
-  AddNetworkAreas
-  ManageDirectoryMapping
-  ManageServerFileCategories
-  BackupAllSafes
-  RestoreAllSafes

Minimum required version 10.9
The user permissions in the vault.

To grant authorization to a user, the same authorization must be held by the account logged on to the API.

Valid values: -  AddSafes

-  AuditUsers

-  AddUpdateUsers

-  ResetUsersPasswords

-  ActivateUsers

-  AddNetworkAreas

-  ManageDirectoryMapping

-  ManageServerFileCategories

-  BackupAllSafes

-  RestoreAllSafes


Minimum required version 10.9

```yaml
Type: System.String[]
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

### -workCity

Business Address detail for the user

Minimum required version 10.9
Business Address detail for the user

Minimum required version 10.9

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

### -workCountry

Business Address detail for the user

Minimum required version 10.9
Business Address detail for the user

Minimum required version 10.9

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

### -workState

Business Address detail for the user

Minimum required version 10.9
Business Address detail for the user

Minimum required version 10.9

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

### -workStreet

Business Address detail for the user

Minimum required version 10.9
Business Address detail for the user

Minimum required version 10.9

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

### -workZip

Business Address detail for the user

Minimum required version 10.9
Business Address detail for the user

Minimum required version 10.9

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

### -zip

Address detail for the user

Minimum required version 10.9
Address detail for the user

Minimum required version 10.9

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

### System.String[]

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASUser](https://pspas.pspete.dev/commands/New-PASUser)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/API-AddUser-v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/API-AddUser-v10.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASUser
---

# Get-PASUser

## SYNOPSIS

Returns details of vault users

## SYNTAX

### Gen2 (Default)

```
Get-PASUser [-Search <string>] [-UserType <string>] [-UserStatus <string>] [-source <string>]
 [-ComponentUser <bool>] [-sort <string[]>] [-UserName <string>] [<CommonParameters>]
```

### Safes

```
Get-PASUser -id <int> -safes [<CommonParameters>]
```

### Gen2ID

```
Get-PASUser -id <int> [<CommonParameters>]
```

### Gen2-ExtendedDetails

```
Get-PASUser [-Search <string>] [-UserType <string>] [-UserStatus <string>] [-source <string>]
 [-ComponentUser <bool>] [-sort <string[]>] [-ExtendedDetails <bool>] [-UserName <string>]
 [<CommonParameters>]
```

### Gen1

```
Get-PASUser -UserName <string> -UseGen1API [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information on queried vault users

Default operation using the Gen2 API requires minimum version of 10.9

## EXAMPLES

### EXAMPLE 1

```
Get-PASUser
```

Returns information for all found Users

Minimum required version 10.9

### EXAMPLE 2

```
Get-PASUser -id 123
```

Returns information on User with id 123

Minimum required version 10.10

### EXAMPLE 3

```
Get-PASUser -search SearchTerm -ComponentUser $False
```

Returns information for all matching Users

Minimum required version 10.9

### EXAMPLE 4

```
Get-PASUser -UserName Target_User
```

Displays information on Target_User

### EXAMPLE 5

```
Get-PASUser -ExtendedDetails $true -Search SomeSearchTerm
```

Returns extended information for all matching Users

Minimum required version 12.1

### EXAMPLE 6

```
Get-PASUser -UserStatus Suspended -source LDAP
```

Returns all currently suspended LDAP users

Minimum required version 13.2

### EXAMPLE 7

```
Get-PASUser -id 123 -safes
```

Returns all safes, and the associated permissions, that the user with id 123 has access to

Minimum required version 10.10

### EXAMPLE 8

```
Get-PASUser -UserName Target_User -UseGen1API
```

Displays information on Target_User via the Gen1 API, for use against CyberArk versions earlier than 12.2

## PARAMETERS

### -ComponentUser

Whether the user is a known component or not.

Minimum required version 10.9
Whether the user is a known component or not.

Minimum required version 10.9

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
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

### -ExtendedDetails

Returns user groups and userDN for LDAP users.

Minimum required version 12.1
Returns user groups and userDN for LDAP users.

Minimum required version 12.1

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -id

The numeric id of the user to return details of.

Minimum required version 10.10
The numeric id of the user to return details of.

Minimum required version 10.10

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Safes
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2ID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -safes

Returns all safes the user has access to, including permissions

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Safes
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Search

Search string.

Minimum required version 10.9
Search string.

Minimum required version 10.9

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
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

### -sort

Property or properties by which to sort returned accounts,
followed by asc (default) or desc to control sort direction.

Cannot sort by a property other than `username`, `usertype`, `firstname`, `lastname`, `location`, `middlename` or `source`.

Separate multiple properties with commas, up to a maximum of three properties.

Requires minimum version of 12.2
Property or properties by which to sort returned accounts, followed by asc (default) or desc to control sort direction.

Cannot sort by a property other than `username`, `usertype`, `firstname`, `lastname`, `location`, `middlename` or `source`.

Separate multiple properties with commas, up to a maximum of three properties.

Requires minimum version of 12.2

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
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

### -source

Specify "CyberArk" to return local CyberArk users, or "LDAP" to return users from an integrated directory.

Requires minimum version of 13.2
Specify "CyberArk" to return local CyberArk users, or "LDAP" to return users from an integrated directory.

Requires minimum version of 13.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
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

### -UseGen1API

Forces use of the Gen1 API endpoint

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserName

The user's name

Default operation targets the Gen2 API & requires minimum version of 12.2.

For operation against versions earlier than 12.2, the `UseGen1API` parameter should also be specified.
The user's name

Default operation targets the Gen2 API & requires minimum version of 12.2.

For operation against versions earlier than 12.2, the `UseGen1API` parameter should also be specified.

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
- Name: Gen2-ExtendedDetails
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

### -UserStatus

Accepts "Active", "Disabled" or "Suspended" as possible filter values.

Requires minimum version of 13.2
Accepts "Active", "Disabled" or "Suspended" as possible filter values.

Requires minimum version of 13.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
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

### -UserType

The type of the user.

Minimum required version 10.9
The type of the user.

Minimum required version 10.9

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-ExtendedDetails
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASUser](https://pspas.pspete.dev/commands/Get-PASUser)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/get-users-api.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/get-users-api.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/get-user-details-v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/get-user-details-v10.htm)

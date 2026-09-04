---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASGroup
---

# Get-PASGroup

## SYNOPSIS

List groups from the vault

## SYNTAX

### groupType (Default)

```
Get-PASGroup [-groupType <string>] [-groupName <string>] [-sort <string[]>] [-search <string>]
 [-limit <int>] [-includeMembers <bool>] [<CommonParameters>]
```

### byID

```
Get-PASGroup -id <int> [-includeMembers <bool>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns a list of all existing user groups.

The user performing this task:
- Must have Audit users permissions in the Vault.
- Can see groups either only on the same level, or lower in the Vault hierarchy.

## EXAMPLES

### EXAMPLE 1

```
Get-PASGroup
```

Returns all existing groups

### EXAMPLE 2

```
Get-PASGroup -groupType Directory
```

Returns all existing Directory groups

### EXAMPLE 3

```
Get-PASGroup -groupType Vault
```

Returns all existing Vault groups

### EXAMPLE 4

```
Get-PASGroup -search "Vault Admins"
```

Returns all groups matching all search terms

### EXAMPLE 5

```
Get-PASGroup -search "Vault Admins" -groupType Directory
```

Returns all existing Directory groups matching all search terms

### EXAMPLE 6

```
Get-PASGroup -search Admins -includeMembers $true
```

Returns all existing groups matching search, includes vault group member details in result.

### EXAMPLE 7

```
Get-PASGroup -groupName "Vault Admins" -includeMembers $true
```

### EXAMPLE 8

```
Get-PASGroup -id 11
```

Returns group with id 11.
Requires minimum version of 12.6

## PARAMETERS

### -groupName

Search for groups by name.

Requires minimum version of 12.2
Search for groups by name.

Requires minimum version of 12.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groupType
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -groupType

Search for groups which are from a configured Directory or from the Vault.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groupType
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

The integer id value of the group to get details of.
Requires minimum version of 12.6
The integer id value of the group to get details of.
Requires minimum version of 12.6

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -includeMembers

Specify $true to return vault group members

Defaults to $false due to performance considerations

Requires minimum version of 12.0
Specify $true to return vault group members

Defaults to $false due to performance considerations

Requires minimum version of 12.0

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groupType
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: byID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -limit

The number of results to return.

The maximum (default) number of results returned is 20000.

Requires minimum version of 15.2
The number of results to return.

The maximum (default) number of results returned is 20000.

Requires minimum version of 15.2

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groupType
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -search

Search will match when ALL search terms appear in the group name.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groupType
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

Property or properties by which to sort returned groups,
followed by asc (default) or desc to control sort direction.

Cannot sort by a property other than `groupname`, `directory` or `location`.

Separate multiple properties with commas, up to a maximum of three properties.

Requires minimum version of 12.2
Property or properties by which to sort returned groups, followed by asc (default) or desc to control sort direction.

Cannot sort by a property other than `groupname`, `directory` or `location`.

Separate multiple properties with commas, up to a maximum of three properties.

Requires minimum version of 12.2

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groupType
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

### System.String[]

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum Version 10.5

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASGroup](https://pspas.pspete.dev/commands/Get-PASGroup)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetGroupsFromVault.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetGroupsFromVault.htm)

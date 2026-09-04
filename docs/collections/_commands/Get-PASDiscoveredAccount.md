---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDiscoveredAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDiscoveredAccount
---

# Get-PASDiscoveredAccount

## SYNOPSIS

Returns discovered accounts from the Pending Accounts list.

## SYNTAX

### byQuery (Default)

```
Get-PASDiscoveredAccount [-platformType <string>] [-privileged <bool>] [-AccountEnabled <bool>]
 [-search <string>] [-searchType <string>] [-limit <int>] [<CommonParameters>]
```

### byID

```
Get-PASDiscoveredAccount [-id <String>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns discovered accounts from the Pending Accounts list.

Filters can be specified to limit the results.

ID can be specified to focus in single account.

Membership of Vault admins group required.

## EXAMPLES

### EXAMPLE 1

```
Get-PASDiscoveredAccount
```

Returns all discovered accounts

### EXAMPLE 2

```
Get-PASDiscoveredAccount -id 18_88
```

Returns discovered account with id 18_88

### EXAMPLE 3

```
Get-PASDiscoveredAccount -platformType 'Windows Domain' -AccountEnabled $true -privileged $true -search SomeSearchTerm
```

Returns discovered accounts matching query

## PARAMETERS

### -AccountEnabled

Whether to return only enabled accounts or not

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
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

The ID of a discovered account to get details of.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
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

The maximum number of returned accounts.

If not specified, the server limits the results to 100.

The maximum number that can be specified is 1000.
The maximum number of returned accounts.

If not specified, the server limits the results to 100.

The maximum number that can be specified is 1000.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -platformType

Whether to return only the accounts of a specific platform

Valid Values:
- Windows Server Local
- Windows Desktop Local
- Windows Domain
- Unix
- Unix SSH Key
- AWS
- AWS Access Keys
Whether to return only the accounts of a specific platform

Valid Values: - Windows Server Local

- Windows Desktop Local

- Windows Domain

- Unix

- Unix SSH Key

- AWS

- AWS Access Keys

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -privileged

Whether to return only privileged accounts or not

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
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

A term to search for.

Search is supported for userName and address.
A term to search for.

Search is supported for userName and address.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -searchType

The type of search to perform.

The keyword can either be contained within the account property values,
or at the beginning of the value specified in the Search parameter.

When using a keyword at the beginning of a value, performance is enhanced.
The type of search to perform.

The keyword can either be contained within the account property values, or at the beginning of the value specified in the Search parameter.

When using a keyword at the beginning of a value, performance is enhanced.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
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

### System.Boolean

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDiscoveredAccount](https://pspas.pspete.dev/commands/Get-PASDiscoveredAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-discovered-accounts.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-discovered-accounts.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-discovered-account-details.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-discovered-account-details.htm)

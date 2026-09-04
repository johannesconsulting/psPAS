---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccount
---

# Get-PASAccount

## SYNOPSIS

Returns details of matching accounts. (Requires minimum version of 10.4)
Returns information about a single account. (Version 9.3 - 10.3)

## SYNTAX

### Gen2Query (Default)

```
Get-PASAccount [-search <string>] [-searchType <string>] [-safeName <string>]
 [-savedFilter <string>] [-modificationTime <datetime>] [-sort <string[]>] [-limit <int>]
 [-TimeoutSec <int>] [-LogicalOperator <string>] [<CommonParameters>]
```

### Gen2ID

```
Get-PASAccount -id <string> [-TimeoutSec <int>] [<CommonParameters>]
```

### Gen1

```
Get-PASAccount [-Keywords <string>] [-Safe <string>] [-TimeoutSec <int>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

This function returns accounts in the Vault that match the submitted id or query.

Versions 9.3 to 10.3:

- Returns details about a single, matching account.
- Only the first account will be returned if more than one account matches the search criteria
  - (the Count output parameter will display the number of accounts that were found)
- If ten or more accounts are found, the Count Output parameter will show 10.

Requires safe permissions:

- List accounts.

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccount
```

Returns all accounts on safes where your user has "List accounts" rights.

Requires minimum version of 10.4

### EXAMPLE 2

```
Get-PASAccount -search XUser -searchType startswith
```

Returns all accounts starting with "XUser".

Requires minimum version of 11.2

### EXAMPLE 3

```
Get-PASAccount -safeName TargetSafe
```

Returns all accounts from TargetSafe

Requires minimum version of 10.4

### EXAMPLE 4

```
Get-PASAccount -safeName TargetSafe -modificationTime (Get-Date 03/06/2020) -search some
```

Returns all accounts from TargetSafe modified after 03/06/2020

Requires minimum version of 11.4

### EXAMPLE 5

```
Get-PASAccount -Keywords root -Safe UNIX
```

Finds account matching keywords in UNIX safe

### EXAMPLE 6

```
Get-PASAccount -Keywords xtest
```

Finds account matching the specified keyword.

Only the first matching account will be returned.

If multiple accounts are found, a warning will be displayed before the result

### EXAMPLE 7

```
Get-PASAccount -search root -sort name
```

Returns all accounts matching "root", sorted by AccountName.

Requires minimum version of 10.4

### EXAMPLE 8

```
Get-PASAccount -savedFilter New
```

Returns all accounts from the "New" Saved Filter

Requires minimum version of 12.6

### EXAMPLE 9

```
Get-PASAccount -limit 1000
```

Returns all accounts, in page sizes of 1000.

Requires minimum version of 10.4

### EXAMPLE 10

```
Get-PASAccount -id 27_4
```

Returns details of the account with the ID "27_4"

Requires minimum version of 10.4

## PARAMETERS

### -id

A specific account ID to return details for.

Requires minimum version of 10.4
A specific account ID to return details for.

Requires minimum version of 10.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- AccountID
ParameterSets:
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

### -Keywords

Keyword to search for.

If multiple keywords are specified, the search will include all the keywords.

Separate keywords with a space.

Relevant for CyberArk versions earlier than 10.4
Keyword to search for.

If multiple keywords are specified, the search will include all the keywords.

Separate keywords with a space.

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

### -limit

The maximum page size of accounts to return per request.
Specify a number up to 1000.
Each page of results will be limited in size to the number provided.
The maximum page size of accounts to return per request.
Specify a number up to 1000.
Each page of results will be limited in size to the number provided.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogicalOperator

Specify either the 'OR' or 'AND' logical operator to apply against provided search parameters.

Default mode of operation is 'AND'

Requires minimum version of 14.6
Specify either the 'OR' or 'AND' logical operator to apply against provided search parameters.

Default mode of operation is 'AND'

Requires minimum version of 14.6

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -modificationTime

Specify to only return details of accounts modified after this date/time

Requires minimum version of 11.4
Specify to only return details of accounts modified after this date/time

Requires minimum version of 11.4

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Safe

The name of a Safe to search that the authenticated user is authorized to access.

Relevant for CyberArk versions earlier than 10.4
The name of a Safe to search that the authenticated user is authorized to access.

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

### -safeName

The name of the safe to return accounts from.

Requires minimum version of 10.4
The name of the safe to return accounts from.

Requires minimum version of 10.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -savedFilter

Specify a value matching one of the configured Saved Filters:
'Regular', 'Recently', 'New', 'Link', 'Deleted', 'PolicyFailures',
'AccessedByUsers', 'ModifiedByUsers', 'ModifiedByCPM', 'DisabledPasswordByUser',
'DisabledPasswordByCPM', 'ScheduledForChange', 'ScheduledForVerify', 'ScheduledForReconcile',
'SuccessfullyReconciled', 'FailedChange', 'FailedVerify', 'FailedReconcile', 'LockedOrNew',
'Locked', 'Favorites', 'DeleteInsightStatus'

Requires minimum version of 12.6

DeleteInsightStatus only applies to Privilege Cloud
Specify a value matching one of the configured Saved Filters: 'Regular', 'Recently', 'New', 'Link', 'Deleted', 'PolicyFailures', 'AccessedByUsers', 'ModifiedByUsers', 'ModifiedByCPM', 'DisabledPasswordByUser', 'DisabledPasswordByCPM', 'ScheduledForChange', 'ScheduledForVerify', 'ScheduledForReconcile', 'SuccessfullyReconciled', 'FailedChange', 'FailedVerify', 'FailedReconcile', 'LockedOrNew', 'Locked', 'Favorites', 'DeleteInsightStatus'

Requires minimum version of 12.6

DeleteInsightStatus only applies to Privilege Cloud

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
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

The search term or keywords.

Requires minimum version of 10.4
The search term or keywords.

Requires minimum version of 10.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
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

Get accounts that either contain or start with the value specified in the Search parameter.

Requires minimum version of 11.2
Get accounts that either contain or start with the value specified in the Search parameter.

Requires minimum version of 11.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
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

Separate multiple properties with commas, up to a maximum of three properties.

Requires minimum version of 10.4
Property or properties by which to sort returned accounts, followed by asc (default) or desc to control sort direction.

Separate multiple properties with commas, up to a maximum of three properties.

Requires minimum version of 10.4

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2Query
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutSec

See Invoke-WebRequest

Specify a timeout value in seconds
See Invoke-WebRequest

Specify a timeout value in seconds

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
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

### System.String[]

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

New functionality added in version 10.4, limited functionality before this version.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASAccount](https://pspas.pspete.dev/commands/Get-PASAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/GetAccounts.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/GetAccounts.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get%20Account%20Details.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get%20Account%20Details.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDependentAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDependentAccount
---

# Get-PASDependentAccount

## SYNOPSIS

Returns details of dependent accounts.

## SYNTAX

### AllDependentAccounts (Default)

```
Get-PASDependentAccount [-search <string>] [-MasterAccountId <string>]
 [-modificationTime <datetime>] [-platformId <string>] [-SafeName <string>] [-includeDeleted <bool>]
 [-limit <int>] [-TimeoutSec <int>] [<CommonParameters>]
```

### SpecificDependentAccount

```
Get-PASDependentAccount -id <string> -dependentAccountId <string> [-extendedDetails <bool>]
 [-TimeoutSec <int>] [<CommonParameters>]
```

### SpecificAccount

```
Get-PASDependentAccount -id <string> [-search <string>] [-modificationTime <datetime>]
 [-platformId <string>] [-failed <bool>] [-TimeoutSec <int>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns details of dependent accounts.

Can return all dependent accounts, specific dependent accounts, or details fo dependent accounts associated with a specific master account

## EXAMPLES

### Example 1

```powershell
Get-PASDependentAccount
```

Returns all Dependent Accounts

### Example 2

```powershell
Get-PASDependentAccount -id 12_34
```

Returns all Dependent Accounts of Account with id 12_34

### Example 3

```powershell
Get-PASDependentAccount -id 12_34 -dependentAccountId 12_78
```

Returns Dependent Account with id of 12_78 of Account with id 12_34

## PARAMETERS

### -dependentAccountId

The unique ID of the dependent account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SpecificDependentAccount
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -extendedDetails

Whether to retrieve Linked Accounts data or not

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SpecificDependentAccount
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -failed

Get only failed dependent accounts.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SpecificAccount
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

The account ID of the master account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- AccountID
ParameterSets:
- Name: SpecificDependentAccount
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: SpecificAccount
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -includeDeleted

Whether to include deleted accounts in the results or not.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllDependentAccounts
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

The maximum number of dependent accounts to return in each page of results

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllDependentAccounts
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MasterAccountId

The parent account ID of the dependent accounts to return.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllDependentAccounts
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -modificationTime

Date after which the dependent account was modified.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SpecificAccount
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: AllDependentAccounts
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -platformId

Unique identifier of the dependent platform.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SpecificAccount
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: AllDependentAccounts
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

The Safe name of the dependent account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AllDependentAccounts
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

A list of keywords to search for in accounts, separated by a space.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SpecificAccount
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: AllDependentAccounts
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

Timeout in seconds for the request

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

### System.Boolean

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDependentAccount](https://pspas.pspete.dev/commands/Get-PASDependentAccount)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-all-dependent-accounts.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-all-dependent-accounts.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-all-dependent-accounts-specific.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-all-dependent-accounts-specific.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-dependent-account-details.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-dependent-account-details.htm)

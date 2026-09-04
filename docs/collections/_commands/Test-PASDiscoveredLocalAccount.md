---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Test-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Test-PASDiscoveredLocalAccount
---

# Test-PASDiscoveredLocalAccount

## SYNOPSIS

Check discovered account existence

## SYNTAX

### single

```
Test-PASDiscoveredLocalAccount -type <String> -subtype <String> -address <String> -username <String>
 -externalId <String> [<CommonParameters>]
```

### multiple

```
Test-PASDiscoveredLocalAccount -accounts <Hashtable[]> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Check discovered account existence

## EXAMPLES

### Example 1

```powershell
Test-PASDiscoveredLocalAccount -type Windows -subtype Domain -address win-computer.cyber-ark.com -username admin -externalId "user_account_5924"
```

Checks for the existence of the specified account

### Example 2

```powershell
$accounts = @(
    New-PASDiscoveredAccountObject -type windows -subType loosely -address win-computer.cyber-ark.com -username admin -externalId user_account_5924
    New-PASDiscoveredAccountObject -type mac -subType loosely -address mac-computer.cyber-ark.com -username root -externalId user_account_1132
)
Test-PASDiscoveredLocalAccount -accounts $accounts
```

Uses New-PASDiscoveredAccountObject to build an array of correctly structured account objects, and checks for the existence of all of them in a single request.

### Example 3

```powershell
[PSCustomObject]@{type='Windows'; subtype='Domain'; address='win-computer.cyber-ark.com'; username='admin'; externalId='user_account_5924'} | Test-PASDiscoveredLocalAccount
```

Checks for the existence of the specified account, using pipeline input for the account identifier properties.

### Example 4

```powershell
$accounts = @(
    @{ type = 'Windows'; subType = 'Domain'; identifiers = @{ address = 'win-computer.cyber-ark.com'; username = 'admin' }; externalId = 'user_account_5924' }
)
Test-PASDiscoveredLocalAccount -accounts $accounts
```

Checks for the existence of an account using a manually constructed array of hashtables, matching the raw structure expected by the API instead of using New-PASDiscoveredAccountObject.

## PARAMETERS

### -accounts

a collection of accounts to query.

each account must be a hashtable containing type, subType, identifiers & externalId keys, in the format expected by the API.

New-PASDiscoveredAccountObject can be used to create correctly structured account objects to pass as this parameter's value.
a collection of accounts to query.

each account must be a hashtable containing type, subType, identifiers & externalId keys, in the format expected by the API.

New-PASDiscoveredAccountObject can be used to create correctly structured account objects to pass as this parameter's value.

```yaml
Type: System.Collections.Hashtable[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: multiple
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -address

The address identifier of the account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: single
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -externalId

The external id of the account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: single
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -subtype

The account subtype

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: single
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -type

The account type

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: single
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -username

The username identifier of the account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: single
  Position: Named
  IsRequired: true
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

### System.Collections.Hashtable[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Test-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Test-PASDiscoveredLocalAccount)
- [https://pspas.pspete.dev/commands/New-PASDiscoveredAccountObject](https://pspas.pspete.dev/commands/New-PASDiscoveredAccountObject)
- [https://docs.cyberark.com/identity-protection-space/latest/en/content/discovery/discovery-discoveredaccountsservice-check.htm](https://docs.cyberark.com/identity-protection-space/latest/en/content/discovery/discovery-discoveredaccountsservice-check.htm)

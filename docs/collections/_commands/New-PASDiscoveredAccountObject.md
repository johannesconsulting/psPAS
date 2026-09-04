---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASDiscoveredAccountObject
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASDiscoveredAccountObject
---

# New-PASDiscoveredAccountObject

## SYNOPSIS

Creates hashtable structured to be used as input for the accounts parameter of Test-PASDiscoveredLocalAccount

## SYNTAX

### Default (Default)

```
New-PASDiscoveredAccountObject -type <String> -subType <String> -address <String> -username <String>
 -externalId <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASDiscoveredAccountObject [-type] <string> [-subType] <string> [-address] <string>
 [-username] <string> [-externalId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Provide parameter values to return a hashtable, correctly structured to represent a single discovered account.

The output of this function is intended to be collected into an array and passed to the accounts parameter of Test-PASDiscoveredLocalAccount, to check the existence of multiple discovered accounts in a single request.

## EXAMPLES

### Example 1

```powershell
New-PASDiscoveredAccountObject -type Windows -subType Domain -address win-computer.cyber-ark.com -username admin -externalId user_account_5924
```

Returns hashtable structured to represent a single discovered account.

### Example 2

```powershell
$accounts = @(
    New-PASDiscoveredAccountObject -type windows -subType loosely -address win-computer.cyber-ark.com -username admin -externalId user_account_5924
    New-PASDiscoveredAccountObject -type mac -subType loosely -address mac-computer.cyber-ark.com -username root -externalId user_account_1132
)
Test-PASDiscoveredLocalAccount -accounts $accounts
```

Builds an array of discovered account objects and checks the existence of all of them in a single request.

### Example 3

```powershell
New-PASDiscoveredAccountObject -type Windows -subType Domain -address win-computer.cyber-ark.com -username admin -externalId user_account_5924 -WhatIf
```

Shows what would happen if the discovered account object were created, but does not return the object.

### Example 4

```powershell
[PSCustomObject]@{type='Unix'; subType='Local'; address='unix-host.cyber-ark.com'; username='root'; externalId='user_account_8842'} | New-PASDiscoveredAccountObject
```

Creates a discovered account object using pipeline input, with property names matching the function's parameters.

## PARAMETERS

### -address

The address identifier of the account

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

### -externalId

The external id of the account

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

### -subType

The account subtype

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

### -type

The account type

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

### -username

The username identifier of the account

```yaml
Type: System.String
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASDiscoveredAccountObject](https://pspas.pspete.dev/commands/New-PASDiscoveredAccountObject)
- [https://pspas.pspete.dev/commands/Test-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Test-PASDiscoveredLocalAccount)

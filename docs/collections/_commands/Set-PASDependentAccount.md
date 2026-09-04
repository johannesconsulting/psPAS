---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASDependentAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASDependentAccount
---

# Set-PASDependentAccount

## SYNOPSIS

Updates a Dependent Account

## SYNTAX

### Default (Default)

```
Set-PASDependentAccount [-accountId] <String> [-dependentAccountId] <String> [[-name] <String>]
 [[-platformAccountProperties] <Hashtable>] [[-automaticManagementEnabled] <Boolean>]
 [[-manualManagementReason] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASDependentAccount [-accountId] <string> [-dependentAccountId] <string> [[-name] <string>]
 [[-platformAccountProperties] <hashtable>] [[-automaticManagementEnabled] <bool>]
 [[-manualManagementReason] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing dependent account.

Requires the Update account properties permission for the Account.

## EXAMPLES

### Example 1

```powershell
Set-PASDependentAccount -accountId 123_45 -dependentAccountId 123_560 -name SomeNewName
 -platformAccountProperties @{"Property"="Value"} -automaticManagementEnabled $false
 -manualManagementReason "Some Reason"
```

Updates the Dependent Account with the specified values

### Example 2

```powershell
Set-PASDependentAccount -accountId 123_45 -dependentAccountId 123_560 -automaticManagementEnabled $false -manualManagementReason "Awaiting maintenance window"
```

Disables automatic management of the dependent account and records the reason for the change, leaving the other values unchanged.

### Example 3

```powershell
Set-PASDependentAccount -accountId 123_45 -dependentAccountId 123_560 -platformAccountProperties @{"address"="1.2.3.4";"servicename"="test"}
```

Updates only the platform account properties of the dependent account.

### Example 4

```powershell
Set-PASDependentAccount -accountId 123_45 -dependentAccountId 123_560 -name SomeNewName -WhatIf
```

Shows what would happen if the dependent account was renamed, without making the change.

## PARAMETERS

### -accountId

The account ID of the master account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
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

### -automaticManagementEnabled

Whether the account secret is automatically managed by the CPM

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
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

### -dependentAccountId

The unique ID of the dependent account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- dependentid
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

### -manualManagementReason

The reason for disabling automatic secret management

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

### -name

The name of the dependent account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -platformAccountProperties

Hashtable of mandatory and optional parameters of the dependent account, based on the platform.

```yaml
Type: System.Collections.Hashtable
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

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASDependentAccount](https://pspas.pspete.dev/commands/Set-PASDependentAccount)
- [(https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/update-dependent-account.htm)](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/update-dependent-account.htm)

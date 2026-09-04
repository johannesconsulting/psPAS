---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASDependentAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASDependentAccount
---

# Add-PASDependentAccount

## SYNOPSIS

Adds a dependent account to an existing account

## SYNTAX

### Default (Default)

```
Add-PASDependentAccount [-AccountId] <String> [[-name] <String>] [-platformId] <String>
 [-platformAccountProperties] <Hashtable> [[-automaticManagementEnabled] <Boolean>]
 [[-manualManagementReason] <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASDependentAccount [-AccountId] <string> [[-name] <string>] [-platformId] <string>
 [-platformAccountProperties] <hashtable> [[-automaticManagementEnabled] <bool>]
 [[-manualManagementReason] <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a dependent account to an existing account. The dependent account is created in the same Safe and folder as the master account.

The user performing this task must have the "Add Accounts" permissions on the Safe:

## EXAMPLES

### Example 1

```powershell
Add-PASDependentAccount -AccountId 12_34 -name "windows-1.2.3.4-service-test" -platformId 10 -platformAccountProperties @{"address"="1.2.3.4";"servicename"="test"}
```

Adds a Dependent Account with the specified property values

### Example 2

```powershell
Get-PASAccount -id 19_1 | Add-PASDependentAccount -name "windows-1.2.3.4-service-test" -platformId 10 -platformAccountProperties @{"address"="1.2.3.4";"servicename"="test"}
```

Gets the master account and adds a dependent account to it, using the account ID supplied via the pipeline.

### Example 3

```powershell
Add-PASDependentAccount -AccountId 12_34 -platformId WinDomain -platformAccountProperties @{"address"="1.2.3.4";"servicename"="test"} -automaticManagementEnabled $false -manualManagementReason "Awaiting change window"
```

Adds a dependent account with automatic secret management disabled, recording a reason for manual management.

### Example 4

```powershell
Add-PASDependentAccount -AccountId 12_34 -platformId 10 -platformAccountProperties @{"address"="1.2.3.4";"servicename"="test"} -WhatIf
```

Shows what would happen if the dependent account was added, without actually performing the action.

## PARAMETERS

### -AccountId

The account id of the master account

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
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -platformAccountProperties

Hashtable containing key-value pairs to associate with the dependent account, as defined by the dependent account platform.

```yaml
Type: System.Collections.Hashtable
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

### -platformId

Unique identifier of the dependent platform

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

- [https://pspas.pspete.dev/commands/Add-PASDependentAccount](https://pspas.pspete.dev/commands/Add-PASDependentAccount)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/add-dependent-account.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/add-dependent-account.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Sync-PASDependentAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Sync-PASDependentAccount
---

# Sync-PASDependentAccount

## SYNOPSIS

This syncs the dependent account secret with its master account.

## SYNTAX

### Default (Default)

```
Sync-PASDependentAccount [-accountId] <String> [-dependentAccountId] <String[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Sync-PASDependentAccount [-accountId] <string> [-dependentAccountId] <string[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Syncs the dependent account secret with its master account.

The user performing this task must have the following permissions in the Safe where the privileged account is stored:

Initiate CPM password management operations

Requires minimum version 14.6.

## EXAMPLES

### EXAMPLE 1

```powershell
Sync-PASDependentAccount -accountId 12_34 -dependentAccountId 56_78
```

Synchronizes the password of dependent account with ID 56_78 with its parent account 12_34.

### EXAMPLE 2

```powershell
Sync-PASDependentAccount -accountId 12_34 -dependentAccountId 12_78, 12_01, 12_45, 12_89
```

Synchronizes the password of the specified dependent accounts for parent account with id 12_34.

### EXAMPLE 3

```powershell
Sync-PASDependentAccount -accountId 12_34 -dependentAccountId 56_78 -WhatIf
```

Shows what would happen if the dependent account secret were synchronized, but does not perform the synchronization.

### EXAMPLE 4

```powershell
Sync-PASDependentAccount -id 12_34 -dependentid 12_78, 12_01 -Confirm:$false
```

Synchronizes the password of the specified dependent accounts for parent account 12_34 without prompting for confirmation, using the -id and -dependentid parameter aliases.

## PARAMETERS

### -accountId

The ID of the parent account whose password will be synchronized to the dependent account.

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
  ValueFromPipelineByPropertyName: false
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

The ID of the dependent account that will receive the synchronized password from the parent account.

Specify multiple values to perform bulk synchronisation in a single request.
The ID of the dependent account that will receive the synchronized password from the parent account.

Specify multiple values to perform bulk synchronisation in a single request.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases:
- dependentid
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.
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

## OUTPUTS

## NOTES

Requires minimum version 14.6

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Sync-PASDependentAccount](https://pspas.pspete.dev/commands/Sync-PASDependentAccount)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/Dependent-Accounts.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/Dependent-Accounts.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulk-sync-dependent-account-secret.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/bulk-sync-dependent-account-secret.htm)

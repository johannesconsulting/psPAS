---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Stop-PASCPMTask
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Stop-PASCPMTask
---

# Stop-PASCPMTask

## SYNOPSIS

Cancels a pending CPM task for one or more accounts.

## SYNTAX

### Default (Default)

```
Stop-PASCPMTask [-Accountid] <String[]> [-dependentAccountid <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Stop-PASCPMTask [-Accountid] <string[]> [[-dependentAccountid] <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Cancels an in-progress or pending CPM operation (such as a change, verify or reconcile task) for a specific account.

Multiple accounts can be processed in a single bulk request by supplying more than one value for `-Accountid`.

Requires CyberArk Self-Hosted version 15.2 or higher.

## EXAMPLES

### Example 1

```powershell
Stop-PASCPMTask -Accountid 123_4
```

Cancels the pending CPM task for account with id 123_4.

### Example 2

```powershell
Stop-PASCPMTask -Accountid 123_4, 567_8
```

Cancels the pending CPM tasks for accounts 123_4 and 567_8 in a single bulk request.

### Example 3

```powershell
Stop-PASCPMTask -Accountid 123_4 -dependentAccountid 123_5
```

Cancels the pending CPM task for dependent account 123_5 under parent account 123_4.

### Example 4

```powershell
Get-PASAccount -id 123_4 | Stop-PASCPMTask -WhatIf
```

Shows what would happen if the pending CPM task for account 123_4 were cancelled, but does not perform the cancellation. Uses pipeline input from Get-PASAccount for -Accountid.

## PARAMETERS

### -Accountid

The unique id of the account to cancel the pending CPM task for.

When more than one value is supplied, a bulk cancel request is sent.
The unique id of the account to cancel the pending CPM task for.

When more than one value is supplied, a bulk cancel request is sent.

```yaml
Type: System.String[]
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

### -dependentAccountid

The dependent account id to cancel the pending CPM task for.

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

### System.String

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

### System.Object

## NOTES

Bulk operations are sent when `-Accountid` contains more than one value.

Requires CyberArk Self-Hosted version 15.2 or higher.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Stop-PASCPMTask](https://pspas.pspete.dev/commands/Stop-PASCPMTask)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/cancel-account-task.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/cancel-account-task.htm)

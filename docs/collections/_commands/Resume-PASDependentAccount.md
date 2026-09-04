---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Resume-PASDependentAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Resume-PASDependentAccount
---

# Resume-PASDependentAccount

## SYNOPSIS

This resumes automatic management of one or more dependent accounts by the CPM.

## SYNTAX

### Default (Default)

```
Resume-PASDependentAccount [-AccountID] <String> [-dependentAccountId] <String[]> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Resume-PASDependentAccount [-AccountID] <string> [-dependentAccountId] <string[]> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Resumes automatic management of a dependent account by the Central Password Manager (CPM).

When more than one value is supplied for `-dependentAccountId`, a bulk resume request is sent.
Bulk resume requires CyberArk version 15.0 or later. Single-account resume requires version 14.6 or later.

## EXAMPLES

### Example 1

```powershell
Resume-PASDependentAccount -AccountID "123_456" -dependentAccountId "22_2"
```

Resumes automatic CPM management for the dependent account with ID "22_2" that is
associated with the main account "123_456".

### Example 2

```powershell
Get-PASAccount -id "123_456" | Resume-PASDependentAccount -dependentAccountId "22_2"
```

Uses pipeline input to resume automatic management of dependent account "22_2" for
the main account retrieved by Get-PASAccount.

### Example 3

```powershell
Resume-PASDependentAccount -AccountID "123_456" -dependentAccountId "22_2", "33_3"
```

Resumes automatic CPM management for dependent accounts "22_2" and "33_3", both associated
with the main account "123_456", in a single bulk request.

## PARAMETERS

### -AccountID

The unique ID of the main privileged account that has the dependent account associated with it.
This parameter accepts pipeline input and can be aliased as 'id'.
The unique ID of the main privileged account that has the dependent account associated with it.
This parameter accepts pipeline input and can be aliased as 'id'.

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

The unique ID of the dependent account for which automatic CPM management should be resumed.
This parameter accepts pipeline input and can be aliased as 'dependentid'.

When more than one value is supplied, a bulk resume request is sent.
The unique ID of the dependent account for which automatic CPM management should be resumed.
This parameter accepts pipeline input and can be aliased as 'dependentid'.

When more than one value is supplied, a bulk resume request is sent.

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

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Single-account operations require CyberArk version 14.6 or later.
Bulk operations require CyberArk version 15.0 or later and are triggered when `-dependentAccountId` contains more than one value.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Resume-PASDependentAccount](https://pspas.pspete.dev/commands/Resume-PASDependentAccount)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resume-dependent-account.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resume-dependent-account.htm)

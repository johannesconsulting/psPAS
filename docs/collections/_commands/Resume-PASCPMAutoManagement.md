---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Resume-PASCPMAutoManagement
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Resume-PASCPMAutoManagement
---

# Resume-PASCPMAutoManagement

## SYNOPSIS

Resumes CPM auto management for one or more accounts.

## SYNTAX

### Default (Default)

```
Resume-PASCPMAutoManagement [-Accountid] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Resume-PASCPMAutoManagement [-Accountid] <string[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Resumes automatic password management by the CPM for one or more accounts whose management was previously suspended.

When more than one value is supplied for `-Accountid`, a bulk resume request is sent.

Requires CyberArk Self-Hosted version 15.2 or higher.

## EXAMPLES

### Example 1

```powershell
Resume-PASCPMAutoManagement -Accountid 123_4
```

Resumes CPM auto management for account with id 123_4.

### Example 2

```powershell
Get-PASAccount -id 123_4 | Resume-PASCPMAutoManagement
```

Resumes CPM auto management for the account returned by Get-PASAccount.

### Example 3

```powershell
Resume-PASCPMAutoManagement -Accountid 123_4, 125_6
```

Resumes CPM auto management for accounts 123_4 and 125_6 in a single bulk request.

## PARAMETERS

### -Accountid

The unique id of the account(s) to resume CPM auto management for.

When more than one value is supplied, a bulk resume request is sent.
The unique id of the account(s) to resume CPM auto management for.

When more than one value is supplied, a bulk resume request is sent.

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

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Resume-PASCPMAutoManagement](https://pspas.pspete.dev/commands/Resume-PASCPMAutoManagement)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resume-account-bulk.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/resume-account-bulk.htm)

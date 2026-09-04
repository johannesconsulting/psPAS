---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASAccountPassword
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASAccountPassword
---

# New-PASAccountPassword

## SYNOPSIS

Generates a new password for an existing account.

## SYNTAX

### Default (Default)

```
New-PASAccountPassword [-AccountID] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASAccountPassword [-AccountID] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Generates a new password for an existing account.

Requires "Retrieve" safe permission for the safe where the account is stored. If using the PreventSameCharPerPrevPassPosition platform parameter, the "Use Password" permission must be held.
Requires CyberArk Version 12.0 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
New-PASAccountPassword -AccountID 12_3
```

Generates a new password for account with ID 12_3.

### EXAMPLE 2

```powershell
Get-PASAccount -id 12_3 | New-PASAccountPassword
```

Generates a new password for the account returned by Get-PASAccount.

### EXAMPLE 3

```powershell
New-PASAccountPassword -AccountID 12_3 -WhatIf
```

Shows what would happen if a new password was generated for account 12_3, without actually generating one.

## PARAMETERS

### -AccountID

The ID of the account to generate the password for.

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

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASAccountPassword](https://pspas.pspete.dev/commands/New-PASAccountPassword)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Secrets-Generate-Password.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Secrets-Generate-Password.htm)

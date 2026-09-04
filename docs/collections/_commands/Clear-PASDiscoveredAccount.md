---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Clear-PASDiscoveredAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Clear-PASDiscoveredAccount
---

# Clear-PASDiscoveredAccount

## SYNOPSIS

Deletes all discovered accounts

## SYNTAX

### Default (Default)

```
Clear-PASDiscoveredAccount [[-id] <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Clear-PASDiscoveredAccount [[-id] <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes all discovered accounts and related dependencies from the Pending Accounts list.

Membership of the Vault admins group required.
Requires CyberArk Version 12.1 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
Clear-PASDiscoveredAccount
```

Deletes all discovered accounts from the Pending Accounts list.

### EXAMPLE 2

```powershell
Clear-PASDiscoveredAccount -id 22_3
```

Deletes discovered account with id 22_3

### EXAMPLE 3

```powershell
Clear-PASDiscoveredAccount -id 22_3,22_4
```

Deletes accounts in bulk

## PARAMETERS

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

### -id

The unique id of the discovered account. When not supplied, all discovered are deleted/cleard.

You can supply multiple unique id´s to do a bulk delete.
The unique id of the discovered account.
When not supplied, all discovered are deleted/cleard.

You can supply multiple unique id´s to do a bulk delete.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Clear-PASDiscoveredAccount](https://pspas.pspete.dev/commands/Clear-PASDiscoveredAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete-Discovered-accounts.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete-Discovered-accounts.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Hide-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Hide-PASDiscoveredLocalAccount
---

# Hide-PASDiscoveredLocalAccount

## SYNOPSIS

Moves a discovered account to the ignore list.

## SYNTAX

### Default (Default)

```
Hide-PASDiscoveredLocalAccount [-id] <String> [[-reason] <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Hide-PASDiscoveredLocalAccount [-id] <string> [[-reason] <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Moves a discovered account to the ignore list, so it is excluded from the active Discovered Accounts list. Use Restore-PASDiscoveredLocalAccount to remove it from the ignore list again.

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Hide-PASDiscoveredLocalAccount -id 54507db1-66d7-4dc7-93cf-a310cc19b9fc -reason 'Known test account'
```

Moves the specified discovered account to the ignore list.

### EXAMPLE 2

```powershell
Hide-PASDiscoveredLocalAccount -id 54507db1-66d7-4dc7-93cf-a310cc19b9fc -WhatIf
```

Shows what would happen if the specified discovered account was moved to the ignore list, without actually moving it.

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

The unique identifier of the discovered account.

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

### -reason

The reason for ignoring the discovered account.

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

- [https://pspas.pspete.dev/commands/Hide-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Hide-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/manage/latest/en/content/discovery/discovery-discoveredaccountsservice-ignore.htm](https://docs.cyberark.com/manage/latest/en/content/discovery/discovery-discoveredaccountsservice-ignore.htm)

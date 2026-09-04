---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Disable-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Disable-PASPlatform
---

# Disable-PASUser

## SYNOPSIS

Disables a specific vault user.

## SYNTAX

### Default (Default)

```
Disable-PASUser [-id] <Int32> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Disable-PASUser [-id] <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Sets the status of an enabled vault user to disabled

## EXAMPLES

### EXAMPLE 1

```powershell
Disable-PASUser -id 1234
```

Disables the vault user with id 1234

### EXAMPLE 2

```powershell
Get-PASUser -search Bob | Disable-PASUser
```

Finds vault users matching the search term "Bob" and disables each matching account, using the id value supplied via the pipeline

### EXAMPLE 3

```powershell
Disable-PASUser -id 1234 -WhatIf
```

Shows what would happen if the vault user with id 1234 was disabled, without making the change

### EXAMPLE 4

```powershell
1234,1235,1236 | ForEach-Object { Disable-PASUser -id $_ }
```

Disables each of the vault users with the ids 1234, 1235 & 1236

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

The unique numerical id of the user

```yaml
Type: System.Int32
DefaultValue: 0
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Disable-PASUser](https://pspas.pspete.dev/commands/Disable-PASUser)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Disable-user.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Disable-user.htm)

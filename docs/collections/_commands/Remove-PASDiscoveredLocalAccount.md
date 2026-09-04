---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASDiscoveredLocalAccount
---

# Remove-PASDiscoveredLocalAccount

## SYNOPSIS

Delete a discovered local account

## SYNTAX

### Default (Default)

```
Remove-PASDiscoveredLocalAccount [-id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASDiscoveredLocalAccount [-id] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Delete an account from the list of discovered local accounts for local endpoint Windows and MacOS accounts.

Deleting an account from the current discovered accounts list does not affect the next scan for discovered accounts, and the deleted account may appear again.

Applies to the accounts that are discovered by the EPM scanning of endpoints, including loosely connected devices:
- Windows loosely connected devices
- Mac loosely connected devices
- Linux loosely connected devices

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASDiscoveredLocalAccount -id SomeID
```

Deletes specified discovered local account

### EXAMPLE 2

```powershell
Get-PASDiscoveredLocalAccount -search workstation01 | Remove-PASDiscoveredLocalAccount
```

Deletes all discovered local accounts matching the search value.

### EXAMPLE 3

```powershell
Remove-PASDiscoveredLocalAccount -id SomeID -WhatIf
```

Shows what would happen if the specified discovered local account was deleted, without actually deleting it.

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

THe unique identifier of the account.

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

- [https://pspas.pspete.dev/commands/Remove-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Remove-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Delete.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Delete.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Clear-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Clear-PASDiscoveredLocalAccount
---

# Clear-PASDiscoveredLocalAccount

## SYNOPSIS

Deletes all the discovered accounts from the list of discovered accounts for local endpoints.

## SYNTAX

### Default (Default)

```
Clear-PASDiscoveredLocalAccount [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Clear-PASDiscoveredLocalAccount [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes all the discovered accounts from the list of discovered accounts for local endpoint Windows and MacOS accounts.

Deleting these accounts from the current discovered accounts list does not affect the next scan for discovered accounts, and the deleted accounts may appear again.

The Delete All discovered accounts action is asynchronous and continues to run in the background, even after the API returns a response.

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

```
Clear-PASDiscoveredLocalAccount
```

Initiates Delete All discovered local accounts action.

### EXAMPLE 2

```
Clear-PASDiscoveredLocalAccount -WhatIf
```

Shows what would happen if all discovered local accounts were deleted, without performing the deletion.

### EXAMPLE 3

```
Clear-PASDiscoveredLocalAccount -Confirm:$false
```

Deletes all discovered local accounts without prompting for confirmation.

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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Clear-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Clear-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-DeleteAll.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-DeleteAll.htm)

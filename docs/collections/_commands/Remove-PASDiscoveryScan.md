---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASDiscoveryScan
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASDiscoveryScan
---

# Remove-PASDiscoveryScan

## SYNOPSIS

Deletes a single discovery scan that is configured in the Vault.

## SYNTAX

### Default (Default)

```
Remove-PASDiscoveryScan [-taskId] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASDiscoveryScan [-taskId] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a single discovery scan that is configured in the Vault.

Requires CyberArk Self-Hosted version 12.2 or higher.

## EXAMPLES

### Example 1

```powershell
Remove-PASDiscoveryScan -taskId 12345
```

Removes the discovery scan with the specified task ID.

### Example 2

```powershell
Remove-PASDiscoveryScan -taskId 12345 -WhatIf
```

Shows what would happen if the discovery scan was removed, without actually removing it.

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

### -taskId

The unique ID of the discovery scan to remove.

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

You can pipe objects with a `taskId` or `id` property to this command.

## OUTPUTS

### None

## NOTES

Requires CyberArk Self-Hosted version 12.2 or higher.

## RELATED LINKS

- [Remove-PASDiscoveryScan](https://pspas.pspete.dev/commands/Remove-PASDiscoveryScan)

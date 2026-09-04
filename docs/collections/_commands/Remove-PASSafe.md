---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASSafe
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASSafe
---

# Remove-PASSafe

## SYNOPSIS

Deletes a safe from the Vault

## SYNTAX

### Gen2 (Default)

```
Remove-PASSafe -SafeName <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1

```
Remove-PASSafe -SafeName <string> [-UseGen1API] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a safe from the Vault.

The "Manage" Safe vault permission is required.

Default operation requires CyberArk version 12.1+.

For earlier versions, the Gen1 API switch must be specified.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASSafe -SafeName OLD_Safe
```

Deletes "OLD_Safe"

### EXAMPLE 2

```
Remove-PASSafe -SafeName OLD_Safe -UseGen1API
```

Deletes "OLD_Safe" using the Gen1 API

### EXAMPLE 3

```
Remove-PASSafe -SafeName OLD_Safe -WhatIf
```

Shows what would happen if "OLD_Safe" was deleted, without actually deleting it.

### EXAMPLE 4

```
Get-PASSafe -SafeName OLD_Safe | Remove-PASSafe
```

Gets the "OLD_Safe" safe, and deletes it via pipeline input.

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

### -SafeName

The name of the safe to delete.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Forces use of the Gen1 API endpoint

Should be specified for PAS versions earlier than 12.1
Forces use of the Gen1 API endpoint

Should be specified for PAS versions earlier than 12.1

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
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

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASSafe](https://pspas.pspete.dev/commands/Remove-PASSafe)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Safe.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Safe.htm)

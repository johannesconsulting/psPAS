---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASOAuthProvider
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASOAuthProvider
---

# Remove-PASOAuthProvider

## SYNOPSIS

Deletes a configured OAuth Identity Provider.

## SYNTAX

### Default (Default)

```
Remove-PASOAuthProvider [-id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASOAuthProvider [-id] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a configured OAuth Identity Provider.
Requires membership of Vault Admins group.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASOAuthProvider -id SomeOAuthProvider
```

Deletes OAuth Identity Provider with ID SomeOAuthProvider

### EXAMPLE 2

```powershell
Remove-PASOAuthProvider -id LegacyOAuthProvider -WhatIf
```

Shows what would happen if the OAuth Identity Provider "LegacyOAuthProvider" were deleted, without actually deleting it.

### EXAMPLE 3

```powershell
[PSCustomObject]@{id = 'LegacyOAuthProvider'} | Remove-PASOAuthProvider -Confirm:$false
```

Deletes the OAuth Identity Provider "LegacyOAuthProvider", with the id value supplied via the pipeline, suppressing the confirmation prompt.

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

The unique identifier of the OAuth provider to delete.

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

- [https://pspas.pspete.dev/commands/Remove-PASOAuthProvider](https://pspas.pspete.dev/commands/Remove-PASOAuthProvider)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/oauth-delete-provider.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/oauth-delete-provider.htm)

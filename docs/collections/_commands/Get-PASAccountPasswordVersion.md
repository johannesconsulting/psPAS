---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountPasswordVersion
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountPasswordVersion
---

# Get-PASAccountPasswordVersion

## SYNOPSIS

Returns details of secret versions.

## SYNTAX

### Default (Default)

```
Get-PASAccountPasswordVersion [-AccountID] <String> [[-showTemporary] <Boolean>]
 [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASAccountPasswordVersion [-AccountID] <string> [[-showTemporary] <bool>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns all secret versions.

Requires the following Safe member authorizations:
- List accounts
- View Safe members

Requires CyberArk Version 12.1 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASAccountPasswordVersion -AccountID 32_1
```

Get password versions for account with ID 32_1

### EXAMPLE 2

```powershell
Get-PASAccountPasswordVersion -AccountID 32_1 -showTemporary $true
```

Get password versions, including temporary versions for account with ID 32_1

### EXAMPLE 3

```powershell
Get-PASAccount -id 32_1 | Get-PASAccountPasswordVersion
```

Get password versions for account with ID 32_1, using pipeline input from Get-PASAccount

### EXAMPLE 4

```powershell
Get-PASAccount -Safe UNIX | Get-PASAccountPasswordVersion -showTemporary $true
```

Get password versions, including temporary versions, for every account in the UNIX Safe, using pipeline input from Get-PASAccount

## PARAMETERS

### -AccountID

The ID of the account to get password version details of.

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

### -showTemporary

Whether to include temporary password versions in the results.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

- [https://pspas.pspete.dev/commands/Get-PASAccountPasswordVersion](https://pspas.pspete.dev/commands/Get-PASAccountPasswordVersion)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Secrets-Get-versions.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Secrets-Get-versions.htm)

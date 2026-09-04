---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASMasterPolicy
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASMasterPolicy
---

# Get-PASMasterPolicy

## SYNOPSIS

Retrieves Master Policy details

## SYNTAX

### Default (Default)

```
Get-PASMasterPolicy [-PolicyId <Int32>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASMasterPolicy [[-PolicyId] <int>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Retrieves Master Policy details

## EXAMPLES

### Example 1

```powershell
Get-PASMasterPolicy
```

Outputs all Master Policy details.
Policy ID 1 is the main Master Policy

### Example 2

```powershell
Get-PASMasterPolicy -PolicyId 2
```

Outputs all Master Policy details for platform with id 2

### Example 3

```powershell
2 | Get-PASMasterPolicy
```

Outputs all Master Policy details for platform with id 2, providing the PolicyId via the pipeline by value.

### Example 4

```powershell
[pscustomobject]@{PolicyId = 3} | Get-PASMasterPolicy
```

Outputs all Master Policy details for platform with id 3, providing the PolicyId via the pipeline by property name.

Minimum required version 15.0

## PARAMETERS

### -PolicyId

The ID of the policy to retrieve.

```yaml
Type: System.Int32
DefaultValue: 1
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: true
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

### None

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASMasterPolicy](https://pspas.pspete.dev/commands/Get-PASMasterPolicy)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-policy-by-id.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/get-policy-by-id.htm)

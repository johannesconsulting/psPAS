---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Unblock-PASUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Unblock-PASUser
---

# Unblock-PASUser

## SYNOPSIS

Activates a suspended user

## SYNTAX

### Gen2 (Default)

```
Unblock-PASUser -id <int> [<CommonParameters>]
```

### Gen1

```
Unblock-PASUser -UserName <string> -Suspended <bool> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Activates an existing vault user who was suspended due to password failures.

Default operation requires minimum version of 10.10

## EXAMPLES

### EXAMPLE 1

```
Unblock-PASUser -UserName MrFatFingers -Suspended $false
```

Activates suspended vault user MrFatFingers using the Gen1 API

### EXAMPLE 2

```
Unblock-PASUser -id 666
```

Activates suspended vault user with id 666, using the API from 10.10+

### EXAMPLE 3

```
Get-PASUser -id 666 | Unblock-PASUser
```

Activates the suspended vault user found by id 666, using pipeline input

## PARAMETERS

### -id

The user's unique ID

Minimum required version 10.10
The user's unique ID

Minimum required version 10.10

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
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

### -Suspended

Suspension status

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserName

The user's name

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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Unblock-PASUser](https://pspas.pspete.dev/commands/Unblock-PASUser)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/activate-user-v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/activate-user-v10.htm)

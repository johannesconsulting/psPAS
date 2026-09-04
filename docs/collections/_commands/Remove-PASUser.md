---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASUser
---

# Remove-PASUser

## SYNOPSIS

Deletes a vault user

## SYNTAX

### Gen2 (Default)

```
Remove-PASUser -id <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1

```
Remove-PASUser -UserName <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes an existing user from the vault

Default operation using the Gen2 API requires minimum version of 11.1

## EXAMPLES

### EXAMPLE 1

```
Remove-PASUser -id 1234
```

Deletes vault user with id 1234

Minimum required version 11.1

### EXAMPLE 2

```
Remove-PASUser -UserName This_User
```

Deletes vault user "This_User"

### EXAMPLE 3

```
Remove-PASUser -id 1234 -WhatIf
```

Shows what would happen if vault user with id 1234 was deleted, without making any changes

### EXAMPLE 4

```
Get-PASUser -id 1234 | Remove-PASUser
```

Deletes the vault user found by id 1234, using pipeline input

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

The numeric id of the user to delete.

Minimum required version 11.1
The numeric id of the user to delete.

Minimum required version 11.1

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

### -UserName

The name of the user to delete from the vault

Should be specified for versions earlier than 11.1
The name of the user to delete from the vault

Should be specified for versions earlier than 11.1

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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASUser](https://pspas.pspete.dev/commands/Remove-PASUser)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Users%20Web%20Services%20-%20Delete%20User.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Users%20Web%20Services%20-%20Delete%20User.htm)

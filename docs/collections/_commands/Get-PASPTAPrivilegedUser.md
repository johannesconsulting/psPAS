---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPTAPrivilegedUser
---

# Get-PASPTAPrivilegedUser

## SYNOPSIS

Get PTA PrivilegedUsersList

## SYNTAX

### Default (Default)

```
Get-PASPTAPrivilegedUser [[-ValueType] <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPTAPrivilegedUser [[-ValueType] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Return PrivilegedUsersList from PTA

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASPTAPrivilegedUser
```

Return PrivilegedUsersList PTA security configuration

### EXAMPLE 2

```powershell
Get-PASPTAPrivilegedUser -ValueType DefaultValue
```

Returns the default value of the PrivilegedUsersList PTA security configuration, rather than the actual configured value.

### EXAMPLE 3

```powershell
Get-PASPTAPrivilegedUser | Where-Object { $_.platform -eq 'WINDOWS' }
```

Returns only the configured privileged users for the WINDOWS platform.

## PARAMETERS

### -ValueType

Specify to return ActualValue or DefaultValue.
ActualValue is returned by default.
Specify to return ActualValue or DefaultValue.
ActualValue is returned by default.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
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

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedUser](https://pspas.pspete.dev/commands/Get-PASPTAPrivilegedUser)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetSecurity.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/GetSecurity.htm)

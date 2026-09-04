---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAuthenticationMethod
---

# Get-PASAuthenticationMethod

## SYNOPSIS

List authentication methods

## SYNTAX

### Default (Default)

```
Get-PASAuthenticationMethod [[-ID] <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASAuthenticationMethod [[-ID] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns a list of all existing authentication methods.

Membership of Vault admins group required

## EXAMPLES

### EXAMPLE 1

```
Get-PASAuthenticationMethod
```

Returns list of all authentication methods.

### EXAMPLE 2

```
Get-PASAuthenticationMethod -ID RADIUS
```

Returns details of the "RADIUS" authentication method only.

### EXAMPLE 3

```
[PSCustomObject]@{ID = 'SAML'} | Get-PASAuthenticationMethod
```

Returns details of the "SAML" authentication method, with the ID value supplied via the pipeline.

### EXAMPLE 4

```
Get-PASAuthenticationMethod | Where-Object enabled -eq $false
```

Returns all authentication methods that are currently disabled.

## PARAMETERS

### -ID

The ID of a specific authentication method to return details of

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

- [https://pspas.pspete.dev/commands/Get-PASAuthenticationMethod](https://pspas.pspete.dev/commands/Get-PASAuthenticationMethod)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Get_specific_Authentication_method.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Get_specific_Authentication_method.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Get_Authentication_methods.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Get_Authentication_methods.htm)

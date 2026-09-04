---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASApplicationAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASApplicationAuthenticationMethod
---

# Get-PASApplicationAuthenticationMethod

## SYNOPSIS

Returns information about all of the authentication methods of a specific application.

## SYNTAX

### Default (Default)

```
Get-PASApplicationAuthenticationMethod [-AppID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASApplicationAuthenticationMethod [-AppID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information about all of the authentication methods of a specific application.

The user authenticated to the vault running the command must have the "Audit Users" permission.

## EXAMPLES

### EXAMPLE 1

```
Get-PASApplicationAuthenticationMethod -AppID NewApp
```

Gets all authentication methods of application NewApp

### EXAMPLE 2

```
Get-PASApplication -AppID NewApp | Get-PASApplicationAuthenticationMethod
```

Gets all authentication methods of application NewApp via the pipeline.

### EXAMPLE 3

```
Get-PASApplication -Location "\Applications\Finance" -IncludeSublocations $true | Get-PASApplicationAuthenticationMethod
```

Gets the authentication methods for every application found under the Finance location and its sublocations.

## PARAMETERS

### -AppID

The name of the application for which information about authentication methods will be returned.

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

- [https://pspas.pspete.dev/commands/Get-PASApplicationAuthenticationMethod](https://pspas.pspete.dev/commands/Get-PASApplicationAuthenticationMethod)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20all%20Authentication%20Methods%20of%20a%20Specific%20Application.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20all%20Authentication%20Methods%20of%20a%20Specific%20Application.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASUserLoginInfo
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASUserLoginInfo
---

# Get-PASUserLoginInfo

## SYNOPSIS

Get Login information for the current user

## SYNTAX

### Default (Default)

```
Get-PASUserLoginInfo [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASUserLoginInfo [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns data about the User that is currently logged into the system

## EXAMPLES

### EXAMPLE 1

```
Get-PASUserLoginInfo
```

Returns Login Info for the current user

### EXAMPLE 2

```
$loginInfo = Get-PASUserLoginInfo
```

Saves the login information for the current user in the $loginInfo variable

### EXAMPLE 3

```
(Get-PASUserLoginInfo).FailedLogins
```

Returns the number of failed login attempts recorded for the current user

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASUserLoginInfo](https://pspas.pspete.dev/commands/Get-PASUserLoginInfo)

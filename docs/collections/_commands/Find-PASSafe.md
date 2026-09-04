---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Find-PASSafe
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Find-PASSafe
---

# Find-PASSafe

## SYNOPSIS

(Deprecated) Returns safe list from the vault.

## SYNTAX

### Default (Default)

```
Find-PASSafe [[-search] <String>] [[-TimeoutSec] <Int32>] [<CommonParameters>]
```

### __AllParameterSets

```
Find-PASSafe [[-search] <string>] [[-TimeoutSec] <int>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Minimum required version 10.1

Deprecated from 11.7

Returns abbreviated details for all safes

## EXAMPLES

### EXAMPLE 1

```
Find-PASSafe
```

Returns details of all safes which the user has access to.

### EXAMPLE 2

```
Find-PASSafe -search "xyz abc"
```

Returns details of all matching safes which the user has access to.

### EXAMPLE 3

```
Find-PASSafe -TimeoutSec 30
```

Returns details of all safes which the user has access to, specifying a 30 second timeout for the request.

### EXAMPLE 4

```
Find-PASSafe -search "UNIX" -TimeoutSec 30
```

Returns details of all matching safes which the user has access to, specifying a 30 second timeout for the request.

## PARAMETERS

### -search

List of keywords, separated with a space.

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
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutSec

See Invoke-WebRequest

Specify a timeout value in seconds
See Invoke-WebRequest

Specify a timeout value in seconds

```yaml
Type: System.Int32
DefaultValue: 0
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

## OUTPUTS

## NOTES

Find-PASSafe is deprecated from 11.7

Function was based on undocumented features available since V10

It returns results faster than the Gen1 API (invoked with Get-PASSafe) but has a vastly different return object

Now documented since version 12.0, this is the Gen2 API for Get-PASafe.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Find-PASSafe](https://pspas.pspete.dev/commands/Find-PASSafe)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20List%20Safes.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20List%20Safes.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountActivity
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountActivity
---

# Get-PASAccountActivity

## SYNOPSIS

Returns activities for an account.

## SYNTAX

### Gen2 (Default)

```
Get-PASAccountActivity -AccountID <string> [<CommonParameters>]
```

### Gen1

```
Get-PASAccountActivity -AccountID <string> [-UseGen1API] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns activities for a specific account identified by its AccountID.

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccount -Keywords root -Safe UNIXSafe | Get-PASAccountActivity
```

Will return the account activity for the account output by Get-PASAccount

### EXAMPLE 2

```
Get-PASAccountActivity -id 123_4 -useGen1API
```

Will return the account activity for the account using the Gen1 API

### EXAMPLE 3

```
Get-PASAccountActivity -AccountID 19_1
```

Returns account activity for account with ID 19_1 using the default Gen2 API

### EXAMPLE 4

```
Get-PASAccountActivity -AccountID 123_4 -UseClassicAPI
```

Returns account activity for account with ID 123_4 using the Gen1 API, via the UseClassicAPI alias for -UseGen1API

## PARAMETERS

### -AccountID

The ID of the account whose activities will be retrieved.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -UseGen1API

Specify to force use of the Gen1 API

Gen1 API is Deprecated from version 13.2
Specify to force use of the Gen1 API

Gen1 API is Deprecated from version 13.2

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- UseClassicAPI
ParameterSets:
- Name: Gen1
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

- [https://pspas.pspete.dev/commands/Get-PASAccountActivity](https://pspas.pspete.dev/commands/Get-PASAccountActivity)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Files%20-%20Get%20File%20Activity%20by%20ID.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Files%20-%20Get%20File%20Activity%20by%20ID.htm)

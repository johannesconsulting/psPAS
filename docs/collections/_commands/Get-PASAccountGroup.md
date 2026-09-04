---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountGroup
---

# Get-PASAccountGroup

## SYNOPSIS

Returns all the account groups in a specific Safe.

## SYNTAX

### Gen2 (Default)

```
Get-PASAccountGroup -Safe <String> [<CommonParameters>]
```

### Gen1

```
Get-PASAccountGroup -Safe <String> [-UseGen1API] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns all the account groups in a specific Safe.

The following permissions are required on the safe where the account group will be created:
 - Add Accounts
 - Update Account Content
 - Update Account Properties
  -Create Folders

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccountGroup -Safe SafeName
```

List all account groups in SafeName

### EXAMPLE 2

```
Get-PASAccountGroup -Safe SafeName -UseGen1API
```

Lists account groups in SafeName using the deprecated Gen1 API endpoint.

### EXAMPLE 3

```
[PSCustomObject]@{Safe = 'TargetSafe' } | Get-PASAccountGroup
```

Lists account groups in the TargetSafe safe, using pipeline input bound by property name.

## PARAMETERS

### -Safe

The Safe where the account groups are.

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

Specify to force usage the Gen1 API endpoint.

This is based on the Get Account Groups By Safe API, introduced in PAS 10.5, deprecated in 12.6
Specify to force usage the Gen1 API endpoint.

This is based on the Get Account Groups By Safe API, introduced in PAS 10.5, deprecated in 12.6

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

Minimum CyberArk version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASAccountGroup](https://pspas.pspete.dev/commands/Get-PASAccountGroup)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSafeAccountGroups.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetSafeAccountGroups.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAccountGroupBySafe.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetAccountGroupBySafe.htm)

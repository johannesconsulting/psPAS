---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountPassword
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountPassword
---

# Get-PASAccountPassword

## SYNOPSIS

Returns password for an account.

## SYNTAX

### Gen2 (Default)

```
Get-PASAccountPassword -AccountID <string> [-Reason <string>] [-TicketingSystem <string>]
 [-TicketId <string>] [-Version <int>] [-ActionType <string>] [-isUse <bool>] [-Machine <string>]
 [-UserName <string>] [<CommonParameters>]
```

### Gen1

```
Get-PASAccountPassword -AccountID <String> [-UseGen1API] [-UserName <String>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns password for an account identified by its AccountID.

If using version 9.7+ & Gen1 API parameters:
 - Will not return SSH Keys.
 - Cannot be used if a reason for password access must be specified.

If using version 10.1+ & Gen2 API parameters:
 - Will return SSH key of an existing account
 - Can be used if a reason and/or ticket ID must be specified.

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccount -Keywords root -Safe Prod_Safe | Get-PASAccountPassword
```

Will return the password value of the account found by Get-PASAccount

### EXAMPLE 2

```
Get-PASAccount -Keywords root -Safe Prod_Safe | Get-PASAccountPassword -UseGen1API
```

Will retrieve the password value of the account found by Get-PASAccount using the Gen1 API

### EXAMPLE 3

```
Get-PASAccount -Keywords root -Safe Prod_Safe | Get-PASAccountPassword -Reason "Incident Investigation"
```

Will retrieve the password value of the account found by Get-PASAccount using the Gen2 API, and specify a reason for access.

## PARAMETERS

### -AccountID

The ID of the account whose password will be retrieved.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ActionType

The action this password will be used for.

Requires minimum version of 10.1
The action this password will be used for.

Requires minimum version of 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -isUse

Internal parameter (for PSMP only).

Requires minimum version of 10.1
Internal parameter (for PSMP only).

Requires minimum version of 10.1

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Machine

The address of the remote machine to connect to.

Requires minimum version of 10.1
The address of the remote machine to connect to.

Requires minimum version of 10.1

```yaml
Type: System.String
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Reason

The reason that is required to be specified to retrieve the password/SSH key.

Requires minimum version of 10.1
The reason that is required to be specified to retrieve the password/SSH key.

Requires minimum version of 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketId

The ticket ID of the ticketing system.

Requires minimum version of 10.1
The ticket ID of the ticketing system.

Requires minimum version of 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketingSystem

The name of the Ticketing System.

Requires minimum version of 10.1
The name of the Ticketing System.

Requires minimum version of 10.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 10.1
Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 10.1

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

### -UserName

UserName value, specified either manually or via input object.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Version

The version number of the required password.

If there are no previous versions, the current password/key version is returned.

Requires minimum version of 10.1
The version number of the required password.

If there are no previous versions, the current password/key version is returned.

Requires minimum version of 10.1

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
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

Minimum API version is 9.7 for password retrieval only.
From version 10.1 onwards both passwords and ssh keys can be retrieved.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASAccountPassword](https://pspas.pspete.dev/commands/Get-PASAccountPassword)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetPasswordValueV10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetPasswordValueV10.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountSSHKey
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountSSHKey
---

# Get-PASAccountSSHKey

## SYNOPSIS

Retrieves a private SSH key

## SYNTAX

### Default (Default)

```
Get-PASAccountSSHKey [-AccountID] <String> [[-Reason] <String>] [[-TicketingSystem] <String>]
 [[-TicketId] <String>] [[-Version] <Int32>] [[-ActionType] <String>] [[-isUse] <Boolean>]
 [[-Machine] <String>] [-Path <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASAccountSSHKey [-AccountID] <string> [[-Reason] <string>] [[-TicketingSystem] <string>]
 [[-TicketId] <string>] [[-Version] <int>] [[-ActionType] <string>] [[-isUse] <bool>]
 [[-Machine] <string>] [[-Path] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Get the private SSH key value from an existing account.
If the -Path parameter is specified, the private SSH key is saved to the specified local file instead of being returned to the pipeline.

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccountSSHKey -AccountId 12_3 -Reason "Some Reason"
```

Returns Private SSH Key associated with account 12_3

### EXAMPLE 2

```
Get-PASAccountSSHKey -AccountId 12_3 -Reason "Emergency access" -TicketingSystem ServiceNow -TicketId "INC0012345"
```

Returns the private SSH key for account 12_3, recording the ticketing system and ticket ID used to justify the retrieval.

### EXAMPLE 3

```
Get-PASAccountSSHKey -AccountId 12_3 -Version 2 -Machine "unix01.domain.com"
```

Returns version 2 of the private SSH key for account 12_3, retrieved for use against the specified remote machine.

### EXAMPLE 4

```
Get-PASAccount -search "unix01" | Get-PASAccountSSHKey -Reason "Scheduled maintenance"
```

Gets the matching account and retrieves its private SSH key, using the account ID from the pipeline.

### EXAMPLE 5

```
Get-PASAccountSSHKey -AccountId 12_3 -Path C:\Keys\
```

Saves the private SSH key for account 12_3 to a file in the C:\Keys\ folder.

## PARAMETERS

### -AccountID

The ID of the account whose SSH Key will be retrieved.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
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

### -ActionType

The action this SSH key is used for

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -isUse

Internal parameter (for use of PSMP only)

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Machine

The address of the remote machine that the user wants to connect to using the SSH key.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Path

Output folder, or full destination file path, to save the retrieved private SSH key to.
If the path's leaf component includes a file extension, it is treated as the exact file to save to; otherwise it is treated as an output folder and a filename derived from the AccountID is appended.
If not specified, the private SSH key value is returned to the pipeline instead of being saved to a file.
Output folder, or full destination file path, to save the retrieved private SSH key to.
If the path's leaf component includes a file extension, it is treated as the exact file to save to; otherwise it is treated as an output folder and a filename derived from the AccountID is appended.
If not specified, the private SSH key value is returned to the pipeline instead of being saved to a file.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Reason

The reason for retrieving the private SSH key.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketId

The ticket ID defined in the ticketing system.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketingSystem

The name of the ticketing system.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Version

The version number of the required SSH key.

If the value is left empty or the value passed does not exist,
then the current SSH key version is returned.
The version number of the required SSH key.

If the value is left empty or the value passed does not exist, then the current SSH key version is returned.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
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

### System.Int32

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASAccountSSHKey](https://pspas.pspete.dev/commands/Get-PASAccountSSHKey)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Retrieve_Private_SSH_Key_Account.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Retrieve_Private_SSH_Key_Account.htm)

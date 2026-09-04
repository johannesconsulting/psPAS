---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASRequest
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASRequest
---

# New-PASRequest

## SYNOPSIS

Creates requests for account access

## SYNTAX

### ConnectionParams (Default)

```
New-PASRequest -AccountId <string> [-Reason <string>] [-TicketingSystemName <string>]
 [-TicketID <string>] [-MultipleAccessRequired <bool>] [-FromDate <datetime>] [-ToDate <datetime>]
 [-AdditionalInfo <hashtable>] [-UseConnect <bool>] [-ConnectionComponent <string>]
 [-AllowMappingLocalDrives <string>] [-AllowConnectToConsole <string>]
 [-RedirectSmartCards <string>] [-PSMRemoteMachine <string>] [-LogonDomain <string>]
 [-AllowSelectHTML5 <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ManualParams

```
New-PASRequest -AccountId <string> [-Reason <string>] [-TicketingSystemName <string>]
 [-TicketID <string>] [-MultipleAccessRequired <bool>] [-FromDate <datetime>] [-ToDate <datetime>]
 [-AdditionalInfo <hashtable>] [-UseConnect <bool>] [-ConnectionComponent <string>]
 [-ConnectionParams <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### BulkSearch

```
New-PASRequest -Search <string> [-ExcludedEntities <string[]>] [-Reason <string>]
 [-TicketingSystemName <string>] [-TicketID <string>] [-MultipleAccessRequired <bool>]
 [-FromDate <datetime>] [-ToDate <datetime>] [-AdditionalInfo <hashtable>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### BulkFilter

```
New-PASRequest -SavedFilter <string> [-ExcludedEntities <string[]>] [-Reason <string>]
 [-TicketingSystemName <string>] [-TicketID <string>] [-MultipleAccessRequired <bool>]
 [-FromDate <datetime>] [-ToDate <datetime>] [-AdditionalInfo <hashtable>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### BulkItems

```
New-PASRequest -BulkItems <Object[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Creates an access request for a specific account, list of accounts, or multiple accounts which match filter or search criteria.

A specific account may be either a password account or an SSH Key account.

Requesting access to multiple accounts is only available if Add accounts, Update account content, and Update account properties authorization is held for at least one Safe.

## EXAMPLES

### EXAMPLE 1

```
New-PASRequest -AccountId $ID -Reason "Task ABC" -MultipleAccessRequired $true -ConnectionComponent PSM-RDP
```

Creates a new request for access to account with ID in $ID

### EXAMPLE 2

```
New-PASRequest -Search some_admin -ExcludedEntities 123_4, 456_78 -Reason "some reason"
```

Requests access to multiple accounts matching search term

### EXAMPLE 3

```
New-PASRequest -SavedFilter Favorites -ExcludedEntities 12_3, 45_6 -Reason "some reason"
```

Requests access to multiple accounts matching saved filter

### EXAMPLE 4

```
New-PASRequest -BulkItems $Requests
```

Submits a list of request objects.
Request objects are created with the New-PASRequestObject command.

### EXAMPLE 5

```
New-PASRequest -MultipleAccessRequired $true -FromDate (Get-Date) -ToDate (Get-Date).AddDays(1) -SavedFilter Favorites -ExcludedEntities 50_3 -Reason "Some Reason"
```

Requests multiple access over 24 hours to multiple accounts matching saved filter.

Multiple access requests must include ToDate and FromDate values

## PARAMETERS

### -AccountId

The ID of the account to access

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ManualParams
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AdditionalInfo

Additional information included in the request

```yaml
Type: System.Collections.Hashtable
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowConnectToConsole

Whether or not to connect to the administrative console of the remote machine.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowMappingLocalDrives

Whether or not to redirect their local hard drives to the remote server.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AllowSelectHTML5

Specify which connection method, HTML5-based or RDP-file, to use when connecting to the remote server

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BulkItems

An array of Requests created with New-PASRequestObject.

Requires minimum version of 13.2
An array of Requests created with New-PASRequestObject.

Requires minimum version of 13.2

```yaml
Type: System.Object[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkItems
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

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

### -ConnectionComponent

If the connection is through PSM, the name of the connection component to connect with,
as defined in the configuration.
If the connection is through PSM, the name of the connection component to connect with, as defined in the configuration.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ConnectionParams

A list of parameters required to perform the connection, as defined in each connection component configuration

```yaml
Type: System.Collections.Hashtable
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExcludedEntities

A list of AccountID's to exclude when using search or filter to request access for multiple accounts.

Requires minimum version of 13.2
A list of AccountID's to exclude when using search or filter to request access for multiple accounts.

Requires minimum version of 13.2

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FromDate

If the request is for a timeframe, the time from when the user wants to access the account.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -LogonDomain

The NetBIOS domain name of the account being used.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MultipleAccessRequired

Whether the request is for multiple accesses

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PSMRemoteMachine

Address of the remote machine to connect to.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Reason

The reason why the account will be accessed

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RedirectSmartCards

Whether or not to redirect Smart Card so that the certificate stored on the card can be accessed on the target

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SavedFilter

Request access to multiple accounts which match a savedFilter.

Accepts account view  filter names 'Regular', 'Recently', 'Locked' & 'Favorites'

Requires minimum version of 13.2
Request access to multiple accounts which match a savedFilter.

Accepts account view  filter names 'Regular', 'Recently', 'Locked' & 'Favorites'

Requires minimum version of 13.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkFilter
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Search

Request access to multiple accounts which match a search term

Requires minimum version of 13.2
Request access to multiple accounts which match a search term

Requires minimum version of 13.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketID

The Ticket ID given by the ticketing system.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketingSystemName

The name of the Ticketing system specified in the request

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ToDate

If the request is for a timeframe, the time until the user wants to access the account.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: BulkSearch
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: BulkFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseConnect

Whether or not the request is for connection through the PSM.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ManualParams
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectionParams
  Position: Named
  IsRequired: false
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

### System.String

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Object[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk Version 9.10

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASRequest](https://pspas.pspete.dev/commands/New-PASRequest)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/CreateRequest.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/CreateRequest.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Create-multiple-requests.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/13.2/en/Content/WebServices/Create-multiple-requests.htm)

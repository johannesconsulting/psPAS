---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASRequestObject
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASRequestObject
---

# New-PASRequestObject

## SYNOPSIS

Creates hashtable structured to be used as input for account access request operations

## SYNTAX

### ConnectionParams (Default)

```
New-PASRequestObject [-AccountId <string>] [-Reason <string>] [-TicketingSystemName <string>]
 [-TicketID <string>] [-MultipleAccessRequired <bool>] [-FromDate <datetime>] [-ToDate <datetime>]
 [-AdditionalInfo <hashtable>] [-UseConnect <bool>] [-ConnectionComponent <string>]
 [-AllowMappingLocalDrives <string>] [-AllowConnectToConsole <string>]
 [-RedirectSmartCards <string>] [-PSMRemoteMachine <string>] [-LogonDomain <string>]
 [-AllowSelectHTML5 <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ManualParams

```
New-PASRequestObject [-AccountId <string>] [-Reason <string>] [-TicketingSystemName <string>]
 [-TicketID <string>] [-MultipleAccessRequired <bool>] [-FromDate <datetime>] [-ToDate <datetime>]
 [-AdditionalInfo <hashtable>] [-UseConnect <bool>] [-ConnectionComponent <string>]
 [-ConnectionParams <hashtable>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Provide parameter values to return hashtable structured to be used as input for account access request operations.

## EXAMPLES

### EXAMPLE 1

```powershell
New-PASRequestObject -AccountId 123_4 -TicketingSystemName SomeITSM -TicketID 4321 -FromDate (Get-date) -ToDate $((Get-Date).AddHours(4)) -PSMRemoteMachine SomeServer
```

Returns hashtable structured to be used as input for account access request operations

### EXAMPLE 2

```powershell
New-PASRequestObject -AccountId 19_1 -Reason "Scheduled maintenance" -ConnectionParams @{Address = '10.0.0.5'; Port = 3389 }
```

Returns a hashtable using the ManualParams parameter set, where ConnectionParams supplies the connection details directly instead of the individual connection component parameters.

### EXAMPLE 3

```powershell
$Requests = '19_1', '19_2', '19_3' | ForEach-Object { New-PASRequestObject -AccountId $_ -Reason "Quarterly access review" }
New-PASRequest -BulkItems $Requests
```

Builds an array of request objects for three accounts and submits them together in a single bulk request.

### EXAMPLE 4

```powershell
[PSCustomObject]@{AccountId = '19_1'; Reason = 'On-call incident response' } | New-PASRequestObject -ConnectionComponent PSM-RDP
```

Creates a request object using pipeline input for the AccountId and Reason values.

## PARAMETERS

### -AccountId

The ID of the account to access

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

### -AdditionalInfo

Additional information included in the request

```yaml
Type: System.Collections.Hashtable
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

### -FromDate

If the request is for a timeframe, the time from when the user wants to access the account.

```yaml
Type: System.DateTime
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

### -TicketID

The Ticket ID given by the ticketing system.

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

### -TicketingSystemName

The name of the Ticketing system specified in the request

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

### -ToDate

If the request is for a timeframe, the time until the user wants to access the account.

```yaml
Type: System.DateTime
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

### -UseConnect

Whether or not the request is for connection through the PSM.

```yaml
Type: System.Boolean
DefaultValue: False
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

### System.Boolean

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### System.Collections.Hashtable

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

{{ Fill in the related links here }}

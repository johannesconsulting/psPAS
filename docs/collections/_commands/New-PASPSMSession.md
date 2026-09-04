---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASPSMSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASPSMSession
---

# New-PASPSMSession

## SYNOPSIS

Get required parameters to connect through PSM

## SYNTAX

### PSMConnect

```
New-PASPSMSession -AccountID <string> -ConnectionComponent <string> [-reason <string>]
 [-TicketingSystemName <string>] [-TicketId <string>] [-AllowMappingLocalDrives <string>]
 [-AllowConnectToConsole <string>] [-RedirectSmartCards <string>] [-PSMRemoteMachine <string>]
 [-LogonDomain <string>] [-AllowSelectHTML5 <string>] [-ConnectionMethod <string>] [-Path <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AdHocConnect

```
New-PASPSMSession -userName <string> -secret <securestring> -address <string> -platformID <string>
 -ConnectionComponent <string> [-extraFields <string>] [-reason <string>]
 [-TicketingSystemName <string>] [-TicketId <string>] [-AllowMappingLocalDrives <string>]
 [-AllowConnectToConsole <string>] [-RedirectSmartCards <string>] [-PSMRemoteMachine <string>]
 [-LogonDomain <string>] [-AllowSelectHTML5 <string>] [-ConnectionMethod <string>] [-Path <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

This method enables you to connect to an account through PSM (PSMConnect).

The function returns either an RDP file or URL for PSM connections.

It requires the PVWA and PSM to be configured for either transparent connections through PSM with RDP files
or the HTML5 Gateway.

Minimum required version for AdHocConnect 10.5

Minimum required version for HTMLGW 10.2

## EXAMPLES

### EXAMPLE 1

```
New-PASPSMSession -AccountID $ID -ConnectionComponent PSM-SSH -reason "Fix XYZ"
```

Outputs RDP file for Direct Connection via PSM using account with ID in $ID

### EXAMPLE 2

```
New-PASPSMSession -AccountID $id -ConnectionComponent PSM-RDP -AllowMappingLocalDrives No -PSMRemoteMachine ServerName
```

Provide connection parameters for the new PSM connection

### EXAMPLE 3

```
$secret = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force
New-PASPSMSession -userName Administrator -secret $secret -address 10.10.10.20 -platformID SecureConnect -ConnectionComponent PSM-RDP
```

Connects to a target that is not managed in the Vault using a supplied username, password, address and platform ID (Ad-Hoc Connection)

### EXAMPLE 4

```
New-PASPSMSession -AccountID $ID -ConnectionComponent PSM-RDP -ConnectionMethod PSMGW -TicketingSystemName ServiceNow -TicketId INC000123
```

Requests a PSM Gateway (HTML5) connection to the managed account, including ticketing system reference information

## PARAMETERS

### -AccountID

The unique ID of the account to retrieve and use to connect to the target via PSM

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: PSMConnect
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -address

For Ad-Hoc connections: The target account address.

Minimum required version 10.5
For Ad-Hoc connections: The target account address.

Minimum required version 10.5

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: true
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
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
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
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
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
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
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

The name of the connection component to connect with as defined in the configuration

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ConnectionMethod

The expected parameters to be returned, either RDP or PSMGW.

PSMGW is only available from version 10.2 onwards
The expected parameters to be returned, either RDP or PSMGW.

PSMGW is only available from version 10.2 onwards

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -extraFields

For Ad-Hoc connections: Additional needed parameters for the various connection components.

Minimum required version 10.5
For Ad-Hoc connections: Additional needed parameters for the various connection components.

Minimum required version 10.5

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
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
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Path

The folder to save the output file in.

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

### -platformID

For Ad-Hoc connections: A configured secure connect platform.

Minimum required version 10.5
For Ad-Hoc connections: A configured secure connect platform.

Minimum required version 10.5

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: true
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
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -reason

The reason that is required to request access to this account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
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
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -secret

For Ad-Hoc connections: The target account password.

Minimum required version 10.5
For Ad-Hoc connections: The target account password.

Minimum required version 10.5

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TicketId

The TicketId to use with the Ticketing System

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
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

The name of the Ticketing System used in the request.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: PSMConnect
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -userName

For Ad-Hoc connections: the username of the account to connect with.

Minimum required version 10.5
For Ad-Hoc connections: the username of the account to connect with.

Minimum required version 10.5

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AdHocConnect
  Position: Named
  IsRequired: true
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

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk Version 9.10
PSMGW connections require 10.2
Ad-Hoc connections require 10.5

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASPSMSession](https://pspas.pspete.dev/commands/New-PASPSMSession)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ConnectThroughPSM.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ConnectThroughPSM.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/SecureConnectPSM.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/SecureConnectPSM.htm)

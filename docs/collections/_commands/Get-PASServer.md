---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASServer
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASServer
---

# Get-PASServer

## SYNOPSIS

Returns details of the Web Service Server

## SYNTAX

### Gen2 (Default)

```
Get-PASServer [<CommonParameters>]
```

### Gen1

```
Get-PASServer -UseGen1API [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information on Server.

Returns the name of the Vault configured in the ServerDisplayName configuration parameter

Appears to need Vault administrator rights

By default, uses the Gen2 `api/server` endpoint, which works against both self-hosted and
Privilege Cloud/ISPSS shared-services implementations.

Specify `-UseGen1API` to use the legacy `WebServices/PIMServices.svc/Server` endpoint instead. This
is only applicable to self-hosted implementations.

## EXAMPLES

### EXAMPLE 1

```
Get-PASServer
```

Displays CyberArk Server information

### EXAMPLE 2

```
Get-PASServer | Format-List -Property *
```

Displays all available properties returned for the connected Vault server.

### EXAMPLE 3

```
if (Get-PASServer) { "Connection to CyberArk Server is active" }
```

Uses a call to Get-PASServer to confirm the current session can successfully reach the Vault server.

## PARAMETERS

### -UseGen1API

Use the legacy Gen1 `WebServices/PIMServices.svc/Server` endpoint instead of the Gen2 `api/server` endpoint.

Only applicable to self-hosted implementations.
Use the legacy Gen1 `WebServices/PIMServices.svc/Server` endpoint instead of the Gen2 `api/server` endpoint.

Only applicable to self-hosted implementations.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASServer](https://pspas.pspete.dev/commands/Get-PASServer)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Server%20Web%20Services%20-%20Server.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Server%20Web%20Services%20-%20Server.htm)

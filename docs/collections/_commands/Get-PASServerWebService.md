---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASServerWebService
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASServerWebService
---

# Get-PASServerWebService

## SYNOPSIS

Returns details of the Web Service

## SYNTAX

### Default (Default)

```
Get-PASServerWebService [[-WebSession] <WebRequestSession>] [-BaseURI] <String>
 [[-PVWAAppName] <String>] [-UseGen1API] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASServerWebService [[-WebSession] <WebRequestSession>] [-BaseURI] <string>
 [[-PVWAAppName] <string>] [-UseGen1API] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information on Server web service.

Returns the name of the Vault configured in the ServerDisplayName configuration parameter

## EXAMPLES

### EXAMPLE 1

```
Get-PASServerWebService
```

Displays CyberArk Web Service Information

### EXAMPLE 2

```
Get-PASServerWebService -BaseURI https://cyberark.local
```

Returns web service details for the PVWA at "https://cyberark.local", using the default "PasswordVault" virtual directory.

### EXAMPLE 3

```
Get-PASServerWebService -BaseURI https://cyberark.local -PVWAAppName PVWA -UseGen1API
```

Returns web service details from the deprecated Gen1 API endpoint, using a virtual directory named "PVWA" instead of the default "PasswordVault".

### EXAMPLE 4

```
[PSCustomObject]@{BaseURI = 'https://cyberark.local'} | Get-PASServerWebService
```

Retrieves web service details for the PVWA by piping an object with a BaseURI property.

## PARAMETERS

### -BaseURI

PVWA Web Address

Do not include "/PasswordVault/"
PVWA Web Address

Do not include "/PasswordVault/"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PVWAAppName

The name of the CyberArk PVWA Virtual Directory.

Defaults to PasswordVault
The name of the CyberArk PVWA Virtual Directory.

Defaults to PasswordVault

```yaml
Type: System.String
DefaultValue: PasswordVault
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

### -UseGen1API

Force use of Gen1 API for request.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- UseClassicAPI
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

### -WebSession

WebRequestSession object returned from New-PASSession

```yaml
Type: Microsoft.PowerShell.Commands.WebRequestSession
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

### Microsoft.PowerShell.Commands.WebRequestSession

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASServerWebService](https://pspas.pspete.dev/commands/Get-PASServerWebService)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Server%20Web%20Services%20-%20Verify.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Server%20Web%20Services%20-%20Verify.htm)

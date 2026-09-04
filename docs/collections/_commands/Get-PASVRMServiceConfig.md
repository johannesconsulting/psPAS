---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASVRMServiceConfig
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASVRMServiceConfig
---

# Get-PASVRMServiceConfig

## SYNOPSIS

This method gets the current value for a specific configuration parameter.

## SYNTAX

### Default (Default)

```
Get-PASVRMServiceConfig [[-BaseURI] <String>] [-serviceName] <String> [-serverAddress] <String>
 [[-serviceUserName] <String>] [-servicePassword] <SecureString> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASVRMServiceConfig [[-BaseURI] <string>] [-serviceName] <string> [-serverAddress] <string>
 [[-serviceUserName] <string>] [-servicePassword] <securestring> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets the current values for all Disaster Recovery (DR) configuration parameters.

Returns Primary Vault configuration values including DefaultTimeout, DebugLevel, LockTimeout, and all DR-specific parameters.

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASVRMServiceConfig -serviceName DR -serverAddress "192.168.2.51" -servicePassword $SecurePassword
```

Gets all DR configuration parameters for the service at the specified address

### EXAMPLE 2

```powershell
Get-PASVRMServiceConfig -serviceName Vault -serverAddress "192.168.2.50" -servicePassword $SecurePassword
```

Gets all configuration parameters for the Vault service at the specified address

### EXAMPLE 3

```powershell
[PSCustomObject]@{serviceName = 'DR'; serverAddress = '192.168.2.51'; servicePassword = $SecurePassword} | Get-PASVRMServiceConfig
```

Passes the service name, server address, and credentials via the pipeline

## PARAMETERS

### -BaseURI

The URL of the PVWA server.
If not specified, uses the BaseURI from New-PASSession.
The URL of the PVWA server.
If not specified, uses the BaseURI from New-PASSession.

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -serverAddress

The IP or host name of the Primary Vault or DR Vault

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -serviceName

The name of the service to manage.
Supported services: Vault, DR
The name of the service to manage.
Supported services: Vault, DR

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

### -servicePassword

The PARAgent password as a SecureString

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -serviceUserName

The PARAgent user name.
Defaults to Administrator
The PARAgent user name.
Defaults to Administrator

```yaml
Type: System.String
DefaultValue: Administrator
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASVRMServiceConfig](https://pspas.pspete.dev/commands/Get-PASVRMServiceConfig)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-get-service-config.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-get-service-config.htm)

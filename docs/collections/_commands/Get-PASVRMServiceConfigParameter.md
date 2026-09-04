---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASVRMServiceConfigParameter
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASVRMServiceConfigParameter
---

# Get-PASVRMServiceConfigParameter

## SYNOPSIS

Gets a specific DR configuration parameter value

## SYNTAX

### Default (Default)

```
Get-PASVRMServiceConfigParameter [[-BaseURI] <String>] [-parameterName] <String>
 [-serviceName] <String> [-serverAddress] <String> [[-serviceUserName] <String>]
 [-servicePassword] <SecureString> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASVRMServiceConfigParameter [[-BaseURI] <string>] [-parameterName] <string>
 [-serviceName] <string> [-serverAddress] <string> [[-serviceUserName] <string>]
 [-servicePassword] <securestring> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Retrieves the current value of a specific Disaster Recovery configuration parameter.
Use this command to query individual DR configuration settings from the VRM service.
Requires authentication with the PARAgent service credentials.

## EXAMPLES

### Example 1

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMServiceConfigParameter -parameterName 'ReplicationInterval' -serviceName DR -serverAddress dr-vault.company.com -servicePassword $password
```

Retrieves the value of the ReplicationInterval configuration parameter from the DR service

### Example 2

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMServiceConfigParameter -parameterName EnableFailover -serviceName Vault -serverAddress vault.company.com -servicePassword $password
```

Retrieves the value of the EnableFailover configuration parameter from the Vault service

### Example 3

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
[PSCustomObject]@{parameterName = 'FailoverMode'; serviceName = 'DR'; serverAddress = 'dr-vault.company.com'; servicePassword = $password} | Get-PASVRMServiceConfigParameter
```

Retrieves the FailoverMode configuration parameter value using pipeline input

## PARAMETERS

### -BaseURI

The URL of the PVWA server.
If not specified, uses the BaseURI from New-PASSession
The URL of the PVWA server.
If not specified, uses the BaseURI from New-PASSession

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

### -parameterName

The name of the configuration parameter to retrieve

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

### -serverAddress

The IP address or hostname of the Primary Vault or DR Vault server

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -serviceName

The name of the service to query.
Supported services: Vault, DR
The name of the service to query.
Supported services: Vault, DR

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

### -servicePassword

The PARAgent password as a SecureString

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
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

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASVRMServiceConfigParameter](https://pspas.pspete.dev/commands/Get-PASVRMServiceConfigParameter)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-get-service-config-parameter.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-get-service-config-parameter.htm)

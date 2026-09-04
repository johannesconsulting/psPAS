---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASVRMServiceStatus
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASVRMServiceStatus
---

# Get-PASVRMServiceStatus

## SYNOPSIS

Gets the operational status of a Vault service

## SYNTAX

### Default (Default)

```
Get-PASVRMServiceStatus [[-BaseURI] <String>] [-serviceName] <String> [-serverAddress] <String>
 [[-serviceUserName] <String>] [-servicePassword] <SecureString> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASVRMServiceStatus [[-BaseURI] <string>] [-serviceName] <string> [-serverAddress] <string>
 [[-serviceUserName] <string>] [-servicePassword] <securestring> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

This method gets the current operational status of a specified service managed by the Vault Remote Manager.
Requires authentication with the PARAgent service credentials.

## EXAMPLES

### Example 1

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMServiceStatus -serviceName Vault -serverAddress vault.company.com -servicePassword $password
```

Gets the operational status of the Vault service on the specified server

### Example 2

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMServiceStatus -serviceName DR -serverAddress dr-vault.company.com -servicePassword $password
```

Gets the operational status of the DR service on the specified server

### Example 3

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMServiceStatus -serviceName ENE -serverAddress vault.company.com -servicePassword $password
```

Gets the operational status of the ENE service on the specified server.
This service requires CyberArk version 15.2 or higher

## PARAMETERS

### -BaseURI

The URL of the PVWA server, like https://example.com/PasswordVault
If not specified, uses the BaseURI from New-PASSession
The URL of the PVWA server, like https://example.com/PasswordVault If not specified, uses the BaseURI from New-PASSession

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

The IP address or hostname of the Primary Vault or DR Vault server

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

The name of the service to check status for.
Supported services: Vault, DR, ENE

The ENE service requires CyberArk version 15.2 or higher.
The name of the service to check status for.
Supported services: Vault, DR, ENE

The ENE service requires CyberArk version 15.2 or higher.

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

The password of the PARAgent user as a secure string

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

- [https://pspas.pspete.dev/commands/Get-PASVRMServiceStatus](https://pspas.pspete.dev/commands/Get-PASVRMServiceStatus)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-get-service-status.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-get-service-status.htm)

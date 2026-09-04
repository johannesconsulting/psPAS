---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Start-PASVRMService
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Start-PASVRMService
---

# Start-PASVRMService

## SYNOPSIS

Starts a Vault or DR service

## SYNTAX

### Default (Default)

```
Start-PASVRMService [[-BaseURI] <String>] [-serviceName] <String> [-serverAddress] <String>
 [[-serviceUserName] <String>] [-servicePassword] <SecureString> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Start-PASVRMService [[-BaseURI] <string>] [-serviceName] <string> [-serverAddress] <string>
 [[-serviceUserName] <string>] [-servicePassword] <securestring> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Starts a specified VRM service (Vault or DR) on the target server.
Use this command to bring services online after maintenance or troubleshooting.
Requires authentication with the PARAgent service credentials and supports WhatIf for testing.

## EXAMPLES

### Example 1

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Start-PASVRMService -serviceName Vault -serverAddress vault.company.com -servicePassword $password
```

Starts the Vault service on the specified server

### Example 2

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Start-PASVRMService -serviceName DR -serverAddress dr-vault.company.com -servicePassword $password
```

Starts the DR service on the specified server

### Example 3

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Start-PASVRMService -serviceName ENE -serverAddress vault.company.com -servicePassword $password -WhatIf
```

Shows what would happen if the ENE service was started, without actually starting it.
This service requires CyberArk version 15.2 or higher

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

The name of the service to start.
Supported services: Vault, DR, ENE

The ENE service requires CyberArk version 15.2 or higher.
The name of the service to start.
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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Start-PASVRMService](https://pspas.pspete.dev/commands/Start-PASVRMService)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-set-service-status-start.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-set-service-status-start.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASVRMServiceConfig
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASVRMServiceConfig
---

# Set-PASVRMServiceConfig

## SYNOPSIS

Sets one or multiple DR configuration parameters

## SYNTAX

### Default (Default)

```
Set-PASVRMServiceConfig [[-BaseURI] <String>] [-parameters] <Hashtable> [-serviceName] <String>
 [-serverAddress] <String> [[-serviceUserName] <String>] [-servicePassword] <SecureString> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASVRMServiceConfig [[-BaseURI] <string>] [-parameters] <hashtable> [-serviceName] <string>
 [-serverAddress] <string> [[-serviceUserName] <string>] [-servicePassword] <securestring> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Sets one or more Disaster Recovery configuration parameters on the VRM service.
Use this command to configure DR replication settings and other operational parameters.
Requires authentication with the PARAgent service credentials and supports WhatIf for testing.

## EXAMPLES

### Example 1

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
$params = @{ 'ReplicationInterval' = '300'; 'MaxRetries' = '5' }
Set-PASVRMServiceConfig -parameters $params -serviceName DR -serverAddress dr-vault.company.com -servicePassword $password
```

Sets multiple DR configuration parameters on the specified server

### Example 2

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Set-PASVRMServiceConfig -parameters @{ 'DebugLevel' = '3' } -serviceName Vault -serverAddress vault.company.com -servicePassword $password
```

Sets the DebugLevel configuration parameter on the Vault service

### Example 3

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Set-PASVRMServiceConfig -parameters @{ 'EnableReplicate' = 'Yes'; 'ReplicateInterval' = '60' } -serviceName DR -serverAddress dr-vault.company.com -servicePassword $password -WhatIf
```

Shows what would happen if the EnableReplicate and ReplicateInterval parameters were set on the DR service, without actually applying the change

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

### -parameters

A hashtable of configuration parameters to set.
Keys are parameter names, values are the desired settings
A hashtable of configuration parameters to set.
Keys are parameter names, values are the desired settings

```yaml
Type: System.Collections.Hashtable
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

The name of the service to configure.
Supported services: Vault, DR
The name of the service to configure.
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

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASVRMServiceConfig](https://pspas.pspete.dev/commands/Set-PASVRMServiceConfig)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-set-service-config-.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-set-service-config-.htm)

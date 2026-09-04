---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASVRMDRSystemHealth
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASVRMDRSystemHealth
---

# Get-PASVRMDRSystemHealth

## SYNOPSIS

Gets the DR system health check including replication status

## SYNTAX

### Default (Default)

```
Get-PASVRMDRSystemHealth [[-BaseURI] <String>] [-DRAddress] <String> [[-serviceUserName] <String>]
 [-servicePassword] <SecureString> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASVRMDRSystemHealth [[-BaseURI] <string>] [-DRAddress] <string> [[-serviceUserName] <string>]
 [-servicePassword] <securestring> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

This method evaluates the overall system health of the DR environment.

## EXAMPLES

### Example 1

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMDRSystemHealth -DRAddress dr-vault.company.com -servicePassword $password
```

Retrieves the DR system health status including replication information

### Example 2

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Get-PASVRMDRSystemHealth -BaseURI https://pvwa.company.com/PasswordVault -DRAddress dr-vault.company.com -serviceUserName PARAgentSvc -servicePassword $password
```

Retrieves the DR system health status using an explicit PVWA BaseURI and a non-default PARAgent user name

### Example 3

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
[PSCustomObject]@{DRAddress = 'dr-vault.company.com'; servicePassword = $password} | Get-PASVRMDRSystemHealth | Format-List
```

Passes the DR address and credentials via the pipeline and displays all returned health properties

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

### -DRAddress

The IP address or hostname of the DR Vault server

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
  Position: 3
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
DefaultValue: None
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

- [https://pspas.pspete.dev/commands/Get-PASVRMDRSystemHealth](https://pspas.pspete.dev/commands/Get-PASVRMDRSystemHealth)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-system-health.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-system-health.htm)

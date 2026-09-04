---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Invoke-PASVRMFailover
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Invoke-PASVRMFailover
---

# Invoke-PASVRMFailover

## SYNOPSIS

Initiates DR failover to the DR site

## SYNTAX

### Default (Default)

```
Invoke-PASVRMFailover [[-BaseURI] <String>] [-DRAddress] <String> [[-serviceUserName] <String>]
 [-servicePassword] <SecureString> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Invoke-PASVRMFailover [[-BaseURI] <string>] [-DRAddress] <string> [[-serviceUserName] <string>]
 [-servicePassword] <securestring> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Initiates a disaster recovery failover operation to switch operations to the DR site.
This is a critical operation that should only be performed during an actual disaster recovery scenario or planned failover test.
Requires authentication with the PARAgent service credentials and supports WhatIf for testing.

## EXAMPLES

### Example 1

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Invoke-PASVRMFailover -DRAddress dr-vault.company.com -servicePassword $password -Confirm:$false
```

Initiates a failover to the DR Vault at the specified address

### Example 2

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
Invoke-PASVRMFailover -DRAddress dr-vault.company.com -servicePassword $password -WhatIf
```

Shows what would happen if a failover to the DR Vault was initiated, without actually performing the failover

### Example 3

```powershell
$password = ConvertTo-SecureString -String 'P@ssw0rd' -AsPlainText -Force
[PSCustomObject]@{DRAddress = 'dr-vault.company.com'; servicePassword = $password} | Invoke-PASVRMFailover -Confirm:$false
```

Initiates a failover using pipeline input for the DR address and credentials

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
DefaultValue: Administrator
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

- [https://pspas.pspete.dev/commands/Invoke-PASVRMFailover](https://pspas.pspete.dev/commands/Invoke-PASVRMFailover)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-initiate-dr-failover.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/server-api-vrm-initiate-dr-failover.htm)

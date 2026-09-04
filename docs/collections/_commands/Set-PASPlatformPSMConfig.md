---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPlatformPSMConfig
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPlatformPSMConfig
---

# Set-PASPlatformPSMConfig

## SYNOPSIS

Update target platform PSM Policy details.

## SYNTAX

### Default (Default)

```
Set-PASPlatformPSMConfig [-ID] <Int32> [[-PSMServerID] <String>] [[-PSMConnectors] <PSObject[]>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASPlatformPSMConfig [-ID] <int> [[-PSMServerID] <string>] [[-PSMConnectors] <psobject[]>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows Vault admins to update the PSM Policy Section of a target platform.

## EXAMPLES

### EXAMPLE 1

```
$PSMConfig = Get-PASPlatformPSMConfig -ID 23

$PSMConfig.PSMConnectors += (\[PSCustomObject\]@{"PSMConnectorID"="PSM-RDP";"Enabled"=$true})
Set-PASPlatformPSMConfig -ID 23 -PSMConnectors $PSMConfig.PSMConnectors
```

Adds PSM-RDP as an additional connection component configured on platform with id of 23

### EXAMPLE 2

```
$PSMConfig = Get-PASPlatformPSMConfig -ID 23

$PSMConfig | Set-PASPlatformPSMConfig -ID 23 -PSMServerID PSM-LoadBalancer-EMEA
```

Updates configured PSMServer on platform with id of 23 to PSM-LoadBalancer-EMEA

### EXAMPLE 3

```
$ConnectionComponent = $([PSCustomObject]@{"PSMConnectorID"="PSM-SSH";"Enabled"=$true})

Set-PASPlatformPSMConfig -ID 52 -PSMServerID PSM-LoadBalancer-EMEA -PSMConnectors $ConnectionComponent
```

Configures platform with ID 42 with connection component PSM-SSH

**Any other Connection Components currently configured will be removed.**

### EXAMPLE 4

```
Set-PASPlatformPSMConfig -id 42 -PSMServerID PSM-LoadBalancer-EMEA
```

Clears all configured Connection Components from platform with id of 42

## PARAMETERS

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

### -ID

Numeric ID of target platform

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PSMConnectors

Collection of PSM Connectors to link to the platform

```yaml
Type: System.Management.Automation.PSObject[]
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

### -PSMServerID

PSM server ID linked to the platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Management.Automation.PSObject[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPlatformPSMConfig](https://pspas.pspete.dev/commands/Set-PASPlatformPSMConfig)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Update_Session_Management_Policy_Platform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Session%20Mngmnt%20-%20Update_Session_Management_Policy_Platform.htm)

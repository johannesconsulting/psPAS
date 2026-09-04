---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASIPAllowList
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASIPAllowList
---

# Set-PASIPAllowList

## SYNOPSIS

Update the list of allowed IP addresses for connector communication to the Privilege Cloud SaaS environment.

## SYNTAX

### Default (Default)

```
Set-PASIPAllowList [-customerPublicIPs] <String[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASIPAllowList [-customerPublicIPs] <string[]> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Configuration erases everything that was previously configured. In order to keep your current configuration, add the existing IP addresses to the list. An empty list will remove all the current IP addresses.

Configuration can take up to 10 minutes. You cannot trigger a new process when there is a process running. To verify, run the `Get-PASIPAllowList` CmdLet and check that the updateInProgress parameter property is false.

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```
Set-PASIPAllowList -customerPublicIPs '10.66.19.45/32','19.79.19.79/22','194.2.192.5/32','201.3.201.3/24'
```

Configures the IP Allow List with the specified addresses

### EXAMPLE 2

```
Set-PASIPAllowList -customerPublicIPs '10.66.19.45/32' -WhatIf
```

Shows what would happen if the IP Allow List were updated with the specified address, without applying the change.

### EXAMPLE 3

```
Set-PASIPAllowList -customerPublicIPs @()
```

Removes all IP addresses currently configured in the IP Allow List.

### EXAMPLE 4

```
$current = Get-PASIPAllowList
$current.customerPublicIPs += '203.0.113.0/24'
$current | Set-PASIPAllowList
```

Retrieves the current IP Allow List, appends a new subnet to the existing addresses, and pipes the updated list back in so the existing entries are preserved alongside the new one.

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

### -customerPublicIPs

List of IP addresses and subnets separated by commas

```yaml
Type: System.String[]
DefaultValue: None
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

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASIPAllowList](https://pspas.pspete.dev/commands/Set-PASIPAllowList)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/PrivilegeCloudAPIs/PrivCloud-IP-allowlist-Configure-API.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/PrivilegeCloudAPIs/PrivCloud-IP-allowlist-Configure-API.htm)

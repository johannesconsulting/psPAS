---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPTAExcludedTarget
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPTAExcludedTarget
---

# Add-PASPTAExcludedTarget

## SYNOPSIS

Adds Excluded target IP/subnet value in PTA administration configuration

## SYNTAX

### Default (Default)

```
Add-PASPTAExcludedTarget [-cidr] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPTAExcludedTarget [-cidr] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds Excluded target IP/subnet value in PTA administration configuration

## EXAMPLES

### EXAMPLE 1

```powershell
Add-PASPTAExcludedTarget -cidr 192.168.60.10/24
```

Adds 192.168.60.10/24 as an excluded target in PTA administration

### EXAMPLE 2

```powershell
[PSCustomObject]@{cidr = '10.10.0.0/16'} | Add-PASPTAExcludedTarget
```

Adds 10.10.0.0/16 as an excluded target using pipeline input

### EXAMPLE 3

```powershell
Add-PASPTAExcludedTarget -cidr 172.16.0.0/12 -WhatIf
```

Shows what would happen if 172.16.0.0/12 were added as an excluded target, without making the change

### EXAMPLE 4

```powershell
Import-Csv .\excluded-targets.csv | Add-PASPTAExcludedTarget
```

Reads a list of CIDR values from a CSV file with a "cidr" column and adds each one as an excluded target in PTA administration

## PARAMETERS

### -cidr

IP/Subnet cidr value

```yaml
Type: System.String
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPTAExcludedTarget](https://pspas.pspete.dev/commands/Add-PASPTAExcludedTarget)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/UpdateAdministration.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/UpdateAdministration.htm)

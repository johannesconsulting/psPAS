---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASDirectoryMappingOrder
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASDirectoryMappingOrder
---

# Set-PASDirectoryMappingOrder

## SYNOPSIS

Changes the order of directory mappings for a directory

## SYNTAX

### Default (Default)

```
Set-PASDirectoryMappingOrder [-DirectoryName] <String> [-MappingsOrder] <Int32[]> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASDirectoryMappingOrder [-DirectoryName] <string> [-MappingsOrder] <int[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates the order of all a directories mappings.

Requires membership of Vault Admins group & "Audit users", "Add/Update users" & "Manage Directory mappings" authorizations.

Minimum version 10.10

## EXAMPLES

### EXAMPLE 1

```
Set-PASDirectoryMappingOrder -DirectoryName "DOMAIN.COM" -MappingsOrder 39,43,41,669,668,667
```

Sets the order of the directory mappings for directory "DOMAIN.COM"

### EXAMPLE 2

```
[PSCustomObject]@{DirectoryName = 'cyberark.local'; MappingsOrder = 39,43,41,669,668,667} | Set-PASDirectoryMappingOrder
```

Pipes an object with DirectoryName and MappingsOrder properties to set the mapping order for the cyberark.local directory.

### EXAMPLE 3

```
Set-PASDirectoryMappingOrder -DirectoryName "DOMAIN.COM" -MappingsOrder 39,43,41,669,668,667 -WhatIf
```

Shows what would happen if the mapping order was updated, without actually applying the change.

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

### -DirectoryName

The name of the directory

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

### -MappingsOrder

The MappingID of each directory mapping, in the order they should be applied.

```yaml
Type: System.Int32[]
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

### System.Int32[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASDirectoryMappingOrder](https://pspas.pspete.dev/commands/Set-PASDirectoryMappingOrder)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-reorder-map.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-reorder-map.htm)

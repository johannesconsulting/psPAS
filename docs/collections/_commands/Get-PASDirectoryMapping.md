---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDirectoryMapping
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDirectoryMapping
---

# Get-PASDirectoryMapping

## SYNOPSIS

Get directory mappings configured for a directory

## SYNTAX

### All (Default)

```
Get-PASDirectoryMapping -DirectoryName <String> [<CommonParameters>]
```

### Mapping

```
Get-PASDirectoryMapping -DirectoryName <String> -MappingID <String> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns a list of existing directory mappings in the Vault.

Membership of the Vault Admins group required.

## EXAMPLES

### EXAMPLE 1

```
Get-PASDirectory | Get-PASDirectoryMapping
```

Returns LDAP directory mappings configured for each directory.

### EXAMPLE 2

```
Get-PASDirectoryMapping -DirectoryName SomeDir -MappingID "User_Mapping"
```

Returns information on the User_Mapping for SomeDir

### EXAMPLE 3

```
[pscustomobject]@{DomainName = "SomeDir"} | Get-PASDirectoryMapping
```

Returns LDAP directory mappings configured for SomeDir, providing the directory name via the DomainName alias by property name.

### EXAMPLE 4

```
[pscustomobject]@{DirectoryName = "SomeDir"; MappingID = "User_Mapping"} | Get-PASDirectoryMapping
```

Returns information on the User_Mapping mapping for SomeDir, using pipeline input for both the directory name and mapping ID.

## PARAMETERS

### -DirectoryName

The ID or Name of the directory to return data on.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- DomainName
ParameterSets:
- Name: Mapping
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: All
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MappingID

The ID or Name of the directory mapping to return information on.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Mapping
  Position: Named
  IsRequired: true
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDirectoryMapping](https://pspas.pspete.dev/commands/Get-PASDirectoryMapping)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetDirectoryMappingList.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetDirectoryMappingList.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetMappingDetails.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetMappingDetails.htm)

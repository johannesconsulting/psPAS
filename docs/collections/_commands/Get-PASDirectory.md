---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDirectory
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDirectory
---

# Get-PASDirectory

## SYNOPSIS

Get LDAP directories configured in the Vault

## SYNTAX

### Default (Default)

```
Get-PASDirectory [-id <String>] [<CommonParameters>]
```

### id

```
Get-PASDirectory [-id <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns a list of existing directories in the Vault.

Each directory will be returned with its own data.

Membership of the Vault Admins group required.

Minimum required version 10.4

## EXAMPLES

### EXAMPLE 1

```
Get-PASDirectory
```

Returns LDAP directories configured in the Vault

### EXAMPLE 2

```
Get-PASDirectory -id SomeDirectory
```

Returns details of "SomeDirectory" LDAP directory configured in the Vault

Minimum required version 10.5

### EXAMPLE 3

```
Get-PASDirectory | Get-PASDirectory
```

Returns extended details of every LDAP directory configured in the Vault, using pipeline input from an initial unfiltered request.

Minimum required version 10.5

### EXAMPLE 4

```
[pscustomobject]@{DomainName = "SomeDirectory"} | Get-PASDirectory
```

Returns details of "SomeDirectory" LDAP directory, providing the value via the DomainName alias by property name.

Minimum required version 10.5

## PARAMETERS

### -id

The ID or Name of the directory to return information on.

Minimum required version 10.5
The ID or Name of the directory to return information on.

Minimum required version 10.5

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- DomainName
ParameterSets:
- Name: id
  Position: Named
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDirectory](https://pspas.pspete.dev/commands/Get-PASDirectory)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Get_Directories.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Get_Directories.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Get_directory_details.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Get_directory_details.htm)

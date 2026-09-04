---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDirectoryID
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDirectoryID
---

# Get-PASDirectoryID

## SYNOPSIS

Lists the directories available for use as the SearchIn value with Add-PASSafeMember

## SYNTAX

### Default (Default)

```
Get-PASDirectoryID [[-Name] <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASDirectoryID [[-Name] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

In Privilege Cloud, directories are not directly integrated with Privilege Cloud, they are integrated with the
underlying CyberArk Identity Platform.

Because of this, the value required for the SearchIn parameter of Add-PASSafeMember is the GUID of the relevant
directory as known to Identity, rather than a directory name, and this value is not otherwise exposed anywhere
in the CyberArk UI.

This function returns the directories available for use as the SearchIn value, resolving the required GUID for a
given directory name.

This also works against a self-hosted Vault - there, the same request instead returns the SearchIn value already
expected by Add-PASSafeMember on self-hosted (the mapped directory's own name), rather than a GUID.

## EXAMPLES

### EXAMPLE 1

```
Get-PASDirectoryID
```

Returns all directories available for use as the SearchIn value with Add-PASSafeMember

### EXAMPLE 2

```
Get-PASDirectoryID -Name "Active Directory: SomeDomain.com"
```

Returns the directory matching the specified name

## PARAMETERS

### -Name

The name of a directory to return the details of.

Accepts wildcards.

Supports tab completion, which will query the available directories and offer their names as suggestions.
The name of a directory to return the details of.

Accepts wildcards.

Supports tab completion, which will query the available directories and offer their names as suggestions.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- DomainName
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

- [https://pspas.pspete.dev/commands/Get-PASDirectoryID](https://pspas.pspete.dev/commands/Get-PASDirectoryID)
- [https://community.cyberark.com/s/article/PCloud-Adding-AD-Group-as-Safe-Member-via-Rest-API](https://community.cyberark.com/s/article/PCloud-Adding-AD-Group-as-Safe-Member-via-Rest-API)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPolicyACL
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPolicyACL
---

# Get-PASPolicyACL

## SYNOPSIS

Lists OPM Rules for a policy

## SYNTAX

### Default (Default)

```
Get-PASPolicyACL [-PolicyID] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASPolicyACL [-PolicyID] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets a list of the privileged commands (OPM Rules) associated with this policy

Not supported in Privilege Cloud

## EXAMPLES

### EXAMPLE 1

```
Get-PASPolicyACL -PolicyID unixssh
```

Lists rules for UNIXSSH platform.

### EXAMPLE 2

```
'UNIXSSH', 'WINDOMAIN' | ForEach-Object { Get-PASPolicyACL -PolicyID $_ }
```

Lists the privileged command rules defined for both the UNIXSSH and WINDOMAIN platforms.

### EXAMPLE 3

```
Get-PASPolicyACL -PolicyID UNIXSSH | Where-Object PermissionType -eq Deny
```

Returns only the "Deny" rules configured for the UNIXSSH platform.

## PARAMETERS

### -PolicyID

The ID of the Policy for which the privileged commands will be listed.

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

- [https://pspas.pspete.dev/commands/Get-PASPolicyACL](https://pspas.pspete.dev/commands/Get-PASPolicyACL)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20Policy%20ACL.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20Policy%20ACL.htm)

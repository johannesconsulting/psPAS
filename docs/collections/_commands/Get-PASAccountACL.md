---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountACL
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountACL
---

# Get-PASAccountACL

## SYNOPSIS

Lists privileged commands rule for an account

## SYNTAX

### Default (Default)

```
Get-PASAccountACL [-AccountPolicyId] <String> [-AccountAddress] <String> [-AccountUserName] <String>
 [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASAccountACL [-AccountPolicyId] <string> [-AccountAddress] <string> [-AccountUserName] <string>
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets list of all privileged commands associated with an account

Not supported in Privilege Cloud

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccount root | Get-PASAccountACL
```

Returns Privileged Account Rules for the account root found by Get-PASAccount

### EXAMPLE 2

```
Get-PASAccountACL -AccountPolicyID UNIXSSH -AccountAddress ServerA.domain.com -AccountUserName root
```

Returns the privileged command rules defined for the root account on ServerA.domain.com under the UNIXSSH policy.

### EXAMPLE 3

```
Get-PASAccountACL -AccountPolicyID UNIXSSH -AccountAddress ServerA.domain.com -AccountUserName root | Where-Object PermissionType -eq Deny
```

Returns only the "Deny" privileged command rules for the root account on ServerA.domain.com.

## PARAMETERS

### -AccountAddress

The address of the account whose privileged commands will be listed.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Address
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

### -AccountPolicyId

The PolicyID associated with account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- PolicyID
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

### -AccountUserName

The name of the account's user.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- UserName
ParameterSets:
- Name: (All)
  Position: 2
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

- [https://pspas.pspete.dev/commands/Get-PASAccountACL](https://pspas.pspete.dev/commands/Get-PASAccountACL)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20Account%20ACL.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20Account%20ACL.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASAccountACL
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASAccountACL
---

# Remove-PASAccountACL

## SYNOPSIS

Deletes privileged commands rule from an account

## SYNTAX

### Default (Default)

```
Remove-PASAccountACL [-AccountPolicyId] <String> [-AccountAddress] <String>
 [-AccountUserName] <String> [-Id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASAccountACL [-AccountPolicyId] <string> [-AccountAddress] <string>
 [-AccountUserName] <string> [-Id] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes privileged commands rule associated with account

Not supported in Privilege Cloud

## EXAMPLES

### EXAMPLE 1

```
Remove-PASAccountACL -AccountPolicyId UNIXSSH -AccountAddress machine -AccountUserName root -Id 12
```

Removes matching Privileged Account Rule from the account root

### EXAMPLE 2

```
Get-PASAccount root | Get-PASAccountACL | Where-Object{$_.Command -eq "ifconfig"} | Remove-PASAccountACL
```

Removes matching Privileged Account Rule from account.

### EXAMPLE 3

```
Remove-PASAccountACL -AccountPolicyId UNIXSSH -AccountAddress machine -AccountUserName root -Id 12 -WhatIf
```

Shows what would happen if the privileged command rule was removed, without actually removing it.

### EXAMPLE 4

```
Remove-PASAccountACL -PolicyID UNIXSSH -AccountAddress machine -AccountUserName root -Id 8 -Confirm:$false
```

Removes the privileged command rule with ID 8, using the PolicyID alias and suppressing the confirmation prompt.

## PARAMETERS

### -AccountAddress

The address of the account for which the privileged command will be deleted.

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

### -AccountPolicyId

ID of account from which the commands will be deleted

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
Aliases: []
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

### -Id

The ID of the command that will be deleted

```yaml
Type: System.String
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

- [https://pspas.pspete.dev/commands/Remove-PASAccountACL](https://pspas.pspete.dev/commands/Remove-PASAccountACL)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Account%20ACL.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Account%20ACL.htm)

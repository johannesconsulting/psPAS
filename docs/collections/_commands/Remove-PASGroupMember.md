---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASGroupMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASGroupMember
---

# Remove-PASGroupMember

## SYNOPSIS

Removes a vault user from a group

## SYNTAX

### Default (Default)

```
Remove-PASGroupMember [-GroupID] <String> [-Member] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASGroupMember [-GroupID] <string> [-Member] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes an existing member from an existing group in the vault

## EXAMPLES

### EXAMPLE 1

```
Remove-PASGroupMember -GroupID X1_Y2 -Member TargetUser
```

Removes TargetUser from group

### EXAMPLE 2

```
Get-PASGroup -groupName "Domain Admins" | Remove-PASGroupMember -Member Bob
```

Finds the group named "Domain Admins" and removes Bob as a member, using the id value supplied via the pipeline

### EXAMPLE 3

```
Remove-PASGroupMember -GroupID X1_Y2 -Member TargetUser -WhatIf
```

Shows what would happen if TargetUser was removed from the group, without making the change

### EXAMPLE 4

```
'Bob','Alice' | ForEach-Object { Remove-PASGroupMember -GroupID X1_Y2 -Member $_ }
```

Removes both Bob and Alice from the group with id X1_Y2

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

### -GroupID

The ID of the group

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- ID
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

### -Member

The name of the group member

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- UserName
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASGroupMember](https://pspas.pspete.dev/commands/Remove-PASGroupMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/RemoveUserFromGroup.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/RemoveUserFromGroup.htm)

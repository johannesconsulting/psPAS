---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASGroupMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASGroupMember
---

# Add-PASGroupMember

## SYNOPSIS

Adds a vault user as a group member

## SYNTAX

### Gen2 (Default)

```
Add-PASGroupMember -groupId <int> -memberId <string> [-memberType <string>] [-domainName <string>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1

```
Add-PASGroupMember -GroupName <String> -UserName <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds an existing user to an existing group in the vault

Default operation using the Gen2 API requires minimum version of 10.6

## EXAMPLES

### EXAMPLE 1

```
Add-PASGroupMember -GroupName PVWAMonitor -UserName TargetUser
```

Adds TargetUser to PVWAMonitor group

### EXAMPLE 2

```
Add-PASGroupMember -groupId 1234 -memberId "DOMAIN\TargetGroup" -memberType domain -domainName domain.com
```

Adds the domain group TargetGroup to group with id 1234

Minimum required version 10.6

### EXAMPLE 3

```
Add-PASGroupMember -groupId 1234 -memberId TargetUser
```

Adds TargetUser to group with id 1234

Minimum required version 10.6

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

### -domainName

If memberType=domain, dns address of the domain

Minimum required version 10.6
If memberType=domain, dns address of the domain

Minimum required version 10.6

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -groupId

The unique ID of the group to add the member to.

Minimum required version 10.6
The unique ID of the group to add the member to.

Minimum required version 10.6

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases:
- ID
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -GroupName

The name of the user

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -memberId

The name of the user or group to add as a member.

Minimum required version 10.6
The name of the user or group to add as a member.

Minimum required version 10.6

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -memberType

The type of user being added to the Vault group.

Valid values: domain/vault

Minimum required version 10.6
The type of user being added to the Vault group.

Valid values: domain/vault

Minimum required version 10.6

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserName

The name of the user

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -WhatIf

Shows what would happen if the cmdlet runs. The cmdlet is not run.
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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASGroupMember](https://pspas.pspete.dev/commands/Add-PASGroupMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/AddMemberToGroup%20v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/AddMemberToGroup%20v10.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASAccount
---

# Set-PASAccount

## SYNOPSIS

Updates an existing accounts details.

## SYNTAX

### Gen2SingleOp (Default)

```
Set-PASAccount -AccountID <String> -op <String> -path <String> [-value <String>]
 [-InputObject <PSObject>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen2MultiOp

```
Set-PASAccount -AccountID <String> -operations <Hashtable[]> [-InputObject <PSObject>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Gen1

```
Set-PASAccount -AccountID <String> -Folder <String> -AccountName <String> [-DeviceType <String>]
 [-PlatformID <String>] [-Address <String>] [-UserName <String>] [-GroupName <String>]
 [-GroupPlatformID <String>] [-Properties <Hashtable>] [-InputObject <PSObject>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing accounts details.

Default operation using the Gen2 API requires minimum version fo 10.4

When using the Gen1 API:

- It is not supported in Privilege Cloud
- All of the account's property details MUST be passed to the function.
- Any current properties of the account not sent as part of the request will be removed
from the account.
- To change a property value not exposed via a named parameter,
pass the property name and updated value to the function via the Properties parameter.
- If changing the name or folder of a service account that has multiple dependencies (usages),
the connection between it and its dependencies will be automatically maintained.
- If changing the name or folder of an account that is linked to another account (whether logon,
reconciliation or verification), the links will be automatically updated.

## EXAMPLES

### EXAMPLE 1

```
Set-PASAccount -AccountID 27_4 -op replace -path "/address" -value "NewAddress"
```

Replaces the current address value with NewAddress

Requires minimum version of 10.4

### EXAMPLE 2

```
Set-PASAccount -AccountID 27_4 -op remove -path "/platformAccountProperties/UserDN"
```

Removes UserDN property set on account

Requires minimum version of 10.4

### EXAMPLE 3

```
$actions += @{"op"="Add";"path"="/platformAccountProperties/UserDN";"value"="SomeDN"}

$actions += @{"op"="Replace";"path"="/Name";"value"="SomeName"}

Set-PASAccount -AccountID 27_4 -operations $actions
```

Performs the update operations contained in the $actions array against the account

Requires minimum version of 10.4

### EXAMPLE 4

```
Get-PASAccount -Keywords DBUser | Set-PASAccount -Properties @{"DSN"="myDSN"}
```

Sets DSN value on matched account dbUser

Requires minimum version of 10.4

### EXAMPLE 5

```
Set-PASAccount -AccountID 21_3 -Folder Root -AccountName NewName `
-DeviceType Database -PlatformID Oracle -Address dbServer.domain.com -UserName DBUser
```

Will set the AccountName of account with AccountID of 21_3 to "NewName".

**Any/All additional properties of the account which are not specified via parameters will be cleared**

Not supported in Privilege Cloud

### EXAMPLE 6

```
$actions = @()
$props = @{"port"="5022";"UserDN"="SomeDN";"LogonDomain"="SomeDomain"}
$actions += @{"op"="add";"path"="/platformAccountProperties";"value"=$props}
Set-PASAccount -AccountID 29_3 -operations $actions
```

Adds multiple values to categories under the platformAccountProperties path.

Requires minimum version of 10.4

## PARAMETERS

### -AccountID

The unique ID of the account to update.

As returned by by Get-PASAccount
The unique ID of the account to update.

As returned by by Get-PASAccount

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AccountName

The name of the account

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Name
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

### -Address

The Name or Address of the machine where the account will be used

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
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

### -DeviceType

The devicetype assigned to the account.

Ensure all required parameters are specified.

Different device types require different parameters
The devicetype assigned to the account.

Ensure all required parameters are specified.

Different device types require different parameters

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Folder

The folder where the account is stored.

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

### -GroupName

A groupname with which the account will be associated

The name of the group with which the account is associated.

To create a new group, specify the group platform ID in the GroupPlatformID property,
then specify the group name.

The group will then be created automatically.
A groupname with which the account will be associated

The name of the group with which the account is associated.

To create a new group, specify the group platform ID in the GroupPlatformID property, then specify the group name.

The group will then be created automatically.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -GroupPlatformID

GroupPlatformID is required if account is to be moved to a new group.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -InputObject

Receives object from pipeline.

```yaml
Type: System.Management.Automation.PSObject
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: true
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen2MultiOp
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen2SingleOp
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -op

The operation to perform (add, remove, replace).

Requires minimum version of 10.4
The operation to perform (add, remove, replace).

Requires minimum version of 10.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Operation
ParameterSets:
- Name: Gen2SingleOp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -operations

A collection of update actions to perform, must include op, path & value (except where action is remove).

Requires minimum version of 10.4
A collection of update actions to perform, must include op, path & value (except where action is remove).

Requires minimum version of 10.4

```yaml
Type: System.Collections.Hashtable[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2MultiOp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -path

The path of the property to update, for instance /address or /name.

Requires minimum version of 10.4
The path of the property to update, for instance /address or /name.

Requires minimum version of 10.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2SingleOp
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PlatformID

The CyberArk platform assigned to the account

Ensure all required parameters are specified.

Different platforms require different parameters
The CyberArk platform assigned to the account

Ensure all required parameters are specified.

Different platforms require different parameters

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- PolicyID
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Properties

Hashtable of name=value pairs.

Specify properties to update.
Hashtable of name=value pairs.

Specify properties to update.

```yaml
Type: System.Collections.Hashtable
DefaultValue: '@{ }'
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserName

The Username on the target machine

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -value

The new property value for add or replace operations.

Requires minimum version of 10.4
The new property value for add or replace operations.

Requires minimum version of 10.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2SingleOp
  Position: Named
  IsRequired: false
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

### System.Collections.Hashtable[]

{{ Fill in the Description }}

### System.Management.Automation.PSObject

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Dependencies (usages) cannot be updated.
Accounts that do not have a policy ID cannot be updated.

To update account properties, "Update password properties" permission is required.
To rename accounts, "Rename accounts" permission is required.
To move accounts to a different folder, Move accounts/folders permission is required.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASAccount](https://pspas.pspete.dev/commands/Set-PASAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/UpdateAccount%20v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/UpdateAccount%20v10.htm)

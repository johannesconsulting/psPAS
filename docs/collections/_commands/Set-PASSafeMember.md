---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASSafeMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASSafeMember
---

# Set-PASSafeMember

## SYNOPSIS

Updates a Safe Member

## SYNTAX

### Gen2 (Default)

```
Set-PASSafeMember -SafeName <string> -MemberName <string> [-MembershipExpirationDate <datetime>]
 [-UseAccounts <bool>] [-RetrieveAccounts <bool>] [-ListAccounts <bool>] [-AddAccounts <bool>]
 [-UpdateAccountContent <bool>] [-UpdateAccountProperties <bool>]
 [-InitiateCPMAccountManagementOperations <bool>] [-SpecifyNextAccountContent <bool>]
 [-RenameAccounts <bool>] [-DeleteAccounts <bool>] [-UnlockAccounts <bool>] [-ManageSafe <bool>]
 [-ManageSafeMembers <bool>] [-BackupSafe <bool>] [-ViewAuditLog <bool>] [-ViewSafeMembers <bool>]
 [-requestsAuthorizationLevel1 <bool>] [-requestsAuthorizationLevel2 <bool>]
 [-AccessWithoutConfirmation <bool>] [-CreateFolders <bool>] [-DeleteFolders <bool>]
 [-MoveAccountsAndFolders <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Full

```
Set-PASSafeMember -SafeName <string> -MemberName <string> -Full
 [-MembershipExpirationDate <datetime>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AccountsManager

```
Set-PASSafeMember -SafeName <string> -MemberName <string> -AccountsManager
 [-MembershipExpirationDate <datetime>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Approver

```
Set-PASSafeMember -SafeName <string> -MemberName <string> -Approver
 [-MembershipExpirationDate <datetime>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ReadOnly

```
Set-PASSafeMember -SafeName <string> -MemberName <string> -ReadOnly
 [-MembershipExpirationDate <datetime>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### ConnectOnly

```
Set-PASSafeMember -SafeName <string> -MemberName <string> -ConnectOnly
 [-MembershipExpirationDate <datetime>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1

```
Set-PASSafeMember -SafeName <string> -MemberName <string> -UseGen1API
 [-MembershipExpirationDate <datetime>] [-UseAccounts <bool>] [-RetrieveAccounts <bool>]
 [-ListAccounts <bool>] [-AddAccounts <bool>] [-UpdateAccountContent <bool>]
 [-UpdateAccountProperties <bool>] [-InitiateCPMAccountManagementOperations <bool>]
 [-SpecifyNextAccountContent <bool>] [-RenameAccounts <bool>] [-DeleteAccounts <bool>]
 [-UnlockAccounts <bool>] [-ManageSafe <bool>] [-ManageSafeMembers <bool>] [-BackupSafe <bool>]
 [-ViewAuditLog <bool>] [-ViewSafeMembers <bool>] [-RequestsAuthorizationLevel <int>]
 [-AccessWithoutConfirmation <bool>] [-CreateFolders <bool>] [-DeleteFolders <bool>]
 [-MoveAccountsAndFolders <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing Safe Member's permissions on a safe.

Manage Safe Members permission is required.

Default operation against the Gen2 API requires a minimum version of 12.2

## EXAMPLES

### EXAMPLE 1

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -AddAccounts $true
```

Updates TargetUser's permissions as safe member on TargetSafe to include "Add Accounts" using the Gen2 API.

Minimum required version 12.2

### EXAMPLE 2

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -AddAccounts $true -UseGen1API
```

Updates TargetUser's permissions as safe member on TargetSafe to include "Add Accounts" using the Gen1 API.

### EXAMPLE 3

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -ReadOnly
```

Updates TargetUser's permissions as safe member on TargetSafe to the predefined "Read Only" role.

### EXAMPLE 4

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -MembershipExpirationDate (Get-Date).AddMonths(6) -Full
```

Updates TargetUser's permissions as safe member on TargetSafe to the predefined "Full" role, and sets their safe membership to expire in 6 months.

### EXAMPLE 5

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -AccountsManager
```

Updates TargetUser's permissions as safe member on TargetSafe to the predefined "Accounts Manager" role.

### EXAMPLE 6

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -Approver
```

Updates TargetUser's permissions as safe member on TargetSafe to the predefined "Approver" role.

### EXAMPLE 7

```
Set-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -ConnectOnly
```

Updates TargetUser's permissions as safe member on TargetSafe to the predefined "Connect Only" role.

## PARAMETERS

### -AccessWithoutConfirmation

Boolean value defining if AccessWithoutConfirmation permission will be granted to
safe member on safe.
Boolean value defining if AccessWithoutConfirmation permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -AccountsManager

Sets Accounts Manager permissions for user on safe

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AccountsManager
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AddAccounts

Boolean value defining if permission will be granted to safe member
on safe.

Includes UpdateAccountProperties (when adding or removing permission).
Boolean value defining if permission will be granted to safe member on safe.

Includes UpdateAccountProperties (when adding or removing permission).

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- Add
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -Approver

Sets Approver permissions for user on safe

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Approver
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BackupSafe

Boolean value defining if BackupSafe permission will be granted to safe member
on safe.
Boolean value defining if BackupSafe permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ConnectOnly

Set Connect Only permissions for user on safe

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ConnectOnly
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CreateFolders

Boolean value defining if CreateFolders permission will be granted to safe member
on safe.
Boolean value defining if CreateFolders permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- AddRenameFolder
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -DeleteAccounts

Boolean value defining if DeleteAccounts permission will be granted to safe
member on safe.
Boolean value defining if DeleteAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- Delete
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -DeleteFolders

Boolean value defining if DeleteFolders permission will be granted to safe member
on safe.
Boolean value defining if DeleteFolders permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -Full

Sets Full Permissions for user on safe

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Full
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -InitiateCPMAccountManagementOperations

Boolean value defining if InitiateCPMAccountManagementOperations permission
will be granted to safe member on safe.
Boolean value defining if InitiateCPMAccountManagementOperations permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ListAccounts

Boolean value defining if ListAccounts permission will be granted to
safe member on safe.
Boolean value defining if ListAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- ListContent
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ManageSafe

Boolean value defining if ManageSafe permission will be granted to safe member
on safe.
Boolean value defining if ManageSafe permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ManageSafeMembers

Boolean value defining if ManageSafeMembers permission will be granted to safe
member on safe.
Boolean value defining if ManageSafeMembers permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -MemberName

Vault or Domain User, or Group, safe member to update.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- UserName
ParameterSets:
- Name: Full
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: AccountsManager
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Approver
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ReadOnly
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectOnly
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -MembershipExpirationDate

Defines when the member's Safe membership expires.

```yaml
Type: System.Nullable`1[System.DateTime]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Full
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: AccountsManager
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Approver
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ReadOnly
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectOnly
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -MoveAccountsAndFolders

Boolean value defining if MoveAccountsAndFolders permission will be granted to safe
member on safe.
Boolean value defining if MoveAccountsAndFolders permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- MoveFilesAndFolders
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ReadOnly

Sets Read Only permissions for user on safe

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ReadOnly
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RenameAccounts

Boolean value defining if RenameAccounts permission will be granted to safe
member on safe.
Boolean value defining if RenameAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- Rename
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -RequestsAuthorizationLevel

Integer value defining level assigned to RequestsAuthorizationLevel for safe member.

Valid Values: 0, 1 or 2
Integer value defining level assigned to RequestsAuthorizationLevel for safe member.

Valid Values: 0, 1 or 2

```yaml
Type: System.Int32
DefaultValue: 0
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

### -requestsAuthorizationLevel1

Boolean value defining if requestsAuthorizationLevel1 permission will be granted to safe member on safe.

Minimum required version 12.2
Boolean value defining if requestsAuthorizationLevel1 permission will be granted to safe member on safe.

Minimum required version 12.2

```yaml
Type: System.Boolean
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

### -requestsAuthorizationLevel2

Boolean value defining if requestsAuthorizationLevel2 permission will be granted to safe member on safe.

Minimum required version 12.2
Boolean value defining if requestsAuthorizationLevel2 permission will be granted to safe member on safe.

Minimum required version 12.2

```yaml
Type: System.Boolean
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

### -RetrieveAccounts

Boolean value defining if RetrieveAccounts permission will be granted
to safe member on safe.
Boolean value defining if RetrieveAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- Retrieve
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -SafeName

The name of the safe to which the safe member belong

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Full
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: AccountsManager
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Approver
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ReadOnly
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: ConnectOnly
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -SpecifyNextAccountContent

Boolean value defining if SpecifyNextAccountContent permission will be granted
to safe member on safe.
Boolean value defining if SpecifyNextAccountContent permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -UnlockAccounts

Boolean value defining if UnlockAccounts permission will be granted to safe
member on safe.
Boolean value defining if UnlockAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- Unlock
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -UpdateAccountContent

Boolean value defining if AddAccounts permission will be granted to safe
member on safe.
Boolean value defining if AddAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- Update
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -UpdateAccountProperties

Boolean value defining if UpdateAccountProperties permission will be granted
to safe member on safe.
Boolean value defining if UpdateAccountProperties permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- UpdateMetadata
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -UseAccounts

Boolean value defining if UseAccounts permission will be granted to
safe member on safe.
Boolean value defining if UseAccounts permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- RestrictedRetrieve
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -UseGen1API

Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 12.2
Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 12.2

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ViewAuditLog

Boolean value defining if ViewAuditLog permission will be granted to safe member
on safe.
Boolean value defining if ViewAuditLog permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- ViewAudit
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### -ViewSafeMembers

Boolean value defining if ViewSafeMembers permission will be granted to safe member
on safe.
Boolean value defining if ViewSafeMembers permission will be granted to safe member on safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases:
- ViewMembers
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
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

### System.DateTime

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASSafeMember](https://pspas.pspete.dev/commands/Set-PASSafeMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Update%20Safe%20Member.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Update%20Safe%20Member.htm)

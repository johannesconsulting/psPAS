---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASSafeMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASSafeMember
---

# Add-PASSafeMember

## SYNOPSIS

Adds a Safe Member to safe

## SYNTAX

### Gen2 (Default)

```
Add-PASSafeMember -SafeName <string> -MemberName <string> [-SearchIn <string>]
 [-MembershipExpirationDate <datetime>] [-UseAccounts <bool>] [-RetrieveAccounts <bool>]
 [-ListAccounts <bool>] [-AddAccounts <bool>] [-UpdateAccountContent <bool>]
 [-UpdateAccountProperties <bool>] [-InitiateCPMAccountManagementOperations <bool>]
 [-SpecifyNextAccountContent <bool>] [-RenameAccounts <bool>] [-DeleteAccounts <bool>]
 [-UnlockAccounts <bool>] [-ManageSafe <bool>] [-ManageSafeMembers <bool>] [-BackupSafe <bool>]
 [-ViewAuditLog <bool>] [-ViewSafeMembers <bool>] [-requestsAuthorizationLevel1 <bool>]
 [-requestsAuthorizationLevel2 <bool>] [-AccessWithoutConfirmation <bool>] [-CreateFolders <bool>]
 [-DeleteFolders <bool>] [-MoveAccountsAndFolders <bool>] [-memberType <string>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Full

```
Add-PASSafeMember -SafeName <string> -MemberName <string> -Full [-SearchIn <string>]
 [-MembershipExpirationDate <datetime>] [-memberType <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### AccountsManager

```
Add-PASSafeMember -SafeName <string> -MemberName <string> -AccountsManager [-SearchIn <string>]
 [-MembershipExpirationDate <datetime>] [-memberType <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Approver

```
Add-PASSafeMember -SafeName <string> -MemberName <string> -Approver [-SearchIn <string>]
 [-MembershipExpirationDate <datetime>] [-memberType <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ReadOnly

```
Add-PASSafeMember -SafeName <string> -MemberName <string> -ReadOnly [-SearchIn <string>]
 [-MembershipExpirationDate <datetime>] [-memberType <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ConnectOnly

```
Add-PASSafeMember -SafeName <string> -MemberName <string> -ConnectOnly [-SearchIn <string>]
 [-MembershipExpirationDate <datetime>] [-memberType <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Gen1

```
Add-PASSafeMember -SafeName <string> -MemberName <string> -UseGen1API [-SearchIn <string>]
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

Adds an existing user as a Safe member.

"Manage Safe Members" permission is required by the authenticated user account sending request.

Default operation uses the Gen 2 API and requires version 12.1+
- Earlier versions must specify the `-UseGen1API` switch to force use of the Gen1 API.

**Note** when using the Gen1 API:

Unless otherwise specified, the default permissions applied to a safe member will include:
- ListAccounts, RetrieveAccounts, UseAccounts, ViewAuditLog & ViewSafeMembers.

If these permissions should not be granted to the safe member, they must be explicitly set to `$false` in the request.

Gen1 API is deprecated from version 12.3

## EXAMPLES

### EXAMPLE 1

```
Add-PASSafeMember -SafeName Windows_Safe -MemberName winUser -SearchIn Vault -UseAccounts $true `
-RetrieveAccounts $true -ListAccounts $true
```

Adds winUser to Windows_Safe with Use, Retrieve & List permissions.

Minimum required version 12.1

### EXAMPLE 2

```
Add-PASSafeMember -SafeName Windows_Domain_Safe -MemberName anLDAPGroup -SearchIn cybr.lab -UseAccounts $true `
-RetrieveAccounts $true -ListAccounts $true
```

Adds the LDAP Group *anLDAPGroup* to *Windows_Domain_Safe* with Use, Retrieve & List permissions.
There should be Directory named *cybr.lab* in the LDAP Integration settings.

Minimum required version 12.1

### EXAMPLE 3

```
$Role = [PSCustomObject]@{

  UseAccounts                  = $true
  ListAccounts                 = $true
  RetrieveAccounts						 = $true
  ViewAuditLog                 = $false
  ViewSafeMembers              = $false
}

PS > $Role | Add-PASSafeMember -SafeName NewSafe -MemberName User23 -SearchIn Vault
```

Grant User23 UseAccounts, RetrieveAccounts & ListAccounts only.

Minimum required version 12.1

### EXAMPLE 4

```
$Role = [PSCustomObject]@{

  UseAccounts                  = $true
  ListAccounts                 = $true
  RetrieveAccounts						 = $true
  ViewAuditLog                 = $false
  ViewSafeMembers              = $false
}

PS > $Role | Add-PASSafeMember -SafeName NewSafe -MemberName User23 -SearchIn Vault -UseGen1API
```

Grant User23 UseAccounts, RetrieveAccounts & ListAccounts using the Gen1 API

### EXAMPLE 5

```
Add-PASSafeMember -SafeName NewSafe -MemberName User24 -SearchIn Vault -Full
```

Adds User24 to NewSafe with the predefined "Full" role.

### EXAMPLE 6

```
Add-PASSafeMember -SafeName NewSafe -MemberName User25 -SearchIn Vault -AccountsManager
```

Adds User25 to NewSafe with the predefined "Accounts Manager" role.

### EXAMPLE 7

```
Add-PASSafeMember -SafeName NewSafe -MemberName User26 -SearchIn Vault -Approver
```

Adds User26 to NewSafe with the predefined "Approver" role.

### EXAMPLE 8

```
Add-PASSafeMember -SafeName NewSafe -MemberName User27 -SearchIn Vault -ReadOnly
```

Adds User27 to NewSafe with the predefined "Read Only" role.

### EXAMPLE 9

```
Add-PASSafeMember -SafeName NewSafe -MemberName User28 -SearchIn Vault -ConnectOnly
```

Adds User28 to NewSafe with the predefined "Connect Only" role.

### EXAMPLE 10

```
$DirectoryID = Get-PASDirectoryID -Name "Active Directory: ad.SomeDomain.com" | Select-Object -ExpandProperty ID

Add-PASSafeMember -SafeName Windows_Domain_Safe -MemberName anADGroup -SearchIn $DirectoryID -MemberType Group `
-UseAccounts $true -RetrieveAccounts $true -ListAccounts $true
```

Adds the AD Group *anADGroup* to *Windows_Domain_Safe* with Use, Retrieve & List permissions.

On Privilege Cloud, SearchIn must be the directory ID rather than a directory name - Get-PASDirectoryID resolves
this from the directory's friendly name. MemberType must always be specified alongside a Privilege Cloud SearchIn
value.

Minimum required version 12.6

## PARAMETERS

### -AccessWithoutConfirmation

Boolean value defining if AccessWithoutConfirmation permission will be granted to
safe member on safe.

Get-PASSafeMember (Gen1) may not return details of this permission
Boolean value defining if AccessWithoutConfirmation permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) may not return details of this permission

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

Adds Account Manager permissions for user on safe

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

Get-PASSafeMember (Gen1) returns the name of this permission as: Add
Boolean value defining if permission will be granted to safe member on safe.

Includes UpdateAccountProperties (when adding or removing permission).

Get-PASSafeMember (Gen1) returns the name of this permission as: Add

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

Adds Approver permissions for user on safe

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

Adds Connect Only permissions for user on safe

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

Get-PASSafeMember (Gen1) returns the name of this permission as: AddRenameFolder
Boolean value defining if CreateFolders permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: AddRenameFolder

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

Get-PASSafeMember (Gen1) returns the name of this permission as: Delete
Boolean value defining if DeleteAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: Delete

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

Adds Full permissions for user on safe

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

When this parameter is set to `$False`, the SpecifyNextAccountContent parameter is also automatically set to False.

Get-PASSafeMember (Gen1) may not return details of this permission
Boolean value defining if InitiateCPMAccountManagementOperations permission will be granted to safe member on safe.

When this parameter is set to `$False`, the SpecifyNextAccountContent parameter is also automatically set to False.

Get-PASSafeMember (Gen1) may not return details of this permission

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

Get-PASSafeMember (Gen1) returns the name of this permission as: ListContent
Boolean value defining if ListAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: ListContent

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

Vault or Domain User, or Group, to add as member.

Must not contain '&' (ampersand).
Vault or Domain User, or Group, to add as member.

Must not contain '&' (ampersand).

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

Defines when the user's Safe membership expires.

```yaml
Type: System.DateTime
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

### -memberType

The member type.

Accepts Values: User, Group, Role

Minimum required version 12.6
The member type.

Accepts Values: User, Group, Role

Minimum required version 12.6

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
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -MoveAccountsAndFolders

Boolean value defining if MoveAccountsAndFolders permission will be granted to safe
member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: MoveFilesAndFolders
Boolean value defining if MoveAccountsAndFolders permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: MoveFilesAndFolders

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

Adds Read Only permissions for user on safe

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

Get-PASSafeMember (Gen1) returns the name of this permission as: Rename
Boolean value defining if RenameAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: Rename

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

Get-PASSafeMember (Gen1) may not return details of this permission

Deprecated from version 12.3
Integer value defining level assigned to RequestsAuthorizationLevel for safe member.

Valid Values: 0, 1 or 2

Get-PASSafeMember (Gen1) may not return details of this permission

Deprecated from version 12.3

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

Request Authorization Level 1

Minimum required version 12.1
Request Authorization Level 1

Minimum required version 12.1

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

Request Authorization Level 2

Minimum required version 12.1
Request Authorization Level 2

Minimum required version 12.1

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

Get-PASSafeMember (Gen1) returns the name of this permission as: Retrieve
Boolean value defining if RetrieveAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: Retrieve

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

The name of the safe to add the member to

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

### -SearchIn

The Vault or Domain, defined in the vault,

in which to search for the member to add to the safe.

On Privilege Cloud, this must be the ID of the directory as known to the underlying CyberArk Identity platform,
rather than a directory name - see Get-PASDirectoryID.

Supports tab completion: queries Get-PASDirectoryID and offers directory names in the completion list, while
inserting the required ID value onto the command line.

A plain Tab press cycles straight through the ID values with no names shown, since PSReadLine's default Tab
behaviour only ever inserts the completion value. Press Ctrl+Space (PSReadLine's list/menu completion) instead
to see the directory names alongside the values as you choose one - much easier to work with than the GUIDs.
The Vault or Domain, defined in the vault,

in which to search for the member to add to the safe.

On Privilege Cloud, this must be the ID of the directory as known to the underlying CyberArk Identity platform, rather than a directory name - see Get-PASDirectoryID.

Supports tab completion: queries Get-PASDirectoryID and offers directory names in the completion list, while inserting the required ID value onto the command line.

A plain Tab press cycles straight through the ID values with no names shown, since PSReadLine's default Tab behaviour only ever inserts the completion value.
Press Ctrl+Space (PSReadLine's list/menu completion) instead to see the directory names alongside the values as you choose one - much easier to work with than the GUIDs.

```yaml
Type: System.String
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

### -SpecifyNextAccountContent

Boolean value defining if SpecifyNextAccountContent permission will be granted
to safe member on safe.

Can only be specified when the InitiateCPMAccountManagementOperations parameter is set to `$True`.

When InitiateCPMAccountManagementOperations is set to `$False` this parameter is automatically set to False.

Get-PASSafeMember (Gen1) may not return details of this permission
Boolean value defining if SpecifyNextAccountContent permission will be granted to safe member on safe.

Can only be specified when the InitiateCPMAccountManagementOperations parameter is set to `$True`.

When InitiateCPMAccountManagementOperations is set to `$False` this parameter is automatically set to False.

Get-PASSafeMember (Gen1) may not return details of this permission

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

Get-PASSafeMember (Gen1) returns the name of this permission as: Unlock
Boolean value defining if UnlockAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: Unlock

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

Get-PASSafeMember (Gen1) returns the name of this permission as: Update
Boolean value defining if AddAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: Update

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

Get-PASSafeMember (Gen1) returns the name of this permission as: UpdateMetadata
Boolean value defining if UpdateAccountProperties permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: UpdateMetadata

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

Get-PASSafeMember (Gen1) returns the name of this permission as: RestrictedRetrieve
Boolean value defining if UseAccounts permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: RestrictedRetrieve

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

Force use of Gen1 API.

Should be specified for versions earlier than 12.1

Deprecated from version 12.3
Force use of Gen1 API.

Should be specified for versions earlier than 12.1

Deprecated from version 12.3

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

Get-PASSafeMember (Gen1) returns the name of this permission as: ViewAudit
Boolean value defining if ViewAuditLog permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: ViewAudit

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

Get-PASSafeMember (Gen1) returns the name of this permission as: ViewMembers
Boolean value defining if ViewSafeMembers permission will be granted to safe member on safe.

Get-PASSafeMember (Gen1) returns the name of this permission as: ViewMembers

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

- [https://pspas.pspete.dev/commands/Add-PASSafeMember](https://pspas.pspete.dev/commands/Add-PASSafeMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Safe%20Member.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Safe%20Member.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASSafeMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASSafeMember
---

# Get-PASSafeMember

## SYNOPSIS

Lists the members of a Safe

## SYNTAX

### Gen2 (Default)

```
Get-PASSafeMember -SafeName <string> [-TimeoutSec <int>] [<CommonParameters>]
```

### Gen1-MemberPermissions

```
Get-PASSafeMember -SafeName <string> -MemberName <string> -UseGen1API [<CommonParameters>]
```

### Gen1-SafeMembers

```
Get-PASSafeMember -SafeName <String> [-UseGen1API] [<CommonParameters>]
```

### Gen2-MemberFilter

```
Get-PASSafeMember -SafeName <string> [-memberType <string>] [-membershipExpired <bool>]
 [-includePredefinedUsers <bool>] [-search <string>] [-sort <string>] [-TimeoutSec <int>]
 [<CommonParameters>]
```

### Gen2-MemberPermissions

```
Get-PASSafeMember -SafeName <string> -MemberName <string> [-useCache <bool>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Lists the members of a Safe.

- View Safe Members permission is required.
- Defaults to the Gen 2 API which requires 12.0 or higher.
- Additional member filter parameters require 12.1 or higher.
- MemberName parameter requires 12.2 or higher for use with Gen2 API.
- Versions lower than 12.0 (or 12.2 when using the MemberName parameter) must specify the `UseGen1API` switch to force use of the Gen1 API.

**Note**
When using the Gen1 API & querying all members of a safe, the permissions are reported as follows:

- List accounts (ListContent)
- Retrieve accounts	(Retrieve)
- Add accounts, including update properties (Add)
- Update account content (Update)
- Update account properties (UpdateMetadata)
- Rename accounts (Rename)
- Delete accounts (Delete)
- View Audit log (ViewAudit)
- View Safe Members (ViewMembers)
- Use accounts (RestrictedRetrieve)
- Initiate CPM account management operations (\<NOT RETURNED\>)
- Specify next account content (\<NOT RETURNED\>)
- Create folders (AddRenameFolder)
- Delete folders (DeleteFolder)
- Unlock accounts (Unlock)
- Move accounts/folders (MoveFilesAndFolders)
- Manage Safe (ManageSafe)
- Manage Safe Members (ManageSafeMembers)
- Validate Safe Content (ValidateSafeContent)
- Backup Safe (BackupSafe)
- Access Safe without confirmation (\<NOT RETURNED\>)
- Authorize account requests (\<NOT RETURNED\>)

If a Safe Member Name is provided, the full permissions of the member on the Safe will be returned as follows:

- List accounts (ListAccounts)
- Retrieve accounts (RetrieveAccounts)
- Add accounts, including update properties (AddAccounts)
- Update account content (UpdateAccountContent)
- Update account properties (UpdateAccountProperties)
- Rename accounts (RenameAccounts)
- Delete accounts (DeleteAccounts)
- View Audit log (ViewAuditLog)
- View Safe Members (ViewSafeMembers)
- Use accounts (UseAccounts)
- Initiate CPM account management operations (InitiateCPMAccountManagementOperations)
- Specify next account content (SpecifyNextAccountContent)
- Create folders (CreateFolders)
- Delete folders (DeleteFolder)
- Unlock accounts (UnlockAccounts)
- Move accounts/folders (MoveAccountsAndFolders)
- Manage Safe (ManageSafe)
- Manage Safe Members (ManageSafeMembers)
- Validate Safe Content (\<NOT RETURNED\>)
- Backup Safe (BackupSafe)
- Access Safe without confirmation (AccessWithoutConfirmation)
- Authorize account requests (RequestsAuthorizationLevel)

## EXAMPLES

### EXAMPLE 1

```
Get-PASSafeMember -SafeName Target_Safe
```

Lists all members with permissions on Target_Safe

Minimum required version 12.0

### EXAMPLE 2

```
Get-PASSafeMember -SafeName Target_Safe -MemberName SomeUser
```

Lists all permissions for member SomeUser on Target_Safe using Gen2 API

Requires minimum CyberArk Version of 12.2

### EXAMPLE 3

```
Get-PASSafeMember -SafeName Target_Safe -UseGen1API
```

Lists all members with permissions on Target_Safe using the Gen1 API.

### EXAMPLE 4

```
Get-PASSafeMember -SafeName Target_Safe -MemberName SomeUser -UseGen1API
```

Lists all permissions for member SomeUser on Target_Safe using Gen1 API

Deprecated from CyberArk Version 12.3

### EXAMPLE 5

```
Get-PASSafeMember -SafeName Target_Safe -memberType Group -search Admin -sort memberName
```

Lists group members on Target_Safe whose name matches "Admin", sorted by member name, using the Gen2 API member filter parameters.

Minimum required version 12.1

## PARAMETERS

### -includePredefinedUsers

Filter to include/exclude predefined users in the returned list.

Minimum required version 12.1
Filter to include/exclude predefined users in the returned list.

Minimum required version 12.1

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberFilter
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

Specify the name of a safe member to return their safe permissions in full.

Operation against Gen2 API requires minimum version of 12.2

**NOTE for Gen1 Operation**: An empty PUT request (update) is sent to retrieve full safe permissions for a user:
- `-UseGen1API` parameter must be specified.
- You cannot report on the permissions of the user authenticated to the API.
- Reporting on the permissions of the Quota Owner is expected to fail.
- Deprecated from CyberArk Version 12.3
Specify the name of a safe member to return their safe permissions in full.

Operation against Gen2 API requires minimum version of 12.2 NOTE for Gen1 Operation : An empty PUT request (update) is sent to retrieve full safe permissions for a user: - `-UseGen1API` parameter must be specified.

- You cannot report on the permissions of the user authenticated to the API.

- Reporting on the permissions of the Quota Owner is expected to fail.

- Deprecated from CyberArk Version 12.3

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- UserName
ParameterSets:
- Name: Gen1-MemberPermissions
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-MemberPermissions
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -membershipExpired

Returns either expired members or members that are not expired.

Minimum required version 12.1
Returns either expired members or members that are not expired.

Minimum required version 12.1

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberFilter
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

Filter members according to the type (user or group).

Minimum required version 12.1
Filter members according to the type (user or group).

Minimum required version 12.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberFilter
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

The name of the safe to get the members of

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-MemberPermissions
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1-SafeMembers
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-MemberFilter
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-MemberPermissions
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
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -search

Search for safe members matching specific strings.

Minimum required version 12.1
Search for safe members matching specific strings.

Minimum required version 12.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -sort

Sorts results according to the memberName property in ascending order (default) or descending order.

Minimum required version 12.1
Sorts results according to the memberName property in ascending order (default) or descending order.

Minimum required version 12.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutSec

See Invoke-WebRequest

Specify a timeout value in seconds
See Invoke-WebRequest

Specify a timeout value in seconds

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberFilter
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -useCache

Whether or not to retrieve the cache from a session.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-MemberPermissions
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

Force use of the Gen1 API.

Should be specified for versions earlier than 12.0.

Should be specified for versions earlier than 12.2 when querying by MemberName
Force use of the Gen1 API.

Should be specified for versions earlier than 12.0.

Should be specified for versions earlier than 12.2 when querying by MemberName

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-SafeMembers
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen1-MemberPermissions
  Position: Named
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

### System.Boolean

{{ Fill in the Description }}

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASSafeMember](https://pspas.pspete.dev/commands/Get-PASSafeMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safe%20Members%20WS%20-%20List%20Safe%20Members.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safe%20Members%20WS%20-%20List%20Safe%20Members.htm)

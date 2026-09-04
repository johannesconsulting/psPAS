---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASDiscoveredAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASDiscoveredAccount
---

# Add-PASDiscoveredAccount

## SYNOPSIS

Adds discovered account or SSH key as a pending account in the accounts feed.

## SYNTAX

### Windows (Default)

```
Add-PASDiscoveredAccount -UserName <string> -Address <string> -discoveryDate <datetime>
 -AccountEnabled <bool> [-osGroups <string>] [-platformType <string>] [-Domain <string>]
 [-lastLogonDateTime <datetime>] [-lastPasswordSetDateTime <datetime>]
 [-passwordNeverExpires <bool>] [-OSVersion <string>] [-privileged <bool>]
 [-privilegedCriteria <string>] [-UserDisplayName <string>] [-description <string>]
 [-passwordExpirationDateTime <datetime>] [-osFamily <string>] [-additionalProperties <hashtable>]
 [-organizationalUnit <string>] [-SID <string>] [-AllowAccountDuplications <bool>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### UnixSSHKey

```
Add-PASDiscoveredAccount -UserName <string> -Address <string> -discoveryDate <datetime>
 -AccountEnabled <bool> -fingerprint <string> [-osGroups <string>] [-platformType <string>]
 [-Domain <string>] [-lastLogonDateTime <datetime>] [-lastPasswordSetDateTime <datetime>]
 [-passwordNeverExpires <bool>] [-OSVersion <string>] [-privileged <bool>]
 [-privilegedCriteria <string>] [-UserDisplayName <string>] [-description <string>]
 [-passwordExpirationDateTime <datetime>] [-osFamily <string>] [-additionalProperties <hashtable>]
 [-organizationalUnit <string>] [-uid <string>] [-gid <string>] [-size <int>] [-path <string>]
 [-format <string>] [-comment <string>] [-encryption <string>] [-AllowAccountDuplications <bool>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Unix

```
Add-PASDiscoveredAccount -UserName <string> -Address <string> -discoveryDate <datetime>
 -AccountEnabled <bool> [-osGroups <string>] [-platformType <string>] [-Domain <string>]
 [-lastLogonDateTime <datetime>] [-lastPasswordSetDateTime <datetime>]
 [-passwordNeverExpires <bool>] [-OSVersion <string>] [-privileged <bool>]
 [-privilegedCriteria <string>] [-UserDisplayName <string>] [-description <string>]
 [-passwordExpirationDateTime <datetime>] [-osFamily <string>] [-additionalProperties <hashtable>]
 [-organizationalUnit <string>] [-uid <string>] [-gid <string>] [-AllowAccountDuplications <bool>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### AWS

```
Add-PASDiscoveredAccount -UserName <string> -Address <string> -discoveryDate <datetime>
 -AccountEnabled <bool> [-osGroups <string>] [-platformType <string>] [-Domain <string>]
 [-lastLogonDateTime <datetime>] [-lastPasswordSetDateTime <datetime>]
 [-passwordNeverExpires <bool>] [-OSVersion <string>] [-privileged <bool>]
 [-privilegedCriteria <string>] [-UserDisplayName <string>] [-description <string>]
 [-passwordExpirationDateTime <datetime>] [-osFamily <string>] [-additionalProperties <hashtable>]
 [-organizationalUnit <string>] [-awsAccountID <string>] [-awsAccessKeyID <string>]
 [-AllowAccountDuplications <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Dependency

```
Add-PASDiscoveredAccount -UserName <string> -Address <string> -discoveryDate <datetime>
 -AccountEnabled <bool> [-osGroups <string>] [-platformType <string>] [-Domain <string>]
 [-lastLogonDateTime <datetime>] [-lastPasswordSetDateTime <datetime>]
 [-passwordNeverExpires <bool>] [-OSVersion <string>] [-privileged <bool>]
 [-privilegedCriteria <string>] [-UserDisplayName <string>] [-description <string>]
 [-passwordExpirationDateTime <datetime>] [-osFamily <string>] [-additionalProperties <hashtable>]
 [-organizationalUnit <string>] [-Dependencies <hashtable[]>] [-AllowAccountDuplications <bool>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Azure

```
Add-PASDiscoveredAccount -UserName <string> -Address <string> -discoveryDate <datetime>
 -AccountEnabled <bool> [-osGroups <string>] [-platformType <string>] [-Domain <string>]
 [-lastLogonDateTime <datetime>] [-lastPasswordSetDateTime <datetime>]
 [-passwordNeverExpires <bool>] [-OSVersion <string>] [-privileged <bool>]
 [-privilegedCriteria <string>] [-UserDisplayName <string>] [-description <string>]
 [-passwordExpirationDateTime <datetime>] [-osFamily <string>] [-additionalProperties <hashtable>]
 [-organizationalUnit <string>] [-activeDirectoryID <string>] [-AllowAccountDuplications <bool>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Enables an account or SSH key that is discovered by an external scanner to be added
as a pending account to the Accounts Feed.

Users can identify privileged accounts and determine which are on-boarded to the vault.

## EXAMPLES

### EXAMPLE 1

```
Add-PASDiscoveredAccount -UserName Discovered23 -Address domain.com -discoveryDate $(Get-Date "29/10/2018") -AccountEnabled $true -platformType "Windows Domain" -SID 12355
```

Adds matching discovered account as pending account.

### EXAMPLE 2

```
Add-PASDiscoveredAccount -UserName AWSUser -Address aws.com -discoveryDate (Get-Date 1/1/1974) -AccountEnabled $true -platformType AWS -awsAccountID 123456777889 -privileged $false
```

Adds matching account to pending/discovered account list.

### EXAMPLE 3

```
$dependency = @()

$dependency += @{
"name"="SomeDependency"
"address"="1.2.3.4"
"type"="Windows Service"
}
$dependency += @{
"name"="Some"
"address"="1.2.3.4"
"type"="Windows Scheduled Task"
"taskFolder"="\Some\Folder"
}
Add-PASDiscoveredAccount -UserName ServiceUser -Address 1.2.3.4 -discoveryDate (Get-Date 25/3/2013) -AccountEnabled $true -platformType 'Windows Server Local' -Dependencies $dependency
```

Adds or updates matching pending account with defined dependencies.

### EXAMPLE 4

```
Add-PASDiscoveredAccount -UserName UnixUser -Address unix.domain.com -discoveryDate (Get-Date) -AccountEnabled $true -platformType Unix -uid 1001 -gid 1001
```

Adds matching Unix discovered account as pending account, using the Unix parameter set.

### EXAMPLE 5

```
Add-PASDiscoveredAccount -UserName SSHUser -Address unix.domain.com -discoveryDate (Get-Date) -AccountEnabled $true -platformType "Unix SSH Key" -uid 1001 -gid 1001 -fingerprint "AA:BB:CC:DD:EE:FF" -path "/home/SSHUser/.ssh/id_rsa"
```

Adds matching discovered SSH key as pending account, using the UnixSSHKey parameter set.

### EXAMPLE 6

```
Add-PASDiscoveredAccount -UserName AzureUser -Address azure.domain.com -discoveryDate (Get-Date) -AccountEnabled $true -platformType Azure -activeDirectoryID 00000000-0000-0000-0000-000000000000
```

Adds matching Azure discovered account as pending account, using the Azure parameter set.

## PARAMETERS

### -AccountEnabled

The state of the account, defined in the discovery source.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
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

### -activeDirectoryID

Azure Active Directory tenant ID

Minimum required version 11.7
Azure Active Directory tenant ID

Minimum required version 11.7

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Azure
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -additionalProperties

A hashtable of additional properties added to the account.

```yaml
Type: System.Collections.Hashtable
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Address

The name or address of the machine where the account is located.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
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

### -AllowAccountDuplications

Used when AccountDuplicationEnforcementLevel is configured. Default is True
Used when AccountDuplicationEnforcementLevel is configured.
Default is True

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -awsAccessKeyID

The AWS Access Key ID string

Relevant when platformType is set to AWS or AWS Access Keys

Minimum required version 10.8
The AWS Access Key ID string

Relevant when platformType is set to AWS or AWS Access Keys

Minimum required version 10.8

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AWS
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -awsAccountID

The AWS Account ID, in the format of a 12-digit number.

Relevant when platformType is set to AWS or AWS Access Keys

Minimum required version 10.8
The AWS Account ID, in the format of a 12-digit number.

Relevant when platformType is set to AWS or AWS Access Keys

Minimum required version 10.8

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: AWS
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -comment

Any text added when the key was created.

Relevant when platformType is set to "Unix SSH Key"
Any text added when the key was created.

Relevant when platformType is set to "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
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

### -Dependencies

Accepts hashtable representing key/value pairs for:
- name: the Name of the dependency
- address (mandatory): IP address or DNS hostname of the dependency
- type (mandatory): The dependency type from the following list:
  - COM+ Application
  - IIS Anonymous Authentication
  - IIS Application Pool
  - Windows Scheduled Task
  - Windows Service
- taskFolder: The dependency task folder, relevant for Windows Scheduled Tasks.

Minimum required version 10.8
Accepts hashtable representing key/value pairs for: - name: the Name of the dependency

- address (mandatory): IP address or DNS hostname of the dependency

- type (mandatory): The dependency type from the following list:

- COM+ Application   - IIS Anonymous Authentication   - IIS Application Pool   - Windows Scheduled Task   - Windows Service - taskFolder: The dependency task folder, relevant for Windows Scheduled Tasks.

Minimum required version 10.8

```yaml
Type: System.Collections.Hashtable[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Dependency
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -description

A description of the account, defined in the discovery source.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -discoveryDate

The date the account was discovered.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
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

### -Domain

The domain of the account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -encryption

The type of encryption used to generate the SSH key.

Relevant when platformType is set to "Unix SSH Key"
The type of encryption used to generate the SSH key.

Relevant when platformType is set to "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -fingerprint

The fingerprint of the discovered SSH key.

The public and private keys of the same trust have the same fingerprint.

This is relevant for SSH keys only.

Relevant when platformType is set to "Unix SSH Key"
The fingerprint of the discovered SSH key.

The public and private keys of the same trust have the same fingerprint.

This is relevant for SSH keys only.

Relevant when platformType is set to "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -format

The format of the private SSH key.

Relevant when platformType is set to "Unix SSH Key"
The format of the private SSH key.

Relevant when platformType is set to "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -gid

The unique group ID.

This parameter is relevant only for Unix accounts.

Relevant when platformType is set to "Unix" or "Unix SSH Key"
The unique group ID.

This parameter is relevant only for Unix accounts.

Relevant when platformType is set to "Unix" or "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Unix
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -lastLogonDateTime

The date this account was last logged into, defined in the discovery source.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -lastPasswordSetDateTime

The date this password was last set, defined in the discovery source.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -organizationalUnit

The organizational unit where the account is defined.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -osFamily

The type of machine where the account was discovered.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -osGroups

The name of the group the account belongs to, such as Administrators or Operators.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OSVersion

The version of the OS where the account was discovered.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -passwordExpirationDateTime

The expiration date of the account, defined in the discovery source.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -passwordNeverExpires

Whether or not this password expires, defined in the discovery source.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -path

The path of the public key on the target machine.

Relevant when platformType is set to "Unix SSH Key"
The path of the public key on the target machine.

Relevant when platformType is set to "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -platformType

The platform where the discovered account is located.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -privileged

Whether the discovered account is privileged or non-privileged.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -privilegedCriteria

The criteria that determines whether or not the discovered account is privileged.

For example, the user or group name.
The criteria that determines whether or not the discovered account is privileged.

For example, the user or group name.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SID

Security ID.

This parameter is relevant only for Windows accounts.

Relevant when platformType is set to Windows
Security ID.

This parameter is relevant only for Windows accounts.

Relevant when platformType is set to Windows

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Windows
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -size

The size in bits of the generated key.

Relevant when platformType is set to "Unix SSH Key"
The size in bits of the generated key.

Relevant when platformType is set to "Unix SSH Key"

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -uid

The unique user ID.

This parameter is relevant only for Unix accounts.

Relevant when platformType is set to "Unix" or "Unix SSH Key"
The unique user ID.

This parameter is relevant only for Unix accounts.

Relevant when platformType is set to "Unix" or "Unix SSH Key"

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UnixSSHKey
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Unix
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserDisplayName

The user's display name.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
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

The name of the account user.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
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

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.Collections.Hashtable[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASDiscoveredAccount](https://pspas.pspete.dev/commands/Add-PASDiscoveredAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Discovered%20Account%20v10.8.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Discovered%20Account%20v10.8.htm)

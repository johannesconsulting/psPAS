---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASAccount
---

# Remove-PASAccount

## SYNOPSIS

Deletes an account

## SYNTAX

### Default (Default)

```
Remove-PASAccount -AccountID <string> [-DeleteSSHKey <bool>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Gen1

```
Remove-PASAccount -AccountID <String> [-UseGen1API] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a specific account in the Vault.

The user who runs this web service requires the "Delete Accounts" permission.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASAccount -AccountID 19_1
```

Deletes the account with AccountID of 19_1

### EXAMPLE 2

```
Get-PASAccount -id 19_1 | Remove-PASAccount
```

Deletes the account returned by Get-PASAccount.

### EXAMPLE 3

```
Remove-PASAccount -AccountID 19_1 -UseGen1API
```

Deletes the account with AccountID of 19_1 using the Gen1 (PIMServices.svc) API endpoint, for use against CyberArk versions earlier than 10.4.

### EXAMPLE 4

```
Remove-PASAccount -AccountID 19_1 -DeleteSSHKey $true -WhatIf
```

Shows what would happen if the account and its associated SSH keys, both public (target) and private (Vault), were deleted, without actually deleting them.

## PARAMETERS

### -AccountID

The unique ID of the account to delete.

This is retrieved by the Get-PASAccount function.
The unique ID of the account to delete.

This is retrieved by the Get-PASAccount function.

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

### -DeleteSSHKey

For SSH Key accounts, indicates whether to delete both the public (target) and private (Vault) account keys.

On Self-Hosted environments, this is passed as the `deleteSshKeyFromVaultAndTarget` URL parameter, and requires
minimum version of 15.2. Defaults to $false (the private key is deleted from the Vault, the public key on the
target is not).

On Privilege Cloud, this is passed as the `deleteOnlyPrivateSshKey` URL parameter. Specify $true to delete both
account keys, or $false to delete only the public (target) key.
For SSH Key accounts, indicates whether to delete both the public (target) and private (Vault) account keys.

On Self-Hosted environments, this is passed as the `deleteSshKeyFromVaultAndTarget` URL parameter, and requires minimum version of 15.2.
Defaults to $false (the private key is deleted from the Vault, the public key on the target is not).

On Privilege Cloud, this is passed as the `deleteOnlyPrivateSshKey` URL parameter.
Specify $true to delete both account keys, or $false to delete only the public (target) key.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Default
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

Should be specified for versions earlier than 10.4
Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 10.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- UseClassicAPI
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

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASAccount](https://pspas.pspete.dev/commands/Remove-PASAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Account.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Account.htm)

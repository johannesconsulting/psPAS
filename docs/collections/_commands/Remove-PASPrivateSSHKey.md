---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPrivateSSHKey
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPrivateSSHKey
---

# Remove-PASPrivateSSHKey

## SYNOPSIS

Deletes an MFA caching SSH key.

## SYNTAX

### Default (Default)

```
Remove-PASPrivateSSHKey [[-UserID] <Int32>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPrivateSSHKey [[-UserID] <int>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes an MFA caching SSH key for connecting to targets via PSM for SSH.
Either deletes your key, or the key for another specific user.
If deleting a key for another user, the user who runs this command must be at the same vault location level or higher, and requires the "Reset Users' Passwords" permission in the Vault.

Requires CyberArk Version 12.1 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
Remove-PASPrivateSSHKey
```

Deletes your MFA caching SSH key.

### EXAMPLE 2

```powershell
Remove-PASPrivateSSHKey -UserID 646
```

Deletes MFA caching SSH key for user with id 646.

### EXAMPLE 3

```powershell
Remove-PASPrivateSSHKey -UserID 646 -WhatIf
```

Shows what would happen if the MFA caching SSH key for user with id 646 was deleted, without making any changes.

### EXAMPLE 4

```powershell
[PSCustomObject]@{UserID = 646} | Remove-PASPrivateSSHKey
```

Deletes MFA caching SSH key for user with id 646, using pipeline input.

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

### -UserID

The numerical id of the user to delete the key for.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASPrivateSSHKey](https://pspas.pspete.dev/commands/Remove-PASPrivateSSHKey)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20MFA%20caching%20SSH%20key.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20MFA%20caching%20SSH%20key.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20MFA%20caching%20SSH%20key%20for%20another%20user.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20MFA%20caching%20SSH%20key%20for%20another%20user.htm)

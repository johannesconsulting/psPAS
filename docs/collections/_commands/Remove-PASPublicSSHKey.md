---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASPublicSSHKey
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASPublicSSHKey
---

# Remove-PASPublicSSHKey

## SYNOPSIS

Deletes a specific Public SSH Key from a specific vault user.

## SYNTAX

### Default (Default)

```
Remove-PASPublicSSHKey [-UserName] <String> [-KeyID] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASPublicSSHKey [-UserName] <string> [-KeyID] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes an authorized public SSH key for a specific user in the
Vault, preventing them from authenticating to the Vault through PSMP
using a corresponding private SSH key.

"Reset Users Passwords" Vault permission is required.

The authenticated user who runs this function must be in the same Vault
Location or higher as the user whose public SSH keys are deleted.

A user cannot manage their own public SSH keys.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASPublicSSHKey -UserName Splitter -KeyID 415161FE8F2B408BB76BC244258C3697
```

Deletes specified ssh key from vault user "Splitter"

### EXAMPLE 2

```
Remove-PASPublicSSHKey -UserName Splitter -KeyID 415161FE8F2B408BB76BC244258C3697 -WhatIf
```

Shows what would happen if the specified SSH key were deleted from vault user "Splitter", without actually deleting it.

### EXAMPLE 3

```
Get-PASPublicSSHKey -UserName Splitter | Remove-PASPublicSSHKey -Confirm:$false
```

Deletes every authorized SSH key configured for vault user "Splitter", with UserName and KeyID values supplied via the pipeline, suppressing the confirmation prompt.

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

### -KeyID

The ID of the public SSH key to delete.

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

### -UserName

The username of the Vault user whose public SSH keys will be added

A username cannot contain the following characters: "%", "&", "+" or ".".
The username of the Vault user whose public SSH keys will be added

A username cannot contain the following characters: "%", "&", "+" or ".".

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
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

- [https://pspas.pspete.dev/commands/Remove-PASPublicSSHKey](https://pspas.pspete.dev/commands/Remove-PASPublicSSHKey)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Public%20SSH%20Key.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Public%20SSH%20Key.htm)

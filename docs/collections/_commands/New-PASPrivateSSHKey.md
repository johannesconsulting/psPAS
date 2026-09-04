---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASPrivateSSHKey
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASPrivateSSHKey
---

# New-PASPrivateSSHKey

## SYNOPSIS

Generates an MFA caching SSH key.

## SYNTAX

### Personal (Default)

```
New-PASPrivateSSHKey [-formats <String[]>] [-keyPassword <SecureString>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### UserID

```
New-PASPrivateSSHKey -UserID <int> [-formats <string[]>] [-keyPassword <securestring>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Generates an MFA caching SSH key for connecting to targets via PSM for SSH.
Either generates a key for your user, or the key for another specific user.
If generating a key for another user, the user who runs this command requires the "Reset Users' Passwords" permission in the Vault.
Additionally, the user who runs the command must be in the same Vault Location or higher as the specified user.

Requires CyberArk Version 12.1 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
New-PASPrivateSSHKey
```

Generates an MFA caching SSH key for you, to be used connecting to targets via PSM for SSH.

### EXAMPLE 2

```powershell
New-PASPrivateSSHKey -formats OpenSSH, PEM, PPK
```

Generates an MFA caching SSH key in OpenSSH, PEM & PPK formats.

### EXAMPLE 3

```powershell
New-PASPrivateSSHKey -UserID 646
```

Generates an MFA caching SSH key for user with id 646.

### EXAMPLE 4

```powershell
New-PASPrivateSSHKey -keyPassword $cred.Password -UserID 646
```

Generates an MFA caching SSH key for user with id 646, protected by a passphrase

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

### -formats

Specify the output formats required for the generated key.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UserID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Personal
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -keyPassword

An optional passphrase to protect the key with.

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UserID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Personal
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UserID

The numerical id of the user to generate the key for.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: UserID
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

### System.String[]

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASPrivateSSHKey](https://pspas.pspete.dev/commands/New-PASPrivateSSHKey)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Generate%20MFA%20caching%20SSH%20key%20for%20another%20user.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Generate%20MFA%20caching%20SSH%20key%20for%20another%20user.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Generate%20MFA%20caching%20SSH%20key.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Generate%20MFA%20caching%20SSH%20key.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Clear-PASPrivateSSHKey
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Clear-PASPrivateSSHKey
---

# Clear-PASPrivateSSHKey

## SYNOPSIS

Deletes all MFA caching SSH keys for all users.

## SYNTAX

### Default (Default)

```
Clear-PASPrivateSSHKey [<CommonParameters>]
```

### __AllParameterSets

```
Clear-PASPrivateSSHKey [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Delete all MFA caching SSH keys used to connect to targets via PSM for SSH.

Requires the following permission in the Vault:
- Reset Users' Passwords.

Requires CyberArk Version 12.1 or higher.

## EXAMPLES

### EXAMPLE 1

```powershell
Clear-PASPrivateSSHKey
```

Delete all MFA caching SSH keys

### EXAMPLE 2

```powershell
Clear-PASPrivateSSHKey -Verbose
```

Deletes all MFA caching SSH keys for all users and writes verbose details of the request to the console.

### EXAMPLE 3

```powershell
New-PASSession -Credential $Credential -BaseURI https://SomePVWAURL
Clear-PASPrivateSSHKey
```

Authenticates to the vault, then deletes all MFA caching SSH keys for all users on that vault.

## PARAMETERS

### CommonParameters

This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable,
-InformationAction, -InformationVariable, -OutBuffer, -OutVariable, -PipelineVariable,
-ProgressAction, -Verbose, -WarningAction, and -WarningVariable. For more information, see
[about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Clear-PASPrivateSSHKey](https://pspas.pspete.dev/commands/Clear-PASPrivateSSHKey)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20all%20MFA%20caching%20SSH%20keys.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20all%20MFA%20caching%20SSH%20keys.htm)

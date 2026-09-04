---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Unlock-PASAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Unlock-PASAccount
---

# Unlock-PASAccount

## SYNOPSIS

Checks-in one or more exclusive access accounts, or unlocks an account checked-out or locked by another user.

## SYNTAX

### CheckIn (Default)

```
Unlock-PASAccount -AccountID <string[]> [-CheckIn] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Unlock

```
Unlock-PASAccount -AccountID <string[]> [-Unlock] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Unlocks or Checks in an account, locked due to an exclusive account policy, to the Vault.

If the account is managed automatically by the CPM, after it is checked in,the password is changed immediately.

If the account is managed manually, a notification is sent to a user who is authorised to change the password.

The account is checked in automatically after it has been changed.

Requires Initiate CPM password management operations on the Safe where the account is stored.

Where a user holds the "Unlock Account" permission on a safe, they may use this function to issue an "Unlock" command on an account checked out or locked by another user.

Multiple accounts can be checked in, or unlocked, using a single bulk request by supplying more than one value for `-AccountID`.
Bulk check-in and bulk unlock require CyberArk version 15.2 or later.

## EXAMPLES

### EXAMPLE 1

```
Unlock-PASAccount -AccountID 21_3
```

Will check-in exclusive access account with ID of "21_3"

### EXAMPLE 2

```
Get-PASAccount -Keywords xAccount | Unlock-PASAccount
```

Will check-in exclusive access account xAccount

### EXAMPLE 3

```
Unlock-PASAccount -AccountID 21_3 -Unlock
```

Unlocks account with ID of "21_3" when locked by another user.

### EXAMPLE 4

```
Unlock-PASAccount -AccountID 21_3, 22_4
```

Checks in accounts 21_3 and 22_4 in a single bulk request.

### EXAMPLE 5

```
Unlock-PASAccount -AccountID 21_3, 22_4 -Unlock
```

Unlocks accounts 21_3 and 22_4 in a single bulk request.

## PARAMETERS

### -AccountID

The unique ID of the account.

This is retrieved by the Get-PASAccount function.

When more than one value is supplied, a bulk request is sent (bulk check-in for the `CheckIn` parameter set, bulk unlock for the `Unlock` parameter set).
The unique ID of the account.

This is retrieved by the Get-PASAccount function.

When more than one value is supplied, a bulk request is sent (bulk check-in for the `CheckIn` parameter set, bulk unlock for the `Unlock` parameter set).

```yaml
Type: System.String[]
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

### -CheckIn

Specifies that the account should be Checked-In

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: CheckIn
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
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

### -Unlock

Specifies that the account should be unlocked

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Unlock
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

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk version 9.10 (Check-In Account)
Minimum CyberArk version 11.6 (Unlock Account)

Bulk check-in and bulk unlock require CyberArk version 15.2 or later.

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Unlock-PASAccount](https://pspas.pspete.dev/commands/Unlock-PASAccount)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Checkin-account.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Checkin-account.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/pas/Latest/en/Content/PASIMP/AutoUnlockinPSM.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/pas/Latest/en/Content/PASIMP/AutoUnlockinPSM.htm)
- [https://docs.cyberark.com/PAS/Latest/en/Content/SDK/Unlock-account.htm](https://docs.cyberark.com/PAS/Latest/en/Content/SDK/Unlock-account.htm)

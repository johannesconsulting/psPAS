---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Invoke-PASCPMOperation
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Invoke-PASCPMOperation
---

# Invoke-PASCPMOperation

## SYNOPSIS

Marks accounts for CPM Verify, Change or Reconcile operations

## SYNTAX

### Verify

```
Invoke-PASCPMOperation -AccountID <string[]> -VerifyTask [-WhatIf] [-Confirm] [<CommonParameters>]
```

### VerifyCredentials

```
Invoke-PASCPMOperation -AccountID <string[]> -VerifyTask -UseGen1API [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### ChangeCredentials

```
Invoke-PASCPMOperation -AccountID <string[]> -ChangeTask -ImmediateChangeByCPM <string>
 [-ChangeCredsForGroup <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Change

```
Invoke-PASCPMOperation -AccountID <string[]> -ChangeTask [-ChangeEntireGroup <bool>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### SetNextPassword

```
Invoke-PASCPMOperation -AccountID <string[]> -ChangeTask -ChangeImmediately <bool>
 -NewCredentials <securestring> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Password/Update

```
Invoke-PASCPMOperation -AccountID <string[]> -ChangeTask -NewCredentials <securestring>
 [-ChangeEntireGroup <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Reconcile

```
Invoke-PASCPMOperation -AccountID <string[]> -ReconcileTask [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Accounts Can be flagged for immediate verification, change or reconcile.

CPM Change Options:
- Flags a managed account credentials for an immediate CPM password change.
  - The "Initiate CPM password management operations" permission is required.
- Sets a password to use for an account's next CPM change.
  - The "Initiate CPM password management operations" & "Specify next password value" permission is required.
- Updates the account's password only in the Vault (without affecting the credentials on the target device).
  - The "Update password value" permission is required.

Verify & Reconcile both require "Initiate CPM password management operations"

Gen 1 Verify is not supported in Privilege Cloud

Providing multiple values for -AccountID performs the operation as a single bulk request against the relevant Bulk API endpoint.
Bulk requests are not supported via the Gen1 API.
Requires CyberArk version 15.2+, and is only available for Self-Hosted implementations.

## EXAMPLES

### EXAMPLE 1

```
Invoke-PASCPMOperation -AccountID $ID -VerifyTask
```

Marks an account for verification

### EXAMPLE 2

```
Invoke-PASCPMOperation -AccountID $ID -VerifyTask -UseGen1API
```

Marks an account for verification using the Gen1 API

### EXAMPLE 3

```
Invoke-PASCPMOperation -AccountID $ID -ChangeTask -ImmediateChangeByCPM Yes
```

Marks an account for immediate change using the Gen1 API

Deprecated from version 13.2

### EXAMPLE 4

```
Invoke-PASCPMOperation -AccountID $ID -ChangeTask
```

Marks an account for immediate change

### EXAMPLE 5

```
Invoke-PASCPMOperation -AccountID $ID -ChangeTask -ChangeImmediately $true -NewCredentials $SecureString
```

Marks an account for immediate change to the specified password value

### EXAMPLE 6

```
Invoke-PASCPMOperation -AccountID $ID -ChangeTask -NewCredentials $SecureString
```

Changes the password for the account in the Vault

### EXAMPLE 7

```
Invoke-PASCPMOperation -AccountID $ID -ReconcileTask
```

Marks an account for immediate reconcile

### EXAMPLE 8

```
Invoke-PASCPMOperation -AccountID $ID1, $ID2, $ID3 -ChangeTask
```

Marks multiple accounts for immediate change in a single bulk request

## PARAMETERS

### -AccountID

The unique ID of the account.

Specify multiple values to perform the operation as a single bulk request.
Bulk requests require CyberArk version 15.2+, are only available for Self-Hosted implementations, and are not supported via the Gen1 API.
The unique ID of the account.

Specify multiple values to perform the operation as a single bulk request.
Bulk requests require CyberArk version 15.2+, are only available for Self-Hosted implementations, and are not supported via the Gen1 API.

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

### -ChangeCredsForGroup

Yes/No value, dictating if all accounts that belong to the same group should
have their passwords changed.

This is only relevant for accounts that belong to an account group.

Parameter will be ignored if account does not belong to a group.

Relevant for Gen1 API only.
Yes/No value, dictating if all accounts that belong to the same group should have their passwords changed.

This is only relevant for accounts that belong to an account group.

Parameter will be ignored if account does not belong to a group.

Relevant for Gen1 API only.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ChangeCredentials
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ChangeEntireGroup

Boolean value, dictating if all accounts that belong to the same group should have their passwords changed.

This is only relevant for accounts that belong to an account group.

Parameter will be ignored if account does not belong to a group.

Applicable to immediate change via CPM, and password change in the vault only.

Minimum required version 10.1
Boolean value, dictating if all accounts that belong to the same group should have their passwords changed.

This is only relevant for accounts that belong to an account group.

Parameter will be ignored if account does not belong to a group.

Applicable to immediate change via CPM, and password change in the vault only.

Minimum required version 10.1

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Password/Update
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Change
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ChangeImmediately

Whether or not the password will be changed immediately in the Vault.

Only relevant when specifying a password value for the next CPM change.

Minimum required version 10.1
Whether or not the password will be changed immediately in the Vault.

Only relevant when specifying a password value for the next CPM change.

Minimum required version 10.1

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SetNextPassword
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ChangeTask

Initiates a change task

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ChangeCredentials
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Change
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: SetNextPassword
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Password/Update
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

### -ImmediateChangeByCPM

Yes/No value, dictating if the account will be scheduled for immediate change.

Specify Yes to initiate a password change by CPM - Relevant for Gen1 API only.

Deprecated from version 13.2
Yes/No value, dictating if the account will be scheduled for immediate change.

Specify Yes to initiate a password change by CPM - Relevant for Gen1 API only.

Deprecated from version 13.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: ChangeCredentials
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NewCredentials

Secure String value of the new account password that will be allocated to the account in the Vault.

Only relevant when specifying a password value for the next CPM change, or updating the password only in the vault.

Minimum required version 10.1
Secure String value of the new account password that will be allocated to the account in the Vault.

Only relevant when specifying a password value for the next CPM change, or updating the password only in the vault.

Minimum required version 10.1

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Password/Update
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: SetNextPassword
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ReconcileTask

Initiates a reconcile task

Requires CyberArk version 9.10+
Initiates a reconcile task

Requires CyberArk version 9.10+

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Reconcile
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Specify to force verification via Gen1 API.

Should be specified for versions earlier than 10.1

Gen 1 Verify is not supported in Privilege Cloud
Specify to force verification via Gen1 API.

Should be specified for versions earlier than 10.1

Gen 1 Verify is not supported in Privilege Cloud

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- UseClassicAPI
ParameterSets:
- Name: VerifyCredentials
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -VerifyTask

Initiates a verify task

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Verify
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: VerifyCredentials
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Invoke-PASCPMOperation](https://pspas.pspete.dev/commands/Invoke-PASCPMOperation)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Verify-credentials-v9-10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Verify-credentials-v9-10.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Change-credentials-immediately.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Change-credentials-immediately.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/SetNextPassword.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/SetNextPassword.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ChangeCredentialsInVault.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ChangeCredentialsInVault.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Reconcile-account.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Reconcile-account.htm)

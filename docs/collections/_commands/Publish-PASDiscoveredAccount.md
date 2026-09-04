---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: ''
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Publish-PASDiscoveredAccount
---

# Publish-PASDiscoveredAccount

## SYNOPSIS

Onboard a discovered account

## SYNTAX

### Default (Default)

```
Publish-PASDiscoveredAccount [-id] <String> [-PlatformID] <String> [-safeName] <String>
 [[-shouldReconcileAccount] <Boolean>] [[-defaultPassword] <SecureString>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Publish-PASDiscoveredAccount [-id] <string> [-PlatformID] <string> [-safeName] <string>
 [[-shouldReconcileAccount] <bool>] [[-defaultPassword] <securestring>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Onboard a discovered account to a target platform into a target safe.
Optionally set the account to be reconciled, and/or with a default password.

## EXAMPLES

### EXAMPLE 1

```powershell
$password = Read-Host -AsSecureString -Prompt "defaultPassword value"
Publish-PASDiscoveredAccount -id 66_6 -PlatformID WinDomain -safeName SomeSafe -defaultPassword $password
```

Onboard discovered account with id 66_6 to `SomeSafe` with the provided default password

### EXAMPLE 2

```powershell
Publish-PASDiscoveredAccount -id 19_1 -PlatformID UnixSSH -safeName UNIX
```

Onboard discovered account with id 19_1 to the UNIX safe using the UnixSSH platform, using the automatically generated password.

### EXAMPLE 3

```powershell
Publish-PASDiscoveredAccount -id 44_9 -PlatformID WinDomain -safeName TargetSafe -shouldReconcileAccount $true
```

Onboard discovered account with id 44_9 to TargetSafe and marks it for reconciliation.

### EXAMPLE 4

```powershell
Get-PASDiscoveredAccount -platformType 'Windows Domain' | Publish-PASDiscoveredAccount -PlatformID WinDomain -safeName TargetSafe -WhatIf
```

Shows what would happen if every discovered Windows Domain account was onboarded to TargetSafe using the WinDomain platform, without actually onboarding them.

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

### -defaultPassword

The default password value

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -id

Discovered account ID

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

### -PlatformID

Target platform ID

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

### -safeName

Target safe name

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -shouldReconcileAccount

Specify if the account should be reconciled

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
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

### System.Boolean

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Publish-PASDiscoveredAccount](https://pspas.pspete.dev/commands/Publish-PASDiscoveredAccount)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/add%20discovered%20account%20v10.8.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/add%20discovered%20account%20v10.8.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Publish-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Publish-PASDiscoveredLocalAccount
---

# Publish-PASDiscoveredLocalAccount

## SYNOPSIS

Onboard a discovered local account

## SYNTAX

### Default (Default)

```
Publish-PASDiscoveredLocalAccount [-id] <String> [-safeName] <String> [-platformID] <String>
 [[-additionalProperties] <Hashtable>] [[-secret] <SecureString>] [[-resetSecret] <Boolean>]
 [-tags <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Publish-PASDiscoveredLocalAccount [-id] <string> [-safeName] <string> [-platformID] <string>
 [[-additionalProperties] <hashtable>] [[-secret] <securestring>] [[-resetSecret] <bool>]
 [[-tags] <string[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Onboards accounts from the list of discovered accounts for local endpoints.
The account is moved from the list of discovered accounts to the system's active accounts.

Applies to the accounts that are discovered by the EPM scanning of endpoints, including loosely connected devices:
- Windows loosely connected devices
- Mac loosely connected devices
- Linux loosely connected devices

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```
Publish-PASDiscoveredLocalAccount -id SomeID -safeName SomeSafe -platformID SomePlatform
```

Onboards the specified discovered local account.

### EXAMPLE 2

```
Publish-PASDiscoveredLocalAccount -id SomeID -safeName SomeSafe -platformID SomePlatform -additionalProperties @{'Location'='HQ'}
```

Onboards the specified discovered local account, adding an additional property.

### EXAMPLE 3

```
$secret = Read-Host -AsSecureString -Prompt "secret value"
Publish-PASDiscoveredLocalAccount -id SomeID -safeName SomeSafe -platformID SomePlatform -secret $secret -resetSecret $true
```

Onboards the specified discovered local account with the provided initial secret value, and immediately rotates it.

### EXAMPLE 4

```
Get-PASDiscoveredLocalAccount -type Windows | Publish-PASDiscoveredLocalAccount -safeName WinLocal -platformID WinServerLocal
```

Onboards every discovered Windows local account to the WinLocal safe using the WinServerLocal platform.

## PARAMETERS

### -additionalProperties

Additional properties that will be applied to the account and are not taken from the identifiers or customProperties of the discovered account.

```yaml
Type: System.Collections.Hashtable
DefaultValue: None
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

### -id

The unique identifier of the discovered account.

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

### -platformID

The platform to apply to the account.

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

### -resetSecret

Whether the account should be immediately rotated (reconcile or change depending on the type).

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -safeName

The safe to apply to the account

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

### -secret

The account's initial secret value.

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

### -tags

List of tag(s) assigned to the discovered account by the scan definition.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
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

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Publish-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Publish-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Onboard.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Onboard.htm)

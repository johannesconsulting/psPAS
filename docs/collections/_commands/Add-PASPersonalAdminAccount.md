---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPersonalAdminAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPersonalAdminAccount
---

# Add-PASPersonalAdminAccount

## SYNOPSIS

Adds a personal privileged account in Privilege Cloud.

## SYNTAX

### Default (Default)

```
Add-PASPersonalAdminAccount [-address] <String> [-userName] <String> [-secret] <SecureString>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPersonalAdminAccount [-address] <string> [-userName] <string> [-secret] <securestring>
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Privilege Cloud Only.

Add personal privileged account for individual use and store in private dedicated Safe.

This capability is currently in Beta phase and will be undergoing future changes and expansion.

## EXAMPLES

### EXAMPLE 1

```powershell
Add-PASPersonalAdminAccount -address somedomain -userName someUser -secret $SomePassword
```

Adds Personal Admin Account to private dedicated Safe.

### EXAMPLE 2

```powershell
$SecureString = ConvertTo-SecureString "Str0ngP@ssw0rd!" -AsPlainText -Force
Add-PASPersonalAdminAccount -address contoso.com -userName Bob -secret $SecureString
```

Creates a SecureString for the account password and adds a personal admin account for Bob.

### EXAMPLE 3

```powershell
[pscustomobject]@{address = 'contoso.com'; userName = 'Alice'; secret = $SecureString } | Add-PASPersonalAdminAccount
```

Adds a personal admin account using property values supplied via the pipeline.

### EXAMPLE 4

```powershell
$PersonalAccount = Add-PASPersonalAdminAccount -address contoso.com -userName Bob -secret $SecureString
$PersonalAccount.id
```

Adds a personal admin account and returns the id of the newly created account from the response.

## PARAMETERS

### -address

The name or address of the machine where the account will be used. Valid values: DNS/IP/URL where the account is managed.
The name or address of the machine where the account will be used.
Valid values: DNS/IP/URL where the account is managed.

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

### -secret

Account password as SecureString

```yaml
Type: System.Security.SecureString
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

### -userName

Account user's name.

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

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPersonalAdminAccount](https://pspas.pspete.dev/commands/Add-PASPersonalAdminAccount)

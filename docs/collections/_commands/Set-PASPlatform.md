---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPlatform
---

# Set-PASPlatform

## SYNOPSIS

Update target platform settings.

## SYNTAX

### Default (Default)

```
Set-PASPlatform [-id] <Int32> [[-op] <String>] [[-path] <String>] [[-value] <String>]
 [[-operations] <Hashtable[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASPlatform [-id] <int> [[-op] <string>] [[-path] <string>] [[-value] <string>]
 [[-operations] <hashtable[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows Vault admins to update settings on a target platform.

## EXAMPLES

### EXAMPLE 1

```powershell
Set-PASPlatform -id 42 -op replace -path 'General/name' -value 'SomeName'
```

Updates the name of platform with id 42 to SomeName

### EXAMPLE 2

```powershell
$Operations = @(
    [hashtable]@{op = 'replace'; path = 'General/name'; value = 'SomeName'},
    [hashtable]@{op = 'remove'; path = 'General/description'}
)
Set-PASPlatform -id 42 -operations $Operations
```

Performs multiple update operations on platform with id 42

### EXAMPLE 3

```powershell
Set-PASPlatform -id 42 -op replace -path 'Policy/General/interval' -value '3600' -WhatIf
```

Shows what would happen if the interval setting on platform with id 42 was updated, without actually updating it.

### EXAMPLE 4

```powershell
Set-PASPlatform -id 42 -op remove -path 'Policy/additionalPolicySettings/debug'
```

Removes the debug additional policy setting from platform with id 42.

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

### -id

Numeric ID of target platform

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases:
- PlatformID
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

### -op

Patch operation to perform.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Operation
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -operations

Collection of patch operations to apply to the platform settings.

```yaml
Type: System.Collections.Hashtable[]
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

### -path

Platform setting path to update.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -value

Value to apply to the platform setting.

```yaml
Type: System.String
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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Collections.Hashtable[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPlatform](https://pspas.pspete.dev/commands/Set-PASPlatform)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-update-target-platform-settings.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-update-target-platform-settings.htm)

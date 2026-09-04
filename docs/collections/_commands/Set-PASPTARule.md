---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPTARule
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPTARule
---

# Set-PASPTARule

## SYNOPSIS

Updates an existing Risky Activity rule to PTA

## SYNTAX

### Default (Default)

```
Set-PASPTARule [-id] <String> [[-category] <String>] [[-regex] <String>] [[-score] <Int32>]
 [[-description] <String>] [[-response] <String>] [[-active] <Boolean>] [-vaultUsersMode <String>]
 [-vaultUsersList <String[]>] [-machinesMode <String>] [-machinesList <String[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASPTARule [-id] <string> [[-category] <string>] [[-regex] <string>] [[-score] <int>]
 [[-description] <string>] [[-response] <string>] [[-active] <bool>] [[-vaultUsersMode] <string>]
 [[-vaultUsersList] <string[]>] [[-machinesMode] <string>] [[-machinesList] <string[]>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates an existing Risky Activity rule in the PTA server configuration.

## EXAMPLES

### EXAMPLE 1

```
Set-PASPTARule -id 66 -category KEYSTROKES -regex '(*.)risky cmd(.*)' -score 65 -description "Updated Rule" -response SUSPEND -active $true
```

Updates rule 66 in PTA

### EXAMPLE 2

```
Set-PASPTARule -id 66 -category KEYSTROKES -regex '(*.)risky cmd(.*)' -score 65 -description "Updated Rule" -response SUSPEND -active $true -vaultUsersList UserA,UserB,UserC -machinesMode INCLUDE Computer1,Computer2,Computer3
```

Updates rule 66 in PTA, scoped to exclude listed users, and include listed machines

### EXAMPLE 3

```
Get-PASPTARule | Where-Object { $_.category -eq 'SQL' } | Set-PASPTARule -active $false
```

Disables all existing PTA rules in the SQL category, using the piped rule properties to populate the remaining values

### EXAMPLE 4

```
Set-PASPTARule -id 66 -score 80 -active $true -WhatIf
```

Shows what would happen if rule 66's score was updated, without making any changes

## PARAMETERS

### -active

Indicate if the rule should be active or disabled

```yaml
Type: System.Boolean
DefaultValue: False
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

### -category

The Category of the risky activity
- Valid values: SSH, WINDOWS, SCP, KEYSTROKES or SQL
The Category of the risky activity - Valid values: SSH, WINDOWS, SCP, KEYSTROKES or SQL

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
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

### -description

Activity description.

The field is mandatory but can be empty
Activity description.

The field is mandatory but can be empty

```yaml
Type: System.String
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

The unique ID of the rule.

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

### -machinesList

List of machines to be included or excluded for detection

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -machinesMode

Indicates whether the list of machines will be processed for Suspicious Activity detection
Valid values:
- INCLUDE
  - Only machines on the list will be processed for detection
- EXCLUDE
  - Machines on the list will not be processed for detection
Indicates whether the list of machines will be processed for Suspicious Activity detection Valid values: - INCLUDE   - Only machines on the list will be processed for detection - EXCLUDE   - Machines on the list will not be processed for detection

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -regex

Risky activity in regex form.

Must support all characters (including "/" and escaping characters)
Risky activity in regex form.

Must support all characters (including "/" and escaping characters)

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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -response

Automatic response to be executed

Valid Values: NONE, TERMINATE or SUSPEND
Automatic response to be executed

Valid Values: NONE, TERMINATE or SUSPEND

```yaml
Type: System.String
DefaultValue: None
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

### -score

Activity score.

Number must be between 1 and 100
Activity score.

Number must be between 1 and 100

```yaml
Type: System.Int32
DefaultValue: 0
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

### -vaultUsersList

List of accounts to be included or excluded for detection

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -vaultUsersMode

Indicates whether the list of accounts will be processed for Suspicious Activity detection
Valid values:
- INCLUDE
  - Only accounts on the list will be processed for detection
- EXCLUDE
  - Accounts on the list will not be processed for detection
Indicates whether the list of accounts will be processed for Suspicious Activity detection Valid values: - INCLUDE   - Only accounts on the list will be processed for detection - EXCLUDE   - Accounts on the list will not be processed for detection

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
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

### System.Int32

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum Version CyberArk 10.4

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPTARule](https://pspas.pspete.dev/commands/Set-PASPTARule)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/UpdateRule.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/UpdateRule.htm)

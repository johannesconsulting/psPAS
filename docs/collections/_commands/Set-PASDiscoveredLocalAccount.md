---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASDiscoveredLocalAccount
---

# Set-PASDiscoveredLocalAccount

## SYNOPSIS

Edits properties of a discovered local account.

## SYNTAX

### Default (Default)

```
Set-PASDiscoveredLocalAccount [-id] <String> [[-customProperties] <Hashtable>] [[-tags] <String[]>]
 [[-isPrivileged] <Boolean>] [[-applyRules] <Boolean>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASDiscoveredLocalAccount [-id] <string> [[-customProperties] <hashtable>] [[-tags] <string[]>]
 [[-isPrivileged] <bool>] [[-applyRules] <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Edits properties of an account in the Discovered Accounts list. Only customProperties, tags and isPrivileged can be updated.

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Set-PASDiscoveredLocalAccount -id 54507db1-66d7-4dc7-93cf-a310cc19b9fc -isPrivileged $true
```

Marks the specified discovered account as privileged.

### EXAMPLE 2

```powershell
Set-PASDiscoveredLocalAccount -id 54507db1-66d7-4dc7-93cf-a310cc19b9fc -tags 'tag1', 'tag2' -applyRules $true
```

Sets tags on the specified discovered account and applies remediation rules to it.

## PARAMETERS

### -applyRules

Whether to apply remediation rules on the edited account.

```yaml
Type: System.Boolean
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

### -customProperties

User-defined properties to be combined with the existing custom properties of the discovered account. New properties are added, existing custom property values are overridden, and properties can be removed by not sending them again.
User-defined properties to be combined with the existing custom properties of the discovered account.
New properties are added, existing custom property values are overridden, and properties can be removed by not sending them again.

```yaml
Type: System.Collections.Hashtable
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

### -isPrivileged

Whether the user is privileged on the target.

```yaml
Type: System.Boolean
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

### -tags

A list of tags to associate with the discovered account.

```yaml
Type: System.String[]
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

### System.String[]

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Set-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/manage/latest/en/content/discovery/discovery-apis/discovery-editaccountproperties.htm](https://docs.cyberark.com/manage/latest/en/content/discovery/discovery-apis/discovery-editaccountproperties.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASDependentAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASDependentAccount
---

# Remove-PASDependentAccount

## SYNOPSIS

This deletes an existing dependent account.

## SYNTAX

### Default (Default)

```
Remove-PASDependentAccount [-AccountID] <String> [-dependentAccountId] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASDependentAccount [-AccountID] <string> [-dependentAccountId] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes the association between a main privileged account and the dependent account.

Requires CyberArk version 14.6 or later.

## EXAMPLES

### Example 1

```powershell
Remove-PASDependentAccount -AccountID "123_456" -dependentAccountId "22_2"
```

Removes the dependent account with ID "789_012" from the main account "123_456".
The system will prompt for confirmation before performing the removal.

### Example 2

```powershell
Get-PASAccount -id "123_456" | Remove-PASDependentAccount -dependentAccountId "22_2" -WhatIf
```

Shows what would happen if the dependent account were removed, but does not actually perform the removal.
Uses pipeline input from Get-PASAccount for the main account ID.

### Example 3

```powershell
Remove-PASDependentAccount -id "123_456" -dependentid "22_2" -Confirm:$false
```

Removes the dependent account "22_2" from the main account "123_456" without prompting for confirmation, using the -id and -dependentid parameter aliases.

### Example 4

```powershell
@(
    [PSCustomObject]@{ AccountID = '123_456'; dependentAccountId = '22_2' }
    [PSCustomObject]@{ AccountID = '123_456'; dependentAccountId = '22_3' }
) | Remove-PASDependentAccount
```

Removes multiple dependent accounts from the main account "123_456" in a single pipeline operation, using pipeline input for both -AccountID and -dependentAccountId.

## PARAMETERS

### -AccountID

The unique ID of the main privileged account that has the dependent account associated with it.
This parameter accepts pipeline input and can be aliased as 'id'.
The unique ID of the main privileged account that has the dependent account associated with it.
This parameter accepts pipeline input and can be aliased as 'id'.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- id
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

### -dependentAccountId

The unique ID of the dependent account that should be removed from the main account association.
This parameter accepts pipeline input and can be aliased as 'dependentid'.
The unique ID of the dependent account that should be removed from the main account association.
This parameter accepts pipeline input and can be aliased as 'dependentid'.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- dependentid
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASDependentAccount](https://pspas.pspete.dev/commands/Remove-PASDependentAccount)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/delete-dependent-account.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/delete-dependent-account.htm)

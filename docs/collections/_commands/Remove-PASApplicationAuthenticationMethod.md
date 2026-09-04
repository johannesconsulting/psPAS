---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASApplicationAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASApplicationAuthenticationMethod
---

# Remove-PASApplicationAuthenticationMethod

## SYNOPSIS

Deletes an authentication method from an application

## SYNTAX

### Default (Default)

```
Remove-PASApplicationAuthenticationMethod [-AppID] <String> [-AuthID] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASApplicationAuthenticationMethod [-AppID] <string> [-AuthID] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Deletes a specific authentication method from a defined application.

"Manage Users" permission is required.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASApplicationAuthenticationMethod -AppID NewApp -AuthID 1
```

Deletes authentication method with ID of 1 from "NewApp"

### EXAMPLE 2

```
Get-PASApplicationAuthenticationMethod -AppID NewApp | Remove-PASApplicationAuthenticationMethod
```

Deletes all authentication methods from "NewApp"

### EXAMPLE 3

```
Remove-PASApplicationAuthenticationMethod -AppID NewApp -AuthID 2 -WhatIf
```

Shows what would happen if authentication method 2 was deleted from "NewApp", without performing the deletion

### EXAMPLE 4

```
1,2,3 | ForEach-Object { Remove-PASApplicationAuthenticationMethod -AppID NewApp -AuthID $_ }
```

Deletes authentication methods with IDs 1, 2 and 3 from "NewApp"

## PARAMETERS

### -AppID

The ID of the application in which the authentication will be deleted.

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

### -AuthID

The unique ID of the specific authentication.

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

- [https://pspas.pspete.dev/commands/Remove-PASApplicationAuthenticationMethod](https://pspas.pspete.dev/commands/Remove-PASApplicationAuthenticationMethod)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20a%20Specific%20Authentication.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20a%20Specific%20Authentication.htm)

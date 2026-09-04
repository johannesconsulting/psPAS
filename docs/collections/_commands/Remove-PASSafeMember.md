---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASSafeMember
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASSafeMember
---

# Remove-PASSafeMember

## SYNOPSIS

Removes a member from a safe

## SYNTAX

### Default (Default)

```
Remove-PASSafeMember [-SafeName] <String> [-MemberName] <String> [-UseGen1API] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### Gen1

```
Remove-PASSafeMember -SafeName <string> -MemberName <string> [-UseGen1API] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes a specific member from a Safe.

The user who runs this function requires the ManageSafeMembers permission.

Default operation against Gen2 API requires minimum version of 12.2

## EXAMPLES

### EXAMPLE 1

```
Remove-PASSafeMember -SafeName TargetSafe -MemberName TargetUser
```

Removes TargetUser as safe member from TargetSafe using Gen2 API

Requires minimum version 12.2

### EXAMPLE 2

```
Remove-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -UseGen1API
```

Removes TargetUser as safe member from TargetSafe using Gen1 API

### EXAMPLE 3

```
Remove-PASSafeMember -SafeName TargetSafe -MemberName TargetUser -WhatIf
```

Shows what would happen if TargetUser was removed as a safe member from TargetSafe, without actually removing them.

### EXAMPLE 4

```
Get-PASSafeMember -SafeName TargetSafe -MemberName TargetUser | Remove-PASSafeMember
```

Gets the TargetUser safe member on TargetSafe, and removes them via pipeline input.

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

### -MemberName

The name of the safe member to remove from the safes list of members.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- UserName
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

### -SafeName

The name of the safe from which to remove the member.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
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

### -UseGen1API

Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 12.2

Is not supported for Privilege Cloud
Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 12.2

Is not supported for Privilege Cloud

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1
  Position: Named
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Remove-PASSafeMember](https://pspas.pspete.dev/commands/Remove-PASSafeMember)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Safe%20Member.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Delete%20Safe%20Member.htm)

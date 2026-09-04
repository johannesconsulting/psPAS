---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASPlatform
---

# Get-PASPlatform

## SYNOPSIS

Retrieves details of Vault platforms.

## SYNTAX

### targets (Default)

```
Get-PASPlatform [-Active <bool>] [-Search <string>] [-SystemType <string>] [-PeriodicVerify <bool>]
 [-ManualVerify <bool>] [-PeriodicChange <bool>] [-ManualChange <bool>] [-AutomaticReconcile <bool>]
 [-ManualReconcile <bool>] [<CommonParameters>]
```

### dependents

```
Get-PASPlatform [-Search <String>] [-DependentPlatform] [<CommonParameters>]
```

### rotationalGroups

```
Get-PASPlatform [-Search <String>] [-RotationalGroup] [<CommonParameters>]
```

### groups

```
Get-PASPlatform [-Search <String>] [-GroupPlatform] [<CommonParameters>]
```

### platform-details

```
Get-PASPlatform -PlatformID <String> [<CommonParameters>]
```

### target-details

```
Get-PASPlatform -ID <int> [-Scope <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Request platform configuration information from the Vault.

Default operation requires minimum version of 11.4

11.4+ can return details of target, dependent, group & rotational group platforms,
with additional filters available for target group queries.

11.1+ can return details of all target platforms.

Where appropriate, each invocation of the command issues an additional API request to retrieve additional platform values using a legacy API endpoint

15.2+ Self-Hosted can return the full settings of a specific target platform, optionally
limited to a specific section via the "Scope" parameter. Each setting's value is
returned directly; the underlying API's description/isDefault/isReadOnly metadata for
each setting is not included in the output.

The "PlatformID" parameter is used to retrieve details of a single
specified platform from the Vault.

**Note:** When specifying PlatformID:

- if the platform properties contain a semicolon (';'), the API may not return the complete value.
- noted for ChangeCommand, ReconcileCommand & ConnectionCommand properties

## EXAMPLES

### EXAMPLE 1

```
Get-PASPlatform
```

Return details of all platforms

Minimum required version 11.4

### EXAMPLE 2

```
Get-PASPlatform -Active $true
```

Get all active platforms

Minimum required version 11.4

### EXAMPLE 3

```
Get-PASPlatform -Active $true -Search "WIN_"
```

Get active platforms matching search string "WIN\_"

Minimum required version 11.1

### EXAMPLE 4

```
Get-PASPlatform -PlatformID "CyberArk"
```

Get details of specific platform CyberArk

Minimum required version 9.10

### EXAMPLE 5

```
Get-PASPlatform -GroupPlatform
```

Get details of all group platforms

Minimum required version 11.4

### EXAMPLE 6

```
Get-PASPlatform -RotationalGroup
```

Get details of all rotational group platforms

Minimum required version 11.4

### EXAMPLE 7

```
Get-PASPlatform -DependentPlatform
```

Get details of all dependent platforms

Minimum required version 11.4

### EXAMPLE 8

```
Get-PASPlatform -Active $false -SystemType Windows
```

Get details of all deactivated Windows platforms

Minimum required version 11.4

### EXAMPLE 9

```
Get-PASPlatform -Active $true -SystemType '*NIX' -AutomaticReconcile $true
```

Get details of all active Unix platforms configured for automatic reconciliation.

Minimum required version 11.4

### EXAMPLE 10

```
Get-PASPlatform -ID 123
```

Get all settings for target platform with ID 123

Minimum required version 15.2, Self-Hosted only

### EXAMPLE 11

```
Get-PASPlatform -ID 123 -Scope policy/general
```

Get the "policy/general" settings for target platform with ID 123

Minimum required version 15.2, Self-Hosted only

## PARAMETERS

### -Active

Filter active/inactive platforms

Minimum required version 11.1
Filter active/inactive platforms

Minimum required version 11.1

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AutomaticReconcile

Filter target platforms by automatic reconciliation configuration

Minimum required version 11.4
Filter target platforms by automatic reconciliation configuration

Minimum required version 11.4

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DependentPlatform

Specify to return details of dependent platforms

Minimum required version 11.4
Specify to return details of dependent platforms

Minimum required version 11.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: dependents
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -GroupPlatform

Specify to return details of group platforms

Minimum required version 11.4
Specify to return details of group platforms

Minimum required version 11.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: groups
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ID

The unique numeric ID of the target platform.

Minimum required version 15.2, Self-Hosted only
The unique numeric ID of the target platform.

Minimum required version 15.2, Self-Hosted only

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: target-details
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ManualChange

Filter target platforms by manual change configuration

Minimum required version 11.4
Filter target platforms by manual change configuration

Minimum required version 11.4

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ManualReconcile

Filter target platforms by manual reconciliation configuration

Minimum required version 11.4
Filter target platforms by manual reconciliation configuration

Minimum required version 11.4

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ManualVerify

Filter target platforms by manual verification configuration

Minimum required version 11.4
Filter target platforms by manual verification configuration

Minimum required version 11.4

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PeriodicChange

Filter target platforms by periodic change configuration

Minimum required version 11.4
Filter target platforms by periodic change configuration

Minimum required version 11.4

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PeriodicVerify

Filter target platforms by periodic verification configuration

Minimum required version 11.4
Filter target platforms by periodic verification configuration

Minimum required version 11.4

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PlatformID

The unique ID/Name of the platform.

Minimum required version 9.10
The unique ID/Name of the platform.

Minimum required version 9.10

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Name
ParameterSets:
- Name: platform-details
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -RotationalGroup

Specify to return details of rotational group platforms

Minimum required version 11.4
Specify to return details of rotational group platforms

Minimum required version 11.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: rotationalGroups
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Scope

Limits the response to a specific section of the target platform's settings.
If omitted, the response includes all sections.

Supports tab completion; valid values depend on the connected environment/version.

Minimum required version 15.2, Self-Hosted only
Limits the response to a specific section of the target platform's settings.
If omitted, the response includes all sections.

Supports tab completion; valid values depend on the connected environment/version.

Minimum required version 15.2, Self-Hosted only

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: target-details
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Search

Filter platform by search pattern

Minimum required version 11.1
Filter platform by search pattern

Minimum required version 11.1

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: dependents
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: rotationalGroups
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: groups
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SystemType

Filter target platforms for specific system type

Minimum required version 11.4
Filter target platforms for specific system type

Minimum required version 11.4

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: targets
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
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

### System.Boolean

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk version 9.10

CyberArk version 11.1 required for Active, PlatformType & Search parameters.

CyberArk version 11.4 required for extended filters for target platforms, and requests for dependent, group & rotational group platforms

CyberArk version 15.2 (Self-Hosted only) required for ID & Scope parameters

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASPlatform](https://pspas.pspete.dev/commands/Get-PASPlatform)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetPlatformDetails.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/GetPlatformDetails.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-target-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-target-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-dependent-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-dependent-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-group-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-group-platforms.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-rotational-group-platforms.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/rest-api-get-rotational-group-platforms.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-get-target-platform-settings.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-get-target-platform-settings.htm)

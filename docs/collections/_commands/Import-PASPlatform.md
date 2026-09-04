---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Import-PASPlatform
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Import-PASPlatform
---

# Import-PASPlatform

## SYNOPSIS

Import a new platform

## SYNTAX

### Import

```
Import-PASPlatform -ImportFile <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### SideBySide

```
Import-PASPlatform -PlatformId <String> -PlatformName <String> [-Description <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Update

```
Import-PASPlatform -PlatformId <string> -Force [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Import a new CPM platform.

## EXAMPLES

### EXAMPLE 1

```
Import-PASPlatform -ImportFile CustomApp.zip
```

Imports CustomApp.zip Platform package

### EXAMPLE 2

```
Import-PASPlatform -PlatformId CustomAppV2 -PlatformName CustomApp-V2 -Description "Platform for Custom App Version 2"
```

Imports Platform side by side with existing Platform

### EXAMPLE 3

```
Import-PASPlatform -PlatformId CustomApp -Force
```

Updates existing Platform with new package

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

### -Description

A description value for the platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SideBySide
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Force

Specify to force update of an existing platform, replacing it with the imported platform

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Update
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ImportFile

The zip file that contains the platform.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Import
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PlatformId

Set a PlatformId for the imported platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SideBySide
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Update
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -PlatformName

Set a name for the imported platform

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: SideBySide
  Position: Named
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

Minimum CyberArk version 10.2

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Import-PASPlatform](https://pspas.pspete.dev/commands/Import-PASPlatform)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ImportPlatform.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ImportPlatform.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/updateplatformwithstoredplatform.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/updateplatformwithstoredplatform.htm)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/importstoredplatformpatch.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/importstoredplatformpatch.htm)

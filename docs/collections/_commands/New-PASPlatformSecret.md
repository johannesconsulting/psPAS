---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/New-PASPlatformSecret
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: New-PASPlatformSecret
---

# New-PASPlatformSecret

## SYNOPSIS

Generates a secret for a platform.

## SYNTAX

### Default (Default)

```
New-PASPlatformSecret [-Platformid] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
New-PASPlatformSecret [-Platformid] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Generates a new secret for a specific platform.

Requires CyberArk Self-Hosted version 15.2 or higher.

## EXAMPLES

### Example 1

```powershell
New-PASPlatformSecret -Platformid SomePlatform
```

Generates a secret for the platform with id SomePlatform.

### Example 2

```powershell
New-PASPlatformSecret -Platformid WinDomain -WhatIf
```

Shows what would happen if a new secret was generated for the "WinDomain" platform, without actually generating it.

### Example 3

```powershell
Get-PASPlatform -Active $true | New-PASPlatformSecret
```

Generates a new secret for every currently active platform, with the platform id supplied via the pipeline.

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

### -Platformid

The unique id of the platform to generate a secret for.

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

## OUTPUTS

### System.Object

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/New-PASPlatformSecret](https://pspas.pspete.dev/commands/New-PASPlatformSecret)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/generate%20secret%20for%20platform.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/generate%20secret%20for%20platform.htm)

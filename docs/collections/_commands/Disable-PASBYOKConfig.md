---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Disable-PASBYOKConfig
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Disable-PASBYOKConfig
---

# Disable-PASBYOKConfig

## SYNOPSIS

Disables BYOK for the Privilege Cloud environment.

## SYNTAX

### Default (Default)

```
Disable-PASBYOKConfig [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Disable-PASBYOKConfig [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Stops data encryption within CyberArk using your AWS key, switching back to the CyberArk-managed encryption key. Deactivates BYOK, resetting the system's encryption/decryption mechanisms to use the CyberArk key.

This takes about 15 minutes to complete. During this time, the BYOK status indicates the key is being replaced and no BYOK-related action can be performed; system functionality pauses temporarily and resumes shortly after. Do not modify or move the encryption key while this is in progress.

Requires one of the following roles:
- System Administrator (Identity Administration)
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Disable-PASBYOKConfig
```

Disables BYOK encryption.

### EXAMPLE 2

```powershell
Disable-PASBYOKConfig -WhatIf
```

Shows what would happen if BYOK encryption was disabled, without actually disabling it.

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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Disable-PASBYOKConfig](https://pspas.pspete.dev/commands/Disable-PASBYOKConfig)
- [https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-disable.htm](https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-disable.htm)

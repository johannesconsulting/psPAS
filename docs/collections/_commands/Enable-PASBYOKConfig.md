---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Enable-PASBYOKConfig
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Enable-PASBYOKConfig
---

# Enable-PASBYOKConfig

## SYNOPSIS

Enables BYOK for the Privilege Cloud environment.

## SYNTAX

### Default (Default)

```
Enable-PASBYOKConfig [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Enable-PASBYOKConfig [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Starts data encryption within CyberArk using your previously configured KMS key. Activates BYOK, resetting the system's encryption/decryption mechanisms to use your key.

This takes about 20 minutes to complete. During this time, the BYOK status indicates the key is being replaced, and no BYOK-related action can be performed except Get-PASBYOKConfig. Do not modify or move the encryption key while this is in progress. Run Get-PASBYOKConfig afterwards to confirm the status is 'BYOK ON'.

When using BYOK, you are solely responsible for safeguarding the encryption key. If CyberArk loses access to your key (deletion, loss, or alteration), your encrypted data cannot be recovered - CyberArk does not retain a copy of the key or any alternate means of accessing the data.

Requires one of the following roles:
- System Administrator (Identity Administration)
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Enable-PASBYOKConfig
```

Enables BYOK encryption.

### EXAMPLE 2

```powershell
Enable-PASBYOKConfig -WhatIf
```

Shows what would happen if BYOK encryption was enabled, without actually enabling it.

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

- [https://pspas.pspete.dev/commands/Enable-PASBYOKConfig](https://pspas.pspete.dev/commands/Enable-PASBYOKConfig)
- [https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-enable.htm](https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-enable.htm)

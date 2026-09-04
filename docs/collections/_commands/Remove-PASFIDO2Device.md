---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASFIDO2Device
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASFIDO2Device
---

# Remove-PASFIDO2Device

## SYNOPSIS

Removes a FIDO2 device from a user's authentication methods.

## SYNTAX

### Default (Default)

```
Remove-PASFIDO2Device -id <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### OwnDevice

```
Remove-PASFIDO2Device -id <string> [-OwnDevice] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes a FIDO2 device from either a user's authentication methods or from the current user's own authentication methods.

Requires CyberArk version 14.6 or later.

## EXAMPLES

### Example 1

```powershell
Remove-PASFIDO2Device -id "device123"
```

Removes the FIDO2 device with ID "device123" from a user's registered authentication methods.
This requires administrative privileges.

### Example 2

```powershell
Remove-PASFIDO2Device -id "device123" -OwnDevice
```

Removes the FIDO2 device with ID "device123" from the current user's own registered
authentication methods. This allows users to self-manage their FIDO2 devices.

### Example 3

```powershell
Remove-PASFIDO2Device -id "device456" -WhatIf
```

Shows what would happen if the FIDO2 device with ID "device456" was removed from a user's
registered authentication methods, without making any changes.

### Example 4

```powershell
[PSCustomObject]@{id = "device789"} | Remove-PASFIDO2Device -OwnDevice
```

Removes the FIDO2 device with ID "device789" from the current user's own registered
authentication methods, using pipeline input.

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

### -id

The unique identifier of the FIDO2 device to be removed from a user's authentication methods.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: OwnDevice
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Default
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OwnDevice

When specified, removes the FIDO2 device from the current user's own authentication methods.
Without this parameter, the device is removed from the user that it belongs do in their authentication methods.
When specified, removes the FIDO2 device from the current user's own authentication methods.
Without this parameter, the device is removed from the user that it belongs do in their authentication methods.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: OwnDevice
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

- [https://pspas.pspete.dev/commands/Remove-PASFIDO2Device](https://pspas.pspete.dev/commands/Remove-PASFIDO2Device)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/fido2-remove.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/fido2-remove.htm)
- [[https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/fido2-remove.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/webservices/fido2-selfremove.htm)

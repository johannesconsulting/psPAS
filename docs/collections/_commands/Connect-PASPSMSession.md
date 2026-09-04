---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Connect-PASPSMSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Connect-PASPSMSession
---

# Connect-PASPSMSession

## SYNOPSIS

Connect to Live PSM Sessions

## SYNTAX

### Default (Default)

```
Connect-PASPSMSession [-SessionId] <String> [-ConnectionMethod] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Connect-PASPSMSession [-SessionId] <string> [-ConnectionMethod] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns connection data necessary to monitor an active PSM session.

## EXAMPLES

### EXAMPLE 1

```
Connect-PASPSMSession -SessionId $SessionUUID -ConnectionMethod RDP
```

Returns parameters to connect to Live PSM Session via RDP.

### EXAMPLE 2

```
Connect-PASPSMSession -SessionId $SessionUUID -ConnectionMethod PSMGW
```

Returns parameters to connect to Live PSM Session via HTML5 GW.

### EXAMPLE 3

```
[pscustomobject]@{SessionId = $SessionUUID; ConnectionMethod = "RDP"} | Connect-PASPSMSession
```

Returns parameters to connect to Live PSM Session via RDP, using pipeline input.

### EXAMPLE 4

```
Get-PASPSMSession -liveSessionId $SessionUUID | Select-Object @{N = "SessionId"; E = { $_.liveSessionId } } | Connect-PASPSMSession -ConnectionMethod PSMGW
```

Gets the active PSM Session with the given ID, and returns parameters to connect to it via HTML5 GW.

## PARAMETERS

### -ConnectionMethod

The expected parameters to be returned, either RDP or PSMGW.

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

### -SessionId

The unique ID of the PSM Live Session.

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

Minimum CyberArk Version 10.5

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Connect-PASPSMSession](https://pspas.pspete.dev/commands/Connect-PASPSMSession)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/PSM%20-%20Monitor%20Sessions.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/PSM%20-%20Monitor%20Sessions.htm)

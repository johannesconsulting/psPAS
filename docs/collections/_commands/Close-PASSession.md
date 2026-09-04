---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Close-PASSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Close-PASSession
---

# Close-PASSession

## SYNOPSIS

Logoff from CyberArk Vault.

## SYNTAX

### Gen2 (Default)

```
Close-PASSession [<CommonParameters>]
```

### Gen1

```
Close-PASSession [-UseGen1API] [<CommonParameters>]
```

### shared

```
Close-PASSession [-SharedAuthentication] [<CommonParameters>]
```

### saml

```
Close-PASSession [-SAMLAuthentication] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Performs Logoff and removes the Vault session.

Shared authentication is supported in Privilege Cloud

## EXAMPLES

### EXAMPLE 1

```
Close-PASSession
```

Logs off from the session related to the authorisation token.

### EXAMPLE 2

```
Close-PASSession -SAMLAuthentication
```

Logs off from the session related to the authorisation token using the SAML Authentication API endpoint.

### EXAMPLE 3

```
Close-PASSession -SharedAuthentication
```

Logs off from the session related to the authorisation token using the Shared Authentication API endpoint.

### EXAMPLE 4

```
Close-PASSession -UseGen1API
```

Logs off from the session related to the authorisation token using the Gen1 API endpoint.

## PARAMETERS

### -SAMLAuthentication

Specify the SAMLAuthentication switch to logoff from a session authenticated to with SAML

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: saml
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SharedAuthentication

Specify the SharedAuthentication switch to logoff from a shared authentication session

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: shared
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Specify  to send the logoff request via the Gen1 API endpoint.

Should be specified for versions earlier than 10.4
Specify  to send the logoff request via the Gen1 API endpoint.

Should be specified for versions earlier than 10.4

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases:
- UseClassicAPI
ParameterSets:
- Name: Gen1
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Close-PASSession](https://pspas.pspete.dev/commands/Close-PASSession)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/CyberArk%20Authentication%20-%20Logoff_v10.htm#CyberArkLDAPRadiusWindows](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/CyberArk%20Authentication%20-%20Logoff_v10.htm#CyberArkLDAPRadiusWindows)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Shared%20Logon%20Authentication%20-%20Logoff.htm#Sharedlogonauthenticationlogoff](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Shared%20Logon%20Authentication%20-%20Logoff.htm#Sharedlogonauthenticationlogoff)

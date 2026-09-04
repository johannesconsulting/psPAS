---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Use-PASSession
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Use-PASSession
---

# Use-PASSession

## SYNOPSIS

Sets module scope variables allowing saved session information to be used for future requests.

## SYNTAX

### Default (Default)

```
Use-PASSession [-Session] <Object> [<CommonParameters>]
```

### __AllParameterSets

```
Use-PASSession [-Session] <Session> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Use session data (BaseURI, ExternalVersion, WebSession (containing Authorization Header)) for future requests.

psPAS uses variables in the Module scope to provide required values to all module functions, use this function to
set the required values in the module scope, using session information returned from \`Get-PASSession\`.

## EXAMPLES

### EXAMPLE 1

```
Use Saved Session Data for future requests
```

Use-PASSession -Session $Session

### EXAMPLE 2

```
Save current session, switch to using different session details, switch back to original session.
```

$CurrentSession = Get-PASSession

Use-PASSession -Session $OtherSession
...
Use-PASSession -Session $CurrentSession

### EXAMPLE 3

```
Pass a session object along the pipeline to Use-PASSession.
```

Get-PASSession | Use-PASSession

### EXAMPLE 4

```
Restore a session saved to disk earlier, for use in a new PowerShell process.
```

$Session = Import-Clixml -Path .\CyberArkSession.xml
Use-PASSession -Session $Session

## PARAMETERS

### -Session

An object containing psPAS session data, as returned from Get-PASSession

```yaml
Type: System.Object
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: true
  ValueFromPipeline: true
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

### System.Object

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Use-PASSession](https://pspas.pspete.dev/commands/Use-PASSession)
- [https://pspas.pspete.dev/docs/api-sessions/](https://pspas.pspete.dev/docs/api-sessions/)

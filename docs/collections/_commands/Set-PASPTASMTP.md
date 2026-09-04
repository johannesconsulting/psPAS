---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASPTASMTP
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASPTASMTP
---

# Set-PASPTASMTP

## SYNOPSIS

Sets an SMTP configuration to PTA

## SYNTAX

### Default (Default)

```
Set-PASPTASMTP [-host] <String> [-protocol] <String> [-port] <Int32> [-sender] <String>
 [-recipients] <String[]> [[-accountId] <String>] [[-CertificateFile] <String>]
 [-AlertToEmailScoreThreshold] <Int32> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Set-PASPTASMTP [-host] <string> [-protocol] <string> [-port] <int> [-sender] <string>
 [-recipients] <string[]> [[-accountId] <string>] [[-CertificateFile] <string>]
 [-AlertToEmailScoreThreshold] <int> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Configure PTA SMTP settings

API is not documented, so this help file may not be 100% accurate

## EXAMPLES

### Example 1

```powershell
Set-PASPTASMTP -host smtp.domain.com -protocol TCP -port 25 -sender 'PTA@domain.com' `
 -recipients 'security_team@domain.com' -AlertToEmailScoreThreshold 70
```

Configures PTA SMTP settings

### Example 2

```powershell
Set-PASPTASMTP -host smtp.cyberark.local -protocol NONE -port 25 -sender 'pta-alerts@cyberark.local' -recipients 'soc-team@cyberark.local' -AlertToEmailScoreThreshold 80
```

Configures PTA to send alert emails for events scoring 80 or higher via an unauthenticated, unencrypted SMTP relay

### Example 3

```powershell
Set-PASPTASMTP -host smtp.cyberark.local -protocol STARTTLS -port 587 -sender 'pta-alerts@cyberark.local' -recipients 'soc-team@cyberark.local','ciso@cyberark.local' -accountId 34_5 -CertificateFile C:\Certs\smtp.cer -AlertToEmailScoreThreshold 60
```

Configures PTA SMTP settings to use STARTTLS with the specified certificate, authenticating using the vaulted account 34_5, and sends alert emails to two recipients for events scoring 60 or higher

### Example 4

```powershell
Set-PASPTASMTP -host smtp.cyberark.local -protocol SSL -port 465 -sender 'pta-alerts@cyberark.local' -recipients 'soc-team@cyberark.local' -CertificateFile C:\Certs\smtp.cer -AlertToEmailScoreThreshold 75 -WhatIf
```

Shows what would happen if the PTA SMTP configuration were updated to use SSL on port 465, without making the change

## PARAMETERS

### -accountId

Account to use for SMTP authentication

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AlertToEmailScoreThreshold

PTA Alert Score threshold for email alerts

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -CertificateFile

Certificate to use for SMTP authentication

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

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

### -host

The SMTP host

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

### -port

The port for the SMTP communication

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -protocol

The protocol for SMTP integration

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

### -recipients

The recipient address

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -sender

The sender address

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
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

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASPTASMTP](https://pspas.pspete.dev/commands/Set-PASPTASMTP)

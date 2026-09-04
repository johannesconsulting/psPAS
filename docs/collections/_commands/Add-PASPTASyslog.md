---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPTASyslog
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPTASyslog
---

# Add-PASPTASyslog

## SYNOPSIS

Add a SYSLOG configuration to PTA

## SYNTAX

### Default (Default)

```
Add-PASPTASyslog [-siem] <String> [-format] <String> [-host] <String> [-port] <Int32>
 [-protocol] <String> [[-CertificateFile] <String>] [-syslogType] <String>
 [-tcpOctetCounting] <Boolean> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPTASyslog [-siem] <string> [-format] <string> [-host] <string> [-port] <int>
 [-protocol] <string> [[-CertificateFile] <string>] [-syslogType] <string>
 [-tcpOctetCounting] <bool> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Add a new SYSLOG configuration to PTA

This API is not officially documented, so this help file may not help 100%

## EXAMPLES

### Example 1

```powershell
Add-PASPTASyslog -siem SomeSIEM -format CEF -host SOMEHOST.domain.com -port 514 -protocol UDP -syslogType SomeType -tcpOctetCounting $false
```

Adds the specified SYSLOG configuration to PTA

### Example 2

```powershell
Add-PASPTASyslog -siem 'CorpSIEM' -format LEEF -host syslog.cyberark.local -port 6514 -protocol TCP -syslogType RFC5424 -tcpOctetCounting $true
```

Adds a LEEF-formatted SYSLOG configuration named "CorpSIEM" that sends events to syslog.cyberark.local over TCP on port 6514, using RFC5424 framing with TCP octet-counting enabled

### Example 3

```powershell
Add-PASPTASyslog -siem 'SecureSIEM' -format CEF -host siem.cyberark.local -port 6514 -protocol TLS -CertificateFile C:\Certs\siem.cer -syslogType RFC3164 -tcpOctetCounting $false
```

Adds a SYSLOG configuration that connects to siem.cyberark.local over TLS on port 6514, presenting the specified certificate file for the connection

### Example 4

```powershell
[PSCustomObject]@{siem='RemoteSIEM'; format='CEF'; host='192.168.1.10'; port=514; protocol='UDP'; syslogType='SEMI_RFC5424'; tcpOctetCounting=$false} | Add-PASPTASyslog
```

Adds a SYSLOG configuration using property values supplied via the pipeline

## PARAMETERS

### -CertificateFile

The certificate file for SYSLOG connectivity

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

### -format

CEF or LEEF format

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

### -host

The SYSLOG host

```yaml
Type: System.String
DefaultValue: None
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

### -port

The SYSLOG port

```yaml
Type: System.Int32
DefaultValue: 0
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

### -protocol

The SYSLOG protocol

```yaml
Type: System.String
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

### -siem

A name for the SIEM configuration

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- Name
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

### -syslogType

The SYSLOG type

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -tcpOctetCounting

Whether to set TCP Octet Counting

```yaml
Type: System.Boolean
DefaultValue: False
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

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPTASyslog](https://pspas.pspete.dev/commands/Add-PASPTASyslog)

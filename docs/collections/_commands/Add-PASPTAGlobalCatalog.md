---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPTAGlobalCatalog
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPTAGlobalCatalog
---

# Add-PASPTAGlobalCatalog

## SYNOPSIS

Adds Global Catalog connectivity details to the PTA.

To run this method, you must be a member of the Vault Admins or Security Admins group.

## SYNTAX

### Default (Default)

```
Add-PASPTAGlobalCatalog [[-ldap_certificate] <String>] [-ldap_server] <String> [[-ssl] <Boolean>]
 [-ldap_port] <Int32> [-upn] <String> [-ldapPassword] <SecureString> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPTAGlobalCatalog [[-ldap_certificate] <string>] [-ldap_server] <string> [[-ssl] <bool>]
 [-ldap_port] <int> [-upn] <string> [-ldapPassword] <securestring> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds Global Catalog connectivity details to the PTA Administration to broaden and increase the accuracy of Security Events detections.

Requires membership of the Vault Admins or Security Admins group.
Requires minimum version of 13.0.

## EXAMPLES

### EXAMPLE 1

```powershell
Add-PASPTAGlobalCatalog -ldap_certificate $Base64Cert -ldap_server GC.domain.com -ssl $true -ldap_port 3269 -upn user@domain.com -ldapPassword $SecureString
```

Adds Global Catalog to PTA configuration

### EXAMPLE 2

```powershell
Add-PASPTAGlobalCatalog -ldap_server gc2.cyberark.local -ldap_port 3268 -ssl $false -upn svc_pta@cyberark.local -ldapPassword (ConvertTo-SecureString 'P@ssw0rd123!' -AsPlainText -Force)
```

Adds a Global Catalog connection using the default unencrypted LDAP port, without specifying a certificate

### EXAMPLE 3

```powershell
[PSCustomObject]@{
    ldap_server  = 'gc3.cyberark.local'
    ldap_port    = 3268
    ssl          = $false
    upn          = 'bind-account@cyberark.local'
    ldapPassword = (ConvertTo-SecureString 'P@ssw0rd123!' -AsPlainText -Force)
} | Add-PASPTAGlobalCatalog
```

Adds Global Catalog connectivity details using property values supplied via the pipeline

### EXAMPLE 4

```powershell
$GCParams = @{
    ldap_server      = 'gc.cyberark.local'
    ldap_port        = 3269
    ssl              = $true
    ldap_certificate = $Base64Cert
    upn              = 'bind-account@cyberark.local'
    ldapPassword     = (ConvertTo-SecureString $env:GC_BIND_PASSWORD -AsPlainText -Force)
}
Add-PASPTAGlobalCatalog @GCParams
```

Uses splatting to add Global Catalog connectivity details, sourcing the bind account password from an environment variable

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

### -ldap_certificate

Base-64 encoded X.509 SSL certificate of the Global Catalog server.
Must be specified if `ssl` parameter is specified as `true`.
Base-64 encoded X.509 SSL certificate of the Global Catalog server.
Must be specified if `ssl` parameter is specified as `true`.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ldap_port

The server port number of the Global Catalog. The default Global Catalog ports are 3268 (LDAP) and 3269 (LDAPS).
The server port number of the Global Catalog.
The default Global Catalog ports are 3268 (LDAP) and 3269 (LDAPS).

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

### -ldap_server

The Global Catalog server address in FQDN format.

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

### -ldapPassword

The credentials of the Active Directory bind user that will be used to connect and query the Global Catalog.

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ssl

Whether to use a secure connection when connecting to Global Catalog.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -upn

The User Principle Name of the Active Directory bind user that will be used to connect and query the Global Catalog.

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

### System.Boolean

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.Security.SecureString

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPTAGlobalCatalog](https://pspas.pspete.dev/commands/Add-PASPTAGlobalCatalog)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add-Global-Catalog.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add-Global-Catalog.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASApplicationAuthenticationMethod
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASApplicationAuthenticationMethod
---

# Add-PASApplicationAuthenticationMethod

## SYNOPSIS

Adds an authentication method to an application.

## SYNTAX

### machineAddress

```
Add-PASApplicationAuthenticationMethod -AppID <String> -machineAddress <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### osUser

```
Add-PASApplicationAuthenticationMethod -AppID <String> -osUser <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### hash

```
Add-PASApplicationAuthenticationMethod -AppID <String> -hash <String> [-Comment <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### certificateserialnumber

```
Add-PASApplicationAuthenticationMethod -AppID <String> -certificateserialnumber <String>
 [-Comment <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### certificateattr

```
Add-PASApplicationAuthenticationMethod -AppID <String> [-Subject <String[]>] [-Issuer <String[]>]
 [-SubjectAlternativeName <String[]>] [-Comment <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### path

```
Add-PASApplicationAuthenticationMethod -AppID <string> -path <string> [-IsFolder <bool>]
 [-AllowInternalScripts <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new authentication method to a specific application iin the vault.
The "Manage Users" permission is required to be held by the user running the function.

## EXAMPLES

### EXAMPLE 1

```
Add-PASApplicationAuthenticationMethod -AppID NewApp -machineAddress "AppServer1.domain.com"
```

Adds a Machine Address application authentication mechanism to NewApp

### EXAMPLE 2

```
Add-PASApplicationAuthenticationMethod -AppID NewApp -osUser "Domain\SomeUser"
```

Adds an osUSer application authentication mechanism to NewApp

### EXAMPLE 3

```
Add-PASApplicationAuthenticationMethod -AppID NewApp -path "SomePath"
```

Adds path application authentication mechanism to NewApp

### EXAMPLE 4

```
Add-PASApplicationAuthenticationMethod -AppID NewApp -certificateserialnumber 040000000000FA3DEFE9A9 -Comment "DEV Cert"
```

Adds certificateserialnumber application authentication mechanism to NewApp

### EXAMPLE 5

```
Add-PASApplicationAuthenticationMethod -AppID AppWebService -Subject "CN=application.company.com"
```

Adds Certificate Attribute authentication

### EXAMPLE 6

```
Add-PASApplicationAuthenticationMethod -AppID AppWebService -SubjectAlternativeName "DNS Name=application.service"
```

Adds Certificate Attribute authentication for certificate SAN attribute

### EXAMPLE 7

```
Add-PASApplicationAuthenticationMethod -AppID NewApp -hash B7EE0505FE0940FF16F0E3FEB79374F5A9BFCF52 -Comment "DEV Hash"
```

Adds a hash application authentication mechanism to NewApp

## PARAMETERS

### -AllowInternalScripts

Boolean value denoting if internal scripts are allowed.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: path
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AppID

The name of the application for which a new authentication method is being added.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: machineAddress
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: osUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: hash
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: certificateserialnumber
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: certificateattr
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: path
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -certificateserialnumber

Certificate Serial Number to configure as an authentication method

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: certificateserialnumber
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Comment

Note Property

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: hash
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: certificateserialnumber
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: certificateattr
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
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

### -hash

A file hash to configure as an authentication method

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: hash
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IsFolder

Boolean value denoting if path is a folder.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: path
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Issuer

The content of the issuer attribute

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: certificateattr
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -machineAddress

Address value to configure as an authentication method

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: machineAddress
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -osUser

An osUser to configure as an authentication method

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: osUser
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -path

The path to configure as an authentication method

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: path
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Subject

The content of the subject attribute.

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: certificateattr
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SubjectAlternativeName

The content of the subject alternative name attribute

Accepts attributes "DNS Name", "IP Address", "URI", "RFC822"
The content of the subject alternative name attribute

Accepts attributes "DNS Name", "IP Address", "URI", "RFC822"

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: certificateattr
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

### System.String[]

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASApplicationAuthenticationMethod](https://pspas.pspete.dev/commands/Add-PASApplicationAuthenticationMethod)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Authentication.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Authentication.htm)

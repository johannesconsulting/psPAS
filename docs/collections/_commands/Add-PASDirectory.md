---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASDirectory
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASDirectory
---

# Add-PASDirectory

## SYNOPSIS

Adds an LDAP directory to the Vault

## SYNTAX

### 10.4 (Default)

```
Add-PASDirectory -DirectoryType <string> -HostAddresses <string[]> -BindUsername <string>
 -BindPassword <securestring> -DomainName <string> -DomainBaseContext <string> [-Port <int>]
 [-SSLConnect <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### 10.7

```
Add-PASDirectory -DirectoryType <string> -BindUsername <string> -BindPassword <securestring>
 -DomainName <string> -DomainBaseContext <string> [-Port <int>] [-DCList <hashtable[]>]
 [-SSLConnect <bool>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds an LDAP directory to the Vault.

Membership of the Vault Admins group required.

Minimum required version 10.4

## EXAMPLES

### EXAMPLE 1

```
Add-PASDirectory -DirectoryType "MicrosoftADProfile.ini" -HostAddresses "192.168.60.1","192.168.60.100" -BindUsername "CABind" -BindPassword $pw -Port 389 -DomainName "DOMAIN.COM" -DomainBaseContext "DC=DOMAIN,DC=COM"
```

Adds the Domain.Com directory to the vault

### EXAMPLE 2

```
Add-PASDirectory -DirectoryType "MicrosoftADProfile.ini" -BindUsername "BindUser@domain.com" -BindPassword $($Creds.Password) -DomainName DOMAIN `

-DomainBaseContext "DC=domain,DC=com" -DCList @{"Name"="DC.domain.com";"Port"=636;"SSLConnect"=$true} -SSLConnect $true -Port 636
```

Adds the Domain.Com directory to the vault, configured for LDAPS.

Minimum required version 10.7

### EXAMPLE 3

```
$directory = [pscustomobject]@{
	DirectoryType     = "MicrosoftADProfile.ini"
	HostAddresses     = "192.168.60.1"
	BindUsername      = "CABind"
	BindPassword      = $(ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force)
	DomainName        = "DOMAIN.COM"
	DomainBaseContext = "DC=DOMAIN,DC=COM"
}
$directory | Add-PASDirectory
```

Adds the Domain.Com directory to the vault, using pipeline input.

### EXAMPLE 4

```
Add-PASDirectory -DirectoryType "MicrosoftADProfile.ini" -BindUsername "CABind" -BindPassword $pw -DomainName "DOMAIN.COM" -DomainBaseContext "DC=DOMAIN,DC=COM"
```

Adds the Domain.Com directory to the vault using only the parameters required for CyberArk version 10.7, without specifying a domain controller list.

Minimum required version 10.7

## PARAMETERS

### -BindPassword

A SecureString containing the password for the Bind User

```yaml
Type: System.Security.SecureString
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BindUsername

The username of the account used to bind to the directory

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
  Position: Named
  IsRequired: true
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

### -DCList

Array of hashtables containing LDAPDomainController information.

Minimum required version 10.7
Array of hashtables containing LDAPDomainController information.

Minimum required version 10.7

```yaml
Type: System.Collections.Hashtable[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DirectoryType

The name of the directory profile file that the Vault will use when working with the specified LDAP directory.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DomainBaseContext

The base context of the External Directory.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -DomainName

The address of the domain

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -HostAddresses

List of IP addresses of the host servers where the External Directories exist.

If the Vault will use an SSL connection to connect to the External Directory, this name must match the subject
that appears in the Directory certificate
List of IP addresses of the host servers where the External Directories exist.

If the Vault will use an SSL connection to connect to the External Directory, this name must match the subject that appears in the Directory certificate

```yaml
Type: System.String[]
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.4
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Port

The port that will be used to access the specified server.

The standard port for SSL LDAP connections is 636, and for non-SSL LDAP connections is 389
The port that will be used to access the specified server.

The standard port for SSL LDAP connections is 636, and for non-SSL LDAP connections is 389

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SSLConnect

Boolean value defining whether or not to connect to the external directory with SSL.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: 10.7
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: 10.4
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

### System.Security.SecureString

{{ Fill in the Description }}

### System.Int32

{{ Fill in the Description }}

### System.Collections.Hashtable[]

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASDirectory](https://pspas.pspete.dev/commands/Add-PASDirectory)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Create_Directory.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/LDAP_Create_Directory.htm)

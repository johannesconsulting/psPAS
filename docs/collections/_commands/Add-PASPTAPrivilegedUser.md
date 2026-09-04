---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPTAPrivilegedUser
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPTAPrivilegedUser
---

# Add-PASPTAPrivilegedUser

## SYNOPSIS

Adds an user to PrivilegedUsersList in PTA

## SYNTAX

### Default (Default)

```
Add-PASPTAPrivilegedUser [-platform] <String> [-user] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPTAPrivilegedUser [-platform] <string> [-user] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds an user to PrivilegedUsersList in PTA configuration

## EXAMPLES

### EXAMPLE 1

```powershell
Add-PASPTAPrivilegedUser -platform WINDOWS -user AdminUser
```

Adds AdminUser to PrivilegedUsersList in PTA

### EXAMPLE 2

```powershell
Add-PASPTAPrivilegedUser -platform UNIX -user root
```

Adds the UNIX root account to PrivilegedUsersList in PTA.

### EXAMPLE 3

```powershell
[PSCustomObject]@{platform = 'CLOUD_AWS'; user = 'Bob' } | Add-PASPTAPrivilegedUser
```

Adds Bob as a privileged user for the CLOUD_AWS platform, using pipeline input.

### EXAMPLE 4

```powershell
Add-PASPTAPrivilegedUser -platform APPLICATION -user "svc_.*" -WhatIf
```

Shows what would happen if a regex matching all svc_ prefixed application accounts was added to PrivilegedUsersList in PTA, without making the change.

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

### -platform

The platform of the privileged user (UNIX, WINDOWS, ORACLE, CLOUD_AWS, CLOUD_AZURE, APPLICATION)

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

### -user

A privileged user or a regex for the privileged users

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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASPTAPrivilegedUser](https://pspas.pspete.dev/commands/Add-PASPTAPrivilegedUser)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/UpdateAdministration.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/UpdateSecurity.htm)

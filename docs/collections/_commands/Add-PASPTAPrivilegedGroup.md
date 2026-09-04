---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASPTAPrivilegedGroup
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASPTAPrivilegedGroup
---

# Add-PASPTAPrivilegedGroup

## SYNOPSIS

Adds an AD group to PrivilegedDomainGroupsList in PTA

## SYNTAX

### Default (Default)

```
Add-PASPTAPrivilegedGroup [-domain] <String> [-group] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASPTAPrivilegedGroup [-domain] <string> [-group] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds an AD group to PrivilegedDomainGroupsList in PTA configuration

## EXAMPLES

### EXAMPLE 1

```powershell
Add-PASPTAPrivilegedGroup -domain SomeDomain.com -group SomeGroup
```

Adds SomeGroup as to PrivilegedDomainGroupsList in PTA

### EXAMPLE 2

```powershell
[PSCustomObject]@{domain = 'cyberark.local'; group = 'Domain Admins' } | Add-PASPTAPrivilegedGroup
```

Adds the Domain Admins group from the cyberark.local domain to PrivilegedDomainGroupsList in PTA, using pipeline input.

### EXAMPLE 3

```powershell
Add-PASPTAPrivilegedGroup -domain cyberark.local -group "Backup Operators" -WhatIf
```

Shows what would happen if the Backup Operators group from the cyberark.local domain was added to PrivilegedDomainGroupsList in PTA, without making the change.

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

### -domain

A domain name in an FQDN format, such as domain.com

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

### -group

A group name defined as privileged

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

- [https://pspas.pspete.dev/commands/Add-PASPTAPrivilegedGroup](https://pspas.pspete.dev/commands/Add-PASPTAPrivilegedGroup)
- [https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/UpdateAdministration.htm](https://docs.cyberark.com/PAS/Latest/en/Content/WebServices/UpdateSecurity.htm)

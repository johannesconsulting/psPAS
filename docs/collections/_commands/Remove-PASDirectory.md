---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Remove-PASDirectory
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Remove-PASDirectory
---

# Remove-PASDirectory

## SYNOPSIS

Removes an LDAP directory configured in the Vault

## SYNTAX

### Default (Default)

```
Remove-PASDirectory [-id] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Remove-PASDirectory [-id] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Removes an LDAP directory configuration from the vault.

Membership of the Vault Admins group required.

## EXAMPLES

### EXAMPLE 1

```
Remove-PASDirectory -id LDAPDirectory
```

Removes LDAP directory configured in the Vault

### EXAMPLE 2

```
Remove-PASDirectory -DomainName cyberark.local
```

Removes the LDAP directory named "cyberark.local" from the Vault, using the DomainName alias for the id parameter.

### EXAMPLE 3

```
Get-PASDirectory -id cyberark.local | Remove-PASDirectory
```

Retrieves the "cyberark.local" directory and removes it via the pipeline.

### EXAMPLE 4

```
Remove-PASDirectory -id cyberark.local -WhatIf
```

Shows what would happen if the LDAP directory was removed, without actually removing it.

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

### -id

The ID or Name of the directory to return information on.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases:
- DomainName
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

- [https://pspas.pspete.dev/commands/Remove-PASDirectory](https://pspas.pspete.dev/commands/Remove-PASDirectory)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/DeleteDirectory.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/DeleteDirectory.htm)

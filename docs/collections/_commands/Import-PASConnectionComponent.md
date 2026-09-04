---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Import-PASConnectionComponent
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Import-PASConnectionComponent
---

# Import-PASConnectionComponent

## SYNOPSIS

Import a new connection component.

## SYNTAX

### Default (Default)

```
Import-PASConnectionComponent [-ImportFile] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Import-PASConnectionComponent [-ImportFile] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Allows administrators to import a new connection component, such as those available to download from the
CyberArk Marketplace.

## EXAMPLES

### EXAMPLE 1

```
Import-PASConnectionComponent -ImportFile ConnectionComponent.zip
```

Imports ConnectionComponent.zip Connection Component

### EXAMPLE 2

```
Get-ChildItem -Path C:\ConnectionComponents -Filter *.zip | ForEach-Object { Import-PASConnectionComponent -ImportFile $_.FullName }
```

Imports every connection component zip file found in the C:\ConnectionComponents folder.

### EXAMPLE 3

```
Import-PASConnectionComponent -ImportFile ConnectionComponent.zip -WhatIf
```

Shows what would happen if the connection component was imported, without actually importing it.

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

### -ImportFile

The zip file that contains the connection component.

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

Minimum CyberArk version 10.3

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Import-PASConnectionComponent](https://pspas.pspete.dev/commands/Import-PASConnectionComponent)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ImportConnComponent.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/ImportConnComponent.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Import-PASTicketingSystem
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Import-PASTicketingSystem
---

# Import-PASTicketingSystem

## SYNOPSIS

Imports a ticketing system into Privilege Cloud.

## SYNTAX

### Default (Default)

```
Import-PASTicketingSystem [-ImportFile] <String> [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Import-PASTicketingSystem [-ImportFile] <string> [-WhatIf] [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Imports a custom ticketing system that is not supported by default.

## EXAMPLES

### Example 1

```powershell
Import-PASTicketingSystem -ImportFile C:\CustomTicketingSystem.zip
```

Imports the custom ticketing system defined in the CustomTicketingSystem.zip package

### Example 2

```powershell
Import-PASTicketingSystem -ImportFile C:\CustomTicketingSystem.zip -WhatIf
```

Shows what would happen if the custom ticketing system package were imported, without actually importing it.

### Example 3

```powershell
Get-ChildItem -Path C:\TicketingSystems -Filter *.zip | ForEach-Object { Import-PASTicketingSystem -ImportFile $_.FullName -Confirm:$false }
```

Imports every custom ticketing system zip package found in the C:\TicketingSystems folder, suppressing the confirmation prompt for each.

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

A zip file that contains .dll and .xml files to configure the custom ticketing system.

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

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Import-PASTicketingSystem](https://pspas.pspete.dev/commands/Import-PASTicketingSystem)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/privcloud-ticketing-systems-custom-import.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/privcloud-ticketing-systems-custom-import.htm)

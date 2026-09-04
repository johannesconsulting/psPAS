---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Export-PASTicketingSystemLog
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Export-PASTicketingSystemLog
---

# Export-PASTicketingSystemLog

## SYNOPSIS

Export ticketing system logs from Privilege Cloud

## SYNTAX

### Default (Default)

```
Export-PASTicketingSystemLog [[-days] <Int32>] [-path] <String> [-username <String>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Export-PASTicketingSystemLog [[-days] <int>] [[-username] <string>] [-path] <string> [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Export ticketing system logs collected from the Privilege Cloud Portal, for a specific user, recent period, or both.

## EXAMPLES

### Example 1

```powershell
Export-PASTicketingSystemLog -days 5 -path C:\SomeDirectory
```

Export the logs from the last 5 days for the privilege cloud ticketing systems

### Example 2

```powershell
Export-PASTicketingSystemLog -days 1 -username TicketingUser -path C:\SomeDirectory
```

Export the logs from the previous day for the specified ticketing system user

### Example 3

```powershell
Export-PASTicketingSystemLog -days 7 -path C:\Logs -WhatIf
```

Shows what would happen when exporting logs for all users over the last 7 days, without performing the export

### Example 4

```powershell
Export-PASTicketingSystemLog -path C:\SomeDirectory
```

Exports logs for the previous 7 days (the default value of -days) covering all system users, since -username is not specified

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

### -days

The number of days to include log entries from, up to a maximum of 7 days

```yaml
Type: System.Int32
DefaultValue: 0
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

### -path

The path to save the exported logs to

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

### -username

The name of the user who requested the ticketing system.

If no user is defined, the log covers all system users.
The name of the user who requested the ticketing system.

If no user is defined, the log covers all system users.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 1
  IsRequired: false
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

### System.Int32

{{ Fill in the Description }}

### System.String

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Export-PASTicketingSystemLog](https://pspas.pspete.dev/commands/Export-PASTicketingSystemLog)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/privcloud-ticketing-systems-custom-export-logs.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/content/privilegecloudapis/privcloud-ticketing-systems-custom-export-logs.htm)

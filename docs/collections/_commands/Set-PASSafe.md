---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Set-PASSafe
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Set-PASSafe
---

# Set-PASSafe

## SYNOPSIS

Updates a safe in the Vault

## SYNTAX

### Gen2-NumberOfDaysRetention (Default)

```
Set-PASSafe -SafeName <string> [-NewSafeName <string>] [-Description <string>] [-location <string>]
 [-OLACEnabled <bool>] [-ManagingCPM <string>] [-NumberOfDaysRetention <int>] [-Quota <int>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen2-NumberOfVersionsRetention

```
Set-PASSafe -SafeName <string> [-NewSafeName <string>] [-Description <string>] [-location <string>]
 [-OLACEnabled <bool>] [-ManagingCPM <string>] [-NumberOfVersionsRetention <int>] [-Quota <int>]
 [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1-NumberOfVersionsRetention

```
Set-PASSafe -SafeName <string> -UseGen1API [-NewSafeName <string>] [-Description <string>]
 [-OLACEnabled <bool>] [-ManagingCPM <string>] [-NumberOfVersionsRetention <int>] [-WhatIf]
 [-Confirm] [<CommonParameters>]
```

### Gen1-NumberOfDaysRetention

```
Set-PASSafe -SafeName <string> -UseGen1API [-NewSafeName <string>] [-Description <string>]
 [-OLACEnabled <bool>] [-ManagingCPM <string>] [-NumberOfDaysRetention <int>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Updates a single safe in the Vault.
Manage Safe permission is required.

## EXAMPLES

### EXAMPLE 1

```
Set-PASSafe -SafeName SAFE -Description "New-Description" -NumberOfVersionsRetention 10
```

Updates description and version retention on SAFE using Gen2 API

Minimum required version 12.2

### EXAMPLE 2

```
Set-PASSafe -SafeName SAFE -Description "New-Description" -NumberOfDaysRetention 10 -UseGen1API
```

Updates description and number of days retention on SAFE using Gen1 API

### EXAMPLE 3

```
Set-PASSafe -SafeName SAFE -Quota 500
```

Updates the size quota (in MB) of SAFE

Minimum required version 15.2 (Self-Hosted)

### EXAMPLE 4

```
Set-PASSafe -SafeName SAFE -Description "New-Description" -NumberOfVersionsRetention 10 -UseGen1API
```

Updates description and version retention on SAFE using Gen1 API

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

### -Description

Updated Description for safe.

Max 100 characters.
Updated Description for safe.

Max 100 characters.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -location

The vault location to set for the safe

Minimum required version 12.2
The vault location to set for the safe

Minimum required version 12.2

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-NumberOfVersionsRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-NumberOfDaysRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ManagingCPM

The Name of the CPM user to manage the safe.

Specify "" to prevent CPM management.
The Name of the CPM user to manage the safe.

Specify "" to prevent CPM management.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NewSafeName

A name to rename the safe to
- Max Length 28 characters.
- Cannot start with a space.
- Cannot contain: '\','/',':','*','\<','\>','"','.' or '|'
A name to rename the safe to - Max Length 28 characters.

- Cannot start with a space.

- Cannot contain: '\','/',':','*','<','>','"','.' or '|'

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NumberOfDaysRetention

The number of days for which password versions are saved in the Safe.

- Minimum Value: 0
- Maximum Value: 3650
Specify either this parameter or NumberOfVersionsRetention
The number of days for which password versions are saved in the Safe.

- Minimum Value: 0

- Maximum Value: 3650

Specify either this parameter or NumberOfVersionsRetention

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-NumberOfDaysRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-NumberOfDaysRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NumberOfVersionsRetention

The number of retained versions of every password that is stored in the Safe.
- Max value = 999
Specify either this parameter or NumberOfDaysRetention.
The number of retained versions of every password that is stored in the Safe.
- Max value = 999 Specify either this parameter or NumberOfDaysRetention.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-NumberOfVersionsRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-NumberOfVersionsRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -OLACEnabled

Boolean value, dictating whether or not to enable Object Level Access Control on the safe.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
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

### -Quota

The size quota, in MB, allocated to the safe.

Requires CyberArk Self-Hosted version 15.2 or higher.
The size quota, in MB, allocated to the safe.

Requires CyberArk Self-Hosted version 15.2 or higher.

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-NumberOfVersionsRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2-NumberOfDaysRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SafeName

The name of the safe to update.
- Max Length 28 characters.
- Cannot start with a space.
- Cannot contain: '\','/',':','*','\<','\>','"','.' or '|'
The name of the safe to update.
- Max Length 28 characters.

- Cannot start with a space.

- Cannot contain: '\','/',':','*','<','>','"','.' or '|'

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 12.2
Specify to force usage the Gen1 API endpoint.

Should be specified for versions earlier than 12.2

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-NumberOfDaysRetention
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1-NumberOfVersionsRetention
  Position: Named
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

### System.Int32

{{ Fill in the Description }}

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Set-PASSafe](https://pspas.pspete.dev/commands/Set-PASSafe)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Update%20Safe.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Update%20Safe.htm)

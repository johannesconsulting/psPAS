---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASSafe
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASSafe
---

# Add-PASSafe

## SYNOPSIS

Adds a new safe to the Vault

## SYNTAX

### NumberOfVersionsRetention (Default)

```
Add-PASSafe -SafeName <string> -NumberOfVersionsRetention <int> [-Description <string>]
 [-location <string>] [-OLACEnabled <bool>] [-ManagingCPM <string>] [-AutoPurgeEnabled <bool>]
 [-Quota <int>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1-NumberOfVersionsRetention

```
Add-PASSafe -SafeName <string> -NumberOfVersionsRetention <int> -UseGen1API [-Description <string>]
 [-location <string>] [-OLACEnabled <bool>] [-ManagingCPM <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### NumberOfDaysRetention

```
Add-PASSafe -SafeName <string> -NumberOfDaysRetention <int> [-Description <string>]
 [-location <string>] [-OLACEnabled <bool>] [-ManagingCPM <string>] [-AutoPurgeEnabled <bool>]
 [-Quota <int>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### Gen1-NumberOfDaysRetention

```
Add-PASSafe -SafeName <string> -NumberOfDaysRetention <int> -UseGen1API [-Description <string>]
 [-location <string>] [-OLACEnabled <bool>] [-ManagingCPM <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new safe to the Vault.

The "Add Safes" permission is required in the vault.

Defaults to the Gen2 API which requires CyberArk version 12.0+.

For use against earlier versions the `-UseGen1API` switch must be specified to force use of the Gen1 API.

## EXAMPLES

### EXAMPLE 1

```
Add-PASSafe -SafeName Oracle -Description "Oracle Safe" -ManagingCPM PasswordManager -NumberOfVersionsRetention 7
```

Creates a new safe named Oracle with a 7 version retention.

Minimum required version 12.0

### EXAMPLE 2

```
Add-PASSafe -SafeName Dev_Team -Description "Dev Safe" -ManagingCPM DEV_CPM -NumberOfDaysRetention 7 -location "\Safes"
```

Creates a new safe named Dev_Team, assigned to CPM DEV_CPM, with a 7 day retention period, in the \Safes location.

Minimum required version 12.0

### EXAMPLE 3

```
Add-PASSafe -SafeName Oracle -Description "Oracle Safe" -ManagingCPM PasswordManager -NumberOfVersionsRetention 7 -UseGen1API
```

Creates a new safe named Oracle with a 7 version retention using the Gen1 API.

### EXAMPLE 4

```
Add-PASSafe -SafeName Dev_Team -Description "Dev Safe" -ManagingCPM DEV_CPM -NumberOfDaysRetention 7 -UseGen1API
```

Creates a new safe named Dev_Team, assigned to CPM DEV_CPM, with a 7 day retention period using the Gen1 API.

## PARAMETERS

### -AutoPurgeEnabled

Whether or not to automatically purge files after the end of the Object History Retention Period defined in the Safe properties.

Minimum required version 12.0
Whether or not to automatically purge files after the end of the Object History Retention Period defined in the Safe properties.

Minimum required version 12.0

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NumberOfDaysRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: NumberOfVersionsRetention
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

### -Description

Description of the new safe.

Max 100 characters.
Description of the new safe.

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

The location of the Safe in the Vault.

Minimum required version 12.0
The location of the Safe in the Vault.

Minimum required version 12.0

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

### -ManagingCPM

The Name of the CPM user to manage the safe.

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

Minimum Value: 1

Maximum Value 3650

Specify either this parameter or NumberOfVersionsRetention
The number of days for which password versions are saved in the Safe.

Minimum Value: 1

Maximum Value 3650

Specify either this parameter or NumberOfVersionsRetention

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NumberOfDaysRetention
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1-NumberOfDaysRetention
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -NumberOfVersionsRetention

The number of retained versions of every password that is stored in the Safe.

Minimum value = 0

Maximum value = 999

Specify either this parameter or NumberOfDaysRetention.
The number of retained versions of every password that is stored in the Safe.

Minimum value = 0

Maximum value = 999

Specify either this parameter or NumberOfDaysRetention.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NumberOfVersionsRetention
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
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Quota

The maximum size of the Safe in MB.

Minimum value = 1

Maximum value = 2000000000

Only applicable to Self-Hosted implementations.

Minimum required version 15.2
The maximum size of the Safe in MB.

Minimum value = 1

Maximum value = 2000000000

Only applicable to Self-Hosted implementations.

Minimum required version 15.2

```yaml
Type: System.Int32
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: NumberOfDaysRetention
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: NumberOfVersionsRetention
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

The name of the safe to create.

Max Length 28 characters.

Cannot start with a space.

Cannot contain: '\','/',':','*','\<','\>','"','.' or '|'
The name of the safe to create.

Max Length 28 characters.

Cannot start with a space.

Cannot contain: '\','/',':','*','<','>','"','.' or '|'

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

Force use of Gen1 API for request.

Should be specified for versions earlier than 12.0
Force use of Gen1 API for request.

Should be specified for versions earlier than 12.0

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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASSafe](https://pspas.pspete.dev/commands/Add-PASSafe)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Safe.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Safe.htm)

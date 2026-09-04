---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASApplication
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASApplication
---

# Add-PASApplication

## SYNOPSIS

Adds a new application to the Vault

## SYNTAX

### Default (Default)

```
Add-PASApplication [-AppID] <String> [[-Description] <String>] [-Location] <String>
 [[-AccessPermittedFrom] <Int32>] [[-AccessPermittedTo] <Int32>] [[-ExpirationDate] <DateTime>]
 [[-Disabled] <Boolean>] [[-BusinessOwnerFName] <String>] [[-BusinessOwnerLName] <String>]
 [[-BusinessOwnerEmail] <String>] [[-BusinessOwnerPhone] <String>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASApplication [-AppID] <string> [[-Description] <string>] [-Location] <string>
 [[-AccessPermittedFrom] <int>] [[-AccessPermittedTo] <int>] [[-ExpirationDate] <datetime>]
 [[-Disabled] <bool>] [[-BusinessOwnerFName] <string>] [[-BusinessOwnerLName] <string>]
 [[-BusinessOwnerEmail] <string>] [[-BusinessOwnerPhone] <string>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a new application to the Vault.

Manage Users permission is required.

## EXAMPLES

### EXAMPLE 1

```
Add-PASApplication -AppID NewApp -Description "A new application" -Location "\" `
-AccessPermittedFrom 9 -AccessPermittedTo 17 -BusinessOwnerEmail 'appowner@company.com'
```

Will add a new application called "NewApp", in the root location, accessible from 9am to 5pm

### EXAMPLE 2

```
Add-PASApplication -AppID FinanceApp -Location "\Applications\Finance" -ExpirationDate (Get-Date).AddYears(1) -Disabled $false -BusinessOwnerFName John -BusinessOwnerLName Smith -BusinessOwnerEmail 'john.smith@company.com' -BusinessOwnerPhone '555-0100'
```

Adds a new application called "FinanceApp" in the Finance vault location, with an expiration date one year from today and business owner contact details recorded against the application.

### EXAMPLE 3

```
Import-Csv .\NewApplications.csv | Add-PASApplication
```

Adds a new application for every row in NewApplications.csv, where the CSV column headers match the parameter names of Add-PASApplication (AppID, Location, Description, etc).

## PARAMETERS

### -AccessPermittedFrom

The start hour that access is permitted to the application.

Valid values are 0-23.
The start hour that access is permitted to the application.

Valid values are 0-23.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 3
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AccessPermittedTo

The end hour that access to the application is permitted.

Valid values are 0-23.
The end hour that access to the application is permitted.

Valid values are 0-23.

```yaml
Type: System.Int32
DefaultValue: 0
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 4
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -AppID

The application name.

Must be fewer than 128 characters.

Cannot include ampersand ("&") character.

Can include "@" character, but any searches for applications cannot include this character.
The application name.

Must be fewer than 128 characters.

Cannot include ampersand ("&") character.

Can include "@" character, but any searches for applications cannot include this character.

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

### -BusinessOwnerEmail

The email address of the business owner

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 9
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BusinessOwnerFName

The first name of the business owner.

Specify up to 29 characters.
The first name of the business owner.

Specify up to 29 characters.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 7
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BusinessOwnerLName

The last name of the business owner.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 8
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -BusinessOwnerPhone

The phone number of the business owner.

Specify up to 24 characters.
The phone number of the business owner.

Specify up to 24 characters.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 10
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

Description of the application, no longer than 99 characters.

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

### -Disabled

Boolean value, denoting if the application is disabled or not.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 6
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExpirationDate

The date when the application expires.

```yaml
Type: System.DateTime
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 5
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Location

The location of the application in the vault hierarchy.

Note: to insert a backslash in the location path, use a double backslash.
The location of the application in the vault hierarchy.

Note: to insert a backslash in the location path, use a double backslash.

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

### System.Int32

{{ Fill in the Description }}

### System.DateTime

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASApplication](https://pspas.pspete.dev/commands/Add-PASApplication)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Application.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Add%20Application.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASApplication
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASApplication
---

# Get-PASApplication

## SYNOPSIS

Returns details of applications in the Vault

## SYNTAX

### byQuery (Default)

```
Get-PASApplication [-AppID <string>] [-Location <string>] [-IncludeSublocations <bool>]
 [<CommonParameters>]
```

### byAppID

```
Get-PASApplication -AppID <String> [-ExactMatch] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns information on Applications from the Vault.

Results can be filtered by specifying additional parameters.

Applications can be found by name, or searched for.

Audit Users permission is required.

## EXAMPLES

### EXAMPLE 1

```
Get-PASApplication
```

Returns information on all defined applications

### EXAMPLE 2

```
Get-PASApplication NewApp -ExactMatch
```

Gets details of the application "NewApp"

### EXAMPLE 3

```
Get-PASApplication NewApp
```

Gets details of all application matching "NewApp"

## PARAMETERS

### -AppID

Application Name

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: byAppID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -ExactMatch

By Default, the function will search the vault.

All found applications (based on parameters supplied) will be returned.

When Specifying this parameter, the function will not search;
data for the supplied AppID will be returned.
By Default, the function will search the vault.

All found applications (based on parameters supplied) will be returned.

When Specifying this parameter, the function will not search; data for the supplied AppID will be returned.

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byAppID
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -IncludeSublocations

Will search be carried out in sublocations of specified location?

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -Location

Location of the application in the Vault hierarchy.

Default=\
Location of the application in the Vault hierarchy.

Default=\

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASApplication](https://pspas.pspete.dev/commands/Get-PASApplication)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20Applications.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20Applications.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20a%20Specific%20Application.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/List%20a%20Specific%20Application.htm)

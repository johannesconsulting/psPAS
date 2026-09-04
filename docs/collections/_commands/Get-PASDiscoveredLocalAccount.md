---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASDiscoveredLocalAccount
---

# Get-PASDiscoveredLocalAccount

## SYNOPSIS

List discovered unmanaged local Windows, macOS, and Linux accounts.

## SYNTAX

### byQuery (Default)

```
Get-PASDiscoveredLocalAccount [-search <string>] [-searchOnAllFields <bool>] [-type <string>]
 [-subtype <string>] [-isPrivileged <bool>] [-lastDiscoveryRulesStatus <string>]
 [-extendedDetails <bool>] [-sort <string>] [-limit <int>] [<CommonParameters>]
```

### byID

```
Get-PASDiscoveredLocalAccount -id <String> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Applies to the accounts that are discovered by the EPM scanning of endpoints, including loosely connected devices:
- Windows loosely connected devices
- Mac loosely connected devices
- Linux loosely connected devices

When querying (not retrieving a single account by id), results are automatically paginated: if the API response contains a `nextCursor` value, subsequent pages are retrieved and merged into the returned results.

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASDiscoveredLocalAccount
```

Get all discovered local accounts

### EXAMPLE 2

```powershell
Get-PASDiscoveredLocalAccount -id SomeID
```

Get specific discovered local account

### EXAMPLE 3

```powershell
Get-PASDiscoveredLocalAccount -type Windows -isPrivileged $true
```

Get discovered local accounts of type Windows that are marked as privileged

### EXAMPLE 4

```powershell
Get-PASDiscoveredLocalAccount -search admin -searchOnAllFields $true -sort "username desc" -limit 50
```

Search all discovered local accounts for "admin" across all fields, sorted by username in descending order, returning up to 50 results per page

## PARAMETERS

### -extendedDetails

Whether to retrieve extended details from the discovered account's activities.

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

### -id

The unique identifier of the discovered account.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byID
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -isPrivileged

Whether the account is privileged

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

### -lastDiscoveryRulesStatus

The last status of the discovery rule

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

### -limit

The maximum size of each page of search results

```yaml
Type: System.Int32
DefaultValue: 0
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

### -search

Search for the defined string in all identifier values of the discovered account.

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

### -searchOnAllFields

Whether the search is performed in customProperties values as well.

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

### -sort

Sort according to identifier properties or customProperties, followed by asc (default) or desc to control the sort direction.
asc: ascending (default)
desc: descending

Example: 'username desc'
Sort according to identifier properties or customProperties, followed by asc (default) or desc to control the sort direction.
asc: ascending (default) desc: descending

Example: 'username desc'

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

### -subtype

The subtype of the discovered local account

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

### -type

The type of the discovered local account

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

### System.Int32

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Get-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-GetAll.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-GetAll.htm)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Get.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Get.htm)

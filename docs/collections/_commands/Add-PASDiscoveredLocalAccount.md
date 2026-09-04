---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Add-PASDiscoveredLocalAccount
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Add-PASDiscoveredLocalAccount
---

# Add-PASDiscoveredLocalAccount

## SYNOPSIS

Add a specific account from the list of discovered local endpoint accounts to the Discovered Accounts list.

## SYNTAX

### Default (Default)

```
Add-PASDiscoveredLocalAccount [-type] <String> [-identifiers] <Hashtable>
 [[-isPrivileged] <Boolean>] [[-customProperties] <Hashtable>] [[-source] <String>]
 [-tags <String[]>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### __AllParameterSets

```
Add-PASDiscoveredLocalAccount [-type] <string> [-identifiers] <hashtable> [[-isPrivileged] <bool>]
 [[-customProperties] <hashtable>] [[-source] <string>] [[-tags] <string[]>] [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds a specific account from the list of discovered accounts for local endpoint Windows and MacOS accounts to the Discovered Accounts list.

Applies to the accounts that are discovered by the EPM scanning of endpoints, including loosely connected devices:
- Windows loosely connected devices
- Mac loosely connected devices
- Linux loosely connected devices

Requires one of the following roles:
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```
Add-PASDiscoveredLocalAccount -type windows -identifiers @{'username'='administrator'; 'address'='somemachine.pspete.dev'}
```

Adds the specified local account as a discovered local account.

### EXAMPLE 2

```
Add-PASDiscoveredLocalAccount -type mac -identifiers @{'username'='root'; 'address'='mac01.pspete.dev'} -isPrivileged $true -source EPM
```

Adds the specified local Mac account, flagged as privileged, attributing the discovery to the EPM source.

### EXAMPLE 3

```
Add-PASDiscoveredLocalAccount -type unix -identifiers @{'username'='oracle'; 'address'='unixsrv01.pspete.dev'} -customProperties @{'Department'='Finance'; 'Owner'='Bob'}
```

Adds the specified local Unix account, including additional custom properties.

### EXAMPLE 4

```
$Accounts = @(
    [pscustomobject]@{type = 'windows'; identifiers = @{'username' = 'svc-web'; 'address' = 'web01.pspete.dev'} }
    [pscustomobject]@{type = 'windows'; identifiers = @{'username' = 'svc-sql'; 'address' = 'sql01.pspete.dev'} }
)
$Accounts | Add-PASDiscoveredLocalAccount
```

Adds multiple discovered local accounts, piping objects with type and identifiers properties.

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

### -customProperties

List of additional account properties.

```yaml
Type: System.Collections.Hashtable
DefaultValue: None
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

### -identifiers

List of properties that define the uniqueness of the account.

```yaml
Type: System.Collections.Hashtable
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

### -isPrivileged

Whether the user is privileged on the target.

```yaml
Type: System.Boolean
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 2
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -source

The service which discovered the account.

```yaml
Type: System.String
DefaultValue: None
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

### -tags

List of tag(s) assigned to the discovered account by the scan definition.

```yaml
Type: System.String[]
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

### -type

The type of the account

Valid values: windows, mac, unix
The type of the account

Valid values: windows, mac, unix

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

### System.Collections.Hashtable

{{ Fill in the Description }}

### System.Boolean

{{ Fill in the Description }}

### System.String[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Add-PASDiscoveredLocalAccount](https://pspas.pspete.dev/commands/Add-PASDiscoveredLocalAccount)
- [https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Add.htm](https://docs.cyberark.com/privilege-cloud-shared-services/latest/en/Content/Privilege%20Cloud/PrivCloud-DiscoveredAccountsService-Add.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASSafe
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASSafe
---

# Get-PASSafe

## SYNOPSIS

Returns safe details from the vault.

## SYNTAX

### Gen2 (Default)

```
Get-PASSafe [-search <string>] [-sort <string>] [-sortDirection <string>] [-includeAccounts <bool>]
 [-extendedDetails <bool>] [-TimeoutSec <int>] [<CommonParameters>]
```

### Gen2-byName

```
Get-PASSafe -SafeName <string> [-includeAccounts <bool>] [-useCache <bool>] [-TimeoutSec <int>]
 [<CommonParameters>]
```

### Gen1-byName

```
Get-PASSafe -SafeName <string> -UseGen1API [-TimeoutSec <int>] [<CommonParameters>]
```

### Gen1-byQuery

```
Get-PASSafe [-query <string>] [-TimeoutSec <int>] [<CommonParameters>]
```

### Gen1-byAll

```
Get-PASSafe -FindAll -UseGen1API [-TimeoutSec <int>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Gets safe by SafeName, by search query string, or, by default will return all safes.
- Minimum required version for default operation using Gen2 API is 12.0.
- Minimum required version for operation using Gen2-byName ParameterSet is 12.2.
- For PAS versions earlier than 12.0, the Gen1 API parameters must be used.
- Gen1 API parameters are deprecated for versions higher than 12.3.

## EXAMPLES

### EXAMPLE 1

```
Get-PASSafe
```

Returns details of all safes.

Minimum required version 12.0.

### EXAMPLE 2

```
Get-PASSafe -search SAFE1 -extendedDetails $false
```

Returns names of safes matching pattern "Safe1"

Minimum required version 12.1

### EXAMPLE 3

```
Get-PASSafe -SafeName SAFE1
```

Returns details of "Safe1" using Gen2 API.

Minimum required version 12.2

### EXAMPLE 4

```
Get-PASSafe -query SAFE1
```

Returns details of safes matching query "Safe1" using Gen1 API.

Deprecated from version 12.2

### EXAMPLE 5

```
Get-PASSafe -FindAll -UseGen1API
```

Returns details of all safes using Gen1 API.

Deprecated from version 12.3

### EXAMPLE 6

```
Get-PASSafe -SafeName SAFE1 -UseGen1API
```

Returns details of "Safe1" using Gen1 API.

Deprecated from version 12.3

## PARAMETERS

### -extendedDetails

Whether or not to return all Safe details or only safeName as part of the response.

Minimum required version 12.1
Whether or not to return all Safe details or only safeName as part of the response.

Minimum required version 12.1

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -FindAll

Specify to find all safes using Gen1 API.

Should be specified for versions earlier than 12.0

Deprecated from version 12.3
Specify to find all safes using Gen1 API.

Should be specified for versions earlier than 12.0

Deprecated from version 12.3

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: False
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-byAll
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -includeAccounts

Whether or not to return accounts for each Safe as part of the response.

Minimum required version 12.0 (Default Gen2 Operation)

Minimum required version 12.2 (Gen2-byName Operation)
Whether or not to return accounts for each Safe as part of the response.

Minimum required version 12.0 (Default Gen2 Operation)

Minimum required version 12.2 (Gen2-byName Operation)

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-byName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -query

Query String for safe search in the vault using Gen1 API.

Should be specified for versions earlier than 12.0

Deprecated from version 12.3
Query String for safe search in the vault using Gen1 API.

Should be specified for versions earlier than 12.0

Deprecated from version 12.3

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-byQuery
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -SafeName

The name of a specific safe to get details of.

Gen2 API operation requires minimum version 12.2

When using Gen1 API in versions earlier than 12.0, must be specified with the `-UseGen1API` parameter.

Gen1 operation deprecated from version 12.3
The name of a specific safe to get details of.

Gen2 API operation requires minimum version 12.2

When using Gen1 API in versions earlier than 12.0, must be specified with the `-UseGen1API` parameter.

Gen1 operation deprecated from version 12.3

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-byName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
- Name: Gen1-byName
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -search

Searches according to the Safe name.

Minimum required version 12.0
Searches according to the Safe name.

Minimum required version 12.0

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
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

Sorts output according to the safeName or ManagingCPM properties.

Minimum required version 12.0
Sorts output according to the safeName or ManagingCPM properties.

Minimum required version 12.0

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -sortDirection

Sort according to the property specified for the sort parameter in ascending order (default) or descending order.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -TimeoutSec

See Invoke-WebRequest

Specify a timeout value in seconds
See Invoke-WebRequest

Specify a timeout value in seconds

```yaml
Type: System.Int32
DefaultValue: 0
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

### -useCache

Whether to retrieve from session or not.

```yaml
Type: System.Boolean
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen2-byName
  Position: Named
  IsRequired: false
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: true
  ValueFromRemainingArguments: false
DontShow: false
AcceptedValues: []
HelpMessage: ''
```

### -UseGen1API

Specify to force use of the Gen1 API

```yaml
Type: System.Management.Automation.SwitchParameter
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: Gen1-byAll
  Position: Named
  IsRequired: true
  ValueFromPipeline: false
  ValueFromPipelineByPropertyName: false
  ValueFromRemainingArguments: false
- Name: Gen1-byName
  Position: Named
  IsRequired: true
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

### System.Management.Automation.SwitchParameter

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASSafe](https://pspas.pspete.dev/commands/Get-PASSafe)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20List%20Safes.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20List%20Safes.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20Search%20for%20Safe.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20Search%20for%20Safe.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20Get%20Safes%20Details.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/SDK/Safes%20Web%20Services%20-%20Get%20Safes%20Details.htm)

---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASAccountImportJob
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASAccountImportJob
---

# Get-PASAccountImportJob

## SYNOPSIS

Gets the status of bulk account upload jobs performed by the user.

## SYNTAX

### Default (Default)

```
Get-PASAccountImportJob [-id <String>] [<CommonParameters>]
```

### byID

```
Get-PASAccountImportJob [-id <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Returns the result of all bulk account upload jobs, or an individual job identified by it's ID.

Once the upload has finished, the API returns the result.

The result contains a list of all the accounts that succeeded or failed to upload.

## EXAMPLES

### EXAMPLE 1

```
Get-PASAccountImportJob
```

Returns status details of user's account upload jobs

### EXAMPLE 2

```
Get-PASAccountImportJob -id 4
```

Returns status details of user's account upload job with id of 4

### EXAMPLE 3

```
[PSCustomObject]@{id = 7} | Get-PASAccountImportJob
```

Returns status details of user's account upload job with id of 7, using pipeline input

## PARAMETERS

### -id

The identifier for the bulk account upload.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: byID
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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Get-PASAccountImportJob](https://pspas.pspete.dev/commands/Get-PASAccountImportJob)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-all-bulk-account-uploads-for-user-v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-all-bulk-account-uploads-for-user-v10.htm)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-bulk-account-upload-result-v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Get-bulk-account-upload-result-v10.htm)

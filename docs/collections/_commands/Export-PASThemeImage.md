---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Export-PASThemeImage
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Export-PASThemeImage
---

# Export-PASThemeImage

## SYNOPSIS

Retrieves a specific image.

## SYNTAX

### Default (Default)

```
Export-PASThemeImage [-imageName] <String> [-Path] <String> [<CommonParameters>]
```

### __AllParameterSets

```
Export-PASThemeImage [-imageName] <string> [-Path] <string> [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Retrieves a specific image.

Requires Vault Admin Privileges

## EXAMPLES

### Example 1

```powershell
Export-PASThemeImage -imageName SomeImage -Path C:\SomeFolder
```

Retrieves the theme image to the specified location

### Example 2

```powershell
Export-PASThemeImage -imageName CompanyLogo -Path C:\Images\CompanyLogo.png
```

Retrieves the "CompanyLogo" image and saves it to the exact file specified, rather than a destination folder

### Example 3

```powershell
"MainLogo", "LoginBackground", "FooterIcon" | ForEach-Object { Export-PASThemeImage -imageName $_ -Path C:\Images }
```

Retrieves each of the named theme images and saves them to the C:\Images folder

### Example 4

```powershell
[PSCustomObject]@{imageName = 'CompanyLogo'; Path = 'C:\Images\CompanyLogo.png'} | Export-PASThemeImage
```

Retrieves the "CompanyLogo" image, with the imageName and Path values supplied via the pipeline

## PARAMETERS

### -imageName

The name of the image to retrieve

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

### -Path

The folder to export the image to.

```yaml
Type: System.String
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

- [https://pspas.pspete.dev/commands/Export-PASThemeImage](https://pspas.pspete.dev/commands/Export-PASThemeImage)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-images-ret-image.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-images-ret-image.htm)

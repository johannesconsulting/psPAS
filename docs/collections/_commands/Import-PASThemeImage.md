---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Import-PASThemeImage
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Import-PASThemeImage
---

# Import-PASThemeImage

## SYNOPSIS

Adds an image used by a theme

## SYNTAX

### Default (Default)

```
Import-PASThemeImage [-Name] <String> [-ImageFile] <String> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Import-PASThemeImage [-Name] <string> [-ImageFile] <string> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Adds an image used by a theme to the system.

Requires Vault Admin Privileges

## EXAMPLES

### Example 1

```powershell
Import-PASThemeImage -Name SomeImage -ImageFile SomeImageFile.png
```

Adds SomeImageFile.png to the system for use in a theme

### Example 2

```powershell
Import-PASThemeImage -Name CompanyLogo -ImageFile C:\Images\CompanyLogo.png
```

Adds the image at C:\Images\CompanyLogo.png to the system as "CompanyLogo", for use in a custom theme

### Example 3

```powershell
Import-PASThemeImage -Name CompanyLogo -ImageFile C:\Images\CompanyLogo.png -WhatIf
```

Shows what would happen if the image was added, without actually adding it

### Example 4

```powershell
Get-ChildItem -Path C:\Images -Filter *.png | ForEach-Object { Import-PASThemeImage -Name $_.BaseName -ImageFile $_.FullName }
```

Imports every PNG file in C:\Images, using each file's base name as the image name

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

### -ImageFile

The image file to add

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

### -Name

The name of the image

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

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Import-PASThemeImage](https://pspas.pspete.dev/commands/Import-PASThemeImage)
- [https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-images-add-image.htm](https://docs.cyberark.com/pam-self-hosted/latest/en/content/sdk/rest-api-cust-ui-images-add-image.htm)

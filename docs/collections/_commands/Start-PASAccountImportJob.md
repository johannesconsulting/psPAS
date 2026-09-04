---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Start-PASAccountImportJob
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Start-PASAccountImportJob
---

# Start-PASAccountImportJob

## SYNOPSIS

Add multiple accounts to existing Safes.

## SYNTAX

### Default (Default)

```
Start-PASAccountImportJob [[-source] <String>] [-accountsList] <Object[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

### __AllParameterSets

```
Start-PASAccountImportJob [[-source] <string>] [-accountsList] <Object[]> [-WhatIf] [-Confirm]
 [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Sends a list of accounts to be added to existing safes.

Must be authenticated with a user who has Add accounts, Update account content, and Update account properties authorization in at least one Safe.

Returns bulk account upload id or status.

## EXAMPLES

### EXAMPLE 1

```
$Accounts = @(

New-PASAccountObject -uploadIndex 1 -userName SomeAccount1 -address domain.com -platformID WinDomain -SafeName SomeSafe
	New-PASAccountObject -uploadIndex 2 -userName SomeAccount2 -address domain.com -platformID WinDomain -SafeName SomeSafe
	New-PASAccountObject -uploadIndex 3 -userName SomeAccount3 -address domain.com -platformID WinDomain -SafeName SomeSafe
	New-PASAccountObject -uploadIndex 4 -userName SomeAccount4 -address domain.com -platformID WinDomain -SafeName SomeSafe
)

Start-PASAccountImportJob -source "SomeSource" -accountsList $Accounts
```

Create & send list of accounts to be added as a bulk operation.

### EXAMPLE 2

```
$Accounts = @(
	New-PASAccountObject -userName ServiceAccount1 -address unix01.domain.com -platformID UnixSSH -SafeName UNIX
	New-PASAccountObject -userName ServiceAccount2 -address unix02.domain.com -platformID UnixSSH -SafeName UNIX
)

Start-PASAccountImportJob -accountsList $Accounts
```

Sends a list of accounts to be added as a bulk operation without specifying a source value.

### EXAMPLE 3

```
Start-PASAccountImportJob -source "SomeSource" -accountsList $Accounts -WhatIf
```

Shows what would happen if the list of accounts was submitted as a bulk import job, without actually starting the job.

### EXAMPLE 4

```
$Job = Start-PASAccountImportJob -source "HR Onboarding" -accountsList $Accounts
$Job
```

Starts the bulk import job and captures the returned job id/status so it can be tracked with Get-PASAccountImportJob.

## PARAMETERS

### -accountsList

List of account objects.
Each account object contains the parameters for that account.
New-PASAccountObject creates Account Objects with the expected properties.
List of account objects.
Each account object contains the parameters for that account.
New-PASAccountObject creates Account Objects with the expected properties.

```yaml
Type: System.Object[]
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

### -source

Free text that describes the source of the bulk account upload.

```yaml
Type: System.String
DefaultValue: None
SupportsWildcards: false
Aliases: []
ParameterSets:
- Name: (All)
  Position: 0
  IsRequired: false
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

### System.Object[]

{{ Fill in the Description }}

## OUTPUTS

## NOTES

## RELATED LINKS

- [https://pspas.pspete.dev/commands/Start-PASAccountImportJob](https://pspas.pspete.dev/commands/Start-PASAccountImportJob)
- [https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Create-bulk-upload-of-accounts-v10.htm](https://docs.cyberark.com/Product-Doc/OnlineHelp/PAS/Latest/en/Content/WebServices/Create-bulk-upload-of-accounts-v10.htm)

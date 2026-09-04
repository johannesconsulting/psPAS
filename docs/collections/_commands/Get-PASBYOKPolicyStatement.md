---
category: PSPAS
document type: cmdlet
external help file: psPAS-Help.xml
HelpUri: https://pspas.pspete.dev/commands/Get-PASBYOKPolicyStatement
Locale: en-US
Module Name: psPAS
ms.date: 09/04/2026
PlatyPS schema version: 2024-05-01
title: Get-PASBYOKPolicyStatement
---

# Get-PASBYOKPolicyStatement

## SYNOPSIS

Retrieves the AWS KMS key policy statements required for BYOK.

## SYNTAX

### Default (Default)

```
Get-PASBYOKPolicyStatement [[-region] <String>] [<CommonParameters>]
```

### __AllParameterSets

```
Get-PASBYOKPolicyStatement [[-region] <string>] [<CommonParameters>]
```

## ALIASES

## DESCRIPTION

Retrieves the AWS policy statements that allow the CyberArk BYOK service to access your AWS KMS key.

Copy the returned policy statement into your KMS key policy, ensuring both the 'Allow Encryption of customer data by CyberArk' and 'Allow Decryption of customer data by CyberArk' statements are included.

For a Cross-Region Disaster Recovery (CRDR) environment, run this twice - once for the main region and once for the recovery region - using the `-region` parameter.

Requires one of the following roles:
- System Administrator (Identity Administration)
- Privilege Cloud Administrator
- Privilege Cloud Administrator Basic
- Privilege Cloud Administrator Lite

## EXAMPLES

### EXAMPLE 1

```powershell
Get-PASBYOKPolicyStatement
```

Retrieves the key policy statement for the main region.

### EXAMPLE 2

```powershell
Get-PASBYOKPolicyStatement -region recovery
```

Retrieves the key policy statement for the recovery region of a CRDR environment.

## PARAMETERS

### -region

The region of the CRDR site to retrieve the key policy statement for.

Optional when retrieving the statement for the main site (defaults to `main`). Required when retrieving the statement for the recovery site.
The region of the CRDR site to retrieve the key policy statement for.

Optional when retrieving the statement for the main site (defaults to `main`).
Required when retrieving the statement for the recovery site.

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
AcceptedValues:
- main
- recovery
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

- [https://pspas.pspete.dev/commands/Get-PASBYOKPolicyStatement](https://pspas.pspete.dev/commands/Get-PASBYOKPolicyStatement)
- [https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-key-policy-statement.htm](https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-key-policy-statement.htm)
- [https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-key-policy-statement-crdr.htm](https://docs.cyberark.com/snapshot/ispss-deployment/en/content/privilege%20cloud/privcloud-byok-api-key-policy-statement-crdr.htm)

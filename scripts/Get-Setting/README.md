---
external help file: Get-Setting-help.xml
Module Name: Get-Setting
online version:
schema: 2.0.0
---

# Get-Setting

## SYNOPSIS
Retrieves setting's value by its key.

## SYNTAX

```
Get-Setting [-Key] <String> [-Settings] <XmlDocument> [<CommonParameters>]
```

## DESCRIPTION
Retrieves setting's value by its key.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-Setting -Key "ApiUri" -Settings (Get-Content -Path "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\settings.xml")
```

Retrieves ApiUri's value.

## PARAMETERS

### -Key
The key.

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Settings
The settings.

```yaml
Type: XmlDocument
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### String
The setting's value.

## NOTES

## RELATED LINKS

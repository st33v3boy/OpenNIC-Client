---
external help file: Get-UriData-help.xml
Module Name: Get-UriData
online version:
schema: 2.0.0
---

# Get-UriData

## SYNOPSIS
Retrieves URI's data using [HTTP GET](https://restfulapi.net/http-methods/#get) verb.

## SYNTAX

```
Get-UriData [-Uri] <String> [<CommonParameters>]
```

## DESCRIPTION
Retrieves URI's data using [HTTP GET](https://restfulapi.net/http-methods/#get) verb.

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-UriData -Uri "https://api.opennic.org/geoip/?json&res=2&ipv=4&anon=true"
```

The URI's data https://api.opennic.org/geoip/?json&res=2&ipv=4&anon=true.

## PARAMETERS

### -Uri
The URI.

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

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

### None

## OUTPUTS

### PSObject
The URI's data.

## NOTES

## RELATED LINKS

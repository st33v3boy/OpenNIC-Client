---
external help file: Update-DnsInterface-help.xml
Module Name: Update-DnsInterface
online version:
schema: 2.0.0
---

# Update-DnsInterface

## SYNOPSIS
Updates interface's addresses.

## SYNTAX

```
Update-DnsInterface [-InterfaceIndex] <Int32> [-ServerAddresses] <ArrayList> [<CommonParameters>]
```

## DESCRIPTION
Updates interface's addresses.

## EXAMPLES

### Example 1
```powershell
PS C:\> Update-DnsInterface -InterfaceIndex 2 -ServerAddresses @("94.247.43.254", "151.80.222.79")
```

Updates interface (Id. 2) with 94.247.43.254, 151.80.222.79.

## PARAMETERS

### -InterfaceIndex
The interface Id.

```yaml
Type: Int32
Parameter Sets: (All)
Aliases:

Required: True
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -ServerAddresses
The addresses.

```yaml
Type: ArrayList
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
The update's status.

## NOTES

Resets interface to use default addresses defined by DHCP server, if update fails.

## RELATED LINKS

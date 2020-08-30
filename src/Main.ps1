#Requires -Version 6.2
#Requires -Modules DNSClient

Using Module ".\Get-Setting"
Using Module ".\Get-UriData"
Using Module ".\Update-DnsInterface"

Using Namespace System.Collections

# 2147942401
Start-Sleep -Milliseconds 1

$InformationPreference = "Continue"

$Settings = [Xml] (Get-Content -Path ".\settings.xml" -ErrorAction Stop)
$Uri = Get-Setting -Key "ApiUri" -Settings $Settings -ErrorAction Stop
$Servers = Get-UriData -Uri $Uri -ErrorAction Stop

# two servers are expected
if ($Servers -And ($Servers.Length -Ne 2)) {
    $ErrorMessage = "Always two there are, no more, no less. A master and an apprentice..."
    $Message = [PSCustomObject] @{ Error = $ErrorMessage }
    Write-Error $Message -ErrorAction Stop
}

$ServerAddresses = [ArrayList] [Ordered] @{ }
if ($Servers) {
    foreach ($Server in $Servers) {
        $Address = $Server.ip
        $null = $ServerAddresses.Add($Address)
        $Message = [PSCustomObject] [Ordered] @{
            Address    = $Address
            Host       = $Server.host
            Stat       = "$([String]::Join('', $Server.stat))%"
            Kilometers = "$([String]::Join('', $Server.kilometers))km"
        }
        Write-Information $Message -ErrorAction Stop
    }
}

if ($ServerAddresses) {
    # is applied to all interfaces
    $Interfaces = Get-DnsClient -ErrorAction Stop
    foreach ($Interface in $Interfaces) {
        $InterfaceIndex = $Interface.InterfaceIndex
        $Status = Update-DnsInterface -InterfaceIndex $InterfaceIndex -ServerAddresses $ServerAddresses -ErrorAction Stop
        $Message = [PSCustomObject] @{ Status = $Status }
        Write-Information $Message -ErrorAction Stop
    }
    # ipconfig /flushdns
    Clear-DnsClientCache -ErrorAction Stop
}
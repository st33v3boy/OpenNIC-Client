function Update-DnsInterface {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [Int] $InterfaceIndex, 
        [Parameter(Mandatory = $true)]
        [ArrayList] $ServerAddresses
    )
    process {
        $Status = $null
        try {
            $FnParams = @{
                InterfaceIndex  = $InterfaceIndex
                ServerAddresses = $ServerAddresses
                Validate        = $true
            }
            $null = Set-DnsClientServerAddress @FnParams
            $Status = "OK"
        }
        catch {
            $FnParams = @{
                InterfaceIndex       = $InterfaceIndex
                ResetServerAddresses = $true
            }
            $null = Set-DnsClientServerAddress @FnParams
            $Status = "KO"
            $Message = [PSCustomObject] @{ Exception = $_.Exception.Message }
            Write-Error $Message
        }
        finally {
            $Message = [PSCustomObject] [Ordered] @{
                Date            = Get-Date -UFormat "%d/%m/%Y %Hh%M"
                InterfaceIndex  = $InterfaceIndex
                ServerAddresses = "[$([String]::Join(',', $ServerAddresses.ToArray([String])))]"
            }
            Write-Information $Message
        }
        return $Status
    }
}
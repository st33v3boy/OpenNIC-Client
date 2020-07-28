Using Namespace Microsoft.PowerShell.Commands

function Get-UriData {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [String] $Uri
    )
    process {
        $Data = $null
        try {
            $FnParams = @{
                Uri    = $Uri
                Method = [WebRequestMethod] "Get"
            }
            $Data = Invoke-RestMethod @FnParams
        }
        catch {
            $Message = [PSCustomObject] @{ Exception = $_.Exception.Message }
            Write-Error $Message
        }
        finally {
            $Message = [PSCustomObject] [Ordered] @{
                Date = Get-Date -UFormat "%d/%m/%Y %Hh%M"
                Uri  = $Uri
            }
            Write-Information $Message
        }
        return $Data
    }
}
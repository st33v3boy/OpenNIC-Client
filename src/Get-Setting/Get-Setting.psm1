function Get-Setting {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [String] $Key,
        [Parameter(Mandatory = $true)]
        [Xml] $Settings
    )
    process {
        $Value = ""
        # <setting key="$Key"><value><![CDATA[$Setting]]></value></setting>
        $Setting = $Settings.SelectSingleNode("//setting[@key='$Key']//value")
        if ($Setting -And ![String]::IsNullOrEmpty($Setting.InnerText)) {
            $Value = $Setting.InnerText.Trim()
        }
        return $Value
    }
}
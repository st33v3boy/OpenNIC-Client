Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Get-UriData" -Force
New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Get-UriData\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Get-UriData\Get-UriData-help.xml" -Force

Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Get-Setting" -Force
New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Get-Setting\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Get-Setting\Get-Setting-help.xml" -Force

Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Update-DnsInterface" -Force
New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Update-DnsInterface\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\src\Update-DnsInterface\Update-DnsInterface-help.xml" -Force
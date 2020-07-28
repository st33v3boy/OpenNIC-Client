Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-UriData" -Force
New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-UriData\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-UriData\Get-UriData-help.xml" -Force

Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting" -Force
New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting\Get-Setting-help.xml" -Force

Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Update-DnsInterface" -Force
New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Update-DnsInterface\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Update-DnsInterface\Update-DnsInterface-help.xml" -Force
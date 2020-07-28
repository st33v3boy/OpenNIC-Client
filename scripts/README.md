# OpenNIC Client - Scripts

## Environment variable

The variable OPENNIC_CLIENT_SRC_PATH is used by [PlatyPS](https://github.com/PowerShell/platyPS/) to generate the PowerShell help files.

---

```bat
setx OPENNIC_CLIENT_SRC_PATH "~wherever you want~"
```

### How to

#### Generate one (PlatyPS) MarkDown file and rename it ?

---

```powershell
PS C:\> Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting" -Force
PS C:\> New-MarkdownHelp -Module "Get-Setting" -OutputFolder "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting"
PS C:\> Rename-Item -Path "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting\Get-Setting.md" -NewName "README.md"
```

#### Generate one PowerShell help file from a (PlatyPS) MarkDown file ?

---

```powershell
PS C:\> Import-Module -Name "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting" -Force
PS C:\> New-ExternalHelp "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting\README.md" -OutputPath "$ENV:OPENNIC_CLIENT_SRC_PATH\scripts\Get-Setting\Get-Setting-help.xml" -Force
```

---

> Tip : **.tools/Update-HelpFiles.ps1** can be used to generate all the PowerShell help files in one statement.

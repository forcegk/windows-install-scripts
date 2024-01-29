# windows-install-scripts
Scripts for installing common apps on Windows via `scoop` and `choco` package managers.

## Usage
First allow scripts to be executed in a non elevated powershell:
```powershell
Set-ExecutionPolicy Bypass -Scope CurrentUser
```

For installing common apps and default configurations, just open `deploy.ps1` in a user (non elevated) powershell, being its working directory the root of this repo.
```bash
X:\your\path\windows-install-scripts> .\deploy.ps1
```

For installing Microsoft Office, proceed the same way with `msoffice.ps1`. The file should be edited in case you want to change the Office programs to install by commenting / uncommenting `$curr_conf`.
```bash
X:\your\path\windows-install-scripts> .\msoffice.ps1
```

## Details
### deploy.ps1
Consists of five stages:

| Script stage name  | What it does |
| ------------- | ------------- |
| 01_scoop_deploy.ps1  | Install a wide variety of scoop programs and utilities, and apply recommended configurations  |
| 02_scoop_deploy_admin.ps1  | Install some admin-needed utilities from scoop, and apply registry patches from previous file  |
| 03_choco_deploy_admin.ps1  | Install chocolatey package manager and a few tools not available in scoop  |
| 04_other_tweaks_admin.ps1  | Other minor tweaks. For the moment it just changes the KMS server and attemps to activate Windows against it  |
| 05_titus_tool_admin.ps1  | Opens the Chris Titus Windows Tool, where it is recommended to apply some optimizations on the Tweaks section. which are preselected on the file `configs/titus_tweak_tool/desktop_config.json` (just click Import up right) |

### msoffice.ps1
It uncompresses the Office Lite Installer with previously installed 7z, and runs it on unattended mode via configurations on `configs/msoffice`. Current configurations feature:

| Configuration file                                     | Word | Excel | Outlook | PowerPoint | Publisher | Project |
| ------------------------------------------------------ | :--: | :---: | :-----: | :--------: | :-------: | :-----: |
| ProPlusPerpetual_2021_64_W_Ex_PP_Pub.xml **(DEFAULT)** | ✅   |  ✅  |   ❌   |     ✅     |    ✅    |   ❌    |
| ProPlusPerpetual_2021_64_W_Ex_Outl_PP_Pub.xml          | ✅   |  ✅  |   ✅   |     ✅     |    ✅    |   ❌    |
| ProPlusPerpetual_2021_64_W_Ex_PP_Pub_Proj.xml          | ✅   |  ✅  |   ❌   |     ✅     |    ✅    |   ✅    |
| ProPlusPerpetual_2021_64_W_Ex_Outl_PP_Pub_Proj.xml     | ✅   |  ✅  |   ✅   |     ✅     |    ✅    |   ✅    |

### bindfta.ps1
This script sets MPC-HC as the default video player, IrfanView as the image viewer, and 7-zip as compressed file extractor/archiver.
The syntax is quite self explanatory, and there is also a not-universally-tested `_thorium` file that sets Thorium Browser as the default browser.

In case of any extension unbinding, the script is idempotent, so you can execute it again with no side effects.

## License
Any Pull Requests are more than welcome. Remember that the GPLv2 License requires making the derived source code also available with the same licensing terms.
<p align="center"><a href="https://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank"><img src="https://raw.githubusercontent.com/forcegk/windows-install-scripts/master/misc/gplv2_badge.svg" width="35%"></a></p>

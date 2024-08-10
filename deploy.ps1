$scr = ".\scripts"

function refresh-path {
    $env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") +
                ";" +
                [System.Environment]::GetEnvironmentVariable("Path","User")
}

# Set chocolatey path (for later)
if (-Not ($Env:Path -split ";" -contains "C:\ProgramData\chocolatey\bin"))
{
   Start-Process powershell -Verb runAs -ArgumentList "-NoProfile -Command `"setx PATH `"$env:path;C:\ProgramData\chocolatey\bin`" -m`""
   refresh-path
}

powershell -c "$scr\01_scoop_deploy.ps1"

refresh-path

sudo powershell -c "$scr\02_scoop_deploy_admin.ps1" + `
                   "; $scr\03_choco_deploy_admin.ps1" + `
                   "; $scr\04_other_tweaks_admin.ps1" + `
                   "; $scr\05_titus_tool_admin.ps1"

$scr = ".\scripts"

powershell -c "$scr\01_scoop_deploy.ps1"
sudo powershell -c "$scr\02_scoop_deploy_admin.ps1" + `
                   "; $scr\03_choco_deploy_admin.ps1" + `
                   "; $scr\04_other_tweaks_admin.ps1" + `
                   "; $scr\05_titus_tool_admin.ps1"

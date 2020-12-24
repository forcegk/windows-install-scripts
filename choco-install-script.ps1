# Ejecutar como administrador!!

Set-ExecutionPolicy Bypass -Scope Process

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install -y 7zip
choco install -y notepadplusplus
choco install -y mpc-hc-clsid2
choco install -y zulu11
choco install -y telegram
choco install -y whatsapp
choco install -y steam
choco install -y origin --ignore-checksums
choco install -y epicgameslauncher
choco install -y goggalaxy
choco install -y twitch --ignore-checksums
choco install -y uplay
choco install -y irfanview irfanviewplugins
choco install -y junction-link-magic
choco install -y barrier
choco install -y winscp
choco install -y sublimetext3
choco install -y poshgit
choco install -y hwinfo
choco install -y musicbee
choco install -y autoruns
choco install -y mp3tag
choco install -y gimp
choco install -y qbittorrent
choco install -y ffmpeg
choco install -y obs-studio
choco install -y inkscape
choco install -y audacity
choco install -y cpu-z
choco install -y kdenlive
choco install -y krita
choco install -y firefox
choco install -y axel
choco install -y rclone
choco install -y librecad
choco install -y crystaldiskmark
choco install -y crystaldiskinfo
choco install -y hxd
choco install -y shmnview
choco install -y python
choco install -y shmnview
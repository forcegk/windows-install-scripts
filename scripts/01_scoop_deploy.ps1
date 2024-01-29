# Install scoop
if ((Get-Command "scoop" -ErrorAction SilentlyContinue) -eq $null)
{ 
   irm get.scoop.sh | iex
}
scoop install gsudo 7zip git


# Add buckets
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals
scoop bucket add java
scoop bucket add nonportable
scoop bucket add ScoopInstaller_Nirsoft https://github.com/ScoopInstaller/Nirsoft
scoop bucket add natecohen_av https://github.com/natecohen/scoop-av

# Update all buckets
scoop update

# Install aria2 (will be used in following scoop downloads)
scoop install aria-ng-gui aria2

# Install apps
## Misc / core
scoop install figlet grep less micro miller nano sed vim winfetch curl ffmpeg posh-git rclone wget yt-dlp autoruns sync lwc shmnview
# borrado sort-uniq-wc porque da error

## Java
scoop install zulu-jdk

## Tools
scoop install hxd notepadplusplus rufus windirstat gmkvextractgui mkvtoolnix tsmuxer squashfs-tools snappy-driver-installer-origin python telegram winscp

## Multimedia
scoop install mpc-hc-fork mpv spek gimp irfanview audacity inkscape mp3tag krita obs-studio

## Download managers
scoop install jdownloader qbittorrent

## Hardware info / benchmark / stress testing tools
scoop install hwinfo furmark prime95 crystaldiskinfo crystaldiskmark cpu-z gpu-z

# Apply configs
## mpv
$mpvconf_path = "$env:APPDATA\mpv"
New-Item -Type Directory -Force $mpvconf_path | out-null
if((-Not (Test-path $mpvconf_path\mpv.conf -PathType leaf)) -Or ([String]::IsNullOrWhiteSpace((Get-content $mpvconf_path\mpv.conf)))) {
	### Write default config to it if is empty // non existent
	cat .\configs\mpv\mpv.conf > $env:APPDATA\mpv\mpv.conf
}

# Install choco
if ((Get-Command "choco" -ErrorAction SilentlyContinue) -eq $null)
{
   [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
}

choco install -y md5
choco install -y googleearthpro
choco install -y ImDisk-Toolkit
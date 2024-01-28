## Non-portable
sudo scoop install --global winfsp-np winbtrfs-np

# Add context menus
## 7zip
sudo reg import $home\scoop\apps\7zip\current\install-context.reg

## git
sudo reg import $home\scoop\apps\git\current\install-file-associations.reg
#sudo reg import $home\scoop\apps\git\current\install-context.reg # Git things on right click

## notepad++
sudo reg import $home\scoop\apps\notepadplusplus\current\install-context.reg

## python
sudo reg import $home\scoop\apps\python\current\install-pep-514.reg

## winbtrfs
sudo reg import .\configs\winbtrfs\secureboot.reg

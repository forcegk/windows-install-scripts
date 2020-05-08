@echo off
powershell "sudo cup all -y"
powershell "scoop update * ; scoop cleanup * ; scoop cache rm *"
pause
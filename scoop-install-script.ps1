# IMPORTANTE Ejecutar en powershell como usuario no-administrador


powershell Set-ExecutionPolicy RemoteSigned -scope CurrentUser
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

scoop install sudo
$configs = ".\configs\fta"
$bindings = "files_assoc_nobrowser.txt"

sudo powershell -c "$configs\SetUserFTA.exe $configs\$bindings"

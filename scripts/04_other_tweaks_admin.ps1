# Activate Windows (only run once)
if ((Get-Command "scoop" -ErrorAction SilentlyContinue) -eq $null)
{
	slmgr /skms kms.digiboy.ir
	slmgr /ato
}

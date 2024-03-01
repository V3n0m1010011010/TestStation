Add-Type -AssemblyName System.Windows.Forms
$Username = "`nUsername: $($env:USERNAME)"
$netinfo = "`n`n$(ipconfig |Select-String -Pattern 'Profil für')"
$netProfiles = "`n$(netsh wlan show profiles | Select-String -Pattern 'IP')"
$endText1 = $Username+$netinfo+$netProfiles
[System.Windows.Forms.MessageBox]::Show($endText1, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

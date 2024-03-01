Add-Type -AssemblyName System.Windows.Forms
$Username = "`nUsername: $($env:USERNAME)"
$netinfo = "`n`n$(ipconfig | Select-String -Pattern 'IP')"
$netProfiles = "`n`n$(netsh wlan show profiles | Select-String -Pattern 'Profil für')"
$endText = $Username+$netinfo+$netProfiles
[System.Windows.Forms.MessageBox]::Show($endText, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

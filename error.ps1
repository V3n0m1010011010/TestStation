Add-Type -AssemblyName System.Windows.Forms
$Username = "`nUsername: $($env:USERNAME)"
$netinfo = "`n`n$(ipconfig)`n`n"
$netProfiles = "$(netsh wlan show profiles)"
$endText = $Username+$netinfo+$netProfiles
[System.Windows.Forms.MessageBox]::Show($endText, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

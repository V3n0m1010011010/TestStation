Add-Type -AssemblyName System.Windows.Forms
$Username = "`nUsername: $($env:USERNAME)"
$netinfo = "`n`n$(ipconfig)`n`n"
$netProfiles = "$(netsh wlan show profiles)"
$endText1 = $Username+$netinfo
$endText2 = $netProfiles
[System.Windows.Forms.MessageBox]::Show($endText1, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
[System.Windows.Forms.MessageBox]::Show($endText2, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

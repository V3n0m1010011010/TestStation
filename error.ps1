Add-Type -AssemblyName System.Windows.Forms
$Username = "`nUsername: $($env:USERNAME)"
$netinfo = "`n$(ipconfig)"
$netProfiles = "`n$(Get-NetConnectionProfile | Where-Object { $_.NetworkCategory -eq 'Private' })"
$endText = $Username+$netinfo+$netProfiles
[System.Windows.Forms.MessageBox]::Show($endText, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

#Add-Type -AssemblyName System.Windows.Forms
#$Username = "`nUsername: $($env:USERNAME)"
#$netinfo = "`n`n$(ipconfig | Select-String -Pattern 'IP')"
#$netProfiles = "`n`n$(netsh wlan show profiles)"
#$tree = "`n`n$(tree)"
#$endText = $Username+$netProfiles
#For ($i=0; $i -le 2; $i++) {
#  [System.Windows.Forms.MessageBox]::Show("error", "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
#}
#[System.Windows.Forms.MessageBox]::Show($endText, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
Add-Type -AssemblyName System.Windows.Forms
$Username = "Username: $($env:USERNAME)"
$NetInfo = "IP Information:`n`n$(ipconfig | Select-String -Pattern 'IPv4')"
$NetProfiles = "Wi-Fi Profiles:`n`n$(netsh wlan show profiles | Select-String -Pattern 'All User Profile')"
$EndText = "$Username`n`n$NetInfo`n`n$NetProfiles"
function Show-Error {
    param (
        [string]$Message = "Error",
        [string]$Title = "Don't plugin random USB's"
    )
    Start-Job -ScriptBlock {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.MessageBox]::Show($using:Message, $using:Title, [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
    }
}
for ($i = 0; $i -le 2; $i++) {
    Show-Error -Message "$EndText"
}

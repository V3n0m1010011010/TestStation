Add-Type -AssemblyName System.Windows.Forms
$Username = "`nUsername: $($env:USERNAME)"
$netinfo = "`n`n$(ipconfig)`n`n"
$netProfiles = "$(netsh wlan show profiles | Select-String -Pattern 'Profil für')"
$endText1 = $Username+$netinfo
$endText2 = $netProfiles
#[System.Windows.Forms.MessageBox]::Show($endText1, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
#[System.Windows.Forms.MessageBox]::Show($endText2, "Don't plugin random USB's", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
$form = New-Object System.Windows.Forms.Form
$form.Text = "Zwei Textboxen"
$form.Size = New-Object System.Drawing.Size(300,200)

$textbox1 = New-Object System.Windows.Forms.TextBox
$textbox1.Location = New-Object System.Drawing.Point(10,10)
$textbox1.Size = New-Object System.Drawing.Size(260,20)
$textbox1.Text = "Textbox 1"
$form.Controls.Add($textbox1)

$textbox2 = New-Object System.Windows.Forms.TextBox
$textbox2.Location = New-Object System.Drawing.Point(10,40)
$textbox2.Size = New-Object System.Drawing.Size(260,20)
$textbox2.Text = "Textbox 2"
$form.Controls.Add($textbox2)

$form.ShowDialog()

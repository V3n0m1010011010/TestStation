Add-Type -AssemblyName System.Windows.Forms
$Username = "\nUsername: $($env:USERNAME)"
[System.Windows.Forms.MessageBox]::Show($tree, "Achtung", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

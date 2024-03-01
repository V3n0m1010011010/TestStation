Add-Type -AssemblyName System.Windows.Forms
$tree = ipconfig
[System.Windows.Forms.MessageBox]::Show($tree, "Fehler", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

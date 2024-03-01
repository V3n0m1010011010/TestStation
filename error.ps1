Add-Type -AssemblyName System.Windows.Forms
$tree = $env:USERNAME
[System.Windows.Forms.MessageBox]::Show($tree, "Achtung", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)

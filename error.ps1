Add-Type -AssemblyName System.Windows.Forms
for ($i = 0; $i -lt 5; $i++) {
    [System.Windows.Forms.MessageBox]::Show("Es ist ein Fehler aufgetreten!", "Fehler", [System.Windows.Forms.MessageBoxButtons]::OK, [System.Windows.Forms.MessageBoxIcon]::Error)
}

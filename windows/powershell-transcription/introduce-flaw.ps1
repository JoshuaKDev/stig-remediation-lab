$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"

if (Test-Path $registryPath) {
    Remove-Item -Path $registryPath -Recurse -Force
}

Write-Host "[FLAW INTRODUCED] PowerShell transcription logging disabled."
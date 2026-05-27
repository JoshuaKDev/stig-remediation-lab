$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"

if (-not (Test-Path $registryPath)) {
    Write-Host "[FAIL] Transcription logging registry path does not exist."
    exit
}

$enable = Get-ItemPropertyValue -Path $registryPath -Name "EnableTranscripting" -ErrorAction SilentlyContinue
$outputDir = Get-ItemPropertyValue -Path $registryPath -Name "OutputDirectory" -ErrorAction SilentlyContinue

if ($enable -eq 1 -and $outputDir) {
    Write-Host "[PASS] PowerShell transcription logging is enabled."
    Write-Host "Output Directory: $outputDir"
}
else {
    Write-Host "[FAIL] PowerShell transcription logging is not properly configured."
}
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$valueName = "MaxSize"

if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

New-ItemProperty -Path $registryPath -Name $valueName -Value 16384 -PropertyType DWord -Force | Out-Null

Write-Host "[FLAW INTRODUCED] Application Event Log max size set to 16384 KB."
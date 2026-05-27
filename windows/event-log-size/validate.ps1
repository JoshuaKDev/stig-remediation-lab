$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$valueName = "MaxSize"
$requiredValue = 32768

if (-not (Test-Path $registryPath)) {
    Write-Host "[FAIL] Application Event Log policy path does not exist."
    exit
}

$currentValue = Get-ItemPropertyValue -Path $registryPath -Name $valueName -ErrorAction SilentlyContinue

if ($currentValue -ge $requiredValue) {
    Write-Host "[PASS] Application Event Log max size is compliant: $currentValue KB"
}
else {
    Write-Host "[FAIL] Application Event Log max size is too small: $currentValue KB"
}
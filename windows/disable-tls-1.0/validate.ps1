$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"

if (-not (Test-Path $registryPath)) {
    Write-Host "[FAIL] TLS 1.0 registry path does not exist."
    exit
}

$enabled = Get-ItemPropertyValue -Path $registryPath -Name "Enabled" -ErrorAction SilentlyContinue
$disabledByDefault = Get-ItemPropertyValue -Path $registryPath -Name "DisabledByDefault" -ErrorAction SilentlyContinue

if ($enabled -eq 0 -and $disabledByDefault -eq 1) {
    Write-Host "[PASS] TLS 1.0 is disabled."
}
else {
    Write-Host "[FAIL] TLS 1.0 is not fully disabled."
}
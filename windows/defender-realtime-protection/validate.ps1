$status = Get-MpComputerStatus

if ($status.RealTimeProtectionEnabled -eq $true) {
    Write-Host "[PASS] Defender real-time protection is enabled."
}
else {
    Write-Host "[FAIL] Defender real-time protection is disabled."
}
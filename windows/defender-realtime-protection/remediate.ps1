try {
    Set-MpPreference -DisableRealtimeMonitoring $false
    Write-Host "[PASS] Defender real-time protection enabled."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
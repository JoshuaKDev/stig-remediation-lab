$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"

try {
    New-ItemProperty -Path $registryPath -Name "TurnOffAnonymousBlock" -Value 0 -PropertyType DWord -Force | Out-Null

    Write-Host "[PASS] Anonymous SID enumeration restricted."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
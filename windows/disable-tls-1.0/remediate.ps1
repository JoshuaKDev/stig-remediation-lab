$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\TLS 1.0\Server"

try {
    if (-not (Test-Path $registryPath)) {
        New-Item -Path $registryPath -Force | Out-Null
    }

    New-ItemProperty -Path $registryPath -Name "Enabled" -Value 0 -PropertyType DWord -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name "DisabledByDefault" -Value 1 -PropertyType DWord -Force | Out-Null

    Write-Host "[PASS] TLS 1.0 disabled."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
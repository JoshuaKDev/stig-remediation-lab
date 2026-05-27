$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"

New-ItemProperty -Path $registryPath -Name "TurnOffAnonymousBlock" -Value 1 -PropertyType DWord -Force | Out-Null

Write-Host "[FLAW INTRODUCED] Anonymous SID enumeration allowed."
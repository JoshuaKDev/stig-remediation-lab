$registryPath = "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa"

$value = Get-ItemPropertyValue -Path $registryPath -Name "TurnOffAnonymousBlock" -ErrorAction SilentlyContinue

if ($value -eq 0) {
    Write-Host "[PASS] Anonymous SID enumeration is restricted."
}
else {
    Write-Host "[FAIL] Anonymous SID enumeration is allowed."
}
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
$valueName = "EnableScriptBlockLogging"

if (-not (Test-Path $registryPath)) {

    Write-Host "[FAIL] Registry path does not exist."

}
else {

    $value = Get-ItemPropertyValue `
        -Path $registryPath `
        -Name $valueName `
        -ErrorAction SilentlyContinue

    if ($value -eq 1) {

        Write-Host "[PASS] Script Block Logging is enabled."

    }
    else {

        Write-Host "[FAIL] Script Block Logging is disabled."

    }

}
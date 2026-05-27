<#
.SYNOPSIS
    Introduces a STIG finding by disabling PowerShell Script Block Logging.

.STIG
    WN22-CC-000460 / V-254377
#>

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
$valueName = "EnableScriptBlockLogging"

if (-not (Test-Path $registryPath)) {
    New-Item -Path $registryPath -Force | Out-Null
}

Set-ItemProperty `
    -Path $registryPath `
    -Name $valueName `
    -Value 0 `
    -Type DWord

Write-Host "[FLAW INTRODUCED] Script Block Logging disabled."
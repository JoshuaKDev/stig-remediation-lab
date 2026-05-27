<#
.SYNOPSIS
    Enables PowerShell Script Block Logging.

.STIG
    WN22-CC-000460 / V-254377

.NOTES
    Author          : Joshua Kitchen
    Project         : STIG Remediation Lab
#>

$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"
$valueName = "EnableScriptBlockLogging"

try {

    if (-not (Test-Path $registryPath)) {
        New-Item -Path $registryPath -Force | Out-Null
    }

    Set-ItemProperty `
        -Path $registryPath `
        -Name $valueName `
        -Value 1 `
        -Type DWord

    Write-Host "[PASS] Script Block Logging enabled."

}
catch {

    Write-Host "[ERROR] $($_.Exception.Message)"

}
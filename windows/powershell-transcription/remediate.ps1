$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\Transcription"
$outputDirectory = "C:\PowerShellTranscripts"

try {
    if (-not (Test-Path $registryPath)) {
        New-Item -Path $registryPath -Force | Out-Null
    }

    New-ItemProperty -Path $registryPath -Name "EnableTranscripting" -Value 1 -PropertyType DWord -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name "EnableInvocationHeader" -Value 1 -PropertyType DWord -Force | Out-Null
    New-ItemProperty -Path $registryPath -Name "OutputDirectory" -Value $outputDirectory -PropertyType String -Force | Out-Null

    if (-not (Test-Path $outputDirectory)) {
        New-Item -Path $outputDirectory -ItemType Directory -Force | Out-Null
    }

    Write-Host "[PASS] PowerShell transcription logging enabled."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
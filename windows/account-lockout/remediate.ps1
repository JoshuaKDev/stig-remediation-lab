try {
    net accounts /lockoutthreshold:5
    net accounts /lockoutduration:15
    net accounts /lockoutwindow:15

    Write-Host "[PASS] Account lockout policy configured."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
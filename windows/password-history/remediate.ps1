try {
    net accounts /uniquepw:24

    Write-Host "[PASS] Password history configured to 24 remembered passwords."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
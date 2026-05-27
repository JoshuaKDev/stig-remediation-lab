try {
    auditpol /set /subcategory:"Logon" /success:enable /failure:enable

    Write-Host "[PASS] Logon auditing enabled for Success and Failure."
}
catch {
    Write-Host "[ERROR] $($_.Exception.Message)"
}
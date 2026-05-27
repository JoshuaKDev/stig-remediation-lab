$output = auditpol /get /subcategory:"Logon"

if ($output -match "Success and Failure") {
    Write-Host "[PASS] Logon auditing is compliant."
}
else {
    Write-Host "[FAIL] Logon auditing is not fully enabled."
}
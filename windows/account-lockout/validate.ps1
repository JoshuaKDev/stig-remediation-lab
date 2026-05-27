$output = net accounts
$thresholdLine = $output | Select-String "Lockout threshold"

if ($thresholdLine -match "\d+") {
    $threshold = [int]($matches[0])

    if ($threshold -le 5 -and $threshold -ne 0) {
        Write-Host "[PASS] Account lockout threshold is compliant: $threshold"
    }
    else {
        Write-Host "[FAIL] Account lockout threshold is not compliant: $threshold"
    }
}
else {
    Write-Host "[FAIL] Unable to determine account lockout threshold."
}
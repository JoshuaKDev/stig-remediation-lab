$output = net accounts
$historyLine = $output | Select-String "Length of password history maintained"

if ($historyLine -match "\d+") {
    $history = [int]($matches[0])

    if ($history -ge 24) {
        Write-Host "[PASS] Password history is compliant: $history"
    }
    else {
        Write-Host "[FAIL] Password history is not compliant: $history"
    }
}
else {
    Write-Host "[FAIL] Unable to determine password history setting."
}
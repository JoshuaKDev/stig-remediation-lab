auditpol /set /subcategory:"Logon" /success:disable /failure:disable

Write-Host "[FLAW INTRODUCED] Logon auditing disabled."
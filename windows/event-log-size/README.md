# Application Event Log Size

## STIG

- WN10-AU-000500

## Description

This control ensures the Windows Application Event Log maximum size is configured to at least `32768 KB`.

## Risk

Small event log sizes may cause important audit and operational events to be overwritten too quickly, reducing forensic and troubleshooting visibility.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
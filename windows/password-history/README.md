# Password History

## STIG

- WN22-SO-000020

## Description

This control enforces password history so users cannot immediately reuse previous passwords.

## Risk

Weak password history policies allow password reuse, increasing the risk of repeated compromise after credential exposure.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
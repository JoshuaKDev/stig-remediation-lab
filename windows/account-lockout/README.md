# Account Lockout Threshold

## STIG

- WN22-SO-000010

## Description

This control configures the local account lockout threshold to lock accounts after repeated failed logon attempts.

## Risk

Systems without account lockout protections are more vulnerable to brute-force password attacks and password spraying attempts.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
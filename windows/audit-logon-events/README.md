# Audit Logon Events

## STIG

- WN22-AU-000070

## Description

This control enables auditing for successful and failed logon events.

## Risk

Disabled logon auditing reduces visibility into authentication activity, hindering brute-force detection, incident response, and forensic analysis.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
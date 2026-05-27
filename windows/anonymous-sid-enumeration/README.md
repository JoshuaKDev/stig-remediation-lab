# Anonymous SID Enumeration

## STIG

- WN22-SO-000340

## Description

This control restricts anonymous users from performing SID/name translation.

## Risk

Allowing anonymous SID and account enumeration exposes identity information that can assist attackers during reconnaissance and privilege escalation.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
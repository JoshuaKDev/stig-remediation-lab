# PowerShell Script Block Logging

## STIG

- WN22-CC-000460
- V-254377

## Description

This control ensures PowerShell Script Block Logging is enabled to improve visibility into PowerShell execution activity.

## Risk

Disabled PowerShell logging reduces visibility into malicious scripts, attacker tooling, and post-exploitation activity.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
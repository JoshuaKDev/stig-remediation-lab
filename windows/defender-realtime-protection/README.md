# Defender Real-Time Protection

## STIG

- WN22-AV-000010

## Description

This control ensures Microsoft Defender real-time protection is enabled.

## Risk

Disabled endpoint real-time protection increases exposure to malware, ransomware, and unauthorized execution of malicious code.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
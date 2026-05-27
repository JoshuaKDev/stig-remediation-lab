# Disable TLS 1.0

## STIG

- WN22-CC-000205

## Description

This control disables TLS 1.0 server-side support through the SCHANNEL registry configuration.

## Risk

TLS 1.0 is deprecated and vulnerable to cryptographic weaknesses. Leaving legacy protocols enabled can expose systems to downgrade attacks and non-compliant encrypted communications.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
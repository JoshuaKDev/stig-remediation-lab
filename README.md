# STIG Remediation Lab

PowerShell and Bash remediation lab demonstrating how to introduce, remediate, and validate Windows and Linux STIG-style security findings.

## Project Goals

- Build intentionally non-compliant VM configurations
- Remediate findings with PowerShell and Bash
- Validate each control after remediation
- Document before/after evidence
- Practice security automation and compliance engineering

## Structure

- `windows/` — Windows Server STIG-style remediations
- `linux/` — Linux STIG-style remediations

## Workflow

1. Introduce flaw
2. Validate finding
3. Run remediation
4. Validate fix
5. Capture evidence

## Controls Included

| Platform | Control |
|---|---|
| Windows | PowerShell Script Block Logging |
| Windows | PowerShell Transcription |
| Windows | Event Log Size |
| Windows | TLS 1.0 Disabled |
| Windows | Account Lockout Threshold |
| Windows | Defender Real-Time Protection |
| Windows | Password History |
| Windows | Audit Logon Events |
| Windows | Anonymous SID Enumeration |
| Linux | Disable SSH Root Login |
| Linux | Password Maximum Age |

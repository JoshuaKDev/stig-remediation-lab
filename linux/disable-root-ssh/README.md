# Disable Root SSH Login

## STIG

- RHEL-09-255045

## Description

This control disables direct root SSH login through the SSH daemon configuration.

## Risk

Allowing direct root SSH login increases exposure to brute-force attacks, credential compromise, and privilege escalation.

## Files

- `introduce-flaw.sh`
- `remediate.sh`
- `validate.sh`

## Validation

```bash
./validate.sh
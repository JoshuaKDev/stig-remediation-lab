# Password Maximum Age

## STIG

- RHEL-09-611035

## Description

This control configures the maximum password age for local accounts.

## Risk

Weak password aging policies increase the likelihood of long-term credential reuse and prolonged exposure after credential compromise.

## Files

- `introduce-flaw.sh`
- `remediate.sh`
- `validate.sh`

## Validation

```bash
./validate.sh
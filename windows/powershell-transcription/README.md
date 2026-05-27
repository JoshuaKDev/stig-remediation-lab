# PowerShell Transcription Logging

## STIG

- WN22-CC-000475
- V-254384

## Description

This control enables PowerShell transcription logging and stores transcript output in `C:\PowerShellTranscripts`.

## Risk

Disabled transcription logging reduces visibility into administrative PowerShell activity and limits forensic evidence after suspicious execution.

## Files

- `introduce-flaw.ps1`
- `remediate.ps1`
- `validate.ps1`

## Validation

```powershell
.\validate.ps1
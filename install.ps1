<#
.SYNOPSIS
  Install the "threejs-handbook" Claude Code skill globally (Windows / PowerShell).

.DESCRIPTION
  Copies .claude\skills\threejs-handbook into %USERPROFILE%\.claude\skills\ so Claude Code
  auto-activates the Three.js Production Handbook in EVERY project on this machine.

  Re-run any time after pulling changes to update the installed copy.

.EXAMPLE
  .\install.ps1
  Install (or update) the skill globally.

.EXAMPLE
  powershell -ExecutionPolicy Bypass -File .\install.ps1
  Run when script execution is restricted by policy.
#>

[CmdletBinding()]
param()

$ErrorActionPreference = 'Stop'
$SkillName = 'threejs-handbook'

# Resolve the directory this script lives in (so it works from anywhere).
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$Src       = Join-Path $ScriptDir ".claude\skills\$SkillName"
$DestDir   = Join-Path $env:USERPROFILE ".claude\skills"
$Dest      = Join-Path $DestDir $SkillName

# Verify the source skill exists.
if (-not (Test-Path (Join-Path $Src 'SKILL.md'))) {
    Write-Error "Could not find the skill at: $Src\SKILL.md`nRun this script from inside the handbook repository."
    exit 1
}

Write-Host "Installing '$SkillName' skill..."
Write-Host "  from: $Src"
Write-Host "  to:   $Dest"

# Fresh copy: remove any previous install, then copy.
New-Item -ItemType Directory -Force -Path $DestDir | Out-Null
if (Test-Path $Dest) { Remove-Item -Recurse -Force $Dest }
Copy-Item -Recurse -Force $Src $Dest

# Report what landed.
$RefCount = (Get-ChildItem -Path (Join-Path $Dest 'references') -Filter '*.md' -File).Count
Write-Host ""
Write-Host "Done. Installed SKILL.md + $RefCount reference chapters."
Write-Host ""
Write-Host "Next steps:"
Write-Host "  1. Restart Claude Code (or start a new session)."
Write-Host "  2. Verify with:  dir `$env:USERPROFILE\.claude\skills\$SkillName"
Write-Host "  3. It now auto-activates on any Three.js / R3F / WebGL / shader work,"
Write-Host "     or invoke it explicitly with:  /$SkillName"

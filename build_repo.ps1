$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $PSScriptRoot
$Repo = Join-Path $Root "Repo"
New-Item -ItemType Directory -Force "$Repo/debs" | Out-Null
Write-Host "Repository folder ready: $Repo"
Write-Host "Build the armv7 dylib, place it in Package/Library/MobileSubstrate/DynamicLibraries/, then package the Debian tree."

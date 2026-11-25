param(
    [string]$DshHome = (Join-Path $env:USERPROFILE ".dsh")
)

$ErrorActionPreference = "Stop"
$sourceRoot = Join-Path $PSScriptRoot "..\skills"
$targetRoot = Join-Path $DshHome "skills"

if (-not (Test-Path -LiteralPath $sourceRoot -PathType Container)) {
    throw "Skill source directory not found: $sourceRoot"
}

New-Item -ItemType Directory -Force -Path $targetRoot | Out-Null

Get-ChildItem -LiteralPath $sourceRoot -Directory | ForEach-Object {
    $source = $_.FullName
    $target = Join-Path $targetRoot $_.Name

    if (Test-Path -LiteralPath $target) {
        Write-Warning "Skipped existing Skill (not overwritten): $target"
    } else {
        Copy-Item -LiteralPath $source -Destination $target -Recurse
        Write-Host "Installed: $($_.Name)" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "Skills copied to: $targetRoot"
Write-Host "Restart or refresh the DSH session if the catalog does not update."

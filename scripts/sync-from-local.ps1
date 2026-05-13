param(
    [string]$RepoRoot = (Split-Path -Parent $PSScriptRoot),
    [string]$CodexSkillRoot = "$env:USERPROFILE\.codex\skills",
    [string]$ProjectSkillRoot = "E:\NeuroVisus\.agents\skills"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$globalDestination = Join-Path $RepoRoot "global-skills"
$projectDestination = Join-Path $RepoRoot "project-skills\NeuroVisus"
$excludedGlobalSkillDirs = @(".system", "codex-primary-runtime")

if (-not (Test-Path $CodexSkillRoot)) {
    throw "Codex skill root not found: $CodexSkillRoot"
}

if (-not (Test-Path $ProjectSkillRoot)) {
    throw "Project skill root not found: $ProjectSkillRoot"
}

New-Item -ItemType Directory -Force -Path $globalDestination | Out-Null
New-Item -ItemType Directory -Force -Path $projectDestination | Out-Null

# Reset only the exported skill folders, not the repository metadata.
Get-ChildItem -Path $globalDestination -Force | Remove-Item -Recurse -Force
Get-ChildItem -Path $projectDestination -Force | Remove-Item -Recurse -Force

Get-ChildItem -Path $CodexSkillRoot -Directory |
    Where-Object { $_.Name -notin $excludedGlobalSkillDirs } |
    ForEach-Object {
        Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $globalDestination $_.Name) -Recurse -Force
    }

Get-ChildItem -Path $ProjectSkillRoot -Directory | ForEach-Object {
    Copy-Item -LiteralPath $_.FullName -Destination (Join-Path $projectDestination $_.Name) -Recurse -Force
}

$globalCount = (Get-ChildItem -Path $globalDestination -Directory).Count
$projectCount = (Get-ChildItem -Path $projectDestination -Directory).Count
$skillFileCount = (Get-ChildItem -Path $RepoRoot -Recurse -Filter SKILL.md | Measure-Object).Count

Write-Host "Synced $globalCount global skills and $projectCount project skills."
Write-Host "Current SKILL.md count: $skillFileCount"

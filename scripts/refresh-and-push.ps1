param(
    [string]$CommitMessage = "Sync local Codex skills",
    [string]$Tag,
    [switch]$NoPush
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $PSScriptRoot
$syncScript = Join-Path $PSScriptRoot "sync-from-local.ps1"

& $syncScript -RepoRoot $repoRoot

$pending = git -C $repoRoot status --porcelain
if (-not $pending) {
    Write-Host "No changes detected."
    exit 0
}

git -C $repoRoot add -A
git -C $repoRoot commit -m $CommitMessage

if ($Tag) {
    $existingTag = git -C $repoRoot tag --list $Tag
    if ($existingTag) {
        throw "Tag already exists: $Tag"
    }
    git -C $repoRoot tag -a $Tag -m $Tag
}

if ($NoPush) {
    Write-Host "Commit created locally. Push skipped."
    exit 0
}

git -C $repoRoot push origin HEAD
if ($Tag) {
    git -C $repoRoot push origin $Tag
}

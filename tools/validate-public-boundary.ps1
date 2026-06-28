$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $root

function ConvertFrom-Utf8Base64 {
  param([string]$Text)
  [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($Text))
}

$requiredPublic = @(
  "README.md",
  "CHANGELOG.md",
  "VERSION",
  "LICENSE",
  "framework_manifest.md",
  "PUBLIC_MANIFEST.md",
  ".gitignore",
  "protocols",
  "templates",
  "skills\common",
  "plugins",
  "optional_modules",
  "docs",
  "examples\public_minimal_project",
  "tools"
)

$privatePaths = @(
  "storage",
  "domains",
  "skills_local",
  "knowledge",
  "content_projects",
  "assets_index",
  "publishing_local",
  "outputs",
  "renders",
  "tmp"
)

$missing = @()
foreach ($path in $requiredPublic) {
  if (-not (Test-Path $path)) {
    $missing += $path
  }
}

if ($missing.Count -gt 0) {
  Write-Host (ConvertFrom-Utf8Base64 "57y65bCR5YWs5YWx6Lev5b6E77ya") -ForegroundColor Red
  $missing | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
  exit 1
}

$trackedPrivate = @()
foreach ($path in $privatePaths) {
  $result = git ls-files -- $path
  if ($result) {
    $trackedPrivate += $path
  }
}

if ($trackedPrivate.Count -gt 0) {
  Write-Host (ConvertFrom-Utf8Base64 "5Lul5LiL56eB5pyJ6Lev5b6E5bey6KKrIEdpdCDot5/ouKrvvJo=") -ForegroundColor Red
  $trackedPrivate | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
  exit 1
}

$mediaPatterns = @("*.mp4", "*.mov", "*.mkv", "*.avi", "*.mp3", "*.wav", "*.aac", "*.flac", "*.prproj", "*.psd", "*.aep", "*.zip", "*.7z", "*.rar")
$trackedMedia = @()
foreach ($pattern in $mediaPatterns) {
  $result = git ls-files -- $pattern
  if ($result) {
    $trackedMedia += $result
  }
}

if ($trackedMedia.Count -gt 0) {
  Write-Host (ConvertFrom-Utf8Base64 "5Lul5LiL5aSn5Z6L5oiW56eB5pyJ5aqS5L2T5paH5Lu25bey6KKrIEdpdCDot5/ouKrvvJo=") -ForegroundColor Red
  $trackedMedia | ForEach-Object { Write-Host " - $_" -ForegroundColor Red }
  exit 1
}

Write-Host (ConvertFrom-Utf8Base64 "ei1jZG1hIOWFrOWFsei+ueeVjOagoemqjOmAmui/h+OAgg==") -ForegroundColor Green

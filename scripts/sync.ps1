# sync.ps1 — re-pull vendored registries at latest upstream / 重新拉取各弹药库最新上游
# Run from anywhere; resolves repo root from script location.
# 任意目录运行即可，自动定位仓库根。网络受限时先 $env:HTTPS_PROXY="http://127.0.0.1:7897"
$ErrorActionPreference = 'Stop'
Set-Location (Join-Path $PSScriptRoot '..')

$tmp = Join-Path $env:TEMP ('rb-sync-' + [guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $tmp | Out-Null
try {
  Write-Output '==> reactbits: fetching latest upstream...'
  git clone --depth 1 --filter=blob:none --sparse https://github.com/DavidHDev/react-bits (Join-Path $tmp 'rb') --quiet
  Push-Location (Join-Path $tmp 'rb')
  git sparse-checkout set src/content src/components src/hooks src/lib 2>$null
  if ($LASTEXITCODE -ne 0) { git sparse-checkout set src --quiet }
  Pop-Location

  if (Test-Path registry/reactbits) { Remove-Item -Recurse -Force registry/reactbits }
  New-Item -ItemType Directory -Path registry/reactbits | Out-Null
  foreach ($d in 'content', 'components', 'hooks', 'lib') {
    $src = Join-Path $tmp "rb/src/$d"
    if (Test-Path $src) { Copy-Item -Recurse $src registry/reactbits/ }
  }
  if (-not (Test-Path registry/reactbits/content) -and -not (Test-Path registry/reactbits/components)) {
    Copy-Item -Recurse (Join-Path $tmp 'rb/src') registry/reactbits/src
  }
  $lic = Join-Path $tmp 'rb/LICENSE.md'
  if (Test-Path $lic) { Copy-Item $lic registry/reactbits/LICENSE.md } else {
    Write-Output 'WARN: upstream license file not found — check manually'
  }
  Write-Output '==> reactbits: done'
} finally {
  Remove-Item -Recurse -Force $tmp -ErrorAction SilentlyContinue
}
Write-Output "All registries synced. Review with 'git status' and commit."

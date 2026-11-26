#!/usr/bin/env bash
# sync.sh — re-pull vendored registries at latest upstream / 重新拉取各弹药库最新上游
# Run from the repo root. Requires git. Set HTTPS_PROXY/HTTP_PROXY if your network needs it.
# 在仓库根目录运行。需要 git。网络受限时先 export HTTPS_PROXY/HTTP_PROXY。
set -euo pipefail
cd "$(dirname "$0")/.."

pull_reactbits() {
  echo "==> reactbits: fetching latest upstream..."
  TMP="$(mktemp -d)"
  git clone --depth 1 --filter=blob:none --sparse \
    https://github.com/DavidHDev/react-bits "$TMP/rb" --quiet
  (cd "$TMP/rb" && git sparse-checkout set src/content src/components src/hooks src/lib 2>/dev/null \
    || git sparse-checkout set src --quiet)
  rm -rf skills/frontend-craft/registry/reactbits
  mkdir -p skills/frontend-craft/registry/reactbits
  # copy component sources (exclude the marketing-site shell)
  for d in content components hooks lib; do
    [ -d "$TMP/rb/src/$d" ] && cp -r "$TMP/rb/src/$d" "skills/frontend-craft/registry/reactbits/$d"
  done
  # fallback: if the layout differs, vendor the whole src tree
  if [ ! -d skills/frontend-craft/registry/reactbits/content ] && [ ! -d skills/frontend-craft/registry/reactbits/components ]; then
    cp -r "$TMP/rb/src" skills/frontend-craft/registry/reactbits/src
  fi
  cp "$TMP/rb/LICENSE.md" skills/frontend-craft/registry/reactbits/LICENSE.md 2>/dev/null \
    || cp "$TMP/rb/LICENSE" skills/frontend-craft/registry/reactbits/LICENSE 2>/dev/null \
    || echo "WARN: upstream license file not found — check manually"
  rm -rf "$TMP"
  echo "==> reactbits: done"
}

pull_reactbits
echo "All registries synced. Review with 'git status' and commit."

# frontend-craft

**Curated frontend craft skills and premium animated-component registries for AI coding agents.**

[简体中文](./README.zh-CN.md) | English

The gap between AI-generated UI and professional UI is not technology — it is **aesthetic discipline and quality ammunition**. This repository packages both into a version-controlled, machine-readable asset that any agent (Devin, pi/APIX ants, Claude Code, Codex, …) can sync and apply.

## What's inside

```
frontend-craft/
├── skills/
│   └── frontend-craft/        # The core skill — install into your agent's skills directory
│       ├── SKILL.md           # 中文版本
│       └── SKILL.en.md        # English version
├── registry/                  # Downloaded, ready-to-adapt premium component sources
│   ├── reactbits/             # Animated React components (source: github.com/DavidHDev/react-bits, MIT-with-attribution)
│   └── SOURCES.md             # Catalog of 15 curated sources: purpose, licensing, how to pull
└── scripts/
    ├── sync.sh                # Re-pull / update registries (Linux/macOS/WSL)
    └── sync.ps1               # Windows
```

## Why a registry, not just links

Component sites like reactbits.dev or uiverse.io are copy-paste catalogs — their value is the **source code**, not the browsing. This repo vendors the highest-quality open libraries so that:

- Agents read components **offline**, no scraping, no network flakiness mid-task
- A pinned snapshot means reproducible results — upstream updates are pulled deliberately via `scripts/sync`, not accidentally
- Attribution travels with the code (`LICENSE` files are preserved per-registry)

## Install the skill

**pi / APIX** — copy or symlink into `~/.pi/agent/skills/`:

```bash
cp -r skills/frontend-craft ~/.pi/agent/skills/
```

**Devin / Codex** — copy into `~/.codex/skills/` (or your agent host's skills directory).

**Any other agent**: the skill is plain Markdown with YAML frontmatter — point your agent at it.

## Usage discipline (the short version)

1. **Find a reference before designing** — never design from imagination
2. **Copy structure, not skin** — adapt DOM + motion logic, re-skin with your project's design tokens
3. **Motion must carry information** — state changes, spatial relations, attention. Nothing decorative
4. **Empty / loading / error states are part of the design** — not an afterthought

The full discipline (10 testable anti-AI-flavor rules) is in the skill file.

## Updating

```bash
scripts/sync.sh        # re-pulls vendored registries at their latest upstream
```

Upstream snapshots are refreshed intentionally and committed — consumers always get a coherent, reviewed state.

## Licensing

- The curation, skill text, and scripts in this repository: **MIT**
- Vendored component registries retain their **original licenses** — see the `LICENSE` file inside each `registry/<name>/` directory and `registry/SOURCES.md` for per-source terms. Most are MIT or MIT-with-attribution; attribution requirements are documented per source.
- Design-inspiration sites (Awwwards, Mobbin, Dribbble, …) are **cataloged, not copied** — their content is not redistributable. Use them as visual references only.

## Contributing

This is a personal-infrastructure repo, but issues/PRs with high-quality additional sources (animated component libraries with copyable source and permissive licenses) are welcome.

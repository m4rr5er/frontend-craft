# frontend-craft

**Curated frontend craft skills and premium animated-component registries for AI coding agents.**

[简体中文](./README.zh-CN.md) | English

The gap between AI-generated UI and professional UI is not technology — it is **aesthetic discipline and quality ammunition**. This repository packages both into a version-controlled, machine-readable asset that any agent (Devin, Claude Code, Codex, pi, …) can sync and apply.

## What's inside

```
frontend-craft/
├── skills/
│   └── frontend-craft/        # Self-contained skill — copy this whole folder into your agent's skills directory
│       ├── SKILL.md           # 中文版本
│       ├── SKILL.en.md        # English version
│       └── registry/          # Vendored premium component sources
│           ├── reactbits/     # Animated React components (MIT+attribution, license preserved)
│           └── SOURCES.md     # Catalog of 15 curated sources: purpose, licensing, how to pull
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

**pi** — copy the skill folder into `~/.pi/agent/skills/`:

```bash
cp -r skills/frontend-craft ~/.pi/agent/skills/
```

**Devin / Codex** — copy into `~/.codex/skills/` (or your agent host's skills directory).

**Any other agent**: the skill is plain Markdown with YAML frontmatter — point your agent at it.

The skill is fully self-contained: the vendored component registry travels inside the skill folder, so the copy above is all you need.

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

Upstream snapshots are refreshed intentionally and committed — consumers always get a coherent, reviewed state. Cross-machine usage: clone this repo on each machine and re-run the install copy after each pull.

## Licensing

- The curation, skill text, and scripts in this repository: **MIT**
- Vendored component registries retain their **original licenses** — see the `LICENSE` file inside each `registry/<name>/` directory and `registry/SOURCES.md` for per-source terms. Most are MIT or MIT-with-attribution; attribution requirements are documented per source.
- Design-inspiration sites (Awwwards, Mobbin, Dribbble, …) are **cataloged, not copied** — their content is not redistributable. Use them as visual references only.

## Contributing

This is a personal-infrastructure repo, but issues/PRs with high-quality additional sources (animated component libraries with copyable source and permissive licenses) are welcome.

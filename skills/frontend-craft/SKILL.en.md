---
name: frontend-craft
description: Advanced frontend craft — component-library ammo map, anti-AI-flavor design discipline, motion layering, and a landing workflow. Required reading before building any UI with visual quality requirements.
when_to_use: When writing or optimizing any user interface, component, or page visual — especially when "premium" or "not AI-generated-looking" matters.
---

# frontend-craft: Advanced Frontend Craft

The quality gap in UI is not technology — it is aesthetic discipline. This skill gives you three things: an ammo map (where to copy premium components), design discipline (anti-AI-flavor), and a landing workflow (how to copy correctly).

## 1. The Ammo Map (choose by purpose — no aimless browsing)

**Copyable animated component libraries** (copy source, adapt — highest quality):
- reactbits.dev — Largest React animated-component collection: text effects/backgrounds/cards/buttons, copy-paste model. **Vendored in this repo: read `registry/reactbits/` offline first, prefer it over live access**
- originkit.dev — Modern website motion components, landing-page-grade polish
- ui.aceternity.com — React+Tailwind flagship: beam cards/3D pins/parallax, high visual impact
- 21st.dev — 12,000+ React components/templates, volume for rapid assembly
- bencho.dev — Micro-interaction specialist: physics-grade hover/click detail
- uiverse.io — Pure-CSS element universe: buttons/toggles/loaders/cards, zero-dependency copying

**Motion engines** (build your own when libraries fall short):
- GSAP (gsap.com) — the de-facto timeline-animation standard; ScrollTrigger is mandatory for scroll-driven work
- three.js (threejs.org) — 3D scenes; only when there is a genuine 3D need — never 3D for showoff

**Design inspiration** (find references before designing — never design from imagination):
- awwwards.com — the global ceiling of web aesthetics: layout/color/motion composition
- mobbin.com — real-product UI pattern library (web+mobile): how serious products do it
- dribbble.com / collectui.com / unsection.com — daily inspiration, section-level layout references
- vibe-hub.org — frontend/backend/AI terminology quick reference

Per-source licensing and pull instructions: see `registry/SOURCES.md`.

## 2. Anti-AI-Flavor Design Discipline (every rule is testable)

AI-generated UIs have an instantly recognizable smell. Root causes — these bad defaults:

1. **No purple-gradient + rounded-card + drop-shadow triple combo** — the #1 AI tell. Subtract first: one background + one foreground + at most one accent color covering <5% of area
2. **Spacing must form a system**: multiples of 4 (4/8/12/16/24/32/48); random values like 13px/17px are banned. Rhythm over even distribution — related elements close, unrelated apart (proximity principle)
3. **At most 4 type-scale levels**: body/secondary/title/display, each with clear contrast (≥1.25×). Never same-size text differentiated only by color
4. **Alignment is free polish**: left edges within a visual block must align; centered text is a lazy default — prefer left-align for information
5. **Borders outclass shadows**: separate with 1px low-opacity borders; shadows only for floating layers (popover/tooltip). Frosted glass + heavy shadow + large radius together = trying too hard
6. **Motion must carry information**: state changes, spatial relations, attention guidance only. No decorative motion (meaningless floating/blinking). Duration 150–300ms; entrances over 400ms are a tax
7. **Missing empty/loading/error states = half-finished**: design all three states when building any data-driven UI
8. **Unified icon style**: pick one of outline/filled/duotone; emoji as functional icons reads as toy-grade (brand mascot contexts excepted)
9. **Dark theme is not inverted colors**: hierarchy via elevation — higher layers are lighter (not darker); text opacity steps (100/70/50%) rather than gray steps
10. **Density respects context**: monitoring consoles/dashboards are density-first (tables/compact rows); marketing pages are whitespace-first. Reversing them ruins both

## 3. The Landing Workflow (how to copy components correctly)

1. **References before hands**: pick 1–2 close references from inspiration sites; save screenshots/links into work notes. Designing from imagination ends in mediocrity
2. **Copy structure, not skin**: take DOM structure + motion logic; colors/fonts/radii must be replaced with the project's own design tokens — verbatim copying is pasting someone else's brand into your product
3. **Network self-rescue** (if your network is restricted): use your configured proxy; for GitHub resources try mirror sources (jsdelivr/ghproxy); off-peak retries often help
4. **Acceptance after copying**: passing the build is only the floor — walk the ten discipline rules yourself; violations mean rework
5. **Consistency beats single-point brilliance**: one mediocre-but-consistent interface beats nine stunning components stitched into a patchwork quilt

## 4. Project Integration Discipline (universal)

- Copied components must wire into the **project's own** design-token system (colors/radii/spacing as variables); hardcoded hex is a review red flag
- Prefer the project's existing component library and style conventions; never pull in a heavy new dependency for a single copied component
- Prefer CSS transform/opacity animation (compositor); never animate layout properties
- Always run the project's own lint/typecheck/build gates; use visual verification (before/after screenshots) when available

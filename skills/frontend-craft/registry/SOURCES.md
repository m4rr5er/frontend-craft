# Sources Catalog / 弹药源目录

Curated frontend sources. Each entry: purpose, what is redistributable, licensing, and how the vendored copy is pulled.

精选前端弹药源。每条注明：用途、可再分发内容、许可、vendor 拉取方式。

---

## Vendored / 已 vendor

### reactbits → `registry/reactbits/`
- **Site**: https://reactbits.dev · **Upstream**: https://github.com/DavidHDev/react-bits (52k+ stars)
- **What**: Largest open-source library of animated React components — text effects, backgrounds, cards, buttons, scroll interactions.
  最大的开源 React 动画组件库——文字效果、背景、卡片、按钮、滚动交互。
- **License**: MIT + attribution notice (see `registry/reactbits/LICENSE.md`). Keep the license file when copying components.
  MIT + 署名条款（见库内 LICENSE.md）。抄组件时保留许可文件。
- **Pull / 拉取**: `scripts/sync.sh` / `sync.ps1` (sparse checkout of component sources, `.git` stripped)

---

## Copyable online, not yet vendored / 在线可抄，尚未 vendor

These are copy-paste catalogs whose redistribution terms are unclear or per-component. Copy individual components on demand with attribution comments; do not bulk-mirror.

这些是复制粘贴型目录站，再分发条款不明确或按组件各异。按需抄单个组件并注明出处，不做整站镜像。

| Site | Best for / 用途 | Notes / 备注 |
|---|---|---|
| https://ui.aceternity.com | React+Tailwind flagship effects: beam cards, 3D pins, parallax / 光束卡、3D 针、视差 | Source shown per component on site / 站内逐组件展示源码 |
| https://www.originkit.dev | Landing-grade animated sections / landing 级动效区块 | Copy-paste per component / 逐组件复制 |
| https://21st.dev | 12,000+ React components, volume assembly / 量大管饱快速拼装 | Registry model, per-component copy / 注册制，逐组件复制 |
| https://bencho.dev | Micro-interactions, physics detail / 微交互物理感 | Small components / 小组件 |
| https://uiverse.io | Zero-dependency pure-CSS elements / 零依赖纯 CSS 小元件 | Community submissions, check per-item license / 社区投稿，注意逐件许可 |

## Engines / 动效引擎

| Site | What | Install |
|---|---|---|
| https://gsap.com | Timeline animation standard; ScrollTrigger / 时间轴动画标准 | `npm i gsap` |
| https://threejs.org | 3D scenes — only for genuine 3D needs / 仅限真实 3D 需求 | `npm i three` |

## Inspiration only — never copy / 仅灵感，禁止复制

Non-redistributable. Use as visual references before designing; never lift assets, layouts verbatim, or images.

不可再分发。设计前作视觉参照；禁止照搬资产、布局或图片。

| Site | Best for / 用途 |
|---|---|
| https://www.awwwards.com | Global ceiling of web aesthetics / 全球审美天花板 |
| https://mobbin.com | Real-product UI patterns (web+mobile) / 真实产品 UI 模式 |
| https://dribbble.com | Daily visual inspiration / 日常视觉灵感 |
| https://collectui.com | Component-level daily inspiration / 组件级每日灵感 |
| https://www.unsection.com | Section-first layout references / 按 section 的布局参照 |
| https://vibe-hub.org | Frontend/backend/AI terminology / 术语速查 |

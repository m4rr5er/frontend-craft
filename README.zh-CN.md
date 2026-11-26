# frontend-craft

**为 AI 编码智能体精选的前端工艺技能与高级动画组件弹药库。**

简体中文 | [English](./README.md)

AI 生成的界面和专业界面的差距不在技术——在于**审美纪律和弹药质量**。本仓库把两者打包成版本化、机器可读的资产，任何智能体（Devin、pi/APIX 工蚁、Claude Code、Codex……）都能同步和应用。

## 内容结构

```
frontend-craft/
├── skills/
│   └── frontend-craft/        # 自包含技能——整个文件夹复制进你的智能体技能目录即可
│       ├── SKILL.md           # 中文版本
│       ├── SKILL.en.md        # English version
│       └── registry/          # 已 vendor 的优质组件弹药
│           ├── reactbits/     # React 动画组件（MIT+署名，许可文件已保留）
│           └── SOURCES.md     # 15 个精选源的目录：用途、许可、拉取方式
└── scripts/
    ├── sync.sh                # 重新拉取/更新弹药库（Linux/macOS/WSL）
    └── sync.ps1               # Windows
```

## 为什么是弹药库而不只是链接

reactbits.dev、uiverse.io 这类组件站的价值在**源码本身**而不是浏览。本仓库把最高质量的开源库 vendor 进来，因此：

- 智能体**离线**读组件——不抓网页、任务中途不受网络抖动影响
- 固定快照 = 可复现——上游更新通过 `scripts/sync` **有意地**拉取，不会意外漂移
- 署名随代码走（每个 registry 保留原 `LICENSE`）

## 安装技能

**pi / APIX**——把技能文件夹复制进 `~/.pi/agent/skills/`：

```bash
cp -r skills/frontend-craft ~/.pi/agent/skills/
```

**Devin / Codex**——复制进 `~/.codex/skills/`（或你的智能体宿主的技能目录）。

**其他智能体**：技能是带 YAML frontmatter 的纯 Markdown，直接指过去即可。

技能完全自包含：vendor 的组件弹药库就在技能文件夹内，上面这一条复制命令就是全部。

## 使用纪律（速览）

1. **先找参照再动手**——禁止凭空设计
2. **抄结构不抄皮肤**——抄 DOM + 动效逻辑，配色字体换成项目自己的设计 token
3. **动效必须携带信息**——状态变化、空间关系、注意力引导；装饰性动效一律不加
4. **空/加载/错误三态是设计的一部分**——不是事后补的

完整纪律（十条可判定的反 AI 味规则）在技能文件里。

## 更新

```bash
scripts/sync.sh        # 重新拉取各弹药库的最新上游
```

上游快照是有意刷新并提交的——消费者拿到的永远是连贯、审过的状态。跨机使用：每台机器 clone 本仓库，每次 pull 后重跑一次安装复制。

## 许可

- 本仓库的精选编排、技能文本、脚本：**MIT**
- vendor 进来的组件弹药库保留其**原始许可**——见各 `registry/<name>/` 目录内的 `LICENSE` 与 `registry/SOURCES.md` 的逐源条款。大部分是 MIT 或带署名的 MIT
- 设计灵感站（Awwwards、Mobbin、Dribbble……）**只编目不复制**——其内容不可再分发，仅作视觉参照

## 贡献

这是个人基础设施仓库，但欢迎以 issue/PR 推荐高质量新增源（有可复制源码和宽松许可的动画组件库）。

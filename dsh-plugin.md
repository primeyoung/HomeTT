# DeepSeek Harness（DSH）插件评估与扩展清单

> **文档用途**：记录 DSH 插件的功能、来源、推荐等级、适用场景与安装验证情况，并为后续新增插件、依赖关系和实践经验预留扩展空间。  
> **维护原则**：以插件原始仓库 README、版本说明和实际安装测试为准；社区目录仅作为发现线索。插件状态会随版本变化，安装前请重新核对。

---

## 1. 评级标准

| 等级 | 定义 | 判断标准 |
|---|---|---|
| **T0 — 必装** | 基础安全或核心能力，建议优先部署 | 对日常开发安全、稳定性有直接且普遍的价值 |
| **T1 — 推荐装** | 对常见工作流有明显帮助 | 能提升开发效率、自动化能力、可维护性或可观测性 |
| **T2 — 选装** | 特定场景下有价值 | 功能较垂直、存在较多重叠、兼容性待验证，或当前并非核心需求 |

**注意：** T0 不代表“所有环境都必须安装”。任何会修改文件、执行命令、访问桌面或连接外部服务的插件，都应先理解权限范围，并在测试项目中验证。

## 2. 当前插件总览

| # | 插件 | 主要功能 | 推荐等级 | GitHub / 项目地址 | 核实情况 |
|---:|---|---|:---:|---|---|
| 1 | cc-safety-net | 在执行前检查危险命令、破坏性 Git 操作及敏感文件访问，提供安全防护 | **T0** | https://github.com/kenryu42/cc-safety-net | 已找到原始仓库 |
| 2 | dsh-visualize | 在 DSH 对话中生成交互式 HTML、图表、模拟器和 UI 示意 | T2* | https://github.com/Nagi-ovo/dsh-visualize | 已找到原始仓库；需核对 DSH 版本兼容性 |
| 3 | dsh-cost-meter | 统计 Token、模型调用成本、预算、余额及套餐额度等 | T1 | https://github.com/Han-1413141/dsh-cost-meter | 已找到原始仓库 |
| 4 | billion-context | 长上下文管理、上下文压缩与可逆摘要，辅助长会话工作 | T1 | https://github.com/ranxianglei/billion-context | 已找到原始仓库；需评估压缩策略 |
| 5 | DSH-better-sidebar | 增强侧边栏，集成文件查看/编辑、终端、Git、侧边对话和子代理界面 | T1 | https://github.com/omdsh-dev/DSH-better-sidebar | 已找到原始仓库 |
| 6 | dsh-univer-office | 集成表格、文档、幻灯片、画布等办公能力 | T2 | https://github.com/dream-num/dsh-univer-office | 已找到原始仓库；留意与其他插件的配置修改冲突 |
| 7 | dsh-im | 即时通讯平台接入/消息网关（具体项目身份待确认） | T2 | **待确认**；可能相关项目：https://github.com/zhuiyueya/dsh-im-gateway | 尚不能确认它就是用户所指的 dsh-im |
| 8 | dsh-browser-cdp | 通过远程 CDP 控制浏览器，供 Agent 执行浏览器任务 | T2 | https://dshindex.com/plugins/dsh-browser-cdp | 找到目录条目，原始 GitHub 仓库地址尚未核实 |
| 9 | dsh-ego-browser | 提供结构化浏览器工具，如页面快照、元素定位、点击、表单填写和截图 | T2 | https://github.com/omdsh-dev/dsh-ego-browser | 已找到原始仓库；Windows 兼容性需实测 |
| 10 | dsh-windows-mcp | Windows 桌面自动化，包括 UI 自动化、截图、键鼠、剪贴板、进程等 | T1 | https://github.com/helloHub1212/dsh-windows-mcp | 已找到原始仓库；有明确运行环境要求 |
| 11 | oh-story-dsh | 小说、短剧、互动游戏、视频解说等内容创作工作台 | T2 | https://github.com/zenstory-ai/oh-story-dsh | 已找到原始仓库 |
| 12 | archify | 辅助生成架构图、架构映射和架构相关产物 | T1 | https://github.com/tt-a1i/archify | 用户提供的仓库；社区集成形态需按 README 安装 |
| 13 | dsh-pua | 任务受阻时推动 Agent 继续排查、尝试替代方案并验证结果 | T1 | https://github.com/MichengAI/dsh-pua | 已找到原始仓库 |
| 14 | dsh-agency-agents | 提供大量专业角色/Agent，支持按专业领域拆分任务 | T1 | https://github.com/MichengAI/dsh-agency-agents | 已找到原始仓库 |
| 15 | dsh-permission-rules | 通过规则配置工具调用的允许、拒绝或人工确认策略 | T1 | https://github.com/PerryLink/dsh-permission-rules | 已找到原始仓库 |
| 16 | dsh-ide-git | IDE 与 Git 工作流增强（具体项目身份待确认） | T2 | **待确认** | 尚未找到可可靠确认的原始仓库 |
| 17 | dsh-skills-manager | 统一管理 Skills，支持浏览、搜索、启停、创建、导入、更新和备份等 | T1 | https://github.com/MichengAI/dsh-skills-manager | 已找到原始仓库 |
| 18 | dsh-free-search | 免费/多引擎 Web 搜索能力，部分后端无需 API Key，并支持回退 | T1 | https://github.com/DDDMUC/dsh-free-search | 已找到原始仓库 |

\* `dsh-visualize` 如果你的工作流经常需要图表、交互原型或可视化解释，可提升为 T1。

## 3. 推荐安装顺序

建议分批安装，而不是一次性安装全部插件。每批安装后都应重启 DSH、检查日志，并完成一组真实任务验证。

### 第一批：安全底座

- [ ] `cc-safety-net` — T0
- [ ] `dsh-permission-rules` — T1

**验证重点**
- [ ] 危险命令是否能被正确拦截或要求确认
- [ ] 规则是否误拦正常开发命令
- [ ] 文件读写、Git 操作和外部访问权限是否符合预期
- [ ] 插件异常时是否有清晰日志，是否影响 DSH 正常启动

### 第二批：开发效率与可观测性

- [ ] `dsh-cost-meter` — T1
- [ ] `billion-context` — T1
- [ ] `DSH-better-sidebar` — T1
- [ ] `dsh-skills-manager` — T1

**验证重点**
- [ ] Token 与费用统计是否准确
- [ ] 上下文压缩前后，关键需求、约束和代码事实是否保留
- [ ] 侧边栏文件编辑、终端和 Git 功能是否稳定
- [ ] Skills 的全局/项目级作用域是否符合预期

### 第三批：自动化与多 Agent

- [ ] `dsh-windows-mcp` — T1
- [ ] `dsh-agency-agents` — T1
- [ ] `dsh-pua` — T1
- [ ] `dsh-free-search` — T1

**验证重点**
- [ ] Windows 桌面操作是否需要额外启用权限
- [ ] Agent 分工是否能明确输入、输出和验收标准
- [ ] 失败重试是否避免无意义循环
- [ ] 搜索结果是否有来源、是否支持备用搜索引擎

### 第四批：架构、浏览器与专项能力

- [ ] `archify` — T1
- [ ] `dsh-visualize` — T2 / 可按需升为 T1
- [ ] `dsh-ego-browser` — T2
- [ ] `dsh-browser-cdp` — T2
- [ ] `dsh-univer-office` — T2
- [ ] `dsh-im` — T2，先确认仓库
- [ ] `oh-story-dsh` — T2
- [ ] `dsh-ide-git` — T2，先确认仓库

**验证重点**
- [ ] 浏览器插件是否存在功能重叠
- [ ] 浏览器自动化在 Windows 环境是否可用
- [ ] 办公插件是否与 Skills 或其他插件修改相同配置
- [ ] 专项插件是否真正进入日常工作流，而不是只增加维护成本

## 4. 需要特别留意的兼容性与重叠

### 4.1 安全插件：cc-safety-net 与 dsh-permission-rules

两者定位不同，可能互补：

- `cc-safety-net`：偏向执行前的危险操作检查与拦截。
- `dsh-permission-rules`：偏向声明式权限策略，决定某类操作允许、拒绝还是需要确认。

建议先分别测试，再组合启用；避免规则重复、冲突或误拦。

### 4.2 浏览器插件：dsh-browser-cdp 与 dsh-ego-browser

两者都涉及浏览器自动化，存在能力重叠。

- 先确认各自支持的浏览器、连接方式、隔离机制和工具接口。
- 不建议在没有明确需求时同时安装。
- `dsh-ego-browser` 的仓库说明中有 Linux/Chrome 相关验证信息，Windows 环境应先做兼容性测试。
- `dsh-browser-cdp` 当前尚未核实原始 GitHub 仓库，安装前先确认来源。

### 4.3 办公与 Skills 管理插件

`dsh-univer-office` 与 `dsh-skills-manager` 可能涉及相同 Skill 包或 DSH 配置的修改。安装前应检查两者 README 中的安装脚本、patch 目标和配置文件路径，避免后安装的插件覆盖先安装的配置。

### 4.4 Windows 桌面自动化

`dsh-windows-mcp` 与 Windows 11 环境较相关，但要确认：

- DSH Desktop 版本是否满足插件要求。
- 是否安装并配置 `uv` 等依赖。
- Computer Use 或桌面控制能力是否需要手动启用。
- 自动化操作是否有确认机制，是否会触碰真实文件或系统设置。

## 5. 安装与验证记录

每安装一个插件，建议复制一份记录并填写。

### 插件安装记录模板

| 项目 | 记录 |
|---|---|
| 插件名称 |  |
| GitHub 地址 |  |
| 安装日期 |  |
| 插件版本 / Commit |  |
| DSH 版本 |  |
| Windows / WSL / Linux 环境 |  |
| 安装方式与命令 |  |
| 依赖项 |  |
| 修改的配置文件 |  |
| 是否需要 API Key |  |
| 权限范围 |  |
| 启动是否成功 |  |
| 核心功能测试 |  |
| 已知问题 |  |
| 是否保留 |  |

### 测试验收清单

- [ ] DSH 能正常启动
- [ ] 插件成功加载，无明显报错
- [ ] 核心功能至少完成一次端到端测试
- [ ] 权限范围符合预期
- [ ] 与已安装插件不存在明显冲突
- [ ] 卸载或禁用方法已确认
- [ ] 已记录版本、配置变更和问题

## 6. 后续扩展区

以下区域用于后续持续补充，不需要一次填完。

### 6.1 待评估插件

| 插件名称 | 项目地址 | 主要功能 | 初步等级 | 评估状态 | 备注 |
|---|---|---|---|---|---|
| 待补充 |  |  | T0 / T1 / T2 | 未评估 |  |
| 待补充 |  |  | T0 / T1 / T2 | 未评估 |  |
| 待补充 |  |  | T0 / T1 / T2 | 未评估 |  |
| 待补充 |  |  | T0 / T1 / T2 | 未评估 |  |
| 待补充 |  |  | T0 / T1 / T2 | 未评估 |  |

### 6.2 插件依赖与冲突矩阵

| 插件 A | 插件 B | 关系（依赖 / 互补 / 重叠 / 冲突 / 未知） | 验证结果 | 处理方案 |
|---|---|---|---|---|
| cc-safety-net | dsh-permission-rules | 互补，需验证规则是否重复 | 待测试 |  |
| dsh-browser-cdp | dsh-ego-browser | 功能可能重叠 | 待测试 | 优先选一个 |
| dsh-univer-office | dsh-skills-manager | 可能修改相同配置 | 待测试 |  |
| 待补充 | 待补充 | 未知 | 未测试 |  |

### 6.3 需求与插件映射

| 工作场景 | 需要的能力 | 对应插件 | 当前覆盖情况 | 待补足能力 |
|---|---|---|---|---|
| AI 全栈开发 | 编码、调试、Git、测试、项目理解 | DSH 基础能力 + 待补充 | 待评估 |  |
| AI 技术架构 | 架构分析、架构图、技术选型 | archify、dsh-visualize | 部分覆盖 |  |
| 多 Agent 协作 | 专业角色、任务拆分、结果验收 | dsh-agency-agents | 部分覆盖 |  |
| 自动化执行 | 浏览器、Windows 桌面、外部工具 | dsh-windows-mcp、浏览器插件 | 部分覆盖 |  |
| 综合办公 | 文档、表格、幻灯片、消息 | dsh-univer-office、dsh-im（待确认） | 部分覆盖 |  |

### 6.4 版本升级记录

| 日期 | 插件 | 原版本 | 新版本 | 变更内容 | 是否回归测试 | 结果 |
|---|---|---|---|---|---|---|
|  |  |  |  |  | [ ] |  |
|  |  |  |  |  | [ ] |  |
|  |  |  |  |  | [ ] |  |

### 6.5 问题与解决方案

| 日期 | 插件 | 问题现象 | 原因 | 解决方法 | 是否已解决 |
|---|---|---|---|---|---|
|  |  |  |  |  | [ ] |
|  |  |  |  |  | [ ] |
|  |  |  |  |  | [ ] |

## 7. 维护规范

1. **先确认来源**：优先使用插件作者的原始 GitHub 仓库；目录页不能替代原始仓库。
2. **先看版本要求**：确认 DSH 版本、操作系统、运行时和依赖版本。
3. **分批安装**：每批只安装少量插件，出问题时更容易定位。
4. **记录配置变更**：安装前备份配置文件，记录插件修改了哪些路径。
5. **最小权限**：只开放完成任务所需的权限，桌面控制、文件访问和网络访问尤其需要谨慎。
6. **定期复核**：关注仓库活跃度、Issue、Release、兼容性和安全问题。
7. **按实际价值留存**：长期没有进入工作流、与现有功能重复或维护成本过高的插件，可以禁用或卸载。

---

## 8. 文档变更记录

| 版本 | 日期 | 修改内容 |
|---|---|---|
| v1.0 | 2026-11-27 | 建立 18 个插件初始清单、推荐等级、安装批次及扩展模板 |
|  |  |  |

**下一次建议更新内容：**
- 补齐 `dsh-im`、`dsh-ide-git` 的准确仓库地址。
- 核实 `dsh-browser-cdp` 的原始 GitHub 仓库。
- 在 Windows 11 + 当前 DSH 版本环境下逐个安装测试。
- 根据真实使用结果调整 T0 / T1 / T2 等级。

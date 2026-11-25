# DSH Fullstack Dev Kit 使用说明

> 适用环境：Windows + DSH Desktop 2.0.24-next  
> 推荐 Profile：`fullstack-dev`  
> 主要开发目录：`D:\Projects`  
> 配置包：`DSH-Fullstack-Dev-Kit.zip`

---

## 1. 配置包的定位

本配置包用于将 DSH Desktop 打造成一个综合型 AI 开发工作环境，主要覆盖：

- AI 全栈开发工程师
- AI 技术架构师
- AI 自动化执行助手
- AI 综合工作助手

目标工作模式：

1. 接收自然语言需求。
2. 分析需求并识别潜在问题。
3. 制定产品方案和技术架构。
4. 拆分开发任务。
5. 编写代码和创建文件。
6. 执行测试、调试和修复。
7. 检查代码质量和安全风险。
8. 管理 Git 版本。
9. 生成项目文档。
10. 汇总结果并交付。

默认采用高度自主模式：

- 普通开发任务：AI 自主执行。
- 常规文件操作：AI 自主执行。
- 本地测试和调试：AI 自主执行。
- 普通 Git 本地操作：AI 自主执行。
- 生产环境操作、重要数据删除、远程推送、敏感信息传输等：先征求用户批准。

注意：本配置包包含规则、模板和 Skills，不代表 DSH Desktop 的所有底层 Agent、工具、MCP、模型路由和自动化能力已经自动启用。

---

## 2. 配置包目录结构

配置包主要包含以下内容：

```text
DSH-Fullstack-Dev-Kit/
│
├── README.md
│
├── global/
│   ├── GLOBAL-RULES.md
│   └── SECURITY-AND-APPROVALS.md
│
├── skills/
│   ├── Skill-1/
│   │   └── SKILL.md
│   ├── Skill-2/
│   │   └── SKILL.md
│   └── ...
│
├── workflows/
│   ├── Workflow-1.md
│   ├── Workflow-2.md
│   ├── Workflow-3.md
│   └── Workflow-4.md
│
├── project-template/
│   ├── AGENTS.md
│   └── docs/
│       ├── architecture/
│       ├── decisions/
│       ├── requirements/
│       └── ...
│
├── scripts/
│   └── install-skills.ps1
│
└── docs/
    ├── INSTALL-WINDOWS.md
    ├── PROFILE-SETUP.md
    └── VALIDATION-CHECKLIST.md
```

以上是模块结构示意。实际使用时以 ZIP 内的文件名和目录为准。

---

# 3. README.md：总入口说明

## 用途

README 是整个配置包的入口文件，介绍：

- 配置包的定位。
- 目录结构。
- 各模块用途。
- 安装顺序。
- 基本使用方式。

## 如何使用

第一次使用配置包时，先打开 README.md。

建议按照以下顺序阅读：

1. README.md
2. docs/INSTALL-WINDOWS.md
3. docs/PROFILE-SETUP.md
4. global/GLOBAL-RULES.md
5. global/SECURITY-AND-APPROVALS.md
6. docs/VALIDATION-CHECKLIST.md

README 主要用于了解配置包，不需要每次启动 DSH 都重新阅读。

---

# 4. global：全局规则

## 4.1 GLOBAL-RULES.md

### 用途

定义 AI 在不同项目中的通用行为规范。

主要包括：

- 角色定位。
- 需求分析原则。
- 技术选型原则。
- 架构设计原则。
- 编码规范。
- 测试规范。
- 调试和问题修复原则。
- Git 管理规范。
- 文档维护规范。
- 任务执行与交付规范。

### 如何使用

这是全局规则参考文件。

建议：

1. 在 DSH Desktop 中确认当前 Profile 的全局规则配置入口。
2. 查看 DSH 是否支持自动加载全局 Markdown 规则。
3. 如果支持，将文件内容配置到对应的全局指令位置。
4. 如果不支持自动加载，可以将其作为规则参考，在启动任务时明确要求遵循。

例如：

```text
请按照我的全局开发规则执行本任务。

规则文件：
global/GLOBAL-RULES.md

请先阅读规则，再进行需求分析和实施。
```

### 重要说明

仅仅把 GLOBAL-RULES.md 放在某个目录中，并不代表 DSH 一定会自动加载。

必须确认 DSH Desktop 的实际加载机制。

---

## 4.2 SECURITY-AND-APPROVALS.md

### 用途

定义 AI 的安全边界和审批机制。

核心原则：

**低风险任务自主执行，高风险任务经过确认。**

### 日常使用

以下操作通常可以自主执行：

- 创建项目文件。
- 修改普通源代码。
- 安装常规开发依赖。
- 执行本地测试。
- 运行本地开发服务。
- 检查代码。
- 创建本地 Git Commit。

以下操作需要提前确认：

- 删除重要数据。
- 执行数据库结构迁移。
- 修改生产环境。
- 部署正式版本。
- 修改重要服务器配置。
- 向远程仓库推送代码。
- 处理敏感凭据。
- 向外部系统传输敏感数据。

### 使用示例

```text
请自主完成项目开发和本地测试。

如果遇到生产环境操作、重要数据删除、
远程推送或敏感信息传输，
必须先向我说明风险并等待批准。
```

---

# 5. skills：能力模块

## 5.1 Skills 是什么？

Skill 可以理解为 AI 的专业能力说明书。

它不是一个独立运行的软件，而是一套可被 Agent 按需读取和使用的专业知识、操作流程和工作规范。

例如：

- 项目分析能力。
- 架构设计能力。
- 前端开发能力。
- 后端开发能力。
- 自动化测试能力。
- 代码审查能力。
- Git 管理能力。
- 调试能力。

具体能力以配置包中 10 个 SKILL.md 文件的实际内容为准。

## 5.2 每个 Skill 如何使用？

每个 Skill 通常包含一个 SKILL.md 文件。

使用步骤：

1. 找到对应 Skill 文件夹。
2. 阅读其中的 SKILL.md。
3. 确认 DSH 是否支持自动发现 Skills。
4. 如果支持，按照 DSH 的 Skills 目录规范安装。
5. 在任务中提出相关需求，由 Agent 按需调用。

例如：

```text
请分析当前项目的整体架构。

优先使用项目分析和架构设计相关的 Skill。
分析完成后，输出：
1. 项目结构
2. 技术栈
3. 核心模块
4. 依赖关系
5. 潜在问题
6. 优化建议
```

## 5.3 Skills 的安装位置

安装脚本默认目标为：

```text
%USERPROFILE%\.dsh\skills
```

对应 Windows 路径通常类似：

```text
C:\Users\你的用户名\.dsh\skills
```

注意：

这个位置是配置包安装脚本预设的路径，不应直接认定为所有 DSH Desktop 版本的实际 Skills 加载目录。

安装后需要确认：

- 文件是否复制成功。
- 每个 Skill 是否包含 SKILL.md。
- DSH 是否能识别这些 Skill。
- 是否需要重启应用或重新加载配置。

## 5.4 如何判断 Skill 是否生效？

可以在 DSH 中输入：

```text
请检查当前环境可以使用哪些 Skills。

列出：
1. 已发现的 Skills
2. 每个 Skill 的名称
3. 每个 Skill 的用途
4. Skill 的实际加载路径
5. 是否成功加载

不要把仅存在于磁盘中的文件
误报为已经加载的 Skill。
```

---

# 6. workflows：工作流模板

## 6.1 工作流是什么？

Skill 主要提供专业能力。

Workflow 主要规定完成一类任务时的执行顺序。

可以理解为：

- Skill：教 AI 怎么做。
- Workflow：告诉 AI 按什么顺序做。

工作流通常用于约束完整任务的执行步骤。

## 6.2 如何使用？

工作流 Markdown 文件是可复用的执行模板。

使用方式：

1. 找到与当前任务匹配的工作流。
2. 阅读工作流中的执行步骤。
3. 在 DSH 对话中要求遵循该工作流。
4. 提供项目路径和任务目标。
5. 由 Agent 按照流程执行。

示例：

```text
请按照项目开发工作流执行本任务。

项目目录：
D:\Projects\MyApp

任务：
增加用户登录和注册功能。

要求：
1. 先分析现有项目。
2. 明确需求和验收标准。
3. 设计技术方案。
4. 制定实施计划。
5. 完成开发。
6. 执行测试。
7. 修复问题。
8. 更新相关文档。
9. 汇总交付结果。

未经批准，不得执行生产环境操作。
```

## 6.3 Skill 和 Workflow 如何配合？

推荐方式：

```text
用户提出任务
    ↓
选择对应 Workflow
    ↓
Workflow 规划执行步骤
    ↓
Agent 按需加载 Skills
    ↓
执行开发和测试
    ↓
主 Agent 汇总结果
    ↓
交付
```

不需要每次都手动指定所有 Skills。

简单任务可以直接执行，复杂任务再使用完整工作流。

---

# 7. project-template：项目模板

这是每个新项目最重要的配置部分之一。

它用于建立项目自己的规则和知识库。

## 7.1 AGENTS.md

### 用途

AGENTS.md 是项目级 AI 开发规则文件。

它主要规定：

- 当前项目是什么。
- 使用什么技术栈。
- 项目目录结构。
- 代码规范。
- 架构约束。
- 测试要求。
- 开发流程。
- 不允许违反的项目约束。

### 如何使用

假设新项目位于：

```text
D:\Projects\MyApp
```

将项目模板复制到项目根目录。

最终结构类似：

```text
D:\Projects\MyApp\
│
├── AGENTS.md
├── docs\
│
├── src\
├── package.json
└── ...
```

然后根据项目实际情况修改 AGENTS.md。

例如：

```markdown
# Project Instructions

## 项目名称

MyApp

## 项目定位

一个面向用户的 Web 应用。

## 技术栈

- Vue 3
- TypeScript
- Vite
- Node.js
- MySQL
- Docker

## 开发规范

- 使用 TypeScript。
- 组件保持职责单一。
- 避免重复代码。
- 优先复用现有组件。
- 新增功能必须提供必要测试。
- 修改架构时更新文档。

## 测试要求

- 执行相关单元测试。
- 执行必要的集成测试。
- 检查构建是否通过。
- 不允许通过删除测试来制造通过结果。
```

### 重要说明

AGENTS.md 是否自动生效，取决于 DSH 使用的 Agent 是否支持读取该文件。

如果不支持，需要通过项目指令或 Agent 配置显式加载。

---

## 7.2 docs：项目知识库

### 用途

docs 用于保存项目长期知识。

推荐内容：

| 目录 | 用途 |
|---|---|
| requirements | 需求文档 |
| architecture | 架构设计 |
| decisions | 技术决策记录 |
| api | API 接口文档 |
| development | 开发指南 |
| testing | 测试方案 |
| deployment | 部署文档 |

### 如何使用

当 AI 完成重要任务时，要求同步更新文档。

例如：

```text
本次开发完成后，请检查项目文档。

如果有以下变化：
- 新增功能
- 修改架构
- 修改技术选型
- 修改 API
- 修改数据库结构
- 修改部署方式

请同步更新对应的 docs 文档。

不要为了形式而创建无意义文档。
```

### 建议

不要把所有内容都塞进 AGENTS.md。

AGENTS.md 负责告诉 AI 如何工作。

docs 负责保存项目具体知识。

---

# 8. scripts：安装脚本

## install-skills.ps1

### 用途

将配置包中的 Skills 复制到预设的 DSH Skills 目录。

默认目标：

```text
%USERPROFILE%\.dsh\skills
```

### 如何使用

第一步：解压配置包。

第二步：打开 PowerShell。

第三步：进入配置包目录：

```powershell
cd "你的配置包解压目录"
```

第四步：执行：

```powershell
powershell -ExecutionPolicy Bypass -File ".\scripts\install-skills.ps1"
```

第五步：检查 Skills 文件：

```powershell
Get-ChildItem "$env:USERPROFILE\.dsh\skills" -Recurse
```

### 注意事项

- 执行前确认脚本内容。
- 不要随意修改 DSH 数据目录。
- 如果 DSH 使用其他 Skills 目录，需要先确认实际加载位置。
- 安装成功不等于 DSH 已经成功加载。

---

# 9. docs：安装、Profile 和验收文档

## 9.1 INSTALL-WINDOWS.md

用途：指导 Windows 环境安装。

建议第一次安装时完整阅读。

主要关注：

- 配置包解压。
- Skills 安装。
- PowerShell 执行。
- 目录检查。
- 安装后的验证。

## 9.2 PROFILE-SETUP.md

用途：指导创建独立的开发 Profile。

建议使用：

```text
fullstack-dev
```

保留原来的：

```text
desktop
```

这样可以将开发配置与原有使用习惯分开管理。

注意：

Profile 是否隔离会话、账号凭据、工具和其他数据，取决于 DSH Desktop 的实际实现。

不能仅凭 Profile 名称认定它们完全隔离。

## 9.3 VALIDATION-CHECKLIST.md

用途：安装后的验收清单。

建议依次检查：

- [ ] Profile 已创建。
- [ ] Skills 文件已安装。
- [ ] DSH 可以发现 Skills。
- [ ] 全局规则已配置或能够显式加载。
- [ ] 安全审批规则已配置。
- [ ] 项目 AGENTS.md 已放置。
- [ ] 项目文档目录已建立。
- [ ] 简单代码任务执行成功。
- [ ] 测试和调试任务执行成功。
- [ ] Git 操作符合审批规则。
- [ ] 高风险操作能够主动请求确认。

---

# 10. 新项目的标准使用流程

以后每创建一个项目，按照下面的流程操作。

## 第一步：创建项目目录

例如：

```text
D:\Projects\MyApp
```

## 第二步：复制项目模板

将：

```text
project-template/AGENTS.md
project-template/docs/
```

复制到项目根目录。

## 第三步：完善 AGENTS.md

让 AI 根据实际项目修改：

- 项目介绍。
- 技术栈。
- 目录结构。
- 开发规范。
- 测试规范。
- 安全约束。

## 第四步：让 AI 分析项目

```text
请完整分析当前项目。

先阅读 AGENTS.md 和 docs 中的项目文档。

识别：
1. 项目定位
2. 技术栈
3. 项目结构
4. 核心模块
5. 主要依赖
6. 当前完成情况
7. 潜在风险

如果文档与代码不一致，以实际代码为依据，
并列出需要修正的文档。
```

## 第五步：提出开发需求

```text
我需要增加一个用户管理模块。

请按照全局开发规则和当前项目 AGENTS.md 执行。

先分析需求和现有代码，
然后设计方案并制定实施计划。

对于普通开发任务可以自主执行。

遇到重大架构变更或高风险操作时，
先向我说明并等待批准。
```

## 第六步：开发、测试和交付

要求 AI：

- 完成代码。
- 执行测试。
- 修复问题。
- 检查代码质量。
- 更新文档。
- 汇总修改文件。
- 说明测试结果。
- 说明未完成事项和风险。

---

# 11. 日常任务应该怎么选择？

| 任务类型 | 推荐使用方式 |
|---|---|
| 简单代码修改 | 直接提出需求 |
| 新功能开发 | 使用开发工作流 |
| 新项目创建 | 使用项目初始化相关能力 |
| 项目架构分析 | 使用架构分析相关 Skill |
| Bug 修复 | 使用调试和问题修复相关能力 |
| 代码审查 | 使用代码审查相关能力 |
| 自动化测试 | 使用测试相关能力 |
| Git 操作 | 遵循 Git 管理规则 |
| 部署项目 | 使用部署工作流，并遵循审批规则 |
| 技术调研 | 使用技术研究相关能力 |

不需要每次手动指定所有规则和 Skills。

推荐让全局规则负责通用约束，项目规则负责项目细节，Skills 负责专业能力，Workflow 负责执行流程。

---

# 12. 推荐的最终配置架构

```text
DSH Desktop
│
└── fullstack-dev Profile
    │
    ├── 全局规则
    │   ├── GLOBAL-RULES.md
    │   └── SECURITY-AND-APPROVALS.md
    │
    ├── Skills
    │   ├── 专业能力 1
    │   ├── 专业能力 2
    │   ├── 专业能力 3
    │   └── ...
    │
    ├── Workflows
    │   ├── 工作流 1
    │   ├── 工作流 2
    │   ├── 工作流 3
    │   └── 工作流 4
    │
    └── Projects
        │
        ├── Project-A
        │   ├── AGENTS.md
        │   └── docs/
        │
        ├── Project-B
        │   ├── AGENTS.md
        │   └── docs/
        │
        └── Project-C
            ├── AGENTS.md
            └── docs/
```

---

# 13. 后续还需要完善的能力

当前配置包主要解决规则、Skills 模板、工作流和项目知识库问题。

后续还需要根据 DSH Desktop 2.0.24-next 的真实功能逐步完善：

1. Agent 编排与子 Agent 协作。
2. MCP 工具集成。
3. 模型路由和多模型供应商管理。
4. 浏览器自动化。
5. 数据库工具。
6. GitHub 工作流。
7. 自动化测试和持续集成。
8. Docker 和 DevOps。
9. Windows 与 WSL2 跨环境协作。
10. 任务状态管理和长期项目记忆。

这些属于后续能力集成，不应误认为已经包含在当前 ZIP 中。

---

# 14. 最重要的使用原则

记住以下四条：

**第一：全局规则管所有项目。**

定义 AI 的通用行为、安全边界和开发原则。

**第二：项目规则管当前项目。**

AGENTS.md 负责项目专属约束，docs 保存项目知识。

**第三：Skills 提供专业能力。**

让 AI 在需要时调用对应的专业知识和工作方法。

**第四：Workflow 管理完整执行流程。**

让 AI 按照规范完成需求分析、方案设计、开发、测试和交付。

最终目标：

让 DSH 不只是一个能够生成代码的 AI，而是一个能够理解项目、制定方案、自主开发、测试修复、管理工程并完成交付的 AI 全栈开发工作环境。

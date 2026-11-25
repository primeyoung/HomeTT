# DSH Fullstack Dev Kit

适用环境：
- DSH Desktop / DSH NEXT 2.0.24-next
- 上游 DeepSeek Harness v0.2.2-rc.5
- Windows 10/11
- 默认 DSH Home：`%USERPROFILE%\.dsh`
- 项目目录示例：`D:\Projects`

> 本套件是规则、Skills 和项目模板，不是 DSH Desktop 安装包，也不会自动修改 Profile、模型供应商、插件或权限配置。
> DSH Desktop 是社区维护项目；请以你安装版本的界面和随附运行时为准。

## 目录

- `global/GLOBAL-RULES.md`：全局行为规则参考稿。先阅读；不要假设 DSH 会自动加载这个独立文件。
- `skills/`：符合 DSH 本地 Skill 格式的 Skills。
- `project-template/AGENTS.md`：新项目的项目规则模板。
- `project-template/docs/`：项目知识库模板。
- `workflows/`：工作流操作手册。它们是可供 Agent 遵循的 Markdown Playbooks，不是未经验证的 DSH 可执行 Workflow 插件。
- `scripts/Install-DSH-Skills.ps1`：将 Skills 安装到用户级 DSH skills 目录。
- `docs/PROFILE-SETUP.md`：Profile 建立与核验说明。
- `docs/VALIDATION.md`：安装后的检查清单。

## 安装 Skills（推荐先做这一步）

1. 解压本压缩包。
2. 右键 PowerShell，进入解压后的目录。
3. 执行：

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\scripts\Install-DSH-Skills.ps1
```

脚本默认安装到：

```text
%USERPROFILE%\.dsh\skills
```

如果你在 DSH Desktop 的「桌面设置 → Profile 与数据」中改过 DSH 数据目录，请使用脚本参数指定真实目录：

```powershell
.\scripts\Install-DSH-Skills.ps1 -DshHome "D:\AI\DSH"
```

脚本不会覆盖已存在的同名 Skill；遇到冲突会跳过并提示。

## 新项目模板

把 `project-template` 整个目录复制到 `D:\Projects\<项目名>`，然后：

1. 初始化 Git 仓库（如果项目尚未使用 Git）。
2. 将 `AGENTS.md` 中的项目占位信息补齐。
3. 删除不适用的文档模板，按需填写其余文档。
4. 在 DSH Desktop 中打开项目目录。
5. 让 DSH 先阅读 `AGENTS.md` 和 `docs/`，再开始实施任务。

## 重要边界

- `AGENTS.md` 是项目规则文件；不要把它误当成 Harness Profile manifest。
- Skills 采用 `name`、`description` YAML frontmatter，且 Skill 名称使用 kebab-case。
- 用户级 Skills 放在 `<DSH_HOME>/skills/<skill-name>/SKILL.md`。
- 项目级 Skills 可放在项目 `.agents/skills/<skill-name>/SKILL.md`。
- DSH Skills 的本地发现范围和优先级以对应 Harness 版本为准。
- `fullstack-dev` Profile 的创建与插件安装必须通过 DSH Desktop / 随附 DSH CLI 的真实入口完成；不要手工伪造 `package.json`、`dsh.profile` 或 `cordis.patch.yml`。
- Profile 不隔离同一 DSH Home 中的会话、账号和凭据。需要数据隔离时，应使用 Desktop 提供的数据目录设置，并先备份。
- 本套件不会为你添加 MCP server、执行外部脚本、配置模型 API Key 或启用生产部署。

## 推荐启用顺序

1. 安装 Skills。
2. 在 DSH Desktop 中创建或初始化 `fullstack-dev` Profile（见 `docs/PROFILE-SETUP.md`）。
3. 打开一个测试项目，确认 Skill 能被发现。
4. 放入 `project-template/AGENTS.md` 并补齐项目信息。
5. 再按需配置模型、插件、MCP 和权限。

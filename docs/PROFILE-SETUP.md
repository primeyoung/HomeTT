# fullstack-dev Profile 建立说明

## 先备份

在 DSH Desktop 中打开「设置 → 桌面设置 → Profile 与数据」，确认当前 DSH Home，并先执行备份。默认 Home 通常为 `%USERPROFILE%\.dsh`；如果你改过数据目录，以界面显示为准。

## 建立自定义 Profile

DSH Desktop 2.0.24-next 把 Profile、依赖和配置补丁组合成一个运行环境。自定义 Profile 不应通过手工复制另一个 Profile 目录来创建。

建议从 DSH Desktop 托盘或「Profile 与数据」界面进入 Profile 管理。如果界面没有提供自定义名称创建入口，使用 DSH Desktop 托盘打开的内置终端，并按当前随附 Harness CLI 文档创建。

Harness CLI 的 profile/plugin 语义如下（请在 DSH Desktop 内置终端执行，不要在普通 PowerShell 中假设全局 dsh 已安装）：

```powershell
dsh plugin --profile fullstack-dev add <经核实的插件包名>
```

这条命令的作用是初始化目标 Profile 并将指定插件包交给 pnpm 安装。不要把尖括号占位符原样执行，也不要为了创建 Profile 随意安装未知插件。

一个自定义 Profile 的底层结构包含：
- `package.json`：Profile manifest 和插件依赖。
- `dsh.profile.bundles`：有序 Bundle 列表。
- `cordis.patch.yml`：该 Profile 的用户补丁层。

Profile patch 的配置会覆盖前序层的整行配置，不是任意深度合并。除非清楚了解当前版本的 schema 和默认 Bundle，不要手工编辑这些文件。

## Profile 命名建议

- `desktop`：保留现有桌面环境。
- `fullstack-dev`：目标开发环境。

注意：同一 DSH Home 下的 Profile 不隔离会话、账号和凭据。Profile 是配置组合，不是安全边界。

## 当前阶段建议

先安装 Skills 并确认它们能被当前会话发现，再配置 Profile 插件和补丁。Agent Team、MCP、外部自动化插件均应逐项核实版本兼容性和权限后再启用。

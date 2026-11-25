# 安装验证清单

## Skills
- [ ] 确认 DSH Desktop 当前 DSH Home。
- [ ] 执行 `Install-DSH-Skills.ps1`。
- [ ] 在 DSH 会话中检查 Skills 菜单/目录是否能发现 `engineering-core`。
- [ ] 调用一个 Skill，确认模型收到的内容与文件一致。
- [ ] 如果未发现，检查当前 Profile 是否启用了本地 Skill filesystem provider；不要通过猜测补丁字段解决。

## 项目规则
- [ ] 将 `project-template` 复制到一个测试仓库。
- [ ] 填写 `AGENTS.md` 项目事实。
- [ ] 在 DSH 中打开该仓库。
- [ ] 要求 DSH 先复述项目规则，再执行一个只读分析任务。
- [ ] 检查它是否读取了项目级 Skills。

## Profile
- [ ] 先备份 DSH Home。
- [ ] 创建或初始化 `fullstack-dev`。
- [ ] 确认切换 Profile 后应用成功启动。
- [ ] 确认插件变更后重启了 Desktop。
- [ ] 确认 `desktop` Profile 仍然可用。

## 安全
- [ ] 未将 API Key 写入规则文件或 Git。
- [ ] 未开启不必要的 LAN Web 访问。
- [ ] 未安装未经审查的 MCP server。
- [ ] 生产部署、远程推送和破坏性数据操作仍会请求审批。

---
name: automation-devops
description: Design reliable scripts, browser automation, scheduled jobs, CI/CD pipelines, deployment, observability, and rollback.
whenToUse: Use for automation, RPA, scheduled tasks, CI/CD, Docker, deployment, infrastructure, or operations.
---

# Automation and DevOps

1. Prefer stable APIs and structured interfaces over brittle screen automation.
2. Make scripts idempotent where possible; define inputs, outputs, exit codes, timeouts, retries, and logs.
3. Separate development, test, staging, and production configuration.
4. Never place secrets in source, logs, command history, or committed configuration.
5. Use least privilege and isolate execution environments.
6. Add health checks, observability, alerting, and rollback where appropriate.
7. Require approval for production deploys, data migrations, destructive operations, external submissions, and financial actions.
8. Test automation against controlled fixtures before real accounts or production data.
9. Report what actually ran and whether the external side effect was confirmed.

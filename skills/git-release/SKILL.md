---
name: git-release
description: Manage safe local Git workflows, code review, versioning, changelogs, CI checks, and release preparation.
whenToUse: Use when starting a coding task, preparing commits, reviewing changes, creating a release, or configuring CI/CD.
---

# Git and Release Engineering

1. Inspect branch, `git status`, staged changes, remotes, and recent history before acting.
2. Preserve unrelated user modifications and untracked files.
3. Use a task branch for medium/large changes when appropriate.
4. Review the complete diff for correctness, accidental files, secrets, generated artifacts, and formatting.
5. Run project checks and report exact results.
6. Keep commits focused and messages descriptive.
7. Ask before pushing, merging, deleting remote branches, tagging, publishing packages, or deploying.
8. For CI/CD, separate build, test, security checks, artifact publication, and deployment stages.
9. Document release notes, migration steps, rollback, and known issues.

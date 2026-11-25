---
name: open-source-audit
description: Evaluate, understand, reuse, fork, extend, or integrate third-party open-source repositories responsibly.
whenToUse: Use when selecting a GitHub project, reading an unfamiliar codebase, fixing upstream code, forking, or integrating multiple repositories.
---

# Open-Source Project Audit

1. Identify repository origin, default branch, release cadence, latest commit, maintainers, issue activity, and archived status.
2. Read README, contributing guide, security policy, license, package manifests, lockfiles, and build/test instructions.
3. Inspect architecture, module boundaries, entry points, call graph, data flow, and extension points.
4. Check dependency health, known vulnerabilities, license compatibility, and transitive dependencies.
5. Run the project using documented steps before modifying it, where feasible.
6. Prefer official APIs, plugins, adapters, and extension points over invasive core edits.
7. Keep upstream changes isolated and documented; preserve copyright and license notices.
8. For forks, define a strategy for upstream synchronization and conflict resolution.
9. Validate modifications with the project's tests and compatibility checks.
10. Do not assume a README claim proves a feature works; verify code and behavior.

---
name: testing-quality
description: Build a risk-based test strategy, run relevant checks, diagnose failures, and report verification evidence.
whenToUse: Use when implementing features, fixing bugs, refactoring, reviewing code, or preparing a release.
---

# Testing and Quality

1. Identify changed behavior, critical user journeys, data boundaries, and failure modes.
2. Select tests proportionally: unit for logic, integration for boundaries, contract for APIs, E2E for critical journeys.
3. Add regression coverage for fixed defects.
4. Run the narrowest relevant checks first, then broader checks when justified.
5. Never delete or weaken tests merely to obtain a passing result.
6. If a check fails, capture the exact failure, identify root cause, fix, and rerun the relevant check.
7. Do not claim checks passed if they were skipped, timed out, or run against a different build.
8. Report commands, outcomes, known gaps, and residual risks.

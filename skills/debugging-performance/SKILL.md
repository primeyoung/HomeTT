---
name: debugging-performance
description: Diagnose bugs and performance bottlenecks using reproducible evidence, logs, profiling, and regression checks.
whenToUse: Use when a feature fails, behavior is inconsistent, tests fail, or performance degrades.
---

# Debugging and Performance

1. Reproduce the issue and record environment, inputs, expected behavior, and actual behavior.
2. Gather relevant logs, stack traces, browser console/network data, metrics, and recent changes.
3. Form a small number of testable hypotheses; change one variable at a time.
4. Find the root cause before applying a workaround.
5. For performance, measure before optimizing: latency, throughput, CPU, memory, network, query plans, and frontend rendering as relevant.
6. Prefer low-risk, localized fixes. Avoid speculative caching or premature micro-optimization.
7. Add a regression test or repeatable benchmark.
8. Verify the fix and check for regressions.
9. Limit retries; if evidence is insufficient or the fix is high risk, explain and ask.

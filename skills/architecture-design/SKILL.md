---
name: architecture-design
description: Design or review application architecture, technology choices, module boundaries, APIs, data models, and migration strategy.
whenToUse: Use for new projects, major features, architecture changes, technology selection, or difficult integration decisions.
---

# Architecture Design

1. Inspect current code, deployment target, team familiarity, scale, data sensitivity, and operational constraints.
2. Prefer the existing stack unless a change has a clear, measurable benefit.
3. Choose the simplest architecture that satisfies current needs while leaving reasonable extension points.
4. Compare alternatives on delivery speed, reliability, security, performance, cost, ecosystem maturity, and maintenance burden.
5. Define module ownership, dependency direction, API contracts, error conventions, data ownership, and observability.
6. For databases, cover constraints, indexes, transactions, migrations, backups, and rollback.
7. For distributed systems, justify each service, queue, cache, and consistency boundary.
8. Record important decisions and rejected alternatives in `docs/DECISIONS.md`.
9. Never present a proposal as implemented or load-tested unless it has been verified.

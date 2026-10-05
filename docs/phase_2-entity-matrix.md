# Phase 2 — 120 Entity Matrix

**State:** TEMPLATE — NOT VERIFIED

This is the authoritative execution matrix for Phase 2.

The Reference inventory in Phase 1 defines the target set:
- 1 Application
- 95 Activities
- 10 Services
- 10 Receivers
- 4 Providers

Total: 120 entities.

## Matrix

| ID | Type | Reference Symbol | Ownership | BaRe Symbol | Strategy | Evidence | State | Result |
|---|---|---|---|---|---|---|---|---|
| APP-001 | Application | `org.swiftapps.swiftbackup.SwiftApp` | INTERNAL | ... | direct | ... | PLANNED | ... |
| ACT-001..095 | Activity | See Phase 1 inventory | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| SRV-001..010 | Service | See Phase 1 inventory | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| RCV-001..010 | Receiver | See Phase 1 inventory | ... | ... | direct/base/delegated | ... | PLANNED | ... |
| PRV-001..004 | Provider | See Phase 1 inventory | ... | ... | direct/delegated | ... | PLANNED | ... |

## Entity State Rule

An entity may move:

```
PLANNED → IMPLEMENTED → COMPILED → TESTED → VERIFIED
```

or to:

```
UNKNOWN / BLOCKED
```

A delegated entity requires delegation evidence; dependency presence alone is insufficient.

## Completion Rule

The matrix is complete only when all 120 entity rows have explicit state and evidence.

No aggregate claim such as “all 120 done” is valid while individual rows remain unresolved.

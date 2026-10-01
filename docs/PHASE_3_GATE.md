# BΛR☰ Phase 3 — UI + Navigation Gate

## Authority

- Reference: Swift Backup 5.1.0
- Version code: 620
- Target repository: savie/BaRe
- Implementation branch: `rewrite`
- Baseline authority: `docs/bare.md`
- Reference snapshot: supplied decompiled Reference / `reference/`
- P1 gate: `docs/PHASE_1_INVENTORY.md`
- P2 gate: `docs/PHASE_2_SKELETON.md`

## Scope

Phase 3 reconstructs the Reference application surface through the P3 boundary:

- UI / Android Views/XML
- Activity navigation and intent contracts
- Activity lifecycle/state boundaries
- permission/introduction/error/loading/dialog surfaces
- visible resource contracts
- Reference-derived P3 dependency boundaries
- the normalized 15-domain parity audit and its follow-up closure

Phase 3 does **not** claim:

- build/install/runtime verification;
- visual runtime parity;
- backup/restore execution;
- provider/engine execution;
- backend/Supabase execution;
- full P4/P5 feature parity.

Reference remains read-only. All implementation changes belong to `app/`.

## Gate status

**PHASE 3 — ACTIVE / FOLLOW-UP CLOSURE**

The 71-Activity P3 surface has reached the evidence-supported UI/navigation boundary:

| Component | Result |
|---|---:|
| Activities | **71 / 71 🟢** |
| Yellow | **0** |
| Red | **0** |
| Services | **3 / 3 structurally covered** |
| Receivers | **8 / 8 structurally covered** |

Green means P3 UI/navigation/state reconstruction is complete through the documented dependency boundary. It does not mean downstream execution is complete.

## P3 lifecycle

```
P1 — Foundation
  ↓
P1 FROZEN
  ↓
P2 — Reference Skeleton
  ├─ 71 Activities
  ├─ 3 Services
  ├─ 8 Receivers
  └─ 0 Reference-owned Providers
  ↓
P2 FROZEN
  ↓
P3 — Activity/UI/navigation reconstruction
  ↓
71-Activity depth audit
  ↓
TOTAL P3 AUDIT — 15 domains
  ↓
normalisation / dedup
  ↓
classification
  ↓
dependency mapping
  ↓
dependency ordering
  ↓
work-package formation
  ↓
FOLLOW-UP CLOSURE
  ↓
TOTAL RE-AUDIT
  ↓
P3 CLOSED / FROZEN
  ↓
P4 GATE REVIEW
```

## Total P3 Audit — 15 domains

The original 15-domain audit is complete and is the historical evidence baseline. Its original verdicts are superseded by later domain-specific re-audits.

| # | Domain | Current closure state |
|---:|---|---|
| 1 | Resource | 🟡 OPEN |
| 2 | Strings | 🟢 CLOSED for current P3-visible surface |
| 3 | Dimensions | 🟢 CLOSED / PASS |
| 4 | Styles / Themes / Colors | 🟡 OPEN |
| 5 | Manifest | 🟡 OPEN |
| 6 | Intent | 🟡 OPEN |
| 7 | Permissions | 🟡 OPEN |
| 8 | Navigation | 🟡 OPEN |
| 9 | Lifecycle / State | 🟡 OPEN |
| 10 | Dialog / Error / Loading | 🟡 OPEN |
| 11 | Branding / Identity | 🟢 CLOSED / STATIC PASS |
| 12 | Java-only | 🟢 CLOSED / PASS |
| 13 | Fake / Stub | 🟡 OPEN |
| 14 | Boundary | 🟡 OPEN |
| 15 | Static Hygiene | 🟡 OPEN |

### Important status rule

The table above is the **current normalized closure register**, not a reproduction of the original audit colors.

A domain becomes 🟢 only after its current evidence-backed exit criterion is satisfied and re-audited.

## Closed domains

### N-03 — Dimensions
- Project-facing/non-library dimension scope audited.
- Reference values restored.
- Required qualifier overrides restored.
- Static PASS.

### N-11 — Branding / Identity
- Current exit criterion: **zero Swift product identity in `app/`**.
- App-owned Swift-derived identifiers were renamed where statically reconciled.
- Swift-specific external callback identity was replaced where app-owned identity was required.
- Reference remains untouched.
- Static PASS.
- Runtime/provider/OAuth success is not claimed.

### N-12 — Java-only
- BaRe application source remains Java-only.
- Static PASS.

## Follow-up execution rule

P3 closure uses **N-Level Full Closure / Audit-to-Green**:

1. Total-audit the complete N-domain.
2. Record the complete contract register before mutation.
3. Classify every finding.
4. Map dependencies and ownership.
5. Implement all actionable items belonging to that N in bounded batches.
6. Re-audit the complete N.
7. Do not stop between sub-batches while actionable work remains for that N.
8. Mark 🟢 only when the N exit criterion is actually satisfied.
9. Items belonging to another N are transferred explicitly; no duplicate mutation.
10. Reference remains read-only throughout.

Every bounded implementation batch must have:

- known scope;
- ownership;
- exclusions;
- static verification;
- re-audit target;
- checkpoint;
- stop/rollback condition.

## Current N closure order

| N | Domain | State |
|---:|---|---|
| N-01 | Resource | 🟡 |
| N-02 | Strings | 🟡 |
| N-03 | Dimensions | 🟢 |
| N-04 | Styles / Themes / Colors | 🟡 |
| N-05 | Manifest | 🟡 |
| N-06 | Intent | 🟡 |
| N-07 | Permissions | 🟡 |
| N-08 | Navigation | 🟡 |
| N-09 | Lifecycle / State | 🔴 |
| N-10 | Dialog / Error / Loading | 🔴 |
| N-11 | Branding / Identity | 🟢 |
| N-12 | Java-only | 🟢 |
| N-13 | Fake / Stub | 🟡 |
| N-14 | Boundary | 🟡 |
| N-15 | Static Hygiene | 🟡 |

**N-03, N-11, and N-12 are closed and must not be reopened without new evidence of defect.**

N-09 and N-10 remain red at the domain-register level until their complete N-level closure audit proves otherwise.

## Current P3 exit gate

P3 can close only when:

1. 71/71 Activities remain 🟢 at the evidence-supported P3 boundary;
2. no unresolved P3 defect remains;
3. all 15 normalized domains have a current classification;
4. every non-green domain has either reached its documented exit criterion or has an explicit, evidence-backed downstream ownership/deferment;
5. Resource and Style/Theme/Color parity work is fully audited;
6. no unexplained Swift product identity remains in `app/`;
7. static resource/reference integrity is clean for the audited P3 surface;
8. Reference remains unchanged;
9. no unauthorized build/runtime claim is used as closure evidence.

When all conditions are satisfied:

**FREEZE P3**

Then P4 may enter gate review. P4 implementation does not start automatically.

## Runtime boundary

Build/install/runtime/visual verification is not authorized in this phase.

Therefore this gate makes no claim of:

- APK build success;
- installation success;
- runtime success;
- provider success;
- engine success;
- backend success;
- end-to-end feature success.

## Evidence / history

Older P3 documents and audit records remain recoverable through Git history. They are not competing authorities.

The current P3 authority is this file:

**`docs/PHASE_3_GATE.md`**

The detailed historical commits preserve prior audit snapshots, resource audits, normalization steps, and execution evidence.

## Current position

> **P1 FROZEN + P2 FROZEN + P3 71/71 Activity boundary GREEN + TOTAL 15-domain audit complete + N-level follow-up closure active + P4 GATED.**

P3 is **not yet frozen**.

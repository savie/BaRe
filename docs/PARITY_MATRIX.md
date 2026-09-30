# BΛR☰ Parity Matrix

## Purpose

This document is the **high-level parity matrix**.

It is not the active work queue and it is not a second Phase 3 status document.

For the current P3 work order, use:
docs/PHASE_3_STATUS.md

For closure evidence/history, use:
docs/PHASE_3_CLOSURE_AUDIT.md

## Classification

- **MATCH** — equivalent to Reference based on available evidence.
- **AUTHORIZED DEVIATION** — difference explicitly allowed by the project handoff.
- **UNKNOWN** — evidence is insufficient for closure.
- **BLOCKED** — verification cannot proceed because the required execution evidence is not authorized/available.
- **OPEN** — work is explicitly still being audited in the current phase.

No UNKNOWN, BLOCKED, or OPEN row may be promoted to MATCH without evidence.

## Phase Gate Summary

| Phase | Status | Meaning |
|---|---|---|
| P1 Foundation | **COMPLETE / FROZEN** | Reference inventory/evidence gate is closed. |
| P2 Reference Skeleton | **COMPLETE / FROZEN** | Reference-owned structural component coverage is closed. |
| P3 UI + Navigation | **ACTIVE** | 71 Activities are green; remaining static parity queue is open. |
| P4 Core Behavior | **GATED / NOT STARTED** | Downstream engine/provider/core behavior is not being implemented as part of this P3 queue. |
| P5 Features | **DEFERRED** | Full backup/restore/feature execution remains outside current P3 closure. |
| P6 Authorized Deviations | **DEFINED / GATED** | Branding/Premium/Supabase rules exist; implementation remains separately gated. |
| P7 Runtime | **BLOCKED / GATED** | Build/install/execute has not been authorized. |
| P8 Parity | **NOT EXECUTED** | Runtime evidence is required later. |
| P9 Deviation Audit | **NOT FINAL** | Final deviation classification follows later parity evidence. |

## Current High-Level Matrix

| Area | Reference baseline | BaRe / BΛR☰ current state | Classification |
|---|---|---|---|
| Product identity | Swift Backup 5.1.0 (620) | BΛR☰ / BaRe | **AUTHORIZED DEVIATION** |
| Repository branch | Reference baseline | rewrite | **AUTHORIZED CONFIGURATION** |
| Implementation language | Java | Java | **MATCH** |
| UI technology | Android Views/XML | Android Views/XML | **MATCH** |
| Kotlin source | Not permitted by handoff | None | **MATCH** |
| Compose | Not permitted by handoff | Disabled / not used for UI | **MATCH** |
| Application namespace | Reference identity | com.bare | **AUTHORIZED DEVIATION** |
| Application ID | Reference identity | com.bare | **AUTHORIZED DEVIATION** |
| Branding | Swift Backup | BΛR☰ / BaRe | **AUTHORIZED DEVIATION** |
| Navigation | Reference navigation | 71 Activity P3 surface reconstructed; detailed runtime behavior remains downstream | **UNKNOWN** |
| Resources | Reference resources | Dimension subgate and audited active P3 resource contracts closed; remaining queue open | **OPEN** |
| Strings | Reference strings | P3-visible surface audited; downstream Reference-only strings remain outside this P3 surface | **MATCH for P3-visible surface** |
| Style / Theme / Color | Reference style/color system | Full static matrix not yet closed | **OPEN** |
| Premium | Reference behavior | P3 surface exists; entitlement/billing remains downstream | **UNKNOWN** |
| Backend | Reference behavior | Supabase target designated; backend execution not part of P3 | **UNKNOWN** |
| Database | Reference behavior | Not reconstructed as a completed downstream system | **UNKNOWN** |
| Backup / Restore | Reference behavior | Execution remains downstream | **UNKNOWN** |
| Runtime behavior | Reference runtime | Not runtime-verified | **BLOCKED** |
| Visual parity | Reference UI | No runtime visual comparison performed | **BLOCKED** |

## P3 Closure Matrix

| P3 gate | Current classification |
|---|---|
| 71-Activity intent/navigation | **PASS — static** |
| 71-Activity lifecycle/state | **PASS — static** |
| Resource / Dimension | **OPEN** |
| String parity | **PASS — P3-visible surface** |
| Style / Theme / Color | **OPEN** |
| Fake / Stub / P3 boundary | **PASS / P4 DEFERRED** |
| Branding / Swift identity | **PASS + AUTHORIZED DEVIATION** |
| Static resource-reference integrity | **PASS — audited P3 surface** |

## Current P3 Work Order

The exact work order is maintained only in docs/PHASE_3_STATUS.md.

Current sequence:

**Dimension → Layout → Menu → Drawable / Vector → XML → Animation → Animator → Raw / Font → Resource Qualifier → Resource Reference Cross-check → Color → Color State / Selector → Theme → Theme Parent / Inheritance → Style → Widget / Component Style → Night / Day Style-Color → Style / Theme Reference Cross-check → Final Visual Contract Audit**

The sequence remains inside P3. Completion of one item does not authorize Phase 4.

## Runtime / Execution Boundary

No P3 documentation in this matrix should be interpreted as proof of:
- successful backup;
- successful restore;
- successful provider operation;
- successful cloud authentication;
- successful persistence;
- successful billing;
- successful backend execution.

Build/install/runtime/visual verification remains gated until explicitly authorized.

## Document Roles

| Document | Role |
|---|---|
| docs/PHASE_3_STATUS.md | **Operational source / single work queue** |
| docs/PHASE_3_CLOSURE_AUDIT.md | **Supporting evidence / closure history** |
| docs/PARITY_MATRIX.md | **High-level parity matrix** |


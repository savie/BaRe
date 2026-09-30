# BΛR☰ Phase 3 Follow-up Execution

## Document Role

This document is the execution framework for P3 follow-up work after the 15-domain P3 TOTAL AUDIT.
It does not replace or redefine the P1–P9 lifecycle, the P3 audit matrix, or the supporting audit ledger.

Authoritative roles remain:
- docs/PHASE_3_STATUS.md — operational P3 status and current phase gate.
- docs/PHASE_3_CLOSURE_AUDIT.md — supporting audit evidence / ledger.
- docs/PARITY_MATRIX.md — high-level parity map.
- This document — execution method for resolving the follow-ups produced by the 15-domain audit.

The 15 audit domains remain the traceability baseline. Work packages are derived from their follow-ups; they are not predetermined by this document.

## Current Gate

```text
P1 Foundation
    ↓
P2 Reference Skeleton — CLOSED / FROZEN
    ↓
P3 implementation baseline
    ↓
P3 TOTAL AUDIT — 15 domains completed
    ↓
P3 FOLLOW-UP EXECUTION  ← CURRENT
    ↓
P3 CLOSURE REVIEW
    ↓
P4 GATE REVIEW
    ↓
P4 allowed to start
```

Current constraints:
- P3 remains ACTIVE.
- P4 remains GATED / NOT STARTED.
- Build/install/runtime/visual verification remains NOT AUTHORIZED / NOT PERFORMED unless explicitly authorized.
- No downstream provider/backend/engine success is claimed by this document.
- P2 remains frozen.
- No P3 follow-up implementation is implied merely by recording a follow-up.

## Master Flow

The P3 follow-up process is fixed as this master flow:

```text
P3 FOLLOW-UP EXECUTION
        │
        ▼
1. FOLLOW-UP REGISTER
   Collect Required Follow-up from Audit #1–#15
        │
        ▼
2. NORMALISATION / DEDUP
   Merge follow-ups that are actually the same contract
        │
        ▼
3. CLASSIFICATION
   Evidence / Classification / Implementation / Re-audit-Verification
        │
        ▼
4. DEPENDENCY MAPPING
   What blocks what? What can parallelize? What is downstream?
        │
        ▼
5. DEPENDENCY ORDER
   Determine order based on evidence
        │
        ▼
6. WORK PACKAGE FORMATION
   Only now form WPs
        │
        ▼
7. SCOPE CHECK
   If too large → BREAKDOWN
        │
        ▼
8. SMALL IMPLEMENTATION
   targeted evidence → small change → static check
        │
        ▼
9. RE-AUDIT
   Re-audit affected domains
        │
        ▼
10. CHECKPOINT
   Record code/resource/docs state
        │
        ├── remaining follow-up → back to #5
        ▼
P3 FOLLOW-UP COMPLETE
        │
        ▼
P3 CLOSURE REVIEW
        │
        ▼
P4 GATE REVIEW
        │
        ▼
P4 allowed to start
```

### Flow invariants
1. The master flow must not be rewritten merely because a work package is large.
2. A work package may be broken down into smaller execution units without changing the master flow.
3. Work packages are formed only after follow-up registration, normalization/deduplication, classification, and dependency mapping.
4. A work package is not a phase. It is an execution grouping inside P3.
5. A completed work package does not automatically close its audit domain.
6. Domain closure requires re-audit evidence.
7. P4 cannot start because a work package is complete; P3 closure and the P4 gate review are separate steps.
8. Runtime/build/install work remains gated unless explicitly authorized.

## Execution Dashboard

Use this dashboard to answer: where are we in the flow, and is the current scope small enough to execute safely?

| Step | Gate | Completion evidence |
|---:|---|---|
| 1 | Follow-up Register | All required follow-ups from #1–#15 are recorded |
| 2 | Normalisation / Dedup | Duplicate/same-contract follow-ups are merged and traceability is retained |
| 3 | Classification | Each item is classified as evidence, classification, implementation, or re-audit/verification |
| 4 | Dependency Mapping | Blocking, parallel, and downstream relationships are explicit |
| 5 | Dependency Order | Next executable sequence is justified by dependencies |
| 6 | Work Package Formation | WPs are derived from the normalized register |
| 7 | Scope Check | Each WP is measurable and small enough to execute/review |
| 8 | Small Implementation | Targeted change completed with static verification |
| 9 | Re-audit | Affected audit domains have current evidence and verdicts |
| 10 | Checkpoint | Code/resource/docs state and remaining follow-up are recorded |

Current execution state: the Follow-up Register, normalization, classification, dependency analysis, and dependency order must be established before implementation work packages are treated as executable.

# Step 1 — Follow-up Register

The initial register is derived directly from the 15-domain audit.

| Audit # | Domain | Required follow-up |
|---:|---|---|
| 1 | Resource | Build an application-owned Reference→BaRe resource matrix; separate dependency/library resources; reconcile by type and qualifier. |
| 2 | Strings | Build an application-owned Reference→BaRe string matrix; separate dependency/library names; classify missing names as P3-visible, authorized BΛR☰ replacement, or deferred/downstream; reconcile relevant locale coverage. |
| 3 | Dimensions | No implementation follow-up. Domain is CLOSED / PASS for the defined scope. |
| 4 | Styles / Themes / Colors | Build app-owned style/theme/color matrix; reconcile theme inheritance and item contracts; reconstruct the application theme contract behind authorized BΛR☰ identity; reconcile colors/state lists; re-audit references. |
| 5 | Manifest | Build Reference→BaRe manifest matrix; separate authorized identity deviations; reconcile application/component attributes, metadata/configuration, permission boundaries, queries, labels, parentActivityName, window/theme/filter contracts. |
| 6 | Intent | Build Reference→BaRe intent matrix; classify AppAuth callback topology; reconcile provider callback namespaces; re-audit exported/deep-link filters. |
| 7 | Permissions | Classify the remaining custom dynamic receiver permission; complete static permission/request/check matrix; runtime verification remains gated. |
| 8 | Navigation | Build Reference→BaRe navigation matrix for all 71 Activities; reconcile parentActivityName, launchMode, relevant task/back-stack attributes, explicit destinations, extras/results; re-audit Up/back contracts. |
| 9 | Lifecycle / State | Build Activity/major Fragment lifecycle-state matrix; map saved-state keys; reconcile restoration/save paths, onNewIntent/onResume/permission-result/activity-result/configuration paths; distinguish ViewModel-retained vs Bundle-restored state. |
| 10 | Dialog / Error / Loading | Build dialog/error/loading matrix; map trigger→visible state→action→dismiss/recovery; reconcile layouts/themes/strings and lifecycle/state restoration. |
| 11 | Branding | Build Reference→BaRe branding matrix; classify internal vs visible vs provider/deep-link identity; establish BΛR☰ launcher icon/logo contract; re-audit visible strings after #2. |
| 12 | Java-only | No implementation follow-up. Domain is CLOSED / PASS. |
| 13 | Fake / Stub | Maintain explicit stub/boundary inventory; classify intentional P3 boundary vs downstream vs accidental incomplete; carry StorageInfoService.read()==null into #14. |
| 14 | Boundary | Build complete boundary matrix across 71 Activities + major Services/Receivers and downstream calls; record owner/input/output/deferred phase/P3-visible side; reconcile repository interfaces with eventual adapters without fake success. |
| 15 | Static Hygiene | Reconcile current status/matrices/gate summaries; preserve historical entries as historical; perform final stale-status/static consistency check after follow-up changes. |

Register rules:
- This table is the initial source register, not the final work-package list.
- A follow-up may be split into multiple execution units.
- Multiple follow-ups may be merged when evidence proves they are the same contract.
- Every merged/split item must retain the originating audit-domain references.
- A CLOSED / PASS domain is not converted into implementation work merely to make the table symmetrical.

# Step 2 — Normalisation / Dedup

Before creating work packages:
1. Compare follow-ups by contract, not by domain name.
2. Merge only when the same evidence, files, contract, and verification can reasonably close the combined item.
3. Preserve every originating audit number on the merged item.
4. Split a follow-up when it contains materially different ownership, dependencies, evidence, or verification criteria.
5. Do not merge merely because two items touch the same resource/file.
6. Do not remove a follow-up solely because an older historical document says it was already fixed; current evidence controls.

Examples requiring normalization rather than automatic grouping:
- Resource (#1) and Strings (#2) both touch res/, but their parity contracts are distinct.
- Styles/Themes/Colors (#4) depends on resource evidence and may share files with #1/#2, but its acceptance criteria are different.
- Manifest (#5), Intent (#6), Permissions (#7), and Navigation (#8) overlap at AndroidManifest.xml, but they remain distinct contracts unless normalization proves a smaller common unit.
- Lifecycle/State (#9) and Dialog/Error/Loading (#10) interact through saved dialog state and lifecycle ownership, but should not be merged automatically.
- Branding (#11) intersects Strings (#2) and resources (#1/#4), but authorized identity classification must remain explicit.
- Fake/Stub (#13) and Boundary (#14) are related; StorageInfoService.read()==null is explicitly carried from #13 into #14 rather than duplicated as two unrelated fixes.
- Static Hygiene (#15) is primarily a consistency/re-audit concern and should not become unrelated app implementation work.

# Step 3 — Classification

Every normalized follow-up receives one primary class:

### A. Evidence
Missing matrix, inventory, trace, ownership proof, or contract evidence.
Examples: application-owned resource matrix, application-owned string matrix, complete boundary matrix.

### B. Classification
A contract exists but its intended ownership/deviation is unresolved.
Examples: dependency/library resource vs application-owned resource; authorized BΛR☰ identity deviation vs parity defect; AppAuth callback topology; custom dynamic receiver permission ownership.

### C. Implementation
Current evidence establishes a P3 defect and the smallest safe code/resource/manifest change is known.
No implementation item should be promoted here solely from a raw count difference.

### D. Re-audit / Verification
A change or classification requires affected-domain re-evaluation.

# Step 4 — Dependency Mapping

For every normalized follow-up, record:

| Field | Required meaning |
|---|---|
| Source domains | Audit #1–#15 that generated the item |
| Contract | Exact parity/behavior contract being resolved |
| Evidence | Current files/data proving the issue |
| Owner | App/resource/manifest/navigation/state/boundary/docs |
| Blocks | Follow-ups that cannot be completed correctly first |
| Depends on | Evidence/classification required first |
| Parallel-safe | Whether it can proceed independently |
| Downstream | Whether it belongs to a later phase or deferred runtime boundary |
| Verification | Static or explicitly authorized runtime/visual verification |

Dependencies are evidence-driven. Do not assume a linear order merely because audit numbers are sequential.

# Step 5 — Dependency Order

A follow-up is ready when:
1. Required evidence exists.
2. Ownership/deviation classification is resolved where needed.
3. Blockers are closed or explicitly accepted as non-blocking.
4. Scope can be measured.
5. Verification method is known.
6. It does not require unauthorized runtime/build/install execution.

# Step 6 — Work Package Formation

Only after Steps 1–5 may work packages be formed.

Each work package must contain:
- WP identifier;
- source audit-domain IDs;
- exact contract;
- bounded file/resource scope;
- prerequisite evidence;
- dependency status;
- expected change;
- static verification;
- affected-domain re-audit;
- checkpoint condition.

The number and names of WPs are not fixed by this document. The final WP structure must be derived from the normalized register and dependency map.

# Step 7 — Scope Check

Before implementation, ask:

> Can this unit be completed, statically checked, and re-audited without opening an uncontrolled secondary scope?

A unit is too large when it combines unrelated contracts, spans multiple ownership boundaries without one acceptance criterion, requires broad replacement without an explicit matrix, cannot state expected files/resources, cannot define finite static verification, cannot identify affected audit domains, or would force unauthorized runtime/build/install work.

When too large:

```text
WORK PACKAGE
    ↓
SCOPE CHECK = TOO LARGE
    ↓
BREAKDOWN INTO SMALLER EXECUTION UNITS
    ↓
re-check each unit
    ↓
continue using the same master flow
```

Breaking down a work package does not change the master flow.

# Step 8 — Small Implementation

Only after explicit authorization for implementation:

```text
targeted evidence
      ↓
small change
      ↓
static check
      ↓
record changed scope
```

Implementation must remain targeted to the established contract. Do not perform opportunistic cleanup, unrelated screen rewrites, global branding replacement, fabricated provider/backend/engine success, or unauthorized downstream execution.

# Step 9 — Re-audit

Every implementation unit identifies its affected audit domains.

Re-audit must answer:
1. What changed?
2. Which original audit finding did it address?
3. Does current evidence now support a different verdict?
4. Did the change create a contract difference in another domain?
5. Is any follow-up still open?
6. Does the matrix/ledger/status need reconciliation?

A successful implementation change does not equal automatic PASS.

# Step 10 — Checkpoint

At each meaningful completed execution unit, record:
- commit SHA;
- changed files;
- resource/manifest/docs impact;
- audit domains affected;
- new verdicts;
- remaining follow-up;
- explicit runtime/build authorization state.

The checkpoint must make it possible to resume without reconstructing the entire history.

# P3 Follow-up Closure Rule

P3 follow-up execution is complete only when:
1. Every audit domain has a current verdict.
2. All concrete P3 defects required for closure are resolved.
3. Remaining open items are explicitly classified as downstream, authorized deviation, out-of-scope, or otherwise justified by current evidence.
4. Boundary/deferred behavior remains explicit and does not masquerade as implementation.
5. Static documentation is internally consistent.
6. No unauthorized runtime/build/install/visual verification has been performed.
7. A final P3 closure review confirms the state.
8. Only then is the P4 gate review performed.

# Non-Goals

This document does not authorize P4 implementation, provider/backend implementation, backup/restore engine implementation, runtime execution, build/install, visual verification, broad refactoring, global branding replacement, automatic copying of all Reference resources, or declaring P3 closed without re-audit evidence.

# Current State

**Phase:** P3 — Follow-up Execution

**Audit baseline:** 15-domain P3 TOTAL AUDIT completed.

**Current execution objective:** establish the normalized follow-up register, classifications, dependency map, dependency order, and only then derive bounded work packages.

**P4:** GATED / NOT STARTED.

**Runtime:** NOT AUTHORIZED / NOT PERFORMED.

**Implementation:** No new P3 follow-up implementation is performed merely by creating this document.
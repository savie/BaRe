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

Current execution state: the Follow-up Register, normalization, classification, dependency analysis, and dependency order are established before implementation work packages are treated as executable.

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

Step 2 has been completed from the current Audit #1–#15 register. Normalisation is contract-based, not file-based.

## Normalisation result

| Normalized item | Source audit domains | Decision | Reason |
|---|---|---|---|
| N-01 Application-owned resource parity | #1 | **KEEP SEPARATE** | Resource ownership/type/qualifier reconciliation has its own evidence and closure criteria. |
| N-02 Application-owned string parity | #2 | **KEEP SEPARATE** | String usage/locale/visible-text classification is a distinct contract even though it touches `res/`. |
| N-03 Dimension parity | #3 | **REMOVE FROM ACTIVE FOLLOW-UP** | #3 is already 🟢 CLOSED / PASS; no follow-up may be created merely for symmetry. |
| N-04 Theme/style/color parity | #4 | **KEEP SEPARATE** | Theme inheritance, style item contracts, colors and state lists have distinct acceptance criteria from generic resource parity. It depends on resource evidence but is not the same contract. |
| N-05 Manifest contract | #5 | **KEEP SEPARATE** | Manifest application/component metadata and attributes have a distinct contract from intent, permission, and navigation semantics even where they share `AndroidManifest.xml`. |
| N-06 Intent contract | #6 | **KEEP SEPARATE** | Explicit intents, URI/data/type contracts, callback topology, and exported/deep-link filters require separate evidence and verification. |
| N-07 Permission contract | #7 | **KEEP SEPARATE** | Permission declaration/ownership and runtime request/check mapping are a distinct contract; runtime verification remains gated. |
| N-08 Navigation contract | #8 | **KEEP SEPARATE** | Parent/activity topology, launch mode, destinations, extras/results, and back/up behavior have distinct acceptance criteria. |
| N-09 Lifecycle/state contract | #9 | **KEEP SEPARATE** | Lifecycle callbacks and state restoration/retention have distinct ownership and verification criteria. |
| N-10 Dialog/error/loading contract | #10 | **KEEP SEPARATE** | Visible transient-state and recovery semantics are distinct, although saved dialog state must coordinate with N-09. |
| N-11 Branding/identity contract | #11 | **KEEP SEPARATE** | Authorized BΛR☰/Swift identity classification must remain explicit and cannot be absorbed into generic strings/resources. |
| N-12 Java-only | #12 | **REMOVE FROM ACTIVE FOLLOW-UP** | #12 is already 🟢 CLOSED / PASS. |
| N-13 Fake/stub inventory | #13 | **KEEP SEPARATE** | Its purpose is classification of explicit stub/boundary/null-return markers, not execution of those boundaries. |
| N-14 Boundary contract | #14 | **KEEP SEPARATE** | Boundary ownership/input/output/deferred-phase reconciliation is broader than the fake/stub inventory. `StorageInfoService.read()==null` is carried into this contract, not duplicated as a second fix. |
| N-15 Static/documentation hygiene | #15 | **KEEP SEPARATE** | This is a project-control consistency contract and must not become unrelated application implementation work. |

## Cross-domain dependency notes established during normalisation

1. **#1 ↔ #4:** related evidence, but not one contract. Resource ownership evidence can support #4, while theme/style/color acceptance remains separate.
2. **#2 ↔ #11:** string evidence is required for branding re-audit, but authorized identity classification remains a separate branding contract.
3. **#5 ↔ #6 ↔ #7 ↔ #8:** all may touch `AndroidManifest.xml`, but file overlap is insufficient reason to merge them.
4. **#9 ↔ #10:** lifecycle/state and dialog/error/loading interact where dialog state is restored, but their contracts remain separate.
5. **#13 ↔ #14:** #13 maintains the explicit fake/stub inventory. The concrete `StorageInfoService.read()==null` item is carried into #14 Boundary rather than treated as a duplicate implementation item.
6. **#15:** remains a final/current-status consistency concern and does not absorb the substantive domain contracts.

## Normalisation decision

The register therefore resolves to **13 active normalized contracts**:

**N-01, N-02, N-04, N-05, N-06, N-07, N-08, N-09, N-10, N-11, N-13, N-14, N-15.**

No implementation work package is formed at Step 2.
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

# Step 3 — Classification

Step 3 is now complete for the 13 active normalized contracts. Classification is based on the current P3 TOTAL AUDIT evidence and identifies the **primary next action**, not an implementation authorization.

## Classification result

| Normalized item | Source audit domain | Primary class | Human meaning / reason |
|---|---:|---|---|
| N-01 Application-owned resource parity | #1 | **EVIDENCE** | We need the application-owned Reference→BaRe resource matrix first. Raw resource counts are not enough because dependency/library resources are mixed into the Reference tree. |
| N-02 Application-owned string parity | #2 | **EVIDENCE** | We need the application-owned string matrix and usage/locale trace before changing strings. Missing names must be distinguished from authorized branding and deferred/downstream strings. |
| N-04 Theme/style/color parity | #4 | **EVIDENCE** | The audit proves concrete theme/style/color gaps, but the exact application-owned contracts and qualifier coverage must be mapped before choosing the smallest safe change. |
| N-05 Manifest contract | #5 | **EVIDENCE** | The audit found concrete manifest differences, but Reference-owned application attributes must first be separated from dependency components and authorized identity deviations. |
| N-06 Intent contract | #6 | **CLASSIFICATION** | The key unresolved question is ownership/meaning of callback, URI, exported, and deep-link differences, especially AppAuth/provider callback topology. |
| N-07 Permission contract | #7 | **CLASSIFICATION** | The remaining custom dynamic receiver permission must first be classified as an application-owned contract versus another boundary before implementation. |
| N-08 Navigation contract | #8 | **EVIDENCE** | A complete 71-Activity navigation matrix is still required before targeted navigation changes can be selected. |
| N-09 Lifecycle/state contract | #9 | **EVIDENCE** | Lifecycle and saved-state evidence must be mapped before changing restoration, callback, or retention behavior. |
| N-10 Dialog/error/loading contract | #10 | **EVIDENCE** | The visible-state/recovery matrix is needed to identify exact trigger→state→action→dismiss contracts before implementation. |
| N-11 Branding/identity contract | #11 | **CLASSIFICATION** | The audit establishes an unresolved launcher/identity contract; internal, visible, provider/deep-link, and authorized Swift-specific identities must be classified before changing names/resources. |
| N-13 Fake/stub inventory | #13 | **CLASSIFICATION** | Explicit stubs, boundaries, TODO/no-op markers, and null returns must be classified as intentional P3 boundary, downstream, or accidental/incomplete. |
| N-14 Boundary contract | #14 | **EVIDENCE** | The boundary architecture is known, but the complete 71-Activity + major Service/Receiver downstream matrix is still missing. |
| N-15 Static/documentation hygiene | #15 | **RE-AUDIT / VERIFICATION** | This contract is primarily a consistency check: verify that status, matrices, gates, and historical/current labels remain synchronized after follow-up changes. |

## Step 3 guardrails

1. **No normalized item is classified as Implementation yet.**
2. A red audit verdict does **not** automatically mean “Implementation”; implementation requires current evidence, resolved ownership/deviation classification where relevant, a bounded scope, and a known smallest safe change.
3. Evidence work and classification work are not themselves code/resource fixes.
4. N-13 remains separate from N-14; StorageInfoService.read()==null stays carried into the Boundary contract.
5. N-15 is a verification/consistency contract and does not absorb application implementation work.
6. Runtime/build/install/visual verification remains unauthorized and is not required for Step 3 completion.

## Step 3 completion

The 13 active normalized contracts are now classified:

- **EVIDENCE:** N-01, N-02, N-04, N-05, N-08, N-09, N-10, N-14
- **CLASSIFICATION:** N-06, N-07, N-11, N-13
- **IMPLEMENTATION:** none
- **RE-AUDIT / VERIFICATION:** N-15

**Step 3 is complete. No work package, dependency order, or implementation is formed by this classification step.**
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

# Step 4 — Dependency Mapping

Step 4 is now complete for the 13 active normalized contracts. This mapping records **dependencies and blocking relationships only**. It does not yet choose the execution order and does not form work packages.

## Dependency map

| Item | Blocks | Depends on | Parallel-safe | Downstream | Verification |
|---|---|---|---|---|---|
| **N-01 Resource** | N-04 Theme/style/color | Reference resource ownership evidence and type/qualifier reconciliation | **Yes** | No | Static matrix + resource/reference trace |
| **N-02 Strings** | N-11 Branding; parts of N-10 visible-state reconciliation | Reference string ownership/usage trace and locale evidence | **Yes** | No | Static string matrix + usage/locale trace |
| **N-04 Theme/style/color** | Affected UI/resource implementation and later re-audit | N-01 resource ownership evidence | **Partly** — can prepare independently, but final contract reconciliation needs N-01 | No | Static style/theme/color matrix + reference trace |
| **N-05 Manifest** | N-06 Intent, N-07 Permission, parts of N-08 Navigation | Manifest/component ownership and authorized identity deviation evidence | **Yes** | No | Static manifest matrix/diff |
| **N-06 Intent** | Affected deep-link/callback implementation and re-audit | N-05 manifest context; AppAuth/provider callback classification | **Partly** — classification can proceed while other evidence is gathered | Provider callback may be downstream | Static intent/filter/callback matrix; runtime remains gated |
| **N-07 Permission** | Permission-related implementation and re-audit | N-05 manifest permission context; ownership classification | **Yes** | Runtime grant verification is downstream/gated | Static declaration/request/check matrix |
| **N-08 Navigation** | Targeted navigation implementation and re-audit | P2 Activity inventory; N-05 manifest parent/activity attributes where applicable | **Yes** for evidence gathering; final reconciliation may consume N-05 | Runtime Up/back verification is gated | Static 71-Activity navigation matrix |
| **N-09 Lifecycle/state** | Targeted state/lifecycle implementation and N-10 restoration reconciliation | P2 Activity/major Fragment inventory and current state evidence | **Yes** | Runtime configuration/lifecycle verification is gated | Static lifecycle/state matrix |
| **N-10 Dialog/error/loading** | Targeted transient-state implementation and re-audit | N-09 lifecycle/state evidence; N-02 strings and N-04 theme/style evidence where visible contracts require them | **Partly** — trigger/state inventory can begin independently; final visible-state reconciliation consumes dependencies | Runtime visual/interaction verification is gated | Static trigger→state→action→dismiss/recovery matrix |
| **N-11 Branding/identity** | Branding implementation and re-audit | N-02 string evidence; N-05 manifest identity evidence; authorized BΛR☰ deviation rules | **Partly** — identity classification can proceed before all string reconciliation is complete | Provider/deep-link identity may remain downstream | Static branding matrix; visual/runtime verification gated |
| **N-13 Fake/stub inventory** | N-14 Boundary classification and later boundary re-audit | Current target source inventory | **Yes** | Intentional downstream boundaries remain downstream | Static marker/null-return inventory |
| **N-14 Boundary** | Boundary-dependent implementation/re-audit and post-P3 planning | N-13 fake/stub inventory; manifest/intent/permission context; service/receiver/downstream call evidence | **Partly** — matrix construction can proceed in parallel, but final ownership classification consumes upstream boundary evidence | Provider/backend/storage/engine execution is downstream | Static boundary matrix; no runtime success claim |
| **N-15 Static/documentation hygiene** | None; it verifies the control plane | Current Step 1–4 records and authoritative status/checkpoint documents | **Yes**, as an ongoing consistency check; final verification is after follow-up changes | No | Static cross-document consistency check |

## Blocking graph

The evidence-driven relationships established at this step are:

`N-01 → N-04`

`N-02 → N-11`

`N-05 → N-06`

`N-05 → N-07`

`N-05 → N-08 (manifest-related navigation attributes)`

`N-09 → N-10 (lifecycle/state restoration portion)`

`N-02 + N-04 + N-09 → N-10 (visible-state/recovery reconciliation)`

`N-13 → N-14`

`N-05 + N-06 + N-07 + N-13 → N-14 (boundary ownership context)`

N-08 and N-09 are **not** declared mutually blocking: both can collect evidence from the frozen P2 Activity/Fragment inventory. Their interaction is recorded only where navigation/state restoration semantics overlap.

N-15 is a control-plane verification item and does not block evidence collection; it must, however, be rechecked after subsequent documentation or implementation changes.

## Step 4 boundary rules

1. A dependency means the downstream contract cannot be **closed correctly** without the upstream evidence/classification; it does not necessarily prevent preparatory evidence collection.
2. Shared files do not create a dependency by themselves.
3. Runtime/build/install/visual verification remains a gated downstream verification boundary.
4. Provider/backend/storage/engine execution remains downstream and is not pulled into P3 implementation.
5. No work package is formed from this map.
6. No execution order is selected here.

**Step 4 is complete. The next step is Step 5 — Dependency Order.**

# Step 5 — Dependency Order

A follow-up is ready when:
1. Required evidence exists.
2. Ownership/deviation classification is resolved where needed.
3. Blockers are closed or explicitly accepted as non-blocking.
4. Scope can be measured.
5. Verification method is known.
6. It does not require unauthorized runtime/build/install execution.

# Step 5 — Dependency Order

Step 5 converts the Step 4 dependency graph into an evidence-driven **primary execution order**. It does not form work packages and does not authorize implementation.

## Ordering rules

1. Upstream evidence precedes any contract that explicitly depends on it.
2. Parallel-safe evidence may be collected in the same execution wave, but the primary order below remains the traceable sequence.
3. A dependency is not treated as a blocker when Step 4 explicitly says preparatory evidence can proceed in parallel.
4. Classification follows the evidence needed to resolve ownership/deviation.
5. N-10 is placed after N-09 plus the N-02/N-04 visible-state inputs because its final contract depends on all three.
6. N-14 is placed after N-13 and the manifest/intent/permission context because boundary ownership depends on those contracts.
7. N-15 is last as the final control-plane consistency verification after the preceding follow-up evidence/classification work.
8. Runtime/build/install/visual verification remains gated and is not introduced by this order.

## Primary dependency order

| Order | Item | Why this position | Required predecessor(s) |
|---:|---|---|---|
| 1 | **N-01 Resource** | Foundational application-owned resource evidence; directly blocks final N-04 reconciliation. | None |
| 2 | **N-02 Strings** | Foundational string ownership/usage/locale evidence; feeds N-11 and visible portions of N-10. | None |
| 3 | **N-05 Manifest** | Establishes application/component/identity/permission/navigation manifest context required by N-06, N-07, and parts of N-08. | None |
| 4 | **N-13 Fake/stub inventory** | Establishes explicit boundary/stub classification before N-14 boundary ownership is closed. | None |
| 5 | **N-04 Theme/style/color** | Final reconciliation requires N-01 resource ownership evidence. | N-01 |
| 6 | **N-06 Intent** | Callback/filter/deep-link classification consumes manifest context from N-05. | N-05 |
| 7 | **N-07 Permission** | Permission ownership and declaration/request/check classification consumes N-05 manifest context. | N-05 |
| 8 | **N-08 Navigation** | Evidence can be gathered from frozen P2 inventory; final manifest-related attributes consume N-05 context. | P2 inventory; N-05 where applicable |
| 9 | **N-09 Lifecycle/state** | Evidence can be gathered from frozen P2 Activity/Fragment inventory and becomes an input to N-10. | P2 inventory |
| 10 | **N-11 Branding/identity** | Identity classification and branding matrix consume N-02 string evidence and N-05 manifest identity context. | N-02 + N-05 |
| 11 | **N-10 Dialog/error/loading** | Final visible-state/recovery reconciliation consumes lifecycle/state plus string and theme/style evidence. | N-02 + N-04 + N-09 |
| 12 | **N-14 Boundary** | Complete boundary ownership matrix consumes N-13 plus relevant manifest/intent/permission context. | N-13 + N-05 + N-06 + N-07 |
| 13 | **N-15 Static/documentation hygiene** | Final cross-document consistency check after the follow-up evidence/classification sequence. | All preceding Step 5 work |

## Parallel-safe evidence waves

The primary order is for traceability; Step 4 explicitly permits limited parallel evidence gathering:

- **Wave A — foundational evidence:** N-01, N-02, N-05, N-08, N-09, and N-13 can collect evidence independently where their own source inventory is sufficient.
- **Wave B — dependent reconciliation/classification:** N-04 after N-01; N-06 and N-07 after N-05; N-11 after N-02 + N-05.
- **Wave C — visible-state reconciliation:** N-10 after N-02 + N-04 + N-09.
- **Wave D — boundary reconciliation:** N-14 after N-13 + N-05 + N-06 + N-07.
- **Wave E — control-plane verification:** N-15 after the current follow-up records are updated.

This parallelism does **not** create work packages. It only records where Step 4 allows evidence gathering without violating dependencies.

## Step 5 completion criteria

Step 5 is complete when:
- all 13 active normalized contracts have a traceable primary order;
- every ordering relationship is justified by Step 4 dependency evidence;
- parallel-safe work is explicitly distinguished from required predecessor relationships;
- no implementation scope is created;
- no unauthorized runtime/build/install/visual verification is introduced.

**Step 5 is complete. The next step is Step 6 — Work Package Formation.**

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

# Step 6 — Work Package Formation

Step 6 converts the 13 active normalized contracts into bounded execution packages. A work package may contain more than one normalized contract only where the contracts share a coherent ownership boundary, evidence set, and acceptance boundary. Grouping does not authorize implementation and does not erase individual contract traceability.

## Work Package register

| WP | Source contracts | Exact contract scope | Prerequisite evidence | Dependency status | Expected change | Static verification | Re-audit | Checkpoint |
|---|---|---|---|---|---|---|---|---|
| **WP-01 Foundation Resource/String Evidence** | N-01, N-02 | Establish application-owned Reference→BaRe resource and string matrices, including type/qualifier, usage/ownership, missing-name classification, and locale coverage. | Reference resource/string inventory; current BaRe resource/string tree. | N-01 and N-02 are independent; both feed later WPs. | Evidence/matrix updates only; no broad resource copy. | Matrix completeness, reference trace, ownership/type/qualifier and locale reconciliation. | #1 Resource, #2 Strings. | Both matrices are bounded and traceable inputs to dependent WPs. |
| **WP-02 Manifest/Intent/Permission Contract** | N-05, N-06, N-07 | Reconcile manifest component/identity/configuration contracts, intent filters/callback topology, and static permission declaration/request/check classification. | P2 inventory; Reference manifest; N-05 evidence before N-06/N-07. | N-05 first; N-06/N-07 consume N-05. Runtime verification remains gated. | Targeted contract changes only after Step 7. | Reference→BaRe manifest/intent/permission matrices and static diff. | #5, #6, #7. | Ownership/deviation outcomes are explicit. |
| **WP-03 Theme/Style/Color Contract** | N-04 | Reconcile app-owned theme inheritance, styles, colors, state lists, and authorized BΛR☰ identity while preserving Reference structure where required. | N-01 resource evidence. | Final reconciliation depends on WP-01/N-01. | Targeted theme/style/color changes only; no global visual rewrite. | Theme/style/color matrix, inheritance/item-contract trace, resource reference check. | #4. | All in-scope contracts have explicit parity/deviation classification. |
| **WP-04 Navigation Contract** | N-08 | Reconcile all 71 Activity navigation contracts: parentActivityName, launch mode/task behavior, destinations, extras/results, and Up/back semantics. | Frozen P2 71-Activity inventory; N-05 manifest context where applicable. | Evidence can proceed in parallel; manifest attributes consume WP-02. Runtime Up/back remains gated. | Targeted navigation changes only after Step 7. | Reference→BaRe navigation matrix for all 71 Activities. | #8. | Every Activity has a bounded navigation record; unresolved items classified. |
| **WP-05 Lifecycle/State Contract** | N-09 | Reconcile Activity/major Fragment lifecycle/state contracts, saved-state keys, save/restore, onNewIntent/onResume/result/configuration paths, and ViewModel vs Bundle ownership. | Frozen P2 inventory; Reference lifecycle/state evidence. | Independent evidence collection; feeds WP-06/N-10. Runtime lifecycle verification remains gated. | Targeted lifecycle/state changes only after Step 7. | Static lifecycle/state matrix and source-level event-path trace. | #9. | Each in-scope contract has explicit evidence and finite verification criteria. |
| **WP-06 Visible UI State & Identity Contract** | N-11, N-10 | Reconcile BΛR☰ branding/identity matrix and dialog/error/loading trigger→state→action→dismiss/recovery contracts. Preserve authorized internal identifiers; no global text replacement. | WP-01 strings; WP-02 identity context; WP-03 theme; WP-05 lifecycle/state. | N-11 precedes final N-10 reconciliation; provider/deep-link identity and visual runtime checks remain downstream. | Targeted branding/transient-state changes only after Step 7. | Branding matrix plus dialog/error/loading state matrix and source-level trace. | #11, #10. | User-visible identity and transient-state contracts are traceable; deferred runtime checks marked. |
| **WP-07 Boundary & Stub Contract** | N-13, N-14 | Inventory/classify explicit stubs/boundaries, then build the complete Reference→BaRe boundary matrix across 71 Activities plus major Services/Receivers and downstream calls; carry StorageInfoService.read()==null. | Target source inventory; WP-02 manifest/intent/permission context. | N-13 precedes final N-14 ownership classification; backend/provider/storage/engine execution stays downstream. | Boundary/interface/adaptor preparation only; never fabricate success. | Stub/null-return inventory plus owner/input/output/deferred-phase matrix. | #13, #14. | Every boundary is explicitly classified and downstream ownership recorded. |
| **WP-08 Static Control-Plane Hygiene** | N-15 | Reconcile P3 status, follow-up records, checkpoint, matrices, gates, and historical/current terminology after WPs 01–07. | All preceding WP records and authorized changes. | Final WP; documentation must be current before closure review. | Documentation/status/checkpoint reconciliation only. | Cross-document consistency; no stale next-step or contradictory gate/status. | #15 plus touched docs. | Current status/checkpoint/matrices agree on the same P3 position. |

## WP sequencing

1. WP-01 — N-01 + N-02 foundational evidence.
2. WP-02 — N-05, then N-06/N-07 dependent classification.
3. WP-03 — N-04 after N-01 evidence.
4. WP-04 — N-08 navigation evidence/reconciliation.
5. WP-05 — N-09 lifecycle/state evidence/reconciliation.
6. WP-06 — N-11, then N-10 visible-state reconciliation.
7. WP-07 — N-13, then N-14 boundary reconciliation.
8. WP-08 — N-15 final control-plane hygiene.

Allowed parallel evidence collection from Step 5 remains valid. This order is the traceable primary sequence; it does not authorize implementation.

## Work-package formation rules

- Every active normalized contract is assigned to exactly one WP.
- Grouped contracts retain their individual N-IDs and acceptance boundaries.
- A WP may be split at Step 7 if it fails the scope check.
- A WP that passes Step 7 may still be decomposed into smaller implementation units before Step 8.
- Runtime/build/install/visual verification remains gated.
- Provider/backend/storage/engine execution remains downstream.
- No broad refactor, global branding replacement, automatic resource copying, or fabricated success behavior is implied.

## Step 6 completion criteria

Step 6 is complete when:
- all active normalized contracts are assigned to exactly one WP;
- every WP has bounded scope, prerequisites, dependencies, expected change, static verification, affected-domain re-audit, and checkpoint condition;
- grouped contracts remain individually traceable;
- no implementation authorization is implied;
- the next action is Step 7 — Scope Check.

**Step 6 is complete. The next step is Step 7 — Scope Check.**
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

# Step 7 — Scope Check

Step 7 evaluates each of the 8 formed work packages against the fixed scope rule: a unit must be measurable, have a finite verification boundary, identify its affected audit domain(s), state expected files/resources, and avoid combining unrelated contracts or opening uncontrolled secondary scope.

## Scope-check result

| WP | Scope result | Decision | Reason |
|---|---|---|---|
| **WP-01 Foundation Resource/String Evidence** | **TOO LARGE** | Split into EU-01 and EU-02 | N-01 and N-02 were explicitly normalized as separate contracts with different ownership/evidence/acceptance criteria. Shared `res/` location is not sufficient reason to merge them. |
| **WP-02 Manifest/Intent/Permission Contract** | **TOO LARGE** | Split into EU-03, EU-04, EU-05 | N-05, N-06, and N-07 remain separate contracts; intent and permission classification consume manifest evidence but have distinct acceptance criteria. |
| **WP-03 Theme/Style/Color Contract** | **PASS** | Keep as one execution unit | Single N-04 contract with one bounded resource/theme acceptance boundary; dependency on N-01 is explicit. |
| **WP-04 Navigation Contract** | **PASS** | Keep as one execution unit | Single N-08 contract. Scope is the frozen 71-Activity inventory, with static navigation matrix as finite verification. |
| **WP-05 Lifecycle/State Contract** | **PASS** | Keep as one execution unit | Single N-09 contract. Scope is Activity/major Fragment lifecycle/state evidence and finite static matrix verification. |
| **WP-06 Visible UI State & Identity Contract** | **TOO LARGE** | Split into EU-06 and EU-07 | N-11 branding/identity and N-10 dialog/error/loading were deliberately normalized separately and have different acceptance/re-audit criteria. |
| **WP-07 Boundary & Stub Contract** | **TOO LARGE** | Split into EU-08 and EU-09 | N-13 is inventory/classification; N-14 is boundary ownership/reconciliation. Step 4 explicitly treats them as separate contracts despite dependency. |
| **WP-08 Static Control-Plane Hygiene** | **PASS** | Keep as one execution unit | Single N-15 verification contract with finite cross-document consistency scope. |

## Breakdown register

The 4 oversized WPs are therefore decomposed into **13 execution units**, one per active normalized contract.

| EU | Source WP | Contract | Bounded scope | Expected files/resources | Static verification | Affected re-audit |
|---|---|---|---|---|---|---|
| **EU-01** | WP-01 | N-01 Resource | Application-owned Reference→BaRe resource parity only. | Application-owned `app/src/main/res/` resources plus Reference resource inventory; exclude dependency/library-owned resources. | Resource matrix; type/qualifier/ownership trace. | #1 |
| **EU-02** | WP-01 | N-02 Strings | Application-owned string parity, usage, classification, and relevant locale coverage only. | Application-owned string resources under `app/src/main/res/values*/`; Reference string inventory. | String matrix; usage/locale trace; visible/deferred classification. | #2 |
| **EU-03** | WP-02 | N-05 Manifest | Application/component manifest contract only. | `app/src/main/AndroidManifest.xml`; Reference manifest. | Reference→BaRe manifest matrix/diff. | #5 |
| **EU-04** | WP-02 | N-06 Intent | Intent/filter/callback/deep-link contract only. | `app/src/main/AndroidManifest.xml` intent/filter declarations plus relevant target Java Activity callback surfaces; Reference manifest/source evidence. | Intent/filter/callback matrix; exported/deep-link classification. | #6 |
| **EU-05** | WP-02 | N-07 Permission | Static permission ownership/declaration/request/check contract only. | `app/src/main/AndroidManifest.xml` permission declarations plus relevant Java request/check sites; Reference permission evidence. | Permission declaration/request/check matrix. | #7 |
| **EU-06** | WP-06 | N-11 Branding/identity | Visible/internal/provider/deep-link identity classification and BΛR☰ launcher identity contract. | Manifest identity fields; application-owned branding resources; relevant visible string/resource references; no global replacement. | Branding matrix and identity classification. | #11 |
| **EU-07** | WP-06 | N-10 Dialog/error/loading | Trigger→visible state→action→dismiss/recovery contract, including relevant lifecycle restoration. | Relevant Activity/Fragment Java sources; application-owned dialog/loading/error layouts/styles/strings. | Transient-state matrix and source-level trigger/state trace. | #10 |
| **EU-08** | WP-07 | N-13 Fake/stub | Explicit stub/boundary/TODO/no-op/null-return inventory and classification. | Target Java source tree; explicit P3 boundary/stub strings/resources; known `StorageInfoService` source. | Marker/null-return inventory and classification. | #13 |
| **EU-09** | WP-07 | N-14 Boundary | Complete P3-visible boundary ownership matrix across 71 Activities + 3 Services + 8 Receivers and downstream calls. | Frozen P2 Java component inventory under `app/src/main/java`; relevant interfaces/services/receivers; downstream call sites. | Boundary matrix with owner/input/output/deferred phase/P3-visible side. | #14 |
| **EU-10** | WP-03 | N-04 Theme/style/color | Application-owned theme/style/color/state-list parity. | Application-owned `app/src/main/res/values*/` theme/style/color resources and relevant layout references. | Theme/style/color matrix and inheritance/item-contract trace. | #4 |
| **EU-11** | WP-04 | N-08 Navigation | Navigation contract for all 71 frozen P2 Activities. | The 71 BaRe Activity Java sources listed in `docs/PHASE_2_SKELETON.md`; manifest navigation attributes where applicable. | 71-Activity navigation matrix. | #8 |
| **EU-12** | WP-05 | N-09 Lifecycle/state | Activity/major Fragment lifecycle and state contract. | In-scope Activity/major Fragment Java sources from P2 inventory; relevant saved-state/resource references. | Lifecycle/state matrix; save/restore/event-path trace. | #9 |
| **EU-13** | WP-08 | N-15 Static/documentation hygiene | Cross-document control-plane consistency after follow-up changes. | `docs/PHASE_3_FOLLOW_UP_EXECUTION.md`, `docs/PHASE_3_STATUS.md`, `docs/RECONSTRUCTION_CHECKPOINT.md`, plus affected matrices/ledger. | Cross-document consistency check. | #15 + touched control-plane domains |

## Scope-check rules applied

1. A normalized contract that was deliberately kept separate in Step 2 is not recombined merely because it shares files with another contract.
2. Dependency does not equal scope grouping: EU-03 precedes EU-04/EU-05, and EU-08 precedes EU-09.
3. The 71-Activity scope is finite because the authoritative P2 inventory defines the exact component set; it is not permission to rewrite all Activities.
4. Static verification remains the default. Runtime/build/install/visual verification is still gated.
5. Downstream provider/backend/storage/engine execution remains outside these units.
6. No implementation is performed by Step 7.

## Step 7 completion

- **8 WPs assessed.**
- **4 WPs passed unchanged:** WP-03, WP-04, WP-05, WP-08.
- **4 WPs were too large and were split:** WP-01, WP-02, WP-06, WP-07.
- Result: **13 bounded execution units**, one per active normalized contract.
- No implementation authorization is created.

### Step 7A — Execution Safety / Stability Gate

The 13 execution units are **domain contracts, not mandatory one-shot operations**. A large unit must be subdivided again before Step 8 whenever its evidence or change surface is too large to review safely.

Mandatory controls for every EU/batch:

1. **Inventory before mutation** — enumerate the exact files/contracts in scope before changing anything.
2. **Ownership isolation** — separate application-owned items from dependency/library/generated/downstream items before counting or changing them.
3. **Bounded batching** — an EU may be split into EU-A/EU-B/EU-C/... by resource type, qualifier, feature surface, component group, call-chain, or other evidence-backed boundary.
4. **Explicit blast radius** — record exact paths/contracts allowed to change and explicitly exclude unrelated domains.
5. **Static-first verification** — inspect the resulting diff, references, ownership, and contract matrix after each batch.
6. **Re-audit before continuation** — the affected audit domain gets current evidence for the completed batch; a batch passing does not close the whole EU/domain.
7. **Checkpoint after meaningful batches** — record state, changed scope, evidence, and remaining work.
8. **Hard stop conditions** — stop if scope expands unexpectedly, ownership becomes ambiguous, static references break, the change crosses an excluded boundary, or the operation becomes operationally unstable.
9. **Rollback/isolation** — isolate or revert an unstable/incorrect batch before attempting the next batch; never stack new changes on unresolved instability.
10. **No bulk-copy parity** — Reference counts are inventory evidence only; never automatically copy/reconcile thousands of Reference files as one operation.
11. **No runtime escalation** — build/install/runtime/visual verification remains gated unless separately authorized.
12. **No cross-EU opportunism** — do not fix unrelated contracts merely because their files are nearby.

### Step 8 entry criteria

A batch is **small enough to enter Step 8** only when it has:

- a known file/contract list;
- known ownership;
- bounded change scope;
- known dependencies;
- explicit exclusions;
- a static verification method;
- a re-audit target;
- a checkpoint condition; and
- a clear stop/rollback condition.

If any item is unknown, **Step 8 does not start for that batch**. Subdivide the unit or return to evidence/classification work.

This hardening does **not** rewrite the master flow. It strengthens Step 7 so that Step 8 remains genuinely “Small Implementation.”

**Step 7 is complete — hardened.**
**Next:** Step 8 — Small Implementation, only with explicit implementation authorization and only for a safety-gated bounded batch.
## EU-01 Execution Checkpoint — Batch 01

**Status:** COMPLETE — Reference inventory + application-source ownership seed.

- Reference source of truth: supplied `SwiftBackup-5.1.0-620-decompiled.zip`.
- Reference evidence paths: `output/jadx/resources/res/` and `output/jadx/sources/org/swiftapps/swiftbackup/`.
- Application-source usage seed was extracted by tracing `R.<type>.<name>` from the Reference application package.
- Distinct Reference application-source references: anim 4, color 6, dimen 14, drawable 59, font 4, layout 14, menu 30, string 300, style 2, xml 1.
- Raw decoded resource counts remain inventory evidence only; dependency/library resources are excluded from automatic parity conclusions.
- No application resource was added, deleted, or modified.
- No build/install/runtime/visual verification was performed.

**Current EU-01 batch:** Batch 02 — ownership classification and bounded candidate selection.

**Next implementation gate:** only an evidenced APP-MISSING candidate with a bounded contract may enter Small Implementation.

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

**Current execution objective:** Steps 1–6 complete; **Step 7 Scope Check complete and hardened with the Execution Safety / Stability Gate**. Eight WPs were reduced to 13 bounded execution units, and each unit may be subdivided further into safety-gated batches before Step 8. No implementation is authorized merely by reaching Step 7.

**P4:** GATED / NOT STARTED.

**Runtime:** NOT AUTHORIZED / NOT PERFORMED.

**Implementation:** No new P3 follow-up implementation is performed merely by creating this document.

## EU-01 Execution Checkpoint — Batch 02

**Status:** COMPLETE — ownership classification and bounded candidate selection.

**Reference source:** supplied `SwiftBackup-5.1.0-620-decompiled.zip` only as primary Reference input.

**Result:**
- Reference application-source resource ownership was cross-checked against the current BaRe application resource tree and current BaRe source usage.
- Direct counterparts were classified as APP-MATCH where evidence supported an existing BaRe contract.
- `xml/settings_apps` was treated as an authorized/alternate settings contract rather than a missing resource.
- Several Reference application-owned names are absent from BaRe, including the six source-used Reference colors `acnt`, `ambrdark`, `blk07`, `premium`, `trans`, and `wht20`; however, no current BaRe consumer establishes a bounded safe insertion contract for these resources.
- Reference-only animation/font/layout/menu/style names likewise do not establish a defect by name-level absence alone.

**Step 8 decision:** NOT ENTERED. No candidate met all required conditions of APP-MISSING + known safe contract + bounded consumer/blast radius.

**Mutation:** none under `app/src/main/res/`.

**Verification:** static evidence only. Build/install/runtime/visual verification remains gated and was not performed.

**Checkpoint condition:** EU-01 remains active for targeted evidence if a concrete P3-visible resource defect or current BaRe consumer identifies a bounded missing contract. Do not bulk-copy Reference resources or add unused names speculatively.


## EU-06 Execution Checkpoint — Launcher Identity Batch 01

**Status:** COMPLETE — bounded launcher identity contract implemented and statically re-audited.

**Scope:** N-11 Branding/identity; launcher identity only. Visible string and provider/deep-link identity remain dependent on EU-02/EU-04 and were not globally rewritten.

**Reference source:** supplied `SwiftBackup-5.1.0-620-decompiled.zip` only as primary Reference input. Reference manifest declares `@string/swift_backup` and `@mipmap/ic_launcher`.

**Implementation:**
- Added `app/src/main/res/drawable/bare_launcher_icon.xml` as the application-owned BΛR☰ launcher vector.
- Added `android:icon="@drawable/bare_launcher_icon"` to the BaRe application manifest.

**Static verification:** manifest reference and resource declaration resolve by source-level inspection. Diff from the EU-01 checkpoint is limited to one new resource and one manifest attribute.

**Re-audit #11:** concrete launcher identity/icon defect is resolved at static contract level. Broader branding remains 🟡 OPEN / NEEDS FOLLOW-UP pending string and intent evidence; visual verification remains gated.

**Runtime:** NOT AUTHORIZED / NOT PERFORMED.

**Checkpoint condition:** EU-06 bounded implementation is complete. Remaining branding follow-up returns to dependency order through EU-02/EU-04; no additional launcher mutation is warranted without new evidence.


## EU-02 Execution Checkpoint — Batch 01

**Status:** COMPLETE — targeted application-owned string evidence and alternate-contract classification.

**Reference source:** supplied `SwiftBackup-5.1.0-620-decompiled.zip` only as primary Reference input.

**Scope:** N-02 application-owned string parity; targeted candidates only. No mass string-tree scan or bulk-copy operation.

**Evidence:**
- Reference base `values/strings.xml` contains 1,384 names; this raw count is not a parity target because the decoded tree includes dependency/library resources.
- Existing audit evidence identifies 300 distinct application-source `R.string.*` names in Reference.
- Targeted missing-name checks confirmed that several representative Reference names are absent from BaRe, but name absence alone does not establish a P3 defect.
- Current BaRe already contains alternate/expanded P3 contracts for several related concepts; e.g. Reference `backup_all` is represented by the explicit BaRe `backup_all_apps`, `backup_missing_apps`, `backup_updated_apps`, `restore_all_apps`, and related P3 boundary strings rather than requiring an unused `backup_all` alias.
- No current BaRe consumer was established for the other sampled missing names sufficient to justify adding them as standalone resources.

**Step 8 decision:** NOT ENTERED. No sampled candidate met the condition **APP-MISSING + P3-visible consumer + bounded safe contract**.

**Mutation:** none under `app/src/main/res/values*`.

**Verification:** static evidence only. Build/install/runtime/visual verification remains gated.

**Checkpoint condition:** EU-02 remains active for targeted evidence. Continue only with concrete Reference application-source strings that can be mapped to an existing/current BaRe P3 consumer or a documented visible defect. Do not bulk-copy Reference strings.

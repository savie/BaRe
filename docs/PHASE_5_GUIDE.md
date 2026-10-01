# BΛR☰ Phase 5 Guide

## Purpose

Phase 5 is the next lifecycle boundary after P4 and is defined by the canonical roadmap as:

**PHASE 5 — FEATURES**
- Backup / Restore
- seluruh feature Reference

P4 identifies the next lifecycle boundary as **Phase 5 — feature execution reconstruction**.

This guide defines the P5 working method before implementation begins. It inherits the project-wide evidence-first workflow and the P4 discipline; it does not authorize runtime, provider, backend, or production execution by itself.

## Authority and boundaries

Canonical project definition:
- `docs/bare.md`

Frozen predecessor:
- `docs/PHASE_4_GATE.md`
- `docs/audits/P4_CONTRACT_REGISTER.md`

Reference source of truth:
- Swift Backup 5.1.0 / versionCode 620 decompile ZIP
- Reference is read-only

Target:
- `savie/BaRe`
- branch `rewrite`
- implementation surface: BaRe/app/

P5 must preserve:
- Reference → contract/evidence → BaRe implementation
- no Reference mutation
- no speculative behavior
- UNKNOWN/BLOCKED when evidence is insufficient
- Java source implementation
- Android Views/XML
- only explicitly authorized deviations from `docs/bare.md`

## Important status distinction

This document is the **P5 method/guide**.

It is not the P5 gate and does not mean P5 has been opened, audited, implemented, or closed.

A future `docs/PHASE_5_GATE.md` is the decision surface for P5 status. It must be created/revised only when the P5 entry evidence and scope are ready to be governed by an explicit gate.

## P5 workflow

The project-wide lifecycle remains:

`AUDIT → CATAT → CEK → IMPLEMENTASI → RE-AUDIT → CLOSURE`

P5 applies that workflow in feature-sized execution units.

### P5.0 — Scope and entry control

Before feature implementation:

1. Confirm P4 remains frozen at its documented static contract boundary.
2. Read the canonical roadmap in `docs/bare.md`.
3. Identify the P5 feature universe from Reference evidence.
4. Carry forward P4 downstream items that become P5 inputs, without silently changing their meaning.
5. Establish the P5 evidence/register surface before implementation.
6. Do not treat a feature list inferred from memory or assumptions as complete.

**Exit:** P5 scope is evidence-backed enough to begin the feature audit.

### P5.1 — Reference feature audit

Audit the Reference directly, using the canonical decompile ZIP as the primary evidence.

For each feature, identify as applicable:
- entry point / trigger
- Activity / Fragment / Service / Receiver / Provider owner
- domain/service/repository owner
- state and data models
- intents and keys
- resources and UI
- permissions
- storage/filesystem boundaries
- scheduling/task boundaries
- account/session boundaries
- backup/restore boundaries
- dependencies
- success/result states
- error/edge paths
- downstream execution requirements

For domains covered by N-01 or another authoritative audit, read the existing audit first and then perform targeted Reference inspection.

**Rule:** an audit finding is not an implementation instruction until its evidence and owner are established.

**Exit:** the feature's Reference behavior and dependency surface are sufficiently inventoried for contract analysis.

### P5.2 — Feature contract, owner, and boundary

Translate verified Reference findings into the minimum BaRe contract needed for reconstruction.

For each feature, record:
- Reference evidence
- canonical owner
- consumer(s)
- inputs/triggers
- outputs/results
- state
- dependencies
- execution boundary
- P4 contracts consumed
- implementation target
- verification surface

Apply the owner rule used in P4:
- do not create duplicate canonical owners;
- UI is a consumer when a repository/service/domain boundary is evidenced;
- provider/backend execution remains behind the appropriate contract when execution is outside the current authorization.

**Exit:** the feature has a bounded contract and no unresolved ownership collision.

### P5.3 — Gap, dependency, and UNKNOWN classification

Compare the verified Reference contract with current BaRe state.

Classify every relevant difference as:
- MATCH
- AUTHORIZED DEVIATION
- UNAUTHORIZED DEVIATION
- UNKNOWN
- BLOCKED
- DEFERRED/DOWNSTREAM where the work is intentionally outside the current execution boundary

Do not use UNKNOWN as a synonym for “not implemented”.

Resolve evidence UNKNOWNs through targeted forensic audit before implementation whenever the Reference can answer them.

Known implementation gaps may remain GAP/PARTIAL only when their required behavior is already established by evidence.

**Exit:** implementation scope is explicit and evidence-backed.

### P5.4 — Implementation readiness checkpoint

Before changing `app/`:

- feature contract is documented;
- canonical owner is documented;
- required dependencies are identified;
- Reference evidence is named;
- implementation scope is bounded;
- unresolved UNKNOWNs that affect implementation are cleared or explicitly blocked;
- authorized deviations are identified;
- affected P3/P4 consumers are known;
- implementation batch size is decided.

If the feature is too large or dependency-heavy, split it into evidence-backed work packages. Do not split merely for administrative reasons.

**Hard rule:** no P5 implementation before CEK/readiness is complete.

### P5.5 — Feature implementation

Implement only after P5.4 readiness.

Rules:
- modify BaRe implementation only;
- Reference remains read-only;
- use Java;
- use Android Views/XML;
- preserve Reference behavior unless an Authorized Deviation explicitly applies;
- preserve P3/P4 boundaries and avoid duplicate owners;
- do not invent Supabase configuration, schema, provider behavior, filesystem behavior, scheduler behavior, or runtime behavior that has not been evidenced/authorized;
- keep the implementation batch limited to the accepted feature scope.

No build/install/runtime/provider/backend execution is implied by this implementation step.

### P5.6 — Re-audit and regression

After each implementation batch:

1. Re-audit the changed feature against the Reference evidence.
2. Verify each targeted finding.
3. Check affected P3/P4 surfaces for regression.
4. Check ownership and dependency boundaries.
5. Check for unauthorized differences introduced by implementation.
6. Reclassify remaining gaps.

If the batch is split:
`P5-X-1 → RE-AUDIT → P5-X-2 → RE-AUDIT → ... → TOTAL RE-AUDIT`

Do not declare the entire feature green merely because one implementation batch passed.

### P5.7 — Feature closure

A feature may be marked closed only when its defined exit criteria are satisfied.

Closure records:
- Reference evidence
- implemented contract
- owner
- consumers
- regression result
- remaining downstream work
- final classification
- verification limitation, if any

Static closure does not claim runtime/device/provider/backend parity unless those were actually executed and verified under an explicit authorization.

## Backup / Restore boundary

Backup and Restore are explicit P5 scope in the canonical roadmap.

P5 must reconstruct their verified feature contracts before treating their execution as equivalent to the Reference.

Do not infer a backup/restore engine implementation merely from P4's task, scheduler, storage, or restore-state contracts. Those P4 contracts are inputs/dependencies; the actual feature execution behavior must be audited directly from Reference evidence.

## P4 → P5 handoff

P4 is frozen at the static contract boundary.

P5 may consume P4 outputs such as:
- account/lifecycle contracts
- permission/storage contracts
- settings/password contracts
- restore-state contracts
- task/job lifecycle contracts
- deferred execution boundaries

P5 must not silently reopen or mutate the frozen P4 contract. If a P5 audit discovers a genuine P4 contract defect, stop at evidence/classification and perform a new evidence-backed P4 re-audit before changing the frozen boundary.

## Documentation model

P5 documentation should remain layered:

### `docs/PHASE_5_GUIDE.md`
Owns:
- P5 method
- sequencing
- evidence rules
- implementation/readiness rules
- re-audit/closure rules

### `docs/PHASE_5_GATE.md`
Owns:
- P5 current decision
- entry/exit state
- current package
- blockers
- closure decision

This should be the single live P5 status surface.

### `docs/audits/P5_FEATURE_REGISTER.md`
Owns:
- feature inventory
- Reference evidence
- owner
- contract
- dependencies
- classification
- implementation/re-audit/closure status

Do not duplicate the live feature matrix in the checkpoint or status dashboard.

### Existing dashboards

`docs/RECONSTRUCTION_CHECKPOINT.md` remains the short lifecycle dashboard.

`docs/RECONSTRUCTION_STATUS.md` remains the detailed evidence/history ledger.

`docs/DOCS_INDEX.md` remains the documentation map and should point to the active P5 authority once the P5 gate is opened.

## P5 implementation formula

`Reference feature evidence → contract/owner/boundary → readiness → BaRe implementation → re-audit → closure`

Not:

`Reference → copy code → assume parity`

## P5 completion principle

P5 is not complete because:
- the app compiles;
- one feature appears in UI;
- a backup/restore screen exists;
- a service exists;
- a provider interface exists;
- or a runtime path is assumed to work.

P5 closure requires feature-level evidence, reconstruction, regression/re-audit, and explicit classification. Runtime/device/provider/backend verification remains governed by the later lifecycle boundaries unless explicitly authorized earlier.

## Current P5 status

**GUIDE PREPARED — P5 IMPLEMENTATION NOT AUTHORIZED BY THIS DOCUMENT.**

The guide establishes the method. The next control-plane step is to perform the P5 pre-implementation audit and establish the P5 gate/register from actual Reference evidence before implementation begins.

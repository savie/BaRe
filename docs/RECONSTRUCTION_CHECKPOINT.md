# BΛR☰ Reconstruction Checkpoint

## Purpose

Current project dashboard. Detailed evidence/history remains in `docs/RECONSTRUCTION_STATUS.md` and technical audits under `docs/audits/`.

## Canonical control plane

- Roadmap / handoff: `docs/bare.md`
- P1 gate: `docs/PHASE_1_INVENTORY.md`
- P2 gate: `docs/PHASE_2_SKELETON.md`
- P3 gate: `docs/PHASE_3_GATE.md`
- P4 gate: `docs/PHASE_4_GATE.md`
- P4 contract register: `docs/audits/P4_CONTRACT_REGISTER.md`
- Detailed status/history: `docs/RECONSTRUCTION_STATUS.md`

## Roadmap status

| Phase | Scope | Current status |
|---|---|---|
| 1 | Foundation / evidence | **COMPLETE / FROZEN** |
| 2 | Reference skeleton | **COMPLETE / FROZEN** |
| 3 | UI + Navigation + P3 closure | **COMPLETE / FROZEN** |
| 4 | Core behavior / contracts | **ACTIVE — P4.0 CLOSED / P4.1 IN PROGRESS** |
| 5 | Features | **DEFERRED** |
| 6 | Authorized deviations | **DEFINED / GATED** |
| 7 | Runtime | **BLOCKED / GATED** |
| 8 | Parity | **NOT EXECUTED** |
| 9 | Deviation audit | **NOT FINAL** |

## Frozen P3 position

- 71/71 Reference-owned Activities covered/registered.
- Activity depth: 23 🟢 / 48 🟡 / 0 🔴.
- 15 normalized P3 domains closed at the static boundary.
- Reference remains read-only.
- No build/install/runtime/device verification is claimed.

## Current P4 position

**P4.0 is closed; P4.1 is the current active package.**

A targeted Reference re-audit was performed using:
- `v1.0/rebaseline/reference/*`;
- the supplied `SwiftBackup-5.1.0-620-decompiled.zip`;
- current `rewrite` source;
- existing N-07/N-08/N-09 audits.

The P4 register was expanded from coarse domain rows into explicit P3-trigger/contract/consumer/verification rows.

## P4.0 closure

P4.0 contract inventory is **COMPLETE / ACCEPTED**.

- 16/16 targeted contract rows reconciled.
- Every row has Reference evidence, required contract, current BaRe state, owner/consumer, classification, minimum P4 target, deferred execution boundary, verification method, and P3 regression surface.
- Remaining GAP / PARTIAL classifications are implementation inputs for P4.1; they are not P4.0 blockers anymore.
- Provider/backend, backup/restore execution, privileged engines, and runtime/device verification remain explicitly downstream.

## Confirmed P4.0 gaps

The re-audit confirms these are real P4 contract gaps, not merely documentation gaps:

1. First-start/account lifecycle state is broader than the current P3 booleans.
2. Permission readiness must eventually be derived from authoritative permission/access state, not manual P3 success flags.
3. Reference persists and validates `preferred_storage_dir`; BaRe has no equivalent verified storage coordinator/persistence contract.
4. Account/session state is only partially reconciled despite provider-neutral repositories already existing.
5. Reference settings use a persisted `AppSettings` model; BaRe currently has the UI boundary but not the Reference-shaped settings contract.
6. Intro password mode uses a BaRe-specific `P3_PASSWORD_MODE`; Reference uses `saved_password_mode` with Reference enum/default semantics.
7. First-run cloud settings restore has an explicit Reference state/result flow; a completion boolean alone is not equivalent.
8. TaskActivity requires task status/progress/error state; current empty task adapters are only a boundary stub.
9. Core data inventory must include the Reference-shaped models consumed by these flows, not only `UserInfo`.
10. Reference has a secure/encrypted local preference boundary relevant to persisted P4 state.

## Explicit downstream boundaries

These remain outside P4 implementation:

- backup/restore execution;
- archive/compression/encryption;
- provider token exchange / provider SDK execution;
- actual cloud transfer;
- Firebase/Supabase auth execution;
- backend/database mutation;
- billing/purchase verification execution;
- root/Shizuku privileged engine;
- installed-app inventory/app-op engine;
- foreground-service execution;
- runtime/device verification.

## Execution guard

- Reference is read-only.
- P4.0 is inventory/reconciliation only.
- No implementation is implied by a register row.
- Build/install/runtime remains prohibited unless explicitly authorized.
- Static evidence never implies engine/provider/backend/runtime success.

## Current position

> **P1 frozen → P2 frozen → P3 frozen → 71/71 Activities covered → 15 P3 domains closed → P4 active → P4.0 re-audit/inventory confirms concrete P4 gaps.**

Current package: **P4.1 — BaRe Gap / Blocker Analysis**.

P4.1 blocker/dependency analysis is recorded in `docs/audits/P4_CONTRACT_REGISTER.md`; the scope remains C01–C16.


### P4.1 deepening

The P4.1 register has been deepened from a dependency list into a per-contract implementation map for C01–C16. Six work packages are defined; C02 remains regression-only and C15/C16 remain downstream. P4.1 is still **IN PROGRESS** and is not yet closed.


### P4.1 evidence-classification audit checkpoint — 2026-10-01

A targeted re-audit was performed directly against the supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP for the previously questionable C01–C16 contract areas. The audit found direct static evidence for lifecycle, permissions, storage, secure/local preference boundary, AppSettings, saved_password_mode, first-run restore flow, core data models, task status, scheduling boundary, and cloud/session metadata.

**Classification result:** no open contract-level UNKNOWN remains across C01–C16 at this checkpoint. Known-but-not-yet-implemented BaRe behavior remains GAP/PARTIAL; known execution intentionally outside P4 remains DEFERRED/DOWNSTREAM; runtime/device/provider behavior remains UNVERIFIED because the execution guard is still active.

UNKNOWN is now reserved for a genuinely unresolved evidence boundary after targeted static audit; it is not a synonym for “not implemented”, “not searched”, or “deferred to a later phase”.

No implementation, build, install, runtime, provider, backend, or engine execution was performed. P4.1 remains IN PROGRESS until the remaining contract-owner/dependency acceptance conditions are closed.


### P4.1 owner reconciliation checkpoint — 2026-10-01

Canonical ownership was reconciled across C01–C16 against the current BaRe source and Reference evidence. No unresolved P4-level canonical-owner collision remains. The primary collision pattern is transitional P3 UI state versus domain-owned state; P4.2 must centralize persisted/domain state and leave Activities as consumers. The dependency order remains WP-A (C07/C11) → WP-B (C01/C05/C06/C14) → WP-C (C04/C03) → WP-D (C08/C09) → WP-E (C10) → WP-F (C12/C13). C02 remains regression-only; C15/C16 remain downstream. P4.1 remains IN PROGRESS until the remaining acceptance evidence is closed.


### P4.1 final closure — 2026-10-01

P4.1 is **CLOSED / READY FOR P4.2**. The final C01–C16 closure matrix confirms named Reference evidence, canonical owner, BaRe gap/state, dependency, P3 regression surface, and phase boundary for every row. No open contract-level UNKNOWN remains; no unresolved canonical-owner collision remains; no C17+ scope was introduced. C02 remains regression-only and C15/C16 remain downstream.

This is static contract-analysis closure only. No implementation, build, install, runtime, provider, backend, or engine execution was performed.


### P4.2 WP-A checkpoint — 2026-10-01

- P4.1 is **CLOSED / READY FOR P4.2**; P4.2 implementation is active in **WP-A (C07/C11)**.
- Current Reference-backed implementation includes `LocalState`, `SecureLocalState` boundary, `StorageInfoLocal`, `TaskState`, and `ErrorSummary`, plus wiring for first-start/first-run restore local state, notification-sound preference, and typed storage state.
- Static regression against the supplied Swift Backup 5.1.0 / versionCode 620 decompile found no new contradiction in the affected P3 surfaces.
- `P3_*` readiness/sign-in/password flags remain transitional and are not promoted to canonical state in WP-A.
- `StorageInfoService.read()` remains a non-fabricating runtime/filesystem boundary.
- WP-A remains **IN PROGRESS / NOT CLOSED** until its C07/C11 consumer/ownership reconciliation is complete.
- No build, install, runtime, provider, backend, or engine execution was performed.

### P4.2 WP-A correction — 2026-10-01

- Corrected first-run restore ownership: `IntroActivity` no longer writes `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED=true` merely on Intro completion.
- The key remains owned by `LocalState` but its terminal transition is reserved for C10 first-run restore behavior.
- Intro reset clears the key alongside first-start state.
- This is a static contract-fidelity correction; WP-A remains IN PROGRESS.
- No build, install, runtime, provider, backend, or engine execution was performed.

### WP-A C07/C11 inventory pass — 2026-10-01

- Persisted-key inventory is now explicitly reconciled: ordinary local lifecycle/preference keys stay in `LocalState`; sensitive password keys remain behind the secure `V.getZ()` boundary and are owned by C09/WP-D.
- `saved_storage_info_local` is confirmed as Reference storage-cache persistence, while its serialization/runtime persistence remains outside this WP-A execution scope.
- Static consumer search found no remaining generic storage DTO/Object surface in the active Dashboard path and no duplicate BaRe TaskState/ErrorSummary shape.
- No further WP-A mutation is justified without crossing into C09/C10/C12/C13 or runtime secure-storage/filesystem execution.
- WP-A remains **IN PROGRESS** pending package-level acceptance/static regression; no build/install/runtime/provider/backend/engine verification was performed.

### P4.2 WP-A final acceptance — 2026-10-01

- **WP-A / C07-C11 is CLOSED by static acceptance.**
- Reference reconciliation and consumer regression are complete for the WP-A-owned surface.
- No runtime/build/install/provider/backend/engine claim is made.
- P4.2 remains active for the remaining owned work packages.
### P4.2 WP-B implementation checkpoint — 2026-10-01

- Started WP-B with scope limited to **C01 / C05 / C06 / C14**.
- Reconciled lifecycle, userInfo, migration, and cloud/session metadata contracts against the supplied Swift Backup 5.1.0 / 620 Reference decompile.
- Removed the duplicate backend-local `UserInfo` shape from `BaReBackendRepository`; canonical account `UserInfo` is now the shared model boundary.
- Added explicit lifecycle/migration decision contracts without implementing provider auth, backend mutation, cloud transfer, or restore execution.
- WP-B is **IN PROGRESS**; account consumer wiring and final static regression remain before closure.
- No build, install, runtime, provider, backend, or engine execution was performed.

### P4.2 WP-B decompile fidelity re-audit — 2026-10-01

- Primary source rechecked directly from `SwiftBackup-5.1.0-620-decompiled.zip`.
- Corrected C06 migration contract to the actual Reference boolean `is_migrating_to_google_sign_in`.
- Corrected C14 by removing an unsupported generic `isInitialized()` contract; retained only identity UID and current cloud-directory evidence.
- C05 `UserInfo` remains aligned to the seven fields observed in Reference `ah8`.
- WP-B remains **IN PROGRESS**; no build/install/runtime/provider/backend/engine execution was performed.


### P4.2 WP-B consumer-wiring checkpoint — 2026-10-01

- C06 migration-resume consumer wiring is aligned to the Reference sequence: read `is_migrating_to_google_sign_in`, clear the guard, then re-enter sign-in.
- The key is owned by the existing `LocalState` boundary; `LocalAccountMigrationRepository` provides the C06 repository adapter.
- Static source-level fidelity only. Provider authentication, backend mutation, and migration execution remain deferred.
- WP-B remains **IN PROGRESS**; no build/install/runtime/provider/backend/engine execution was performed.

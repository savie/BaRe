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
- P5.0 scope audit: `docs/audits/P5_SCOPE_AUDIT.md`
- P5.1 feature register: `docs/audits/P5_FEATURE_REGISTER.md`
- Detailed status/history: `docs/RECONSTRUCTION_STATUS.md`

## Roadmap status

| Phase | Scope | Current status |
|---|---|---|
| 1 | Foundation / evidence | **COMPLETE / FROZEN** |
| 2 | Reference skeleton | **COMPLETE / FROZEN** |
| 3 | UI + Navigation + P3 closure | **COMPLETE / FROZEN** |
| 4 | Core behavior / contracts | **COMPLETE / FROZEN — P4.0 CLOSED / P4.1 CLOSED / P4.2 CLOSED / P4.3 CLOSED / P4.4 CLOSED / P4.5 CLOSED** |
| 5 | Features | **P5.1 FEATURE AUDIT COMPLETE / P5 GATE NOT OPENED** |
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

**P4 is CLOSED / FROZEN at the static contract boundary.**

A targeted Reference re-audit was performed using:
- `v1.0/rebaseline/reference/*`;
- the supplied `SwiftBackup-5.1.0-620-decompiled.zip`;
- current `rewrite` source;
- existing N-07/N-08/N-09 audits.

The P4 register was expanded from coarse domain rows into explicit P3-trigger/contract/consumer/verification rows.

## Historical P4.0 closure

P4.0 contract inventory is **COMPLETE / ACCEPTED**.

- 16/16 targeted contract rows reconciled.
- Every row has Reference evidence, required contract, current BaRe state, owner/consumer, classification, minimum P4 target, deferred execution boundary, verification method, and P3 regression surface.
- The historical P4.0 GAP / PARTIAL classifications were inputs to P4.1/P4.2 and are superseded by the final P4.4 classification.
- Provider/backend, backup/restore execution, privileged engines, and runtime/device verification remain explicitly downstream.

## Historical P4.0 gaps

At the P4.0 inventory checkpoint, the re-audit identified these contract gaps; later P4.2 implementation and P4.4 classification closed the P4 boundary:

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

> **P1 frozen → P2 frozen → P3 frozen → P4 frozen at the static contract boundary → P5.0 scope complete → P5.1 feature audit complete → P5 gate not opened.**

Current package: **P4.5 — Verified Checkpoint / Package Closure — CLOSED.**

Next lifecycle boundary: **Phase 5 — feature execution reconstruction. P5.0 scope/entry and P5.1 feature audit are complete; P5.2 contract/owner/boundary is next.**

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


### WP-B C01/C05/C14 owner regression — 2026-10-01

Static regression found an unnecessary duplicate lifecycle boundary: `IdentityService` + `IdentityRepository` exposed `initialize()` / `hasIdentity()` separately from the canonical C01 `AccountLifecyclePolicy` / `AccountService` boundary, and neither had active consumers. These duplicate files were removed to preserve the owner rule: UI/domain consumers use the canonical lifecycle/account boundaries; no second identity lifecycle owner is introduced.

C05/C14 remain provider-neutral interfaces (`UserInfoRepository`, `BaReBackendRepository`, `ReferenceBackendContract`). No concrete provider implementation or backend execution was added. Account UI consumer wiring remains a later static step because the current BaRe repository interfaces have no provider implementation to safely instantiate without inventing runtime behavior.

**WP-B remains IN PROGRESS.** No build/install/runtime/provider/backend/engine execution was performed.


### WP-B account consumer regression — 2026-10-01

`AccountFragment` was rechecked against the current BaRe account contracts. It observes `AccountViewModel` but has no concrete `AccountService` composition/provider implementation. No speculative injection or fake provider was added. This preserves the contract boundary: `AccountFragment` remains a UI consumer, while identity/userInfo acquisition stays behind `AccountRepository` + `UserInfoRepository` / `AccountService`.

C01/C05/C14 therefore remain statically bounded but not implementation-complete. Closure requires a real composition/provider owner supported by Reference evidence; this pass does not invent one.


### P4.2 WP-B final static acceptance — 2026-10-01

WP-B / C01-C05-C06-C14 is **🟢 CLOSED at the P4 static contract boundary**.

The closure boundary is provider-neutral: lifecycle/account/session/migration/cloud metadata ownership is complete enough for downstream implementation. Firebase is Reference evidence only; the target backend is Supabase.

Concrete Supabase repositories/adapters and runtime auth/backend execution remain in the downstream provider phase. This is not a blocker for the current P4 contract gate.

No build/install/runtime/provider/backend/engine execution was performed.

### P4.2 WP-C final static acceptance — 2026-10-01

WP-C / C03-C04 is **🟢 CLOSED at the P4 static contract boundary**.

Primary evidence came from the supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP. Permission evidence was reconciled from dz5 and intro.d; storage evidence was reconciled from yn7, zn7, and StorageSwitchActivity.

The resulting BaRe boundary is: permission capability → current state/result/retry → readiness, and storage inventory → selected volume → preferred_storage_dir persistence → validity/fallback. Activities remain consumers. Root/Shizuku, OEM package-visibility execution, privileged storage behavior, and backup/restore/filesystem engines remain downstream.

No build/install/runtime/provider/backend/engine execution was performed. P4.2 remains active for **WP-D / C08-C09**.


### WP-C post-acceptance static correction — 2026-10-01

A final source reread found stale Intro call-sites to the removed P3 permission-ready helpers. Those call-sites were removed; current IntroActivity now refreshes the canonical PermissionAccessService state after permission-request returns/fallbacks. The C03/C04 closure decision is unchanged.

No build/install/runtime/provider/backend/engine execution was performed.


### P4.2 WP-D final static acceptance — 2026-10-01

**WP-D / C08-C09: CLOSED — static contract acceptance.**

- Primary evidence: supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP (`AppSettings`, `ha7`, `IntroActivity`, `ux5`).
- C08: `AppSettings` + `SettingsRepository` now own the smallest Reference-shaped settings contract required by frozen P3 consumers; `play_notification_sounds` remains one canonical local persistence key with Reference default `true`.
- C09: `saved_password_mode` is now modeled at the secure-state contract boundary via `PasswordStrategyRepository`; default is `STANDARD_PASSWORD.ordinal()`. Intro's `P3_PASSWORD_MODE` remains transitional only.
- `P3_PASSWORD_MODE` remains only as transitional Intro UI state; it is not the C09 canonical contract.
- No unsupported Reference settings fields were promoted into the P4 contract.
- Password generation/encryption/secure restore and cloud settings sync/backend mutation remain downstream.
- Static regression found no duplicate Settings store or stale Intro password-state call-site in the affected source.
- No build, install, runtime, provider, backend, or engine execution was performed.


### P4.2 WP-E / C10 final static acceptance — 2026-10-01

**WP-E / C10: CLOSED — static contract acceptance.**

The supplied Swift Backup 5.1.0 / 620 decompile was re-read directly for intro/d.java first-run restore behavior. BaRe now has an explicit C10 state/result owner without implementing cloud execution. Completion is persisted only for SUCCESS; SKIPPED and FAILED leave the completion key false.

No build/install/runtime/provider/backend/engine verification was performed.

**Next active package: WP-F / C12-C13.**

### P4.2 WP-F / C12-C13 implementation + decompile-fidelity audit — 2026-10-01

Primary evidence was re-read directly from the supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP before mutation:

- `defpackage/gz7.java`: exact task lifecycle `WAITING`, `RUNNING`, `COMPLETE`, `CANCELLED`, `CANCEL_COMPLETE` plus cancellation/completion helpers.
- `defpackage/jc2.java`: exact terminal outcomes `COMPLETED`, `CANCELLED`, `ERROR`, `TIMEOUT`, `START_BLOCKED_QUOTA`, `PROCESS_RESTARTED`, `HANDED_OFF`.
- `defpackage/pw6.java`: per-task status, integer progress/total, progress message, error channel, task provider/type boundary, and lifecycle updates.
- `org/swiftapps/swiftbackup/tasks/ui/TaskActivity.java`: task list, status observer, completion/error UI, cancel/cancelling/done button state, force-stop surface, and SLog visibility.
- `org/swiftapps/swiftbackup/tasks/TaskService.java`: service-level state, cancellation/timeout terminal handling, and task-result publication boundary.
- `org/swiftapps/swiftbackup/home/schedule/ScheduleService.java`: `is_forced_run`, `schedule_run_mode`, and exact `Schedules` / `SingleSchedule` / `MultipleSchedules` run modes.
- `org/swiftapps/swiftbackup/jobs/AlarmReceiver.java`: alarm scheduling and handoff boundary.
- `ScheduleItem#getItemId()`: evidence-supported schedule-item identity boundary.

BaRe now has:
- `TaskState`, `TaskResult`, `TaskErrorSummary`, and `TaskSnapshot` as the canonical C12 data boundary.
- `TaskStateRepository`, `TaskStateRegistry`, and `TaskStateService` as the canonical observation/lifecycle-intent owner.
- `TaskActivity` consumes the canonical task-state boundary instead of manufacturing an empty task state.
- `TaskJobRunMode`, `TaskJobIntent`, and `TaskJobLifecycle` as the C13 scheduler/job boundary.
- `TaskService` exposes the state registry without implementing execution.
- `AlarmReceiver` retains only evidence-backed intent keys; AlarmManager/foreground/service handoff remains downstream.

No task execution, real cancellation, foreground-service execution, AlarmManager scheduling, WorkManager execution, backup/restore engine, provider/backend, build, install, or runtime verification was performed.

### P4.2 WP-F / C12-C13 final static acceptance — 2026-10-01

**WP-F / C12-C13: 🟢 CLOSED — static contract acceptance.**

Acceptance:
1. Reference lifecycle/result/error/progress evidence is directly reconciled from the supplied decompile ZIP.
2. TaskActivity now consumes canonical state through `TaskStateService`; UI does not invent task status.
3. Cancellation and force-stop are represented as lifecycle intents only; execution remains downstream.
4. C13 preserves the Reference run-mode names and forced-run boundary without decoding unsupported provider/runtime payloads.
5. Static source search finds one active BaRe TaskState/TaskResult/ErrorSummary contract family; no duplicate canonical task-state owner was introduced.
6. No P3 Activity outside the WP-F task surface was modified.
7. No build/install/runtime/provider/backend/engine execution was performed.

**Next boundary: P4.3 static regression re-audit.**


### P4.3 P3 static regression re-audit — 2026-10-02

**Decision: P4.3 — CLOSED (static regression acceptance).**

Scope was limited to the frozen P3 surfaces affected by WP-F/C12-C13: TaskActivity, TaskService, AlarmReceiver, and their task resource/manifest boundary.

Findings:
- TaskActivity remains wired to the canonical TaskStateService → TaskStateRegistry observation boundary.
- TaskService remains the manifest-registered service boundary and does not introduce execution claims.
- AlarmReceiver retains only evidence-backed is_forced_run / schedule_run_mode intent keys; scheduler execution remains downstream.
- task_activity.xml, task_card.xml, menu_task_activity.xml, and the manifest task service/receiver declarations remain present.
- P4.3 found and corrected the then-current menu-ID mismatch. Afterward, N-11 identity normalization renamed the app-owned logger ID consistently to R.id.action_barelogger in both consumer and resource; Reference-only action_swiftlogger remains unchanged.
- No additional P3 regression was identified in the affected surface.

No build/install/runtime/device/provider/backend/engine execution was performed.

**Next active package: P4.4 — remaining-gap classification.**


### P4.4 remaining-gap classification — 2026-10-02

**Decision: P4.4 — CLOSED.**

The current static classification leaves no unresolved P4 blocker across C01-C14. C02 remains PASS. C15 provider/backend execution and C16 backup/restore engine execution remain explicitly downstream. Runtime/device verification and other execution dependencies remain deferred to their owning phases.

No build/install/runtime/provider/backend/engine execution was performed.

**Next active package: P4.5 — verified checkpoint / package closure.**


### P4.5 verified checkpoint / package closure — 2026-10-02

**P4: CLOSED at the static contract boundary.**

C01-C14 are closed/pass at the P4 contract boundary; C15/C16 remain downstream. P4.3 regression and P4.4 remaining-gap classification are complete. The branch is left at the post-audit state with no build/install/runtime/provider/backend/engine execution.

The next lifecycle boundary is **Phase 5 — feature execution reconstruction**. P4 closure does not claim feature-engine, provider, backend, filesystem, scheduler, or runtime success.


## Post-P4 identity normalization correction — 2026-10-02

A pre-P5 control-plane review found that the written N-11 authority still contained the older wording that tolerated non-visible Swift-derived internal identifiers, while the intended target-app hygiene is zero Swift/Firebase residue. The authority wording was reconciled before further feature work.

### Normalization contract

- target `app/`: **0 `Swift/swift` text matches**;
- target `app/`: **0 `Firebase/firebase` text matches**;
- app-owned Swift/Firebase identifiers, resource names, XML references, URLs, callbacks, comments, and configuration are included in the normalization scope;
- dependency-owned, external-protocol, and Reference-only identifiers are classified rather than blindly renamed;
- no blind/global text replacement is authorized;
- Reference/decompiled evidence remains read-only.

### Static re-audit result

- target `app/` Swift/swift content matches: **0**;
- target `app/` Firebase/firebase content matches: **0**;
- target `app/` Swift/swift paths: **0**;
- target `app/` Firebase/firebase paths: **0**;
- known Swift-derived identifier sweep: **0**;
- old `bareapps.org` target identity: **0**.

A stale dashboard Firebase error include was normalized to the existing Supabase-named target resource, and the Premium support URL was normalized to the BaRe repository issue surface.

No build/install/runtime/device/provider/backend/engine execution was performed.

**Result: N-11 zero-text target hygiene restored at static boundary; P5 remains the next feature lifecycle boundary.**### P5.1 Reference closure reconciliation — 2026-10-02

A second full-section reconciliation against v1.0/rebaseline/reference/reference.md and reference/reference_apps_audit.md found ten additional evidence-backed boundaries that were only implicit in F01–F44.

- Added **P5-F45–F54**: account/local identity continuity; import/export/config transfer; folder manifest/incremental/chain validation; MMS/RCS handling; Wi-Fi sensitive-access/enterprise data; schedule selectors/last-run diagnostics; cloud diagnostics/provider abstraction/transfer tests; backup protection/retention/notes; Apps Local-vs-Cloud inventory/canonical discovery; and independent restore-part selection/action model.
- P5.1 explicit feature-contract units were then **54**.
- Icon cache and BaRe-specific large-file performance findings were intentionally not promoted to Reference feature units.

### P5.1 Apps child-feature reconciliation — 2026-10-02

A targeted Reference Apps audit showed that several Apps child behaviors needed explicit feature IDs rather than remaining implicit under the Apps list parent.

- Added **P5-F55–F58**: Apps-list search/query; Apps-list filtering/predicate state; Apps-list sorting/order projection; and label management/assignment/label-based filtering.
- Filter dimensions such as favorites, labels, backup status, cloud sync, install status, enabled status, app type, system/miscellaneous remain sub-predicates of F56 rather than separate feature IDs.
- Pull-to-refresh, FastScroller, RecyclerView, swipe reveal, and row presentation remain UI/interaction contract details, not separate top-level P5 feature units.
- P5.1 explicit feature-contract units are now **58**.
- This remains static evidence/register closure only. P5 gate remains **NOT OPENED**.
- No build/install/runtime/provider/backend/privileged-engine execution was performed.



### P5.1 Apps engine / special-data reconciliation — 2026-10-02

- P5.1 remains **OPEN FOR AUDIT / P5 GATE NOT OPENED**.
- Reference Apps deep audit Checkpoints 21–29 was reconciled against the supplied Swift Backup 5.1.0 / 620 decompile.
- Promoted explicit feature-contract units: **F59–F71**.
- New boundaries include Favorites persistence, AppInfo diagnostics, pinned shortcut integration, ConfigSettings→task mapping, backup-limit enforcement, package-visibility diagnostics, runtime/special permission state, SSAID, notification access, accessibility service, notification policy, Apps task workspace, and SBA app-data metadata envelope.
- P5.1 explicit feature-contract count is now **71**.
- The count is evidence-derived, not a target or parity quota; further P5.1 growth remains possible only when another independent Reference boundary is proven.
- Generic helpers/threading/logging/string utilities were intentionally not promoted to feature IDs.
- No implementation/build/install/runtime/provider/backend/privileged execution was performed or authorized.
- P5.2 remains blocked until P5.1 feature audit is explicitly closed.


### P5.1 non-Apps engine reconciliation — 2026-10-02

- P5.1 remains **ONGOING / NOT YET CLOSED**; P5.2 remains **NOT OPENED**.
- Targeted decompile pass added **F72–F74**.
- F72: Messages backup retention / local-cloud cleanup via explicit max-backup policy.
- F73: User-password lifecycle / persisted strategy and old-password state.
- F74: Schedule execution eligibility / alarm-to-task handoff, including runnable checks and prerequisite gates.
- P5.1 explicit feature-contract count is now **74**.
- Folder backup model evidence was intentionally not promoted further in this pass because the inspected material did not establish a sufficiently independent consumer/execution boundary beyond existing F47/F12.
- No implementation/build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 Task-engine reconciliation — 2026-10-02

- P5.1 remains **ONGOING / NOT YET CLOSED**; P5.2 remains **NOT OPENED**.
- Direct decompile inspection of the Reference task stack exposed **F75–F82**.
- F75: shared task-manager/provider registration and sequential execution lifecycle via `hy7` + `pw6`.
- F76: DataSync foreground-service runtime ledger/quota accounting via `DataSyncFgsRuntimeLedger` + `kc2`.
- F77–F82: concrete `pw6` task-provider execution boundaries for Apps, Folders, Messages, Calls, Wi-Fi, and Wallpapers.
- P5.1 explicit feature-contract count is now **82**.
- These are provider execution boundaries behind the shared task service/manager, **not** six additional Android Services.
- `Packer`/SevenZip archive handling and `MultiCompressor` metadata were inspected but not duplicated because F41 already owns the artifact format/compression/encryption boundary.
- No task execution, build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 persistence / configuration engine reconciliation — 2026-10-02

- P5.1 remains **ONGOING / NOT YET CLOSED**; P5.2 remains **NOT OPENED**.
- Added **F83–F85** from direct decompile evidence.
- F83: Apps inventory cache persistence/refresh reconciliation through Room `app_cached_data` and PackageManager-derived state.
- F84: SLog structured local persistence, retention, retrieval cap, and filtering through Room `SMessage`/DAO.
- F85: App configuration validation/normalization, including stale-label filtering, ApplyData validity, aggregate config validation, and cloud-location normalization.
- P5.1 explicit feature-contract count is now **85**.
- Cloud credential serialization was inspected but not promoted as a new ID because current evidence maps it to F46/F51 boundaries without requiring an independent execution owner.
- No implementation/build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 APK-share / APKS artifact reconciliation — 2026-10-02

- Added **P5-F86** from direct `apkshare` decompile evidence.
- F86: APKS share-package creation, per-entry SHA-256 metadata, role/size manifest, and dual metadata JSON envelopes.
- F86 is distinct from APK/APKS import (F10) and restore/install execution (F40).
- P5.1 explicit feature-contract count is now **86**.
- P5.1 remains ongoing; P5.2 remains not opened.
- No archive generation, installation, build, runtime, provider/backend, or privileged execution was performed or authorized.

### P5.1 cloud credential / orphan execution reconciliation — 2026-10-02

- Added **F87–F88** from direct decompile evidence.
- F87: cloud credential persistence, password/private-key merge, and credential settings export.
- F88: cloud orphan cleanup state machine with IDLE → SCANNING → RESULTS → DELETING → ERROR execution states.
- P5.1 explicit feature-contract count is now **88**.
- Provider-specific network execution remains behind existing F20/F51 boundaries; no provider-specific IDs were invented.
- No implementation, build/install/runtime/provider/backend execution was performed or authorized.

### P5.1 storage measurement reconciliation — 2026-10-02

- Added **P5-F89** from direct `StorageInfoLocal` / storage-switch decompile evidence.
- F89: storage volume measurement, app-usage calculation, Loading/Error/Success state, persisted `saved_storage_info_local` snapshot, and filesystem/root-access derivation.
- P5.1 explicit feature-contract count is now **89**.
- No filesystem statistics, snapshot persistence, build/install/runtime/provider/backend execution was performed or authorized.

### P5.1 locale / contributor / notice reconciliation — 2026-10-02

- Added **F90–F92** from targeted direct decompile evidence.
- F90: locale selection persistence and configuration-change propagation.
- F91: contributor registration state/persistence boundary.
- F92: notice/license content loading and selection model.
- P5.1 explicit feature-contract count is now **92**.
- These small-family units may be regrouped/collapsed during P5.2 if owner analysis shows they share one implementation boundary.
- No implementation, build/install/runtime/provider/backend execution was performed or authorized.

### P5.1 restore/install privileged-engine reconciliation — 2026-10-02

- Added **F93–F94** from targeted direct decompile evidence.
- F93: PackageInstaller session installation, result wait/status mapping, and install-source verification.
- F94: notification-policy backup/per-package restore bridge with bounded XML payload handling.
- P5.1 explicit feature-contract count is now **94**.
- These are lower-level execution boundaries for later P5.2 owner grouping; they do not authorize privileged/runtime execution.
- No implementation, build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 special-data payload codec reconciliation — 2026-10-02

- Added **F95** from targeted direct decompile evidence.
- F95: versioned app special-data serialization/compression, user binding, bounded read, and atomic replacement write lifecycle.
- P5.1 explicit feature-contract count is now **95**.
- F95 is a data-format/codec boundary; target identity/backend adaptation remains downstream.
- No implementation, build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 duplicate reconciliation — 2026-10-02

- Targeted review found **F94** duplicated the already-canonical **F69 Notification policy backup + restore** boundary.
- F94 is retained as a reconciliation marker only and is **not counted** as a unique feature-contract unit.
- P5.1 unique explicit feature-contract count is corrected from **95 → 94**.
- F93 (PackageInstaller execution) and F95 (special-data payload codec) remain independently evidenced boundaries.
- No implementation, build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 cloud login outcome reconciliation — 2026-10-02

- Added **F96** from targeted direct decompile evidence.
- F96: explicit cloud login outcome taxonomy covering success, invalid credentials, temporary connection failure, unknown host key, untrusted certificate, unknown error, and failed outcomes.
- P5.1 explicit unique feature-contract count is now **95**.
- This is a connection-result contract, not runtime/network verification.
- No implementation, build/install/runtime/provider/backend/privileged execution was performed or authorized.

### P5.1 Calls retention / backup-lifecycle reconciliation — 2026-10-02

- Added **F99** from targeted direct decompile evidence.
- F99: Calls backup retention/local-cloud cleanup policy driven by the persisted `max_call_backups` limit, with separate local/cloud inventory and deletion paths plus failure reporting.
- F99 is distinct from Calls backup/restore UI (F15/F16) and Calls task execution (F80), and is the Calls-specific counterpart to Messages retention F72.
- P5.1 explicit unique feature-contract count is now **98**.
- No backup deletion, cloud operation, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Settings cloud backup / restore reconciliation — 2026-10-02

- Added **F100** from targeted direct decompile evidence.
- F100: reusable settings snapshot backup/restore and application to local settings state through `SettingsBackupHelper`.
- F100 is distinct from the Settings UI family (F23), generic config transfer (F46), and the frozen P4 C10 first-run restore contract: C10 owns the first-run entry/state boundary, while F100 exposes the reusable settings snapshot/apply engine.
- Reference Firebase access remains Reference-only; target Supabase execution remains downstream.
- P5.1 explicit unique feature-contract count is now **100**.
- No cloud read/write, settings restore, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Folder restore strategy policy reconciliation — 2026-10-02

- Added **F101** from targeted direct decompile evidence.
- F101: persisted FolderRestoreStrategy policy with **MISSING_ONLY / OVERWRITE / FULL_RESTORE** modes and direct consumption by the folder restore engine.
- F101 is distinct from folder UI/batch surfaces (F11/F12), manifest/incremental-chain semantics (F47), and the generic folder task executor (F78).
- P5.1 explicit unique feature-contract count is now **101**.
- No folder restore, filesystem mutation, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Cloud diagnostics transfer-test reconciliation — 2026-10-02

- Added **F102** from direct `cloud/diagnostics` decompile evidence.
- F102: selectable cloud diagnostic test suite covering round-trip transfer, multithreaded download, provider transfer mode, upload/download validation, size/hash checks, thumbnail/download checks, cache cleanup, progress/errors, and explicit NOT_RUN/RUNNING/PASSED/FAILED/ACTION_REQUIRED/SKIPPED result states.
- F102 is distinct from generic cloud provider operations (F20/F51) and orphan cleanup (F21/F88); it is the concrete diagnostic execution boundary behind the broader diagnostics surface F35.
- P5.1 explicit unique feature-contract count is now **102**.
- No provider transfer, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Cloud transfer concurrency policy reconciliation — 2026-10-02

- Added **F103** from direct decompile evidence.
- F103: persisted `parallel_cloud_transfers` policy (default false) consumed by Apps upload/download and Folders upload/download transfer dispatch, changing concurrent vs serial transfer behavior and feeding result aggregation.
- F103 is distinct from generic provider operations (F20/F51), Apps/Folders task providers (F77/F78), and Settings UI.
- P5.1 explicit unique feature-contract count is now **103**.
- No cloud transfer/concurrency runtime test, build/install, provider/backend, or privileged execution was performed or authorized.


### P5.1 Scheduled domain-subtype execution reconciliation — 2026-10-02

- Added **F110**: scheduled Messages selection, permission/data availability gating, and Messages task preparation.
- Added **F111**: scheduled Calls selection, call-log availability gating, and Calls task preparation.
- Added **F112**: scheduled Wallpapers valid-system-wallpaper discovery and task preparation.
- Added **F113**: scheduled Wi-Fi device-read prerequisite/error-state handling and task preparation.
- Added **F114**: scheduled Folders selection, backup-strategy projection, and task preparation.
- F110–F114 are distinct from F74 generic scheduler handoff and F79–F82 domain task execution.
- P5.1 explicit unique feature-contract count is now **114**.
- No schedule was triggered/executed; no build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Scheduled Apps configuration + label-selection reconciliation — 2026-10-02

- Added **F108**: schedule-specific Apps custom-configuration selection, cloud-destination fallback, task preparation, and last-run lifecycle.
- Added **F109**: schedule-specific Apps label selection, installed-app projection, backup-part filtering, task preparation, and last-run lifecycle.
- F108 is distinct from F85/F62; F109 is distinct from F58/F107. F74 remains the generic scheduler spine.
- P5.1 explicit unique feature-contract count is now **109**.
- No schedule was triggered/executed; no build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Scheduled Apps Quick Actions execution reconciliation — 2026-10-02

- Added **F107** from direct Reference decompile evidence.
- F107: schedule-specific Apps Quick Actions subtype carrying quick-action IDs, allowed apps, app parts, locations, sync option, repeat days, and enabled state; consumed by `ScheduleService` to prepare Apps tasks and persist schedule last-run state.
- F107 is distinct from F06 interactive Quick Actions, F62 custom-configuration task mapping, and F74 generic scheduler eligibility/task handoff.
- P5.1 explicit unique feature-contract count is now **107**.
- No scheduled task was triggered/executed; no build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Special-data payload codec reconciliation — 2026-10-02

- Added **F106** from direct Reference decompile evidence.
- F106: versioned `AppSpecialDataPayload` container/codec lifecycle, including v1 format, encrypted-string separator, user binding, bounded read/size handling, compression/decompression, validation, and atomic replacement persistence.
- F106 is distinct from F65–F69, which describe the semantic permission/SSAID/notification-access/accessibility/notification-policy state contracts carried by the payload.
- P5.1 explicit unique feature-contract count is now **106**.
- No payload generation/restoration, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 Protected-backup deletion enforcement reconciliation — 2026-10-02

- Added **F105** from direct decompile evidence.
- F105: protected-backup deletion guard, explicit confirmation path, local/cloud revalidation of `isProtectedBackup()`, and protected-file/count result semantics.
- F105 is distinct from F52: F52 records protection/retention/notes policy; F105 records concrete deletion enforcement and result behavior.
- P5.1 explicit unique feature-contract count is now **105**.
- No delete operation, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 MEGA saved-session rehydration reconciliation — 2026-10-02

- Added **F104** from direct decompile evidence.
- F104: persisted MEGA session `email/sessionId/masterKey/userHandle`, email-bound validation, session-material decoding, and saved-session reuse before fresh authentication.
- F104 is distinct from F97's MFA-required login outcome/session gate.
- P5.1 explicit unique feature-contract count is now **104**.
- No provider authentication/session reuse, build/install/runtime/provider/backend/privileged execution was performed or authorized.


### P5.1 provider-specific cloud session reconciliation — 2026-10-02

- Added **F97–F98** from targeted direct decompile evidence.
- F97: MEGA multi-factor-auth-required login outcome and session gate.
- F98: Filen restorable encrypted-session state and session rehydration lifecycle.
- P5.1 explicit unique feature-contract count is now **97**.
- Other provider-specific classes remain grouped under existing F20/F51/F87 unless an independent lifecycle is evidenced.
- No provider network/authentication runtime was performed or authorized.

# BΛR☰ P4 Contract Register

## Status

**P4.0 — COMPLETE / ACCEPTED**

This register is the canonical technical artifact for P4.0. It reconciles the frozen P3 surfaces against the Reference evidence in `v1.0/rebaseline/reference/*`, the current `rewrite` implementation, and targeted inspection of the supplied Swift Backup 5.1.0 (620) decompile ZIP.

This remains static evidence only. It is not runtime verification and does not authorize build/install/runtime/provider/backend execution.

## Evidence basis

- Reference baseline: Swift Backup 5.1.0 / versionCode 620.
- Reference branch: `v1.0/rebaseline`.
- Local decompile: `SwiftBackup-5.1.0-620-decompiled.zip`.
- Target: `savie/BaRe`, branch `rewrite`.
- Existing P3 audits are reused where they already establish the boundary.
- Targeted ZIP/source inspection was performed for storage selection, intro permission/state, account lifecycle, settings, and task state.

## Classification

- **PASS** — contract sufficiently evidenced and already satisfied at the current static boundary.
- **GAP** — required P4 contract/behavior is missing or materially incomplete.
- **STUB** — boundary exists but is intentionally non-functional/static.
- **PARTIAL** — meaningful portion exists, but the Reference contract is not fully reconciled.
- **DOWNSTREAM** — execution belongs to P5+ and is intentionally not implemented here.
- **UNKNOWN** — evidence is insufficient; no assumption is allowed.
- **FAIL** — current behavior contradicts established Reference evidence.
- **AUTHORIZED DEVIATION** — explicitly allowed by `docs/bare.md`.

## Contract inventory

| ID | P3 surface / trigger | Reference evidence | Required contract | Current BaRe state | Owner / consumer | Classification | Minimum P4 target | Deferred execution | Verification / regression surface |
|---|---|---|---|---|---|---|---|---|---|
| P4-C01 | Intro first-start lifecycle; account initialization/sign-out | Reference `d45`, `intro.IntroActivity`, `intro.d`; `KEY_FIRST_START`, `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED`, migration flag, account re-init | Deterministic first-start, restore-completed, sign-out/re-init state transitions | BaRe has local `KEY_FIRST_START` and P3-only flags; real account initialization/cloud-restore lifecycle is absent | IntroActivity + AccountService / lifecycle boundary | **GAP / P4** | Define Reference-shaped state machine and persistence ownership; preserve current P3 navigation | Real auth/provider and first-run cloud data restore remain provider/backend execution | Static state-transition reconciliation; Intro + account P3 regression |
| P4-C02 | Home recreation / selected navigation | Reference `HomeActivity.saved_fragment`; N-09/N-08 audits | Restore selected navigation destination across recreation | BaRe restores `saved_fragment` and saves it on recreation | HomeActivity | **PASS** | None beyond regression protection | Runtime recreation verification | N-09/N-08 static re-audit |
| P4-C03 | Intro permission cards and Continue | Reference `intro.d` + `IntroActivity`: storage, notification, installed-app visibility, root/Shizuku state; permission result-driven UI | Permission state/result/retry model with authoritative readiness, not manual success flags | Runtime SMS/call/notification/storage permission contracts are statically reconciled by N-07; Intro still has P3 manual `P3_*_READY` flags; installed-app/root are boundary stubs | IntroActivity + permission/access layer | **GAP / P4** | Replace P3 success flags with Reference-shaped permission state/result contract | Actual Root/Shizuku grant engine, app-op/inventory engine and privileged execution remain downstream | N-07 + Intro state/action regression |
| P4-C04 | Storage setup / StorageSwitchActivity | Reference `yn7` + `zn7`: enumerate StorageVolumes, select preferred volume, validate read/write, persist `preferred_storage_dir`, recover to default if saved volume disappears | Storage inventory, selected storage identity, preferred-storage persistence, validity/fallback state | BaRe has `StorageSwitchActivity` shell and `StorageInfoService` model, but no verified preferred-storage persistence or real storage coordinator; `StorageInfoService.read()` returns null | StorageSwitchActivity + storage coordinator | **GAP / P4** | Define `Storage`/selected-volume contract and `preferred_storage_dir` persistence/fallback | Actual filesystem access, root fallback, storage engine execution | Static source reconciliation against `yn7/zn7`; StorageSwitch regression |
| P4-C05 | Account screen / account initialization | Reference `d45` + `ah8/UserInfo`: anonymous vs registered identity, userInfo read/write, profile refresh, sign-out cleanup | Provider-neutral account identity/session model plus lifecycle ownership | `UserInfo`, `UserInfoRepository`, `AccountMigrationRepository`, `AccountLifecyclePolicy`, backend contract exist; no provider-neutral current-session state machine is wired through the P3 surface | AccountService / AccountRepository / UserInfoRepository | **PARTIAL / P4** | Reconcile currentIdentity, anonymous state, initialization, sign-out, migration flags, and userInfo persistence ownership | Firebase/Supabase auth/provider execution and actual backend mutation | Static contract/consumer audit; Account/Home regression |
| P4-C06 | Anonymous → Google migration / sign-out | Reference `d45.c()`, migration flag, identity cleanup, local data clear for non-anonymous user, first-start/cloud-restore reset, alarm cancellation, re-init; Reference migration outcomes are also recorded | Ordered lifecycle policy with explicit outcomes and rollback-safe migration boundary | Migration interface/outcomes and lifecycle policy exist, but orchestration is not wired to actual identity/provider state | AccountMigrationRepository + AccountLifecyclePolicy | **PARTIAL / P4** | Make policy + state transitions explicit and consumable without binding to provider SDK | Actual provider sign-out, auth migration, backend/cloud metadata mutation | Static sequence comparison against `d45`; account flow regression |
| P4-C07 | Root storage / encrypted local preference state consumed by P3 | Reference `common.V`: encrypted/secure preference boundary and multiple persisted state keys | Deterministic local state store with correct ownership for P4 keys; do not silently replace secure state semantics | BaRe uses ordinary SharedPreferences for P3 flags; no Reference-equivalent secure preference contract | Intro/account/settings state owner | **GAP / P4** | Inventory only P4-consumed keys and define provider-neutral local state boundary; secure-storage requirement remains explicit | Actual Android keystore/encrypted-preferences implementation may be downstream if not needed by P3 contract | Static key/owner reconciliation |
| P4-C08 | Settings root surface and settings changes | Reference `settings.xml` + `AppSettings.withSavedSettings()`; SettingsActivity persists cloud/local settings on destroy; model has many persisted fields | Reference-shaped settings model, defaults, read/write ownership, and persistence boundary | BaRe reconstructs the Settings UI; only `play_notification_sounds` has local behavior using a BaRe-specific `settings` preference store; no `AppSettings` equivalent | SettingsFragment / settings repository | **GAP / P4** | Inventory frozen-P3-consumed settings and create the smallest Reference-shaped local/settings contract | Cloud settings sync/backend mutation remains downstream | Static settings XML/model/key reconciliation; Settings regression |
| P4-C09 | Password strategy selected in Intro | Reference persists `saved_password_mode` using Reference enum ordinal with default STANDARD; completion reads the persisted strategy | Exact password-strategy state key/type/default consumed by Intro completion | BaRe uses `P3_PASSWORD_MODE` and does not yet map to Reference `saved_password_mode` semantics | IntroActivity / password boundary | **GAP / P4** | Reconcile exact key/default/ordinal contract while keeping password engine deferred | Password generation, secure storage, encryption and restore remain P5+ | Static Intro state/key comparison |
| P4-C10 | First-run cloud settings restore | Reference `intro.d.l()`: waits for backend readiness, reads cloud settings, restores labels/configs/schedules/favorites/blacklist, and records completion | Explicit restore-at-first-run state/result contract and safe skip/failure semantics | BaRe only sets `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED` as a P3 completion flag; no verified restore state/result contract | Intro + cloud/settings restore coordinator | **GAP / P4** | Define state/result contract and completion semantics; do not fake restored data | Actual backend/cloud reads and writes remain downstream | Static flow comparison to `intro.d`; Intro regression |
| P4-C11 | Deterministic core data used by frozen P3 | Reference models include `UserInfo`, `StorageInfoLocal.Success`, `AppSettings`, storage item state, task/error summaries | Required data shape, nullability, defaults, and consumer ownership | UserInfo is present; storage info shape is partial but service returns null; AppSettings/task data contracts are not fully present | Domain repositories/services | **PARTIAL → GAP / P4** | Inventory only models with frozen-P3 consumers and record exact fields/defaults | Actual data collection, filesystem/provider execution, cloud persistence | Source-level field/consumer reconciliation |
| P4-C12 | TaskActivity task list/status/error UI | Reference TaskActivity consumes task manager/service state and exposes loading/done/error/warning, task rows, SLog, cancel/force-stop boundaries | Stable task state/progress/error contract required by the existing P3 TaskActivity surface | BaRe TaskActivity has empty adapters and P3 boundary dialogs; only local `showing_slog` recreation state exists | TaskActivity + task-state layer | **GAP / P4** | Define task status/progress/error/result contract without implementing execution | Actual TaskService/job/backup/restore execution remains P5+ | Static TaskActivity/TaskManager reconciliation |
| P4-C13 | Job/task scheduling only where P3 exposes state | Reference has TaskService, ScheduleService, alarms and task lifecycle; P4 guide limits job state to existing P3 consumers | State/progress/error/cancellation contract only; no generic job engine | BaRe has UI boundary but no verified task/job state repository | TaskActivity / schedule surfaces | **P4 / CONTRACT ONLY** | Define minimum state contract consumed by P3 | Scheduler execution, foreground service, alarms and feature jobs remain downstream | Static consumer inventory |
| P4-C14 | Cloud/session boundary behind Home/Account/Cloud UI | Reference cloud identity/tag/userInfo/session metadata is evidenced; backend paths already audited | Provider-neutral cloud/session metadata contract distinct from provider execution | BaRe has backend path constants/repositories and UserInfo contract, but no unified session/cloud state contract | Account/cloud repositories | **PARTIAL / P4** | Separate local session metadata from provider execution and identify frozen-P3 consumers | Actual auth/token/provider/cloud transfer/backend mutation | Static repository/consumer reconciliation |
| P4-C15 | Provider/backend execution | Reference contains Firebase/cloud/provider implementation | Provider/backend execution contract is downstream of P4 | BaRe deliberately avoids provider execution | Provider/backend layer | **DOWNSTREAM / P5+** | Preserve boundary only | Firebase/Supabase auth, backend mutation, provider token exchange/upload/download | No P4 verification claim |
| P4-C16 | Backup/restore engine | Reference `a18_reference_reconstruction.md` and detailed task/provider evidence | Execution pipeline exists conceptually but is not a P4 core contract | BaRe does not claim engine execution | Backup/restore engine | **DOWNSTREAM / P5** | Preserve state/result boundary only | Filesystem/archive/compression/encryption/backup/restore execution | No P4 verification claim |

## Confirmed P4.0 findings

The targeted re-audit confirms that P4.0 is **not complete yet**. The previous register was too coarse in several places.

Concrete Reference-backed P4 gaps now explicitly recorded:

1. **First-start/account lifecycle state** is broader than the existing P3 boolean flags.
2. **Permission readiness** cannot remain represented by manual P3 success flags once P4 behavior is implemented; Reference derives readiness from actual permission/access state.
3. **Preferred storage persistence** is a real Reference contract: `preferred_storage_dir`, volume enumeration, validation, and fallback are missing from BaRe.
4. **Account/session reconciliation** is only partial despite the presence of provider-neutral repositories.
5. **Settings contract** is missing at the model/persistence level; Reference has an `AppSettings` contract consumed by SettingsActivity and other settings surfaces.
6. **Intro password mode** currently uses a BaRe-specific key rather than the Reference `saved_password_mode` contract.
7. **First-run cloud settings restore** is a distinct state/result contract and is not equivalent to setting a completion boolean.
8. **TaskActivity** requires a task status/progress/error state contract; the current empty adapter is a boundary stub.
9. **Core data inventory** must include the Reference-shaped models actually consumed by these P3 surfaces, not only UserInfo.
10. **Secure/local preference ownership** is a relevant P4 boundary where P3 state depends on persisted values; Reference has an encrypted/secure preference layer.

## Explicitly downstream

Do not pull these into P4 merely because a P3 surface exposes them:

- backup execution;
- restore execution;
- filesystem/archive/compression/encryption execution;
- provider token exchange and provider SDK execution;
- actual cloud upload/download;
- Firebase/Supabase auth execution;
- backend/database mutation;
- billing/purchase verification execution;
- root/Shizuku privileged engine execution;
- installed-app inventory/app-op engine;
- foreground-service execution;
- runtime/device verification.

## P4.0 exit criteria

P4.0 closes when every targeted row has:

- Reference evidence;
- exact required contract;
- current BaRe state;
- owner/consumer;
- classification;
- minimum P4 target;
- deferred execution boundary;
- verification method;
- P3 regression surface.

All 16 targeted rows satisfy those inventory fields.

## P4.0 acceptance matrix

The acceptance target for P4.0 is **contract inventory completeness**, not implementation completion. A row may therefore remain `GAP`, `PARTIAL`, or `DOWNSTREAM` while still being accepted into P4.1, provided its contract, owner, boundary, and verification surface are explicit.

| ID | Acceptance criterion | P4.0 decision |
|---|---|---|
| P4-C01 | First-start/account lifecycle states, persistence owner, transition boundary, and downstream auth/restore boundary are explicit | **ACCEPTED → P4.1** |
| P4-C02 | Recreation/save/restore contract and static evidence are explicit; runtime remains deferred | **ACCEPTED / PASS** |
| P4-C03 | Permission/readiness inputs, result/retry boundary, and downstream privileged/app-op engines are explicit | **ACCEPTED → P4.1** |
| P4-C04 | Storage inventory, selected identity, preferred-storage key, validation/fallback, and filesystem boundary are explicit | **ACCEPTED → P4.1** |
| P4-C05 | Identity/session model, initialization, userInfo ownership, and provider boundary are explicit | **ACCEPTED → P4.1** |
| P4-C06 | Migration sequence, observed outcomes, rollback boundary, and provider/backend boundary are explicit | **ACCEPTED → P4.1** |
| P4-C07 | P4-consumed local keys, ownership, and secure-storage boundary are explicit | **ACCEPTED → P4.1** |
| P4-C08 | Reference-shaped settings model/default/persistence ownership and cloud-sync boundary are explicit | **ACCEPTED → P4.1** |
| P4-C09 | saved_password_mode key/type/default/consumer semantics and crypto boundary are explicit | **ACCEPTED → P4.1** |
| P4-C10 | First-run restore state/result/completion semantics and backend boundary are explicit | **ACCEPTED → P4.1** |
| P4-C11 | P4-consumed data shapes, defaults/nullability, and ownership are enumerated | **ACCEPTED → P4.1** |
| P4-C12 | Task status/progress/error/result/cancellation state surface and execution boundary are explicit | **ACCEPTED → P4.1** |
| P4-C13 | Minimum task/job state contract and scheduler/foreground execution boundary are explicit | **ACCEPTED → P4.1** |
| P4-C14 | Provider-neutral cloud/session metadata contract and provider/backend boundary are explicit | **ACCEPTED → P4.1** |
| P4-C15 | Provider/backend execution is explicitly downstream and not silently pulled into P4 | **ACCEPTED / DOWNSTREAM** |
| P4-C16 | Backup/restore execution is explicitly downstream and not silently pulled into P4 | **ACCEPTED / DOWNSTREAM** |

## P4.0 closure decision

**P4.0 — CLOSED.**

No implementation is claimed by this closure. The remaining `GAP` / `PARTIAL` rows are the input set for **P4.1 — BaRe Gap / Blocker Analysis**. No build, install, runtime, provider, backend, or engine verification was performed.

Next package:

**P4.1 — BaRe Gap / Blocker Analysis.**

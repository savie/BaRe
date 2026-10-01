# BΛR☰ P4 Contract Register

## Status

**P4.0 — COMPLETE / ACCEPTED — SOURCE SET RECONCILED**

This register is the canonical technical artifact for P4.0. It reconciles the frozen P3 surfaces against the Reference evidence in `v1.0/rebaseline/reference/*`, the current `rewrite` implementation, and targeted inspection of the supplied Swift Backup 5.1.0 (620) decompile ZIP.

This remains static evidence only. It is not runtime verification and does not authorize build/install/runtime/provider/backend execution.

## Evidence basis

- Reference baseline: Swift Backup 5.1.0 / versionCode 620.
- Reference branch: `v1.0/rebaseline`.
- Local decompile: `SwiftBackup-5.1.0-620-decompiled.zip`.
- Target: `savie/BaRe`, branch `rewrite`.
- Existing P3 audits are reused where they already establish the boundary.
- `reference/reference.md` is the current consolidated Reference FE/workflow audit and contains the A18 reconstruction material; there is no standalone `a18_reference_reconstruction.md` in `v1.0/rebaseline`.
- `reference/reference_apps_audit.md` is the current Apps-subsystem audit and is used for Apps/task/data/restore evidence where those boundaries touch frozen P3 surfaces.
- Targeted ZIP/source inspection was performed for storage selection, intro permission/state, account lifecycle, settings, task state, and the supplied Reference decompile.

## Reference source coverage

P4.0 source reconciliation was explicitly checked against the Reference sources relevant to the frozen P3 contract boundary:

| Reference source | Role in P4.0 | Result |
|---|---|---|
| `reference/reference.md` | Consolidated screen/state/action/transition ledger, including Intro, Home, Storage, Account, Settings, Schedules, Cloud, Tasks, Diagnostics, and A18 app-backup/restore evidence | **COVERED** |
| `reference/reference_apps_audit.md` | Apps subsystem decomposition, canonical app model, local/cloud inventory, task/precondition, backup/restore boundaries | **COVERED**; execution remains downstream where applicable |
| `a18_reference_reconstruction.md` | Previously cited standalone filename | **NOT PRESENT**; A18 material is contained in `reference/reference.md` |
| Supplied Swift Backup 5.1.0 (620) decompile ZIP | Primary static artifact for targeted source/resource verification | **COVERED** |

The source-set correction does **not** add a new P4 execution domain by itself. The frozen-P3 contract scope remains the deciding boundary: Reference-only feature execution that is not required by an existing frozen P3 contract remains downstream.

The P4.0 register is therefore considered exhaustive **for the defined P4 scope** after this source reconciliation: all currently identified frozen-P3 core contract domains are represented by C01–C16, with the deterministic-data row explicitly covering SLog/diagnostic state exposed by frozen P3 surfaces.

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
| P4-C11 | Deterministic core data used by frozen P3 | Reference models include `UserInfo`, `StorageInfoLocal.Success`, `AppSettings`, storage item state, task/error summaries, SLog/log state, and diagnostic result state where exposed by frozen P3 surfaces | Required data shape, nullability, defaults, and consumer ownership | UserInfo is present; storage info shape is partial but service returns null; AppSettings/task data contracts are not fully present; SLog and cloud-diagnostic result data remain boundary-level | Domain repositories/services | **PARTIAL → GAP / P4** | Inventory only models with frozen-P3 consumers and record exact fields/defaults; keep feature execution deferred | Actual data collection, filesystem/provider execution, cloud persistence, diagnostic execution | Source-level field/consumer reconciliation |
| P4-C12 | TaskActivity task list/status/error UI | Reference TaskActivity consumes task manager/service state and exposes loading/done/error/warning, task rows, SLog, cancel/force-stop boundaries | Stable task state/progress/error contract required by the existing P3 TaskActivity surface | BaRe TaskActivity has empty adapters and P3 boundary dialogs; only local `showing_slog` recreation state exists | TaskActivity + task-state layer | **GAP / P4** | Define task status/progress/error/result contract without implementing execution | Actual TaskService/job/backup/restore execution remains P5+ | Static TaskActivity/TaskManager reconciliation |
| P4-C13 | Job/task scheduling only where P3 exposes state | Reference has TaskService, ScheduleService, alarms and task lifecycle; P4 guide limits job state to existing P3 consumers | State/progress/error/cancellation contract only; no generic job engine | BaRe has UI boundary but no verified task/job state repository | TaskActivity / schedule surfaces | **P4 / CONTRACT ONLY** | Define minimum state contract consumed by P3 | Scheduler execution, foreground service, alarms and feature jobs remain downstream | Static consumer inventory |
| P4-C14 | Cloud/session boundary behind Home/Account/Cloud UI | Reference cloud identity/tag/userInfo/session metadata is evidenced; backend paths already audited | Provider-neutral cloud/session metadata contract distinct from provider execution | BaRe has backend path constants/repositories and UserInfo contract, but no unified session/cloud state contract | Account/cloud repositories | **PARTIAL / P4** | Separate local session metadata from provider execution and identify frozen-P3 consumers | Actual auth/token/provider/cloud transfer/backend mutation | Static repository/consumer reconciliation |
| P4-C15 | Provider/backend execution | Reference contains Firebase/cloud/provider implementation | Provider/backend execution contract is downstream of P4 | BaRe deliberately avoids provider execution | Provider/backend layer | **DOWNSTREAM / P5+** | Preserve boundary only | Firebase/Supabase auth, backend mutation, provider token exchange/upload/download | No P4 verification claim |
| P4-C16 | Backup/restore engine | `reference/reference.md` A18 sections + `reference/reference_apps_audit.md` task/restore evidence | Execution pipeline exists conceptually but is not a P4 core contract | BaRe does not claim engine execution | Backup/restore engine | **DOWNSTREAM / P5** | Preserve state/result boundary only | Filesystem/archive/compression/encryption/backup/restore execution | No P4 verification claim |

## Confirmed P4.0 findings

The targeted re-audit confirms that the P4.0 inventory is complete **after source-set reconciliation**. The previous register required one evidence correction: A18 was cited under a nonexistent standalone filename instead of its actual location in `reference/reference.md`. The inventory scope was also tightened to explicitly include SLog/diagnostic state under the deterministic-data contract.

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

## P4.1 — BaRe Gap / Blocker Analysis

### Scope and evidence rule

P4.1 consumes the accepted C01–C16 inventory; it does not expand the P4 scope merely because the Reference contains additional feature capability. The analysis is grounded in:

- Swift Backup 5.1.0 / versionCode 620;
- supplied `SwiftBackup-5.1.0-620-decompiled.zip` as the primary static artifact;
- `v1.0/rebaseline/reference/*`, including `reference/reference.md` and `reference/reference_apps_audit.md`;
- current `rewrite` source;
- existing N-07/N-08/N-09 audits.

No Reference runtime success is inferred. No build/install/runtime/provider/backend/engine execution is performed.

### P4.1 dependency analysis

| ID | Gap / blocker finding | Dependency level | Impact on P4 | Minimum resolution before P4.2 consumer implementation |
|---|---|---|---|---|
| P4-C01 | First-start/account lifecycle is represented by P3 booleans but lacks one Reference-shaped lifecycle/state owner. | **FOUNDATIONAL** | Intro/account transitions can diverge or duplicate state ownership. | Define authoritative lifecycle states, transition ownership, persistence keys, and reset semantics. |
| P4-C02 | Home recreation contract is already statically satisfied through `saved_fragment`. | **NO BLOCKER** | No P4 implementation dependency. | Preserve regression surface only. |
| P4-C03 | Intro readiness mixes real permission checks with P3 manual readiness flags; Reference has capability-specific state/result boundaries. | **BLOCKER for permission consumers** | Continue/setup decisions can be detached from actual access state. | Define permission/access state model and result/retry ownership; keep privileged grant engines downstream. |
| P4-C04 | Storage selection lacks verified volume identity, preferred-storage persistence, validation, and fallback coordinator. | **FOUNDATIONAL** | Account/settings/feature consumers cannot rely on a stable selected-storage contract. | Define storage identity + inventory + selected/preferred state + validity/fallback contract. |
| P4-C05 | Provider-neutral account models exist, but current-session/current-identity orchestration is not wired as one state contract. | **FOUNDATIONAL** | C01/C06/C10/C14 consumers lack a single session authority. | Define session/identity state and ownership around existing repositories; provider SDK remains outside. |
| P4-C06 | Migration policy/outcomes exist, but orchestration boundary is not consumable from a canonical identity/session state. | **DEPENDENT BLOCKER** | Sign-out/migration lifecycle cannot be deterministically driven. | Connect lifecycle policy to C05 state without implementing provider execution. |
| P4-C07 | P4 state currently uses ordinary SharedPreferences while Reference exposes a secure/local preference boundary. | **FOUNDATIONAL** | State ownership and sensitive persisted values can diverge. | Inventory P4 keys, ownership, defaults, sensitivity, and persistence boundary; do not invent crypto behavior. |
| P4-C08 | Settings UI exists, but no Reference-shaped `AppSettings` contract owns persisted settings/defaults. | **BLOCKER for settings consumers** | Settings changes have no canonical model/read-write owner. | Define frozen-P3 settings subset, defaults, key mapping, read/write owner, and local/cloud boundary. |
| P4-C09 | Intro uses `P3_PASSWORD_MODE` rather than Reference `saved_password_mode` semantics. | **DEPENDENT on C07/C08 boundary** | Intro selection is not aligned to the Reference persisted contract. | Map exact key/type/default/ordinal semantics; leave crypto/password engine downstream. |
| P4-C10 | Cloud-restore completion boolean is not equivalent to Reference restore state/result semantics. | **DEPENDENT on C05/C07/C08/C14** | First-run initialization can report completion without a defined restore outcome. | Define pending/ready/success/skip/failure semantics and completion ownership; actual cloud I/O stays downstream. |
| P4-C11 | Core data contracts are incomplete across storage, settings, task/error, SLog/diagnostic state consumed by frozen P3. | **FOUNDATIONAL** | Multiple P4 consumers otherwise invent local DTO/state shapes. | Freeze the minimal Reference-shaped P4 data contracts, defaults/nullability, and consumer ownership. |
| P4-C12 | TaskActivity has UI state/recreation but no canonical task status/progress/error/result contract. | **BLOCKER for task consumers** | Task UI cannot consume deterministic state from future execution layers. | Define task state/result/error/cancellation contract without implementing TaskService execution. |
| P4-C13 | Scheduler/task execution is downstream, but P3 exposes task state that needs a stable contract. | **DEPENDENT on C11/C12** | Scheduling surfaces would otherwise couple directly to execution. | Define task/job state boundary only; scheduler/foreground execution remains downstream. |
| P4-C14 | Cloud/session metadata exists in repositories but lacks one provider-neutral session/cloud state boundary. | **DEPENDENT on C05/C07** | Cloud UI/restore consumers lack canonical local session metadata. | Define local cloud/session metadata contract and provider boundary. |
| P4-C15 | Provider/backend execution is outside P4. | **NO P4 BLOCKER / DOWNSTREAM** | Must not be pulled forward to unblock contracts. | Preserve interface boundary only. |
| P4-C16 | Backup/restore execution is outside P4. | **NO P4 BLOCKER / DOWNSTREAM** | Must not be pulled forward to unblock task/state contracts. | Preserve state/result boundary only. |

### Dependency graph

```
                 C07  Local State Boundary
                    │
          ┌─────────┼──────────┐
          ▼         ▼          ▼
        C01       C08        C11
     Lifecycle   Settings   Core Data
          │         │          │
          ▼         ▼          ▼
        C05 ─────► C06       C12
      Identity    Migration   Task State
          │                      │
          ├──────► C14          ▼
          │                 C13 Job/Task boundary
          ▼
        C10 First-run restore

        C04 Storage ──────────────► P4 consumers
        C03 Permission ────────────► Intro/capability consumers
        C09 Password ─────────────► Intro/settings consumers

        C15 Provider execution ───► downstream
        C16 Backup/restore engine ─► downstream
```

### P4.1 blocker conclusion

The blocker analysis does **not** add new C17+ contracts. The accepted **16-point C01–C16 inventory remains the complete P4 scope** for the currently frozen P3 surfaces.

The principal P4.2 implementation dependency order is:

1. **C07 + C11** — establish deterministic local-state and core-data ownership.
2. **C05 + C01 + C06 + C14** — establish identity/session/lifecycle boundaries using the existing provider-neutral repositories.
3. **C04 + C03** — establish storage and permission/access state contracts.
4. **C08 + C09** — establish settings and Intro password-strategy persistence semantics.
5. **C10** — establish first-run restore state/result semantics without performing cloud I/O.
6. **C12 + C13** — establish task/result/error state boundaries without executing jobs.
7. **C02** remains regression-protected; **C15/C16** remain downstream.

This ordering is a dependency analysis, not an implementation authorization. P4.2 must still implement the smallest contract first and re-audit P3 after each meaningful change.

## P4.0 closure decision

**P4.0 — CLOSED / ACCEPTED.**

Source-set reconciliation is complete for the defined P4 scope. No implementation is claimed by this closure. The remaining `GAP` / `PARTIAL` rows are the input set for **P4.1 — BaRe Gap / Blocker Analysis**. No build, install, runtime, provider, backend, or engine verification was performed.

Next package:

**P4.1 — BaRe Gap / Blocker Analysis.**


## P4.1 — UNKNOWN / DEFERRED / UNVERIFIED evidence audit

This checkpoint closes the evidence-classification ambiguity before P4.2. The supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP was directly re-audited for the previously questionable contract areas. The purpose was to distinguish evidence absence from phase deferral and from runtime verification status.

### Classification rule

- UNKNOWN = after the relevant static Reference/decompile call-chain, model, key, resource, or consumer has been searched, the available evidence still does not support a deterministic conclusion. It is not a synonym for “not implemented in BaRe”.
- DEFERRED = the Reference behavior/boundary is known, but its execution intentionally belongs to P5+ or a later authorized phase.
- UNVERIFIED = static evidence is sufficient to identify the contract/behavior, but the required runtime/device/provider verification has not been performed. This is not “not searched”.
- GAP/PARTIAL = Reference evidence exists and the contract is understood, but BaRe still lacks or incompletely implements the corresponding P4 contract.

### Targeted evidence results

| Contract | Direct decompile evidence found | Classification consequence |
|---|---|---|
| C01 lifecycle | defpackage/d45.java contains KEY_FIRST_START, KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED, migration-state handling, sign-out cleanup, local-data reset, alarm cancellation and account re-init boundary. IntroActivity consumes the lifecycle flags. | Known contract; BaRe GAP remains. No UNKNOWN. |
| C03 permissions | org/swiftapps/swiftbackup/intro/d.java contains explicit permission/access state holders (IDLE/RUNNING/SUCCESS/FAILED, sign-in state, Shizuku/root flow). dz5 contains actual permission checks, installed-app visibility checks, and privileged grant boundaries. | Known static contract; BaRe GAP/stub remains for the P4 state owner. No UNKNOWN. Runtime execution remains UNVERIFIED/deferred where applicable. |
| C04 storage | defpackage/yn7.java reads/writes preferred_storage_dir, enumerates StorageVolume, resolves saved volume, falls back when saved storage is missing, and persists the selected volume. defpackage/zn7.java exposes volume identity/display metadata and read/write validation. | Known contract; BaRe GAP remains. No UNKNOWN. |
| C05/C06 identity + migration | defpackage/ah8.java defines UserInfo fields and anonymous/non-anonymous database boundary. defpackage/d45.java defines sign-out/reset ordering. defpackage/rc1.java sets migration state. Existing Reference migration outcomes are also represented by BaRe migration contracts. | Known contract; BaRe PARTIAL remains. No UNKNOWN. Provider execution remains deferred/unverified. |
| C07 local/secure state | org/swiftapps/swiftbackup/common/V.java exposes the preference boundary, including encrypted preferences / secure fallback and use_alt_preferences; defpackage/bx5.java also contains encrypted preference storage behavior. | Known contract; BaRe GAP remains. No UNKNOWN. Actual Android keystore/runtime verification is UNVERIFIED/deferred. |
| C08 settings | org/swiftapps/swiftbackup/model/firebase/AppSettings.java exposes the Reference settings model and withSavedSettings() reads concrete persisted keys/defaults; defpackage/ha7.java writes the corresponding settings back to local state. | Known contract; BaRe GAP remains. No UNKNOWN. |
| C09 password mode | AppSettings.withSavedSettings() and Intro code read saved_password_mode with STANDARD_PASSWORD as the fallback/default; IntroActivity.V() consumes the same Reference key before completion. | Known contract; BaRe GAP/reconciliation remains. No UNKNOWN. Password crypto/execution is downstream. |
| C10 first-run cloud restore | org/swiftapps/swiftbackup/intro/d.java has an explicit restore flow: backend readiness wait, cloud-settings read, restore of labels/configs/schedules/favorites/blacklist, success/failure Boolean result, and skip/failure paths. IntroActivity.V() records terminal completion flags. | Known contract; BaRe GAP remains. No UNKNOWN. Actual cloud I/O is downstream and runtime remains UNVERIFIED. |
| C11 core data | Direct models include UserInfo, StorageInfoLocal (Loading/Error/Success plus concrete fields), AppSettings, TaskManager$ErrorSummary, task status enums, and SLog/diagnostic consumers. | Known static shapes; BaRe GAP/PARTIAL remains. No UNKNOWN at the identified P4 consumer boundary. |
| C12 task state | defpackage/gz7.java defines WAITING/RUNNING/COMPLETE/CANCELLED/CANCEL_COMPLETE; defpackage/jc2.java defines terminal/error outcomes; TaskService publishes state; TaskActivity observes status and exposes cancel/force-stop/SLog surfaces. | Known contract; BaRe GAP remains. No UNKNOWN. Actual task execution is downstream. |
| C13 job/task boundary | TaskService is a real foreground IntentService with state transitions and cancellation/timeout handling; AlarmReceiver and scheduling code exist. | Known boundary; only the minimum P4 state contract is retained. Execution remains DEFERRED. No UNKNOWN. |
| C14 cloud/session | defpackage/re3.java exposes provider-backed user/cloud/tag paths, current cloud directory sanitization, UID boundary and cloud metadata paths; ah8 exposes userInfo ownership. | Known contract; BaRe PARTIAL remains. Provider/backend mutation is DEFERRED. No UNKNOWN. |
| C15 provider/backend | Firebase/cloud/provider execution is directly present in the Reference decompile. | DEFERRED / DOWNSTREAM, not UNKNOWN. |
| C16 backup/restore engine | Task/restore/backup execution boundaries are present in the Reference source/decompile and are covered by the existing Reference audits. | DEFERRED / DOWNSTREAM, not UNKNOWN. |

### P4.1 classification conclusion

The audit searched the previously questionable P4 contract areas directly in the supplied decompile ZIP and reconciled them with the existing Reference audit.

**Result: no open contract-level UNKNOWN remains across C01–C16 at this checkpoint.**

The remaining uncertainty is categorized explicitly:

1. GAP / PARTIAL — Reference contract is statically known but BaRe still needs the P4 contract implementation/reconciliation.
2. DEFERRED — execution belongs to P5+ (provider/backend, backup/restore engine, privileged execution, scheduler/foreground execution where outside the P4 contract).
3. UNVERIFIED — runtime/device/provider behavior has not been executed or tested because the project execution guard remains active.
4. UNKNOWN should only reappear if a future targeted audit encounters a genuinely unresolved evidence boundary; it must not be used as a placeholder for an unaudited area or an unimplemented BaRe feature.

This checkpoint therefore changes the P4.1 exit condition from “find/resolve possible UNKNOWNs” to **“maintain an explicit evidence ledger and prevent UNKNOWN from masking an incomplete audit.”**

No implementation, build, install, runtime, provider, backend, or engine execution was performed.

## P4.1 — Detailed implementation-map acceptance criteria

This section makes the blocker analysis actionable without starting P4.2 implementation. Each row below defines the minimum evidence that must exist before its P4.2 consumer implementation is considered contract-safe. It does not require provider/backend/runtime execution.

| ID | P4.1 acceptance / blocker closure condition | Must remain deferred or UNKNOWN |
|---|---|---|
| P4-C01 | One authoritative lifecycle owner is identified for first-start, initialized, signed-out/re-init, and cloud-restore-completion state. Exact persisted keys and transition triggers are mapped to Reference evidence. Duplicate P3 boolean ownership is explicitly marked for replacement/deprecation. | Auth SDK execution, backend reads/writes, and real first-run restore |
| P4-C02 | Existing `saved_fragment` behavior remains the sole required P4 dependency. No new state owner is introduced unless a Reference defect is found. | Device recreation/runtime proof |
| P4-C03 | Permission/access state is split into capability identity, current state, result/retry outcome, and readiness aggregation. Each Intro card has an explicit source of truth. Manual P3 success flags are classified as transitional only. | Root/Shizuku grant engine, app-op engine, privileged runtime behavior |
| P4-C04 | Storage contract names the stable volume identity, display/location metadata, selected volume, persisted `preferred_storage_dir`, validity check, and fallback rule. `StorageInfoService.read()` returning null is treated as an implementation gap, not as evidence for invented behavior. | Actual filesystem probing/migration and privileged storage behavior |
| P4-C05 | Current identity, anonymous/registered state, initialization status, and userInfo ownership have one provider-neutral state boundary. Existing `UserInfoRepository` and lifecycle policy are reused rather than duplicated. | Firebase/Supabase SDK execution and live auth state |
| P4-C06 | Migration policy is represented as an ordered state transition with the observed Reference outcomes: `MIGRATED`, `NOT_NEEDED`, `NOT_FOUND`, `SOURCE_CHANGED`, `DESTINATION_CHANGED`, `ROLLED_BACK`, `FAILED`, `UNKNOWN`. Sign-out/reset ordering is explicit. | Actual provider sign-out, cloud metadata mutation, and live migration |
| P4-C07 | Every P4-consumed persisted key is classified by owner, type, default, sensitivity, and reset behavior. The secure/local preference boundary is explicit; no unsupported cryptographic implementation is inferred from the audit alone. | Keystore/encrypted-preferences runtime implementation unless separately authorized |
| P4-C08 | Frozen-P3 settings consumers have an exact key/type/default/read-write-owner map corresponding to the Reference `AppSettings` boundary. UI-local settings are not allowed to become an accidental second canonical store. | Cloud settings sync and backend mutation |
| P4-C09 | `saved_password_mode` is mapped exactly by key, stored representation, default, and consumer semantics. BaRe `P3_PASSWORD_MODE` is treated as a migration/reconciliation concern, not a new product contract. | Password generation, encryption, secure password storage, restore |
| P4-C10 | First-run cloud restore has explicit states/results for not-started, ready-to-attempt, completed, skipped/not-applicable, and failure where supported by Reference evidence. Completion is only recorded at the defined terminal point. | Actual cloud settings reads/writes and remote data transfer |
| P4-C11 | Minimal P4 data contracts are frozen only for models with frozen-P3 consumers: exact fields, nullability/defaults, ownership, and state/result relationships are recorded. SLog/diagnostic state is included only where exposed by those consumers. | Actual data collection, provider execution, backup/restore data production |
| P4-C12 | Task state contract defines stable identity, status, progress, result/error/warning, cancellation/force-stop intent, and SLog visibility needed by TaskActivity. UI adapter shape must consume the contract rather than inventing state. | TaskService execution, worker/foreground service execution, real task cancellation |
| P4-C13 | Job/task boundary is limited to state observation and lifecycle intent consumed by existing P3 surfaces. Scheduling API shape must not leak provider/backup implementation details. | Alarm/WorkManager/foreground-service execution and actual feature jobs |
| P4-C14 | Cloud/session metadata is separated into local provider-neutral state versus provider-specific execution. UID/cloud-directory metadata and initialization status have one ownership path. | Token exchange, cloud upload/download, backend mutation |
| P4-C15 | No P4.2 task may introduce a fake provider implementation merely to satisfy a consumer. Provider interfaces remain explicit boundaries. | Firebase/Supabase/provider SDK execution |
| P4-C16 | Backup/restore engine remains represented only by state/result contracts required by P4 task surfaces. No archive, compression, encryption, filesystem mutation, or transfer engine is pulled into P4. | Full backup/restore execution and all feature-engine/provider work |

### P4.1 evidence discipline

For every row, P4.2 implementation must satisfy all of the following before the row is considered contract-closed:

1. **Reference evidence is named** at class/model/resource/flow level where available.
2. **BaRe owner is singular** or the deliberate ownership split is documented.
3. **State transitions are deterministic** and do not depend on runtime success that has not been verified.
4. **Defaults/nullability/keys are explicit** where Reference evidence exposes them.
5. **Downstream boundaries are preserved** rather than replaced with fake success.
6. **Existing P3 regression surfaces are listed** before modification.
7. **No implementation is justified solely by UI appearance** when the Reference source exposes a deeper state contract.
8. If Reference evidence is insufficient, the field/behavior remains **UNKNOWN** rather than being filled by convention.

### P4.1 work-package split

P4.1 can now hand P4.2 six concrete contract packages without inventing new scope:

- **WP-A — Local state/data:** C07 + C11
- **WP-B — Identity/lifecycle:** C01 + C05 + C06 + C14
- **WP-C — Storage/access:** C04 + C03
- **WP-D — Settings/password:** C08 + C09
- **WP-E — First-run restore state:** C10
- **WP-F — Task state boundary:** C12 + C13

C02 remains regression-only. C15/C16 remain downstream.

### P4.1 exit gate

P4.1 is not closed merely because the 16 rows have a classification. It becomes **READY FOR P4.2** only when:

- every C01–C16 has the detailed acceptance condition above;
- all foundational dependencies have an identified owner and no unresolved ownership collision;
- every implementation target has a named Reference evidence surface or is explicitly marked UNKNOWN;
- downstream boundaries are explicit;
- the P3 regression surface is known for every implementation-bearing row;
- no C17+ scope has been introduced;
- the register, Phase 4 gate, checkpoint, and status ledger agree on the same current phase.

No build/install/runtime/provider/backend/engine execution is part of this gate.


### P4.1 owner reconciliation checkpoint — 2026-10-01

The contract owners were reconciled against the current BaRe source and the Reference decompile evidence. The goal is to prevent duplicate canonical state stores when P4.2 begins.

| Package | Canonical owner at P4 boundary | Existing BaRe pieces to reuse | Ownership collision / action |
|---|---|---|---|
| WP-A / C07 | LocalState / preference boundary | Existing Intro/account/settings preference access | P3 flags currently live in UI code; they are transitional consumers, not a second canonical domain owner. P4.2 must centralize persisted-key ownership. |
| WP-A / C11 | Domain data contracts + repositories/services | `UserInfo`, `StorageInfoService`, existing task/diagnostic boundary models | Do not create feature-local DTOs when an existing Reference-shaped model is the contract. SLog/diagnostic state stays bounded to exposed P3 consumers. |
| WP-B / C01 | Lifecycle owner / AccountService boundary | `AccountLifecyclePolicy`, `UserInfoRepository`, Intro first-start flags | IntroActivity must consume lifecycle state; it must not become the long-term lifecycle owner. |
| WP-B / C05 | Account/session owner | `UserInfoRepository`, `UserInfo`, backend contract | Keep identity/session state provider-neutral. Provider SDK state is an adapter/downstream concern. |
| WP-B / C06 | Migration policy/repository | `AccountMigrationRepository`, `AccountLifecyclePolicy` | Migration outcome/state must flow through the canonical session/lifecycle boundary; do not duplicate migration flags in UI. |
| WP-B / C14 | Cloud/session metadata owner | `BaReBackendRepository`, `ReferenceBackendContract`, `UserInfoRepository` | Separate local session metadata from provider mutation. No second cloud-directory/session store. |
| WP-C / C04 | Storage coordinator/service | `StorageInfoService`, `StorageSwitchActivity` | Activity remains UI consumer; selected/preferred storage state belongs to storage boundary. `StorageInfoService.read() == null` remains a gap until a real contract owner exists. |
| WP-C / C03 | Permission/access state boundary | Existing N-07 permission checks + Intro consumers | Permission readiness must not be persisted as manual success flags. UI flags are transitional only. |
| WP-D / C08 | Settings repository/model | Existing `SettingsFragment` and local settings access | `AppSettings` is the Reference model boundary; UI-local `settings` storage must not become a competing canonical store. |
| WP-D / C09 | Settings/password-strategy state owner | C08 settings boundary + Intro consumer | `saved_password_mode` maps through the settings/state owner; `P3_PASSWORD_MODE` is transitional reconciliation state. |
| WP-E / C10 | First-run restore state owner | Lifecycle + cloud/session boundaries | Restore completion is lifecycle state, but restore execution/result comes from a dedicated boundary; do not let IntroActivity synthesize success. |
| WP-F / C12 | Task state repository/service boundary | `TaskActivity` UI + Reference task-state contract | Activity observes task state; it does not manufacture task status. |
| WP-F / C13 | Task/job lifecycle boundary | Task state contract + future scheduler adapter | P4 exposes only observation/intent; scheduler execution remains downstream. |
| C02 | `HomeActivity` recreation state | Existing `saved_fragment` | Keep local because Reference consumer is Activity recreation state; no new global owner needed. |
| C15/C16 | Provider/engine adapters | Existing interface/boundary contracts | No P4 owner implementation; downstream execution only. |

### Ownership decision

There is **no unresolved canonical-owner collision** across C01–C16 at the P4 contract level after this reconciliation. The main migration rule for P4.2 is: **UI classes may consume transitional state, but they must not become new canonical owners of domain state.**

The dependency order remains WP-A → WP-B → WP-C → WP-D → WP-E → WP-F, with C02 protected and C15/C16 downstream. This is an implementation map, not implementation authorization.
## P4.1 — Final contract closure matrix

This matrix is the final static acceptance ledger before P4.2. It establishes that the P4.2 implementation map is contract-safe at the static boundary.

| ID | Reference evidence | Canonical owner | BaRe gap | Dependency | Regression surface | Phase boundary | P4.1 result |
|---|---|---|---|---|---|---|---|
| C01 | d45, Intro lifecycle keys/flow | Lifecycle / AccountService boundary | Lifecycle state machine not wired | C07, C05 | Intro/account transitions | Auth/provider/cloud restore deferred | CLOSED → P4.2 |
| C02 | HomeActivity.saved_fragment, N-08/N-09 | HomeActivity recreation state | None at P4 boundary | None | Home recreation | Runtime proof deferred | CLOSED / PASS |
| C03 | intro.d, permission/access helpers, N-07 | Permission/access boundary | P3 manual readiness flags remain | C07, C11 | Intro permission cards/Continue | Privileged engines deferred | CLOSED → P4.2 |
| C04 | yn7, zn7, preferred_storage_dir | Storage coordinator/service | No canonical selected/preferred storage coordinator | C07, C11 | StorageSwitchActivity | Filesystem/privileged storage deferred | CLOSED → P4.2 |
| C05 | ah8/UserInfo, d45, UserInfo repository | Account/session owner | Session state not unified | C07, C01 | Account/Home | Provider SDK/auth deferred | CLOSED → P4.2 |
| C06 | d45.c(), migration flag/outcomes | Migration repository + lifecycle | Orchestration not connected to canonical session | C05, C01 | Account sign-out/migration | Provider/cloud mutation deferred | CLOSED → P4.2 |
| C07 | common.V, encrypted preference boundary, bx5 | LocalState / preference boundary | P3 state uses scattered ordinary SharedPreferences | C11 | Intro/account/settings persistence | Keystore/runtime verification deferred | CLOSED → P4.2 |
| C08 | AppSettings.withSavedSettings(), settings writer/XML | Settings repository/model | Reference settings persistence missing | C07, C11 | Settings flows | Cloud sync/backend mutation deferred | CLOSED → P4.2 |
| C09 | saved_password_mode, STANDARD_PASSWORD, Intro flow | Settings/password-strategy state | Transitional P3_PASSWORD_MODE | C07, C08 | Intro password selection | Password crypto/storage deferred | CLOSED → P4.2 |
| C10 | intro.d restore flow + terminal flags | First-run restore state boundary | Completion boolean lacks full result contract | C01, C05, C08, C14 | Intro first-run flow | Cloud I/O deferred | CLOSED → P4.2 |
| C11 | UserInfo, StorageInfoLocal, AppSettings, task/error/SLog/diagnostic models | Domain contracts + repositories/services | Several P4 models incomplete | C07 | P4 consumers | Feature data production deferred | CLOSED → P4.2 |
| C12 | gz7, jc2, TaskService, TaskActivity | Task state repository/service | No canonical task state contract | C11 | TaskActivity | Task execution deferred | CLOSED → P4.2 |
| C13 | TaskService + AlarmReceiver/scheduling | Task/job lifecycle boundary | No minimum P4 observation/intent contract | C11, C12 | Task/schedule surfaces | Scheduler/foreground execution deferred | CLOSED → P4.2 |
| C14 | re3, ah8, cloud/userInfo metadata | Cloud/session metadata owner | No unified provider-neutral cloud/session state | C05, C07 | Account/cloud/restore | Token/cloud/backend mutation deferred | CLOSED → P4.2 |
| C15 | Reference provider/Firebase/cloud execution | Downstream provider adapter boundary | Intentionally not implemented in P4 | C14 | No P4 execution surface | P5+ | CLOSED / DOWNSTREAM |
| C16 | Reference backup/restore/task execution + existing audits | Downstream backup/restore engine boundary | Intentionally not implemented in P4 | C12, C13 | Task/restore surfaces | P5+ | CLOSED / DOWNSTREAM |

### P4.1 final decision

All sixteen C01–C16 rows now have named Reference evidence, canonical owner, explicit BaRe gap/state, dependency, P3 regression surface, and phase boundary. The evidence audit found no open contract-level UNKNOWN. No unresolved canonical-owner collision remains. No C17+ scope was introduced. C15/C16 remain downstream.

**P4.1 — CLOSED / READY FOR P4.2.**

This is a static contract-analysis closure only. It does not claim implementation, build, install, runtime, provider/backend success, or backup/restore execution.



## P4.2 — WP-A implementation progress — 2026-10-01

### Reference-parity reconciliation

WP-A implementation is being executed under the **Reference Parity Default / Reconstruction Fidelity** rule in `docs/PHASE_4_GUIDE.md`:

- Reference-established shape/semantics are the default target;
- conceptual equivalence is not accepted as Reference equivalence when observable contract shape differs;
- scaffolds are provisional until reconciled against the actual decompile/reference;
- existing consumers are wired only after reconciliation;
- differences require either an explicit `AUTHORIZED DEVIATION` or an intentional downstream/environmental boundary;
- missing evidence remains `UNKNOWN` rather than being approximated.

### Reconciled WP-A artifacts

| Artifact | Reference evidence | Current result |
|---|---|---|
| `ErrorSummary` | `TaskManager$ErrorSummary`: `msg`, `isOnlySafeErrors`, `getMsg()`, `hasErrors()`, `isOnlySafeErrors()` | **RECONCILED** to Reference field/accessor semantics |
| `TaskState` | `defpackage/gz7.java`: `WAITING`, `RUNNING`, `COMPLETE`, `CANCELLED`, `CANCEL_COMPLETE` and helper semantics | **RECONCILED** |
| `StorageInfoLocal` | `org/swiftapps/swiftbackup/model/StorageInfoLocal.java`: Loading/Error/Success state model, five Success fields, Parcelable contract, `saved_storage_info_local` persistence key | **RECONCILED** at model/state shape; persistence serialization remains separate contract work |
| `LocalState` | `SwiftApp` initializes `<package>_preferences`; `d45` uses `KEY_FIRST_START` and `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED` | **RECONCILED** for identified local keys; P3-only flags are not promoted to canonical state |
| `SecureLocalState` | `common.V`: encrypted/secure SharedPreferences boundary with secure fallback; `saved_password_mode` and `saved_user_password` consumed through `V.getZ()` | **BOUNDARY RECONCILED**; concrete secure adapter remains unimplemented/deferred |

### Wiring performed

`IntroActivity` now consumes `LocalState` for the Reference-established `KEY_FIRST_START` and `KEY_FIRST_RUN_CLOUD_RESTORE_COMPLETED` lifecycle keys. The Activity still contains transitional P3 permission/sign-in/password flags; these were deliberately **not** promoted into canonical state during this package because their Reference-equivalent owners are separate P4 contracts (C03/C05/C09).

No provider, backend, password crypto, permission engine, storage engine, task execution, build, install, or runtime verification was performed.

### WP-A static result

**WP-A is not yet package-closed.** Remaining WP-A work is limited to completing the C07/C11 consumer/ownership reconciliation that is supported by Reference evidence, then performing the static regression pass. No speculative wiring will be added where the Reference contract is not yet established.


### WP-A additional wiring — settings local state

`SettingsFragment` now reads/writes `play_notification_sounds` through `LocalState`, using the Reference local-preference boundary and Reference default `true`. This removes the previous BaRe-specific `settings` SharedPreferences store for that key and avoids a competing canonical store.

This does **not** close C08: the full Reference `AppSettings` contract still belongs to WP-D. The change is limited to the already-observed P3 consumer/key and is therefore a WP-A state-ownership correction, not a settings-engine implementation.

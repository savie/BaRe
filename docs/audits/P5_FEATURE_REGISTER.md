# BΛR☰ P5 Feature Register — P5.1 Reference Audit

## Status

**P5.1 — REFERENCE FEATURE AUDIT — ONGOING / STATIC**

This register records the Reference feature decomposition produced from direct inspection of the supplied Swift Backup 5.1.0 / versionCode 620 decompile ZIP, supplemented only by existing project evidence where it already names the same Reference surface.

This is **feature evidence**, not implementation approval, parity closure, runtime verification, or P5 gate closure.

## Primary evidence

Canonical Reference:
- `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
- Swift Backup 5.1.0 / versionCode 620

Repository evidence used for cross-checking:
- `docs/REFERENCE_FEATURE_MAP.md`
- `docs/audits/P5_SCOPE_AUDIT.md`
- `docs/PHASE_5_GUIDE.md`
- `docs/PHASE_4_GATE.md`
- `docs/audits/P4_CONTRACT_REGISTER.md`

Reference evidence rule:
- ZIP/decompile source is primary.
- Existing audits are corroboration and dependency context.
- No behavior is invented where the direct source does not establish it.
- Feature status is not inferred from the existence of an Activity alone.

## P5.1 feature decomposition

| ID | Feature unit | Reference entry / evidence surface | Reference owner surface | Key dependencies / boundaries | Audit finding |
|---|---|---|---|---|---|
| P5-F01 | Onboarding / first-start | `intro.IntroActivity` | `intro` lifecycle/account flow | P4 C01/C03/C09/C10; account, permission, password strategy, first-run restore | Entry and state boundary are directly evidenced; execution of provider/backend restore remains downstream. |
| P5-F02 | Home/dashboard orchestration | `home.HomeActivity` | `home` | P3 navigation + P4 state contracts; app/cloud/task summaries | Dashboard is a feature consumer/orchestrator; do not treat shell reconstruction as feature execution. |
| P5-F03 | Home search | `home.search.HomeSearchActivity` | `home.search` | Search UI/data/result provider | Search surface is present; result/data semantics require targeted feature audit. |
| P5-F04 | Apps inventory/list | `appslist.ui.list.AppListActivity` | `appslist` | package inventory, labels/favorites, task/backup actions | Direct source surface exists; actual inventory and backup execution are separate boundaries. |
| P5-F05 | Apps batch actions | `appslist.ui.listbatch.AppsBatchActivity` | `appslist` | selected app set, action dispatch, task execution | Batch feature is distinct from list presentation. |
| P5-F06 | App quick actions | `appsquickactions.AppsQuickActionsActivity` | `appsquickactions` | app selection, action routing, backup/restore engine boundary | Action categories are Reference feature behavior; side effects require deeper audit. |
| P5-F07 | App detail / app actions | `detail.DetailActivity` | `detail` | app metadata, shortcut, backup/restore/action execution | Detail/action flow is separately evidenced. |
| P5-F08 | App info | `appinfo.AppInfoActivity` | `appinfo` | package/application metadata | Info surface is feature-level UI/data; package data production remains an execution dependency. |
| P5-F09 | App configuration list/edit/settings | `appconfigs.list.ConfigListActivity`, `ConfigEditActivity`, `ConfigSettingsActivity` | `appconfigs` | config model, persistence, app feature selection | Three-screen configuration flow is directly evidenced and must be audited as one feature family with distinct units. |
| P5-F10 | APK import | `apkshare.ApkImportActivity` | `apkshare` | incoming APK/share intent, metadata, filesystem/install boundary | Import flow is directly evidenced; actual package installation is downstream execution. |
| P5-F11 | Folders dashboard/picker/edit/detail | `FoldersDashActivity`, `FolderPickerActivity`, `FolderEditActivity`, `FolderDetailActivity` | `folders` | `FolderItem`, `FolderMetadata`, storage/filesystem, cloud metadata | Folder model and restore/backup structures are directly present in Reference. |
| P5-F12 | Folder batch backup/restore | `FoldersBatchActivity` + folder data classes | `folders` | `FolderBackup`, `BackupResult`, `RestoreResult`, manifest/file state | Backup/restore execution is an explicit feature boundary, not satisfied by the batch Activity alone. |
| P5-F13 | Messages dashboard/backups | `MessagesDashActivity`, `MessagesBackupsActivity` | `messagescalls` | SMS provider, storage, task engine | SMS backup inventory and task execution are distinct from UI. |
| P5-F14 | Messages backup/restore | `MessagesBackupRestoreActivity` + backuprestore classes | `messagescalls.backuprestore` | SMS provider/default-handler state, file/data storage | Reference directly contains dedicated backup/restore flow. |
| P5-F15 | Calls dashboard/backups | `CallsDashActivity`, `CallsBackupsActivity` | `messagescalls` | call-log provider, storage, task engine | Call-log inventory/backup is separately represented. |
| P5-F16 | Calls backup/restore | `CallsBackupRestoreActivity` + backuprestore classes | `messagescalls.backuprestore` | call-log provider, restore state, task engine | Dedicated restore flow is directly evidenced. |
| P5-F17 | Conversations / chat | `ConversationsActivity`, `ChatActivity` | `messagescalls.conversationsview` | SMS/conversation data | Conversation browsing is a distinct feature surface from backup/restore. |
| P5-F18 | SMS default-handler integration | `ComposeSmsActivity`, `HeadlessSmsSendService`, `SmsReceiver`, `MmsReceiver` | `messagescalls.defaulthandler` | Android default SMS role, broadcast/service lifecycle | Integration includes Activity, Service and Receivers; runtime role/broadcast execution remains unverified. |
| P5-F19 | Cloud connection | `CloudConnectActivity` + provider sign-in Activities | `cloud.connect` | provider credentials/session, account lifecycle | Reference has multiple provider-specific entry surfaces; provider execution requires separate contract audit. |
| P5-F20 | Cloud provider operations | `cloud.protocols` implementations/models | `cloud.protocols` | credentials/tokens, transfer, file metadata, provider APIs | Provider-neutral contracts must preserve observed provider behavior without inventing target backend behavior. |
| P5-F21 | Cloud orphan/cleanup | `cloud.orphans`, folder/app cloud cleanup paths | `cloud.orphans` / feature cleanup helpers | cloud metadata, file deletion, retry/error semantics | Cleanup is a separate execution family from sign-in/connection. |
| P5-F22 | Scheduling | `ScheduleService`, schedule data/UI | `home.schedule` | task lifecycle, alarms, schedule state | Schedule model, UI and service are directly evidenced; actual alarm/task execution is downstream. |
| P5-F23 | Settings | `settings.SettingsActivity`, `SettingsDetailActivity`, related settings screens | `settings` | P4 AppSettings/secure state; feature-specific settings | Frozen P4 settings contract is an input; feature-specific settings behavior remains P5 audit scope. |
| P5-F24 | Storage management | `StorageSwitchActivity` + storage data surfaces | `home.storageswitch` | P4 storage contract, filesystem/volume engine | Selection/persistence contract is P4; actual filesystem/storage execution remains P5/downstream. |
| P5-F25 | Password / encryption strategy | `PasswordStrategyActivity`, `UserPasswordActivity` | `password` | P4 saved_password_mode; secure storage; crypto | Strategy and user-password flows are directly evidenced; crypto execution must be audited separately. |
| P5-F26 | Multiple backups / restore special data | `MultipleBackupsActivity`, `RestoreSpecialDataDetailsActivity` | `settings` | backup representation, restore policy, task/data engine | These are feature controls/details beyond the frozen P4 contract. |
| P5-F27 | Tasks / task execution UI | `TaskActivity`, `PreconditionsActivity`, `TaskService` | `tasks` | P4 TaskState/TaskResult; feature executors | P4 provides state boundary; actual task execution is explicit P5 scope. |
| P5-F28 | Wi-Fi backup/restore | `wifi.WifiActivity`, `PasswordInfo` | `wifi` | Wi-Fi credential/system boundary, cloud/local data | Dedicated feature source exists; credential/runtime behavior requires targeted audit. |
| P5-F29 | Wallpapers | `WallsDashActivity`, `WallsManageActivity`, `WallApplyActivity` | `walls` | wallpaper/system API, local/cloud metadata | Dashboard, management and apply are separate execution surfaces. |
| P5-F30 | Blacklist | `BlacklistActivity`, `BlacklistData`, `BlacklistApp` | `blacklist` | app inventory/selection, persistence | Blacklist model and UI are directly evidenced; filtering consumers require targeted audit. |
| P5-F31 | Premium / entitlement feature surface | `PremiumActivity`, `NoGmsPremium` | `premium` | authorized free-entitlement deviation; billing Reference evidence | Target entitlement is authorized free; Reference premium feature behavior remains the parity evidence. |
| P5-F32 | Locale | `LocaleActivity`, `LocaleChangedReceiver` | `locale` / `common` | locale configuration, resource selection | Locale selection and change propagation are directly represented. |
| P5-F33 | Contributor registration | `ContributorRegActivity`, `ContributorRegistration` | `contributor` | contributor status/data contract | Registration flow is evidenced; Reference mutation/write semantics need targeted audit where not established. |
| P5-F34 | Notices / licenses | `NoticeListActivity`, `NoticeViewActivity`, `LicensesActivity` | `notice` / `settings` | notice data, static content/licenses | Supporting feature surface; data source behavior requires targeted audit. |
| P5-F35 | Diagnostics / logging | `SLogActivity`, cloud/app-visibility diagnostics | `slog`, `cloud.diagnostics`, `settings.appvisibility` | P4 diagnostic state; telemetry/provider boundaries | Static diagnostic surfaces exist; actual collection/provider behavior is not implied. |
| P5-F36 | Manage space | `ManageSpaceActivity` | `manage` | storage inventory, backup metadata/files | Space-management behavior needs direct feature audit. |
| P5-F37 | Shortcuts | `ShortcutsActivity`, `ShortcutPinnedReceiver` | `shortcuts` / `detail` | Android launcher shortcut APIs | Shortcut creation/pinning is a feature integration boundary. |

## Direct ZIP structural audit

The supplied ZIP was inspected directly.

Reference source counts under `org/swiftapps/swiftbackup` for major P5 families include:

| Family | Java source files in ZIP |
|---|---:|
| Apps / appslist | 14 |
| Folders | 24 |
| Messages/calls | 20 |
| Cloud protocols | 13 |
| Cloud connection | 13 |
| Scheduling | 27 |
| Tasks | 7 |
| Password | 2 |
| Wi-Fi | 2 |
| Wallpapers | 3 |
| Blacklist | 3 |
| APK import | 4 |
| Premium | 2 |
| Locale | 1 |
| Contributor | 5 |
| App configuration | 11 |

These counts are **forensic scope indicators**, not feature-completeness scores.

## Cross-phase inputs confirmed

P5.1 explicitly consumes frozen predecessor outputs where applicable:

- **P1:** resource/manifest/dependency/feature inventory.
- **P2:** Activity/Service/Receiver identity and structural ownership.
- **P3:** UI/navigation/lifecycle/dialog/error/loading surfaces.
- **P4:** account/lifecycle, permission/storage, settings/password, restore-state, task/job contracts.

P5 does not reopen these phases because the feature audit consumes their outputs.

## P5.1 audit rules carried forward

- Activity existence is not feature parity.
- UI is not assumed to own domain execution when Reference evidence shows service/data/task ownership.
- Backup/restore engine behavior must be audited directly; it cannot be inferred from P4 contracts.
- Provider/backend execution must remain behind the evidenced boundary.
- Firebase identifiers in Reference are evidence only; they do not authorize Firebase in BaRe.
- BΛR☰ branding remains the authorized target identity.
- UNKNOWN is reserved for unresolved evidence after targeted inspection; it is not a synonym for unimplemented.
- Runtime/device/provider/backend verification is not claimed.

## P5.1 Reference reconciliation addendum — v1.0/rebaseline

A targeted reconciliation was performed against the two Reference audit artifacts on branch v1.0/rebaseline:

- reference/reference.md
- reference/reference_apps_audit.md

These documents do not replace the P5.0 scope audit or the P5.1 register. They provide deeper feature/behavior evidence that was previously only represented at coarse feature-family level. Items already covered by F01–F37 are mapped below; genuinely additional boundaries are added as explicit P5 feature-contract units.

### Existing coverage confirmed

| Reference audit finding | Existing P5 unit | Reconciliation |
|---|---|---|
| Root / Shizuku permission confirmation and capability-specific grant flow | F01, F23, F27 | Already covered as onboarding/settings/task/permission dependency; detailed privileged mechanism now recorded as F38. |
| Apps list filter/sort, search, row actions, batch actions | F03–F06, F30 | Already in register; deeper predicate/state evidence feeds F39/F44 rather than creating duplicate UI units. |
| App detail, backup-card, part-chip and restore selection | F07, F26 | Already in register; execution semantics are expanded by F40/F41/F42. |
| Labels, favorites, custom configurations, quick actions | F06, F09, F30, F37 | Already represented; no duplicate top-level feature added. |
| Backup archive, encryption, compression and SBA root archive creation | F25, F27 | Existing coverage was too coarse; explicit artifact pipeline is added as F41. |
| Local/cloud metadata lifecycle, delete, cleanup, multiple-backup consistency | F20/F21/F26 | Existing cloud/restore coverage exists; explicit metadata lifecycle boundary is added as F42. |
| Restore result aggregation, cancellation, retry, task/process-death boundary | F27 | Existing task UI unit exists; execution/result semantics are added as F43. |
| Per-app storage size, cache filtering, OBB/external data, usage-based sort | F04/F23/F24 | Existing inventory/storage/settings coverage exists; measurement/state boundary is added as F44. |
| Favorite app state, AppInfo, pinned detail shortcut, app-backup limits, visibility diagnostics | F07/F08/F09/F35/F37 | Existing units cover the surfaces; reconciliation confirms these are not missing top-level feature families. |
| Split APK restore, installer decision, downgrade/secondary-user handling | F10/F27 | APK import and task UI were present, but restore/install semantics were not explicit; added as F40. |
| Change detection / identical-APK skip / data-extdata-expansion-media delta predicates | F04/F07/F27 | Existing list/detail/task units were too coarse; explicit backup planning semantics are added as F39. |
| Archive format matrix and legacy extraction profiles | F25/F27 | Existing security/task units were too coarse; explicit artifact format contract is added as F41. |

### Newly explicit P5 feature-contract units

| ID | Feature unit | Reference evidence | Owner / boundary | Audit finding |
|---|---|---|---|---|
| **P5-F38** | Privileged permission / Root–Shizuku capability workflow | reference.md §3.1; reference_apps_audit.md capability/precondition evidence | permission/capability adapter; Intro/Settings/Tasks consume it | Reference shows one confirmation surface but multiple mechanisms: runtime permissions, MANAGE_EXTERNAL_STORAGE/AppOps, installed-app capability handling, and Root/Shizuku. BaRe must not collapse these into one generic permission boolean. |
| **P5-F39** | App backup planning / change detection / skip semantics | reference.md §§28–30; Apps audit §§5–10, 17–18 | app backup planner + artifact metadata boundary | Reference distinguishes Single/Dated/Conditional backup strategy, identical-APK skip, per-part change detection, cache/source filtering, and non-delta/patch archive behavior. UI presence is insufficient to claim these semantics. |
| **P5-F40** | APK restore / split install / downgrade decision boundary | reference.md §§30–31; Apps audit §§7, 10–11 | restore planner + installer capability adapter + task boundary | Reference evidence covers installer request construction, source-preserving install, split extraction/validation/retry, downgrade preparation/recovery, and secondary-user workaround paths. Runtime installation remains downstream/unverified. |
| **P5-F41** | Backup artifact format / archive / compression / encryption pipeline | reference.md §§23, 27, 29–30; Apps audit §§6, 8, 10 | artifact writer/reader + crypto boundary | Reference evidence distinguishes SBA/root archive creation, TAR/7-Zip/SBA format handling, compression profiles, password strategy, and encryption boundary. Exact low-level implementation is not to be copied; contracts must remain evidence-backed. |
| **P5-F42** | Local/cloud metadata lifecycle / delete / sync consistency | reference.md §§30–31; Apps audit §§12, 14–16 | metadata repository + cloud orchestration boundary | Reference has explicit metadata read/write/update/remove behavior, cloud index reconstruction, metadata-first cloud delete, local-delete coupling, refresh/observer behavior, protected backup handling, and multiple-backup cleanup. Remote atomicity remains UNKNOWN. |
| **P5-F43** | Task result aggregation / cancellation / retry / process-death semantics | reference.md §§20, 30; Apps audit §§13–14, 16, 21 | task orchestration + result aggregation | Reference distinguishes per-part/per-app failure from task terminal state, layered cancellation, retry, and post-restore reconciliation. Task UI alone is not the execution contract. |
| **P5-F44** | App size / cache / OBB / usage-state measurement | reference.md §25; Apps audit §§3, 17 | app inventory measurement + sort/filter projection | Reference derives app size from multiple parts, treats cache separately, includes OBB/external data/media, and uses usage access for DateUsed sorting. Measurement/capability failure must be explicit rather than fabricated. |

### P5.1 reconciliation result

- Reference reference.md adds substantial **behavioral resolution** to already-known P5 families; it does not introduce a second product scope.
- reference_apps_audit.md adds a deep Apps execution/metadata/restore ledger that was only partially represented in F04–F09/F26/F27.
- P5.1 register is therefore expanded from **37** to **44** explicit feature-contract units.
- F38–F44 are evidence-backed additions, not implementation authorization.
- Reference remains read-only.
- Runtime/device/provider/backend/privileged-engine execution remains unverified/downstream.
- BΛR☰ branding and Supabase target-backend policy are unchanged and are not reopened by this reconciliation.

## P5.1 Closure reconciliation — additional reference boundaries

A second closure pass against the complete section/heading inventory of v1.0/rebaseline reference/reference.md and reference/reference_apps_audit.md found additional evidence that was covered only implicitly by earlier units. These are made explicit before P5.2 so owner/contract work cannot accidentally omit them.

| ID | Feature / boundary | Reference evidence | Why explicit |
|---|---|---|---|
| **P5-F45** | Account / local identity / continuity boundary | reference.md §§16, 22–23; account/identity continuity evidence | Account was present in the screen ledger but local/anonymous identity, derived account namespace, installation identity separation, and continuity/recovery boundaries were not an explicit P5 unit. |
| **P5-F46** | Import / export / configuration transfer | reference.md §18 and targeted capability evidence | APK import F10 does not cover settings export/import and cloud-setup/config transfer surfaces. These must remain distinct from APK ingestion. |
| **P5-F47** | Folder manifest / incremental backup / chain validation | reference.md §19.2–19.3; folder workflow evidence | F11/F12 cover folder UI and backup/restore, but manifest/file-entry, base/incremental backup, and chain-validation semantics need an explicit contract boundary. |
| **P5-F48** | Messages advanced handling: MMS/RCS and provider state | reference.md §19.2 and S09 workflow evidence | F13/F14 cover message backup/restore generally; MMS/RCS-specific handling is a concrete capability dependency that must not disappear into generic SMS semantics. |
| **P5-F49** | Wi-Fi sensitive-access authentication / enterprise data | reference.md §19.2 and S11 evidence | F28 identifies Wi-Fi backup/restore, but biometric/device-credential gating and enterprise Wi-Fi data handling are distinct capability/state boundaries. |
| **P5-F50** | Schedule selection / last-run diagnostic state | reference.md §19.2 and S13 workflow evidence | F22 covers scheduling broadly; label/folder selectors and detailed last-run blocked/skipped/error state need explicit contract ownership. |
| **P5-F51** | Cloud diagnostics / provider abstraction / transfer-test boundary | reference.md §§19.2–19.3 and S14 evidence | F19–F21 cover connection, provider operations, and cleanup, but diagnostic transfer tests and provider-neutral multi-provider protocol abstraction are distinct contracts. |
| **P5-F52** | Backup protection / retention / notes policy | reference.md §§19.2–19.3 and §§30.5, 30.13 | F26 covers multiple backups/special restore data, but protected backups, retention protection, and backup notes are explicit metadata/policy semantics. |
| **P5-F53** | Apps Local-vs-Cloud inventory context / canonical backup discovery | reference.md §§26, 31; Apps audit §§3, 20, 31 | Reference has an explicit Local apps vs Cloud synced apps inventory context and canonical backup-container discovery. This is more than generic Apps list presentation and affects repository/query ownership. |
| **P5-F54** | Restore-part independent selection / restore-card action model | reference.md §§28, 30–31; Apps audit §§20, 31 | Reference evidence explicitly separates storage-part and backup-card actions and allows independent APK/Data/External/Expansion/Media restore selection; this must be a contract, not inferred from F07/F26 UI. |

### Apps decomposition reconciliation — explicit child feature units

A targeted reconciliation of the Reference Apps audit was performed before leaving P5.1. The Apps parent unit alone was too coarse for several independently evidenced behaviors. These are promoted to explicit P5.1 feature units so P5.2 can assign separate contracts/owners without losing behavior in a generic Apps list boundary.

Reference evidence: `reference/reference_apps_audit.md` — Apps List, Filter / Sort, Batch / Config / Quick Actions, and Labels sections; corresponding Reference JADX/apktool resources and classes.

| ID | Feature unit | Reference evidence | Why explicit |
|---|---|---|---|
| **P5-F55** | Apps list search / query surface | Apps audit: `AppListActivity` search; apps-list menu/search surface | Home search F03 is not the same boundary as Apps-list search. Apps list query state and its result projection need an explicit owner/contract. |
| **P5-F56** | Apps list filtering / predicate state | Apps audit: `filter_bottom_dialog.xml`, `defpackage.sc3`, `defpackage.iy`; filter groups for app type, system, favorites, labels, backup status, cloud sync, install status, enabled status, miscellaneous | Filtering has its own persisted/state semantics and multiple predicates. It is more than generic inventory/list presentation. |
| **P5-F57** | Apps list sorting / order projection | Apps audit: Filter / Sort; `defpackage.sx` with Name, InstallDate, UpdateDate, BackupDate, AppSize, BackupSize, DateUsed | Sort criteria and order projection are independently evidenced and include usage/date/size semantics. They should not be hidden inside a generic list contract. |
| **P5-F58** | App labels management / assignment / label-based filtering | Apps audit: `LabelsActivity`, `LabelEditActivity`, `LabelParams`, `LabelledApp`, `LabelsData`; static evidence for list/create/edit/delete/assign/association/selected-label filtering | F09 custom configurations and F30 blacklist do not own the label lifecycle. Labels are a reusable Apps domain capability consumed by list/filter/batch/config flows. |

### Apps decomposition result

- Apps parent/dependency units remain F04–F09, F26/F27, F30/F35/F37, F39–F44, F53/F54 where applicable.
- F55–F58 are **not duplicates** of those units; they make independently evidenced Apps child behaviors explicit.
- Filter dimensions such as Favorites, Labels, Backup Status, Cloud Sync, Install Status, Enabled Status, App Type, System/Miscellaneous remain sub-predicates of **F56**, not separate feature IDs unless later evidence shows an independent lifecycle/owner.
- Pull-to-refresh, FastScroller, RecyclerView, swipe reveal, and row presentation remain interaction/UI contract details, not separate top-level P5 feature units at this stage.
- Apps batch, quick actions, custom configurations, blacklist, app detail, backup parts, and restore selection remain represented by existing units and are not duplicated here.

### Apps engine / special-data reconciliation — remaining explicit boundaries

A further targeted pass against `reference/reference_apps_audit.md` Checkpoints 21–29 and the supplied decompile was performed while remaining in P5.1. The pass specifically targeted items previously marked OPEN. Only boundaries with an independently evidenced lifecycle, persistence, consumer, or enforcement point are promoted to feature-contract units.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F59** | Favorites persistence / local-cache / cloud-sync lifecycle | Apps audit Checkpoint 22; `FavoriteAppsRepo`, `FavoriteApp` | favorites repository + app-event refresh | Favorites are not merely a row predicate: they have local cache, authenticated cloud load/mutation, anonymous-local behavior, identity derivation, and repository refresh semantics. |
| **P5-F60** | AppInfo diagnostic data surface | Apps audit Checkpoint 22; `AppInfoActivity`, `sq` | app diagnostic/read-model boundary | AppInfo derives package/version/source/data/split/UID diagnostics from `ji`; it is a distinct read-only diagnostic contract, not generic detail presentation. |
| **P5-F61** | Pinned detail shortcut integration | Apps audit Checkpoint 22; `ShortcutPinnedReceiver`, `j32` | launcher shortcut integration + Detail entry origin | Pin-result handling, shortcut refresh, parcel propagation, and `detail_launched_from_shortcut` origin state form a concrete integration boundary. |
| **P5-F62** | Custom configuration → Apps task input mapping | Apps audit Checkpoint 22; `ConfigSettings`, `v10`, `m30` | configuration repository → task parameter boundary | ConfigSettings is consumed directly to construct backup/restore task parameters; this downstream mapping is stronger than the F09 UI/editor surface alone. |
| **P5-F63** | Per-part backup-limit enforcement | Apps audit Checkpoint 22; `AppBackupLimitItem`, `qk0` | backup planner / eligibility enforcement | Limits are enforced against actual part size, storage type, local/cloud target, bypass mode, and warning accumulation; this is engine policy, not settings display. |
| **P5-F64** | Package-visibility diagnostics | Apps audit Checkpoint 22; `AppVisibilityDiagnosticsActivity`, `p00`, `v00` | PackageManager snapshot + diagnostic projection | Raw package visibility snapshot, query state, empty/error state, and diagnostic flags are independently evidenced and do not mutate visibility configuration. |
| **P5-F65** | Runtime/special permission state backup + restore | Apps audit Checkpoint 29; `permissionStatesCsv` producer/consumer chain | special-data capture/persistence + restore capability | Permission state has a concrete producer → user-bound special-data persistence → restore consumer chain, including runtime and supported special-permission state tokens. |
| **P5-F66** | SSAID backup + restore | Apps audit Checkpoint 29; `ssaid`, `mk7/ok7/kk7` | system-settings identity snapshot + privileged restore | SSAID is separately captured, validated, persisted, and restored under explicit root/capability conditions; it is not equivalent to generic special permissions. |
| **P5-F67** | Notification-access component backup + restore | Apps audit Checkpoint 29; `ntfAccessComponent`, `yo5/cl`, restore consumer | notification-access state adapter | The payload stores a concrete component identity and restore reconstitutes notification-access state; this is distinct from generic permission flags and notification-policy XML. |
| **P5-F68** | Accessibility-service component backup + restore | Apps audit Checkpoint 29; `accessibilityComponent`, `o6/el`, restore consumer | accessibility-service state adapter | Accessibility state is captured as component identity and restored through a dedicated system-state path; it has its own producer/consumer semantics. |
| **P5-F69** | Notification policy backup + restore | Apps audit Checkpoints 25/28; `NotificationPolicyProxy` + `AppSpecialDataPayload.notificationPolicyXml` | privileged notification-policy proxy + special-data persistence | Full policy payload extraction, per-package XML isolation, size limits, user/package validation, persistence, and privileged restore are a concrete execution boundary separate from notification-access state. |
| **P5-F70** | Apps task workspace / temporary-artifact lifecycle | Apps audit Checkpoint 25; `AppsWorkingDir` | task workspace/storage accessibility boundary | Per-task `app_tasks` workspace selection, internal/external/Shizuku-accessible path choice, creation failure, and stale-workspace cleanup are explicit engine prerequisites for archive/install/restore flows. |
| **P5-F71** | SBA app-data archive metadata envelope | Apps audit Checkpoints 25/28; `SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata` | app-data artifact metadata builder | The app-data artifact carries explicit kind/version/package/app identity, version, cache/device-protected flags, compression, encryption, sizes, and entry list; this is a concrete artifact-contract boundary. |

These additions deliberately do **not** promote generic helpers such as string/collection utilities, lazy holders, logging facades, or threading primitives into feature IDs. Their existence is supporting infrastructure, not independent P5 feature behavior.

### Apps engine reconciliation result

- F59–F64 close the previously open Apps repository/diagnostic/control surfaces identified in Checkpoint 22.
- F65–F69 close the special-data producer/consumer boundaries traced in Checkpoint 29.
- F70–F71 make two explicit engine/artifact prerequisites visible to P5.2 without treating generic utilities as product features.
- These units are evidence-backed Reference boundaries; they do not authorize implementation, privileged execution, provider/backend execution, or runtime verification.
- This pass does not treat the number **71** as a target. The count is a consequence of the evidence decomposition and may still increase if another independent boundary is proven.

### Non-Apps engine reconciliation — scheduling / messages / password

A further targeted P5.1 pass inspected the supplied decompile directly for non-Apps execution boundaries that remained coarse in F01–F37 and were not already made explicit by F45–F71.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F72** | Messages backup retention / local-cloud cleanup | `defpackage/ud5`; `max_sms_backups`; local/cloud backup enumeration and deletion | SMS backup repository + retention helper | Reference has an explicit configurable maximum SMS-backup count, enumerates local/cloud backup records, selects older backups, deletes them, and reports cleanup failures. This is an engine policy distinct from Messages backup/restore UI and the MMS toggle. |
| **P5-F73** | User-password lifecycle / password history state | `password.PasswordStrategyActivity`, `UserPasswordActivity`, `defpackage/yx5`, `by5` | password strategy state + persisted user-password state | Reference distinguishes STANDARD_PASSWORD vs USER_PASSWORD, active-password state, password change flow, and saved old-password set. The lifecycle is a persisted security-state boundary, not merely the strategy screen. |
| **P5-F74** | Schedule execution eligibility / alarm-to-task handoff | `ScheduleService`, `ScheduleItem`, `AlarmReceiver`, schedule RunMode/selector paths | alarm/service scheduler + task preparation/handoff | Reference evaluates enabled/runnable/repeat-day state, forced/manual run modes, charging/battery/cloud prerequisites, prepares app/message/call/folder/Wi-Fi tasks, records schedule errors, and hands runnable work into the task system. This is materially deeper than schedule CRUD/UI. |

F74 is intentionally not a claim that every Android alarm/runtime outcome has been verified; it is the statically evidenced scheduler decision and task-handoff boundary.

### Closure result

- P5.1 explicit feature-contract units: **74**.
- F72–F74: non-Apps engine reconciliation pass.
- F59–F71: Apps engine / special-data reconciliation pass.
- F01–F37: original scope decomposition.
- F38–F44: first rebaseline reconciliation.
- F45–F54: second full-section closure reconciliation.
- F55–F58: Apps child-feature decomposition reconciliation.
- No additional product family was invented; F55–F58 make independently evidenced Apps child behaviors explicit before P5.2.
- Icon cache is intentionally **not** promoted to a feature unit because the Reference audit explicitly distinguishes it from disk app-cache semantics.
- The large-file performance findings in reference.md §31.3 are **not** promoted to Reference feature units because that section audits BaRe's current pipeline; it is an implementation/performance audit, not Reference feature evidence.
- Runtime verification remains unclaimed.
- P5 gate remains **NOT OPENED**.

## P5.1 current decision

**P5.1 — ONGOING / NOT YET CLOSED.**

The Reference feature universe is being decomposed into concrete audit units with direct entry/evidence surfaces, Reference ownership surfaces, and primary dependency/execution boundaries. The Apps engine/special-data pass materially expanded the register from 58 to 71 units, so the earlier P5.1 closure statement is superseded.

No feature implementation was performed.

Current next step:
**Continue P5.1 targeted Reference audit until no additional independently evidenced feature/engine boundary remains unresolved.**

P5.2 remains **NOT OPENED**.

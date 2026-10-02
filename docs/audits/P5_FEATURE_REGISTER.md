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

## Canonical P5.1 feature index — F01–F153

This section is the canonical index of every numbered P5.1 audit ID currently recorded. **F94 is retained only as a reconciliation marker because it duplicates F69; it is not counted as a unique feature-contract unit.** Detailed evidence remains in the reconciliation sections below.

| ID | Feature-contract unit / reconciliation marker |
|---|---|
| **F01** | Onboarding / first-start |
| **F02** | Home/dashboard orchestration |
| **F03** | Home search |
| **F04** | Apps inventory/list |
| **F05** | Apps batch actions |
| **F06** | App quick actions |
| **F07** | App detail / app actions |
| **F08** | App info |
| **F09** | App configuration list/edit/settings |
| **F10** | APK import |
| **F11** | Folders dashboard/picker/edit/detail |
| **F12** | Folder batch backup/restore |
| **F13** | Messages dashboard/backups |
| **F14** | Messages backup/restore |
| **F15** | Calls dashboard/backups |
| **F16** | Calls backup/restore |
| **F17** | Conversations / chat |
| **F18** | SMS default-handler integration |
| **F19** | Cloud connection |
| **F20** | Cloud provider operations |
| **F21** | Cloud orphan/cleanup |
| **F22** | Scheduling |
| **F23** | Settings |
| **F24** | Storage management |
| **F25** | Password / encryption strategy |
| **F26** | Multiple backups / restore special data |
| **F27** | Tasks / task execution UI |
| **F28** | Wi-Fi backup/restore |
| **F29** | Wallpapers |
| **F30** | Blacklist |
| **F31** | Premium / entitlement feature surface |
| **F32** | Locale |
| **F33** | Contributor registration |
| **F34** | Notices / licenses |
| **F35** | Diagnostics / logging |
| **F36** | Manage space |
| **F37** | Shortcuts |
| **F38** | Privileged permission / Root–Shizuku capability workflow |
| **F39** | App backup planning / change detection / skip semantics |
| **F40** | APK restore / split install / downgrade decision boundary |
| **F41** | Backup artifact format / archive / compression / encryption pipeline |
| **F42** | Local/cloud metadata lifecycle / delete / sync consistency |
| **F43** | Task result aggregation / cancellation / retry / process-death semantics |
| **F44** | App size / cache / OBB / usage-state measurement |
| **F45** | Account / local identity / continuity boundary |
| **F46** | Import / export / configuration transfer |
| **F47** | Folder manifest / incremental backup / chain validation |
| **F48** | Messages advanced handling: MMS/RCS and provider state |
| **F49** | Wi-Fi sensitive-access authentication / enterprise data |
| **F50** | Schedule selection / last-run diagnostic state |
| **F51** | Cloud diagnostics / provider abstraction / transfer-test boundary |
| **F52** | Backup protection / retention / notes policy |
| **F53** | Apps Local-vs-Cloud inventory context / canonical backup discovery |
| **F54** | Restore-part independent selection / restore-card action model |
| **F55** | Apps list search / query surface |
| **F56** | Apps list filtering / predicate state |
| **F57** | Apps list sorting / order projection |
| **F58** | App labels management / assignment / label-based filtering |
| **F59** | Favorites persistence / local-cache / cloud-sync lifecycle |
| **F60** | AppInfo diagnostic data surface |
| **F61** | Pinned detail shortcut integration |
| **F62** | Custom configuration → Apps task input mapping |
| **F63** | Per-part backup-limit enforcement |
| **F64** | Package-visibility diagnostics |
| **F65** | Runtime/special permission state backup + restore |
| **F66** | SSAID backup + restore |
| **F67** | Notification-access component backup + restore |
| **F68** | Accessibility-service component backup + restore |
| **F69** | Notification policy backup + restore |
| **F70** | Apps task workspace / temporary-artifact lifecycle |
| **F71** | SBA app-data archive metadata envelope |
| **F72** | Messages backup retention / local-cloud cleanup |
| **F73** | User-password lifecycle / password history state |
| **F74** | Schedule execution eligibility / alarm-to-task handoff |
| **F75** | Task-manager provider registration / sequential execution lifecycle |
| **F76** | DataSync foreground-service runtime ledger / quota accounting |
| **F77** | Apps task execution engine |
| **F78** | Folders task execution engine |
| **F79** | Messages task execution engine |
| **F80** | Calls task execution engine |
| **F81** | Wi-Fi task execution engine |
| **F82** | Wallpapers task execution engine |
| **F83** | Apps inventory cache persistence / refresh reconciliation |
| **F84** | SLog local persistence / retention / filtering |
| **F85** | App configuration validation / label-reference normalization |
| **F86** | APKS share-package creation / metadata + SHA-256 artifact manifest |
| **F87** | Cloud credential persistence / secure password-key merge / settings export |
| **F88** | Cloud orphan scan / result / deletion state machine |
| **F89** | Storage volume measurement / app-usage calculation / cached storage snapshot |
| **F90** | Locale selection persistence / configuration-change propagation |
| **F91** | Contributor registration state / registration persistence |
| **F92** | Notice/license content loading / selection model |
| **F93** | PackageInstaller session install / result verification engine |
| **F94** | ~~Notification-policy backup / per-package restore engine~~ |
| **F95** | App special-data payload serialization / compression / user-binding codec |
| **F96** | Cloud login outcome taxonomy / connection-result contract |
| **F97** | MEGA multi-factor-auth-required login outcome / session gate |
| **F98** | Filen restorable encrypted-session state / session rehydration |
| **F99** | Calls backup retention / local-cloud cleanup policy |
| **F100** | Settings cloud backup / restore and local-settings application |
| **F101** | Folder restore strategy policy / persisted mode |
| **F102** | Cloud diagnostics transfer-test suite / result-state engine |
| **F103** | Cloud transfer concurrency policy / parallel transfer execution mode |
| **F104** | MEGA saved-session persistence / validated session rehydration |
| **F105** | Protected-backup deletion guard / revalidation / protected-count result |
| **F106** | AppSpecialDataPayload versioned serialization / compression / encryption / atomic persistence lifecycle |
| **F107** | Scheduled Apps Quick Actions selection / task preparation / last-run lifecycle |
| **F108** | Scheduled Apps custom-configuration selection / cloud fallback / task preparation / last-run lifecycle |
| **F109** | Scheduled Apps label selection / installed-app projection / part filtering / task preparation |
| **F110** | Scheduled Messages selection / permission-data availability / task preparation |
| **F111** | Scheduled Calls selection / call-log availability / task preparation |
| **F112** | Scheduled Wallpapers selection / valid-wallpaper discovery / task preparation |
| **F113** | Scheduled Wi-Fi selection / device-read prerequisite / task preparation |
| **F114** | Scheduled Folders selection / backup-strategy projection / task preparation |
| **F115** | MultipleBackupStrategy persistence / legacy migration / normalization / representation |
| **F116** | App-list left/right swipe action configuration / persistence / reset |
| **F117** | Per-app-part backup-limit configuration persistence / validation / serialization |
| **F118** | App-cache inclusion policy / persistence / warning / change-detection projection |
| **F119** | App-data compression level selection / persistence / normalization / pipeline projection |
| **F120** | Restore-special-permission policy / root capability gating / ConfigSettings override |
| **F121** | App configuration export/import serialization / validation / replacement lifecycle |
| **F122** | ScheduleData aggregate persistence / normalization / ordering / battery requirement state |
| **F123** | Blacklist persistence / package predicate / backup-selection exclusion |
| **F124** | Apps search query normalization / index-source projection / result-provider contract |
| **F125** | Manage-space inventory projection / reclaim-action routing / backup-artifact cleanup boundary |
| **F126** | Folder-data compression level selection / persistence / normalization / task projection |
| **F127** | Folder backup result algebra / no-change / artifact + statistics result |
| **F128** | Folder restore result algebra / success metrics / failure message |
| **F129** | Folder metadata reconstruction / local persistence / cloud synchronization lifecycle |
| **F130** | Latest folder manifest selection / cloud-download cache lifecycle |
| **F131** | TeraBox token credential persistence / validity / OAuth refresh lifecycle |
| **F132** | TeraBox browser OAuth sign-in handoff / deep-link callback / sign-in result lifecycle |
| **F133** | TeraBox chunked upload session / per-part MD5 / sequencing / finalization contract |
| **F134** | TeraBox provider error normalization/classification boundary |
| **F135** | Google Drive resumable upload-session lifecycle |
| **F136** | Google Drive batch-delete result and retry lifecycle |
| **F137** | Google Drive ranged-download recovery and bounded retry lifecycle |
| **F138** | Google Drive main-folder integrity and account-email metadata migration lifecycle |
| **F139** | Google Drive GMS access-token acquisition, stale-token clearing, account validation, and refresh/error lifecycle |
| **F140** | Box resumable upload session lifecycle and recent-upload cache bridge |
| **F141** | Dropbox upload-session chunking, offset correction, bounded retry, and stop/failure lifecycle |
| **F142** | OneDrive upload-session creation, next-expected-range progression, chunk result state, and bounded retry/auth-stop behavior |
| **F143** | OneDrive batch-delete aggregation, failed-ID retry, and terminal failure result |
| **F144** | OneDrive MSAL silent-token lifecycle reconciliation |
| **F145** | Yandex OAuth refresh-token exchange, refreshed access-token replacement, cloud-service persistence, and refresh failure handling |
| **F146** | Yandex async-operation polling, retry-after handling, terminal-state validation, and download-link acquisition boundary |
| **F147** | pCloud API-host failover and persisted endpoint selection lifecycle |
| **F148** | pCloud temporary upload, parent-directory preparation, rename-to-final, and failure cleanup lifecycle |
| **F149** | S3 batch-object deletion aggregation and partial-failure handling |
| **F150** | WebDAV chunked-upload assembly and post-disconnect verification lifecycle |
| **F151** | SMB multi-method deletion fallback |
| **F152** | SFTP password/private-key authentication execution boundary |
| **F153** | FTP LIST/TLS compatibility fallback and partial-upload cleanup |

| **F154** | App data part model / per-part privileged backup requirement |
| **F155** | App-data encryption metadata / per-part encryption-password-hash consistency |
| **F156** | SBA password KDF / encryption-method key-check lifecycle |
| **F157** | SBA native archive creation / encrypted finalization lifecycle |
| **F158** | SBA archive parsing / native Aegis extraction and decryption lifecycle |

**Numbered IDs present: 158. Unique feature-contract units: 157.**
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


### P5.1 Task-engine reconciliation — execution orchestration / provider boundaries

A targeted direct decompile pass inspected the Reference task stack after F74. Reference has a task-manager/provider architecture in which concrete task providers extend the shared `defpackage.pw6` execution contract and are registered/executed by `defpackage.hy7`.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F75** | Task-manager provider registration / sequential execution lifecycle | `defpackage/hy7.java`, `defpackage/pw6.java`, `tasks/TaskService.java`, `tasks/ui/TaskActivity.java` | task manager + provider contract | Reference rejects overlapping runs, registers provider list, executes providers sequentially, drives provider state/progress, and routes terminal completion/cancellation. This is the shared execution spine behind the domain task providers below. |
| **P5-F76** | DataSync foreground-service runtime ledger / quota accounting | `tasks/fgs/DataSyncFgsRuntimeLedger$Entry.java`, `defpackage/kc2.java`, `TaskService.java` | FGS runtime ledger + TaskService lifecycle | Reference persists start/end time, service name, schedule/forced-run flags, run mode, outcome and note; computes rolling 24-hour usage; records quota-blocked starts; closes interrupted sessions as PROCESS_RESTARTED; and prunes retained entries. |
| **P5-F77** | Apps task execution engine | `defpackage/c40.java` (`AppsTask`) extending `pw6` | Apps task provider → app backup/restore engine | Concrete provider owns multi-app backup/restore execution and cancellation across lower-level upload/download/archive/install/metadata collaborators. This must not be collapsed into AppList/Detail UI. |
| **P5-F78** | Folders task execution engine | `defpackage/qp3.java` (`FoldersTask`) extending `pw6` | Folders task provider → folder backup/restore engine | Dedicated provider invokes folder backup/restore managers, upload/download paths, and cancellation. F47 defines folder artifact semantics; F78 is the execution owner that drives them. |
| **P5-F79** | Messages task execution engine | `defpackage/ff5.java` (`MessagesTask`) extending `pw6` | Messages task provider → SMS backup engine | Dedicated provider reads SMS data through ContentResolver, creates the backup artifact, applies compression/password handling, and optionally hands the artifact to cloud execution. |
| **P5-F80** | Calls task execution engine | `defpackage/z11.java` (`CallsTask`) extending `pw6` | Calls task provider → call-log backup engine | Dedicated provider reads call-log data, creates the artifact, selects compression/password settings, handles local/cloud paths, and reports failure through the task result boundary. |
| **P5-F81** | Wi-Fi task execution engine | `defpackage/tt8.java` (`WifiTask`) extending `pw6` | Wi-Fi task provider → Wi-Fi backup engine | Dedicated provider maps access/device/selection/storage failures, updates schedule last-run diagnostics, and performs the evidenced cloud-cache cleanup path. |
| **P5-F82** | Wallpapers task execution engine | `defpackage/wp8.java` (`WallsTask`) extending `pw6` | Wallpapers task provider → wallpaper backup engine | Dedicated provider invokes the wallpaper backup operation and post-run cleanup. This is the execution owner behind the Wallpapers UI family. |

#### Task-engine evidence notes

- The shared `pw6` contract is directly evidenced by concrete providers `c40`, `qp3`, `ff5`, `z11`, `tt8`, and `wp8`.
- Shared task lifecycle enum `gz7`: **WAITING / RUNNING / COMPLETE / CANCELLED / CANCEL_COMPLETE**.
- `hy7.b()` prevents overlapping task execution and records the selected provider list; `hy7.g()` executes registered providers sequentially and updates provider state/progress.
- `TaskService` wraps the execution spine with foreground-service handling, wake-lock acquisition, cancellation receiver registration, terminal-state reporting, error-summary persistence, and runtime-ledger completion.
- `PreconditionsActivity` remains a permission gate for SMS/call task entry; it is not promoted as a new engine feature because its capability semantics are already represented by the existing permission boundaries.
- `Packer` was inspected in the same pass. Its archive-info/SevenZip extraction/password-error classification is already represented by **F41**, so no duplicate feature ID is created.
- `MultiCompressor$Type` / metadata evidence alone does not establish an independent compression execution owner beyond F41, so it is not promoted separately.
- These are static Reference execution boundaries. No task was executed on-device and no provider/backend implementation was performed.


### P5.1 Persistence / configuration engine reconciliation

A targeted direct decompile pass then inspected local persistence and configuration data boundaries. Only independently consumed/persisted behavior is promoted.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F83** | Apps inventory cache persistence / refresh reconciliation | `database/MDatabase.java`, `MDatabase_Impl.java`, `defpackage/y35.java`, `defpackage/lm.java`, `defpackage/nm.java`, `defpackage/pm.java`, `defpackage/ji.java`; Room table `app_cached_data` | local Room persistence + AppCachedData repository | Reference persists package name, display name, installed/enabled/launchable state and locale; reads cached rows by package and refreshes them when PackageManager-derived state differs. This is a concrete inventory-cache lifecycle behind F04/F53, not merely a list UI detail. |
| **P5-F84** | SLog local persistence / retention / filtering | `database/MDatabase_Impl.java`, `defpackage/nv6.java`, `defpackage/kv6.java`, `defpackage/vr6.java`; `SMessage` table | local Room log DAO + SLog service | Reference writes structured log rows, exposes latest/after-time observation, clears all logs, deletes logs older than three days, caps retrieval at 10,000 rows, and filters selected diagnostic categories. F35 covers the diagnostic surface; F84 records its concrete persistence/retention engine. |
| **P5-F85** | App configuration validation / label-reference normalization | `appconfigs/data/ConfigSettings.java`, `ConfigsData.java`; `ApplyData.getLabelIds()`, `getLabels()`, `isValid()`, `ConfigSettings.isValid()`, `ConfigsData.validate()`, `removeCloudLocation()` | configuration model validation + label/cloud-location normalization | Reference validates config entries before use, filters stale label IDs, logs missing label references, rejects invalid ApplyData unless explicitly allowed, removes cloud locations through a normalized copy, and filters invalid ConfigSettings from the aggregate. This is a domain validation boundary beyond F09 editing UI and F62 task mapping. |

#### Persistence/config notes

- F83 is deliberately not a new Apps inventory family; it makes the already evidenced **local cache producer/consumer lifecycle** explicit for P5.2.
- F84 is deliberately not a duplicate of F35 diagnostics UI; it records the actual local structured-log persistence and retention policy.
- F85 does not replace F09 or F62. It is the validation/normalization boundary between editable configuration data and downstream consumers.
- The Reference Room database is statically evidenced; no runtime database migration/open/transaction verification was performed.
- Cloud credential serialization was inspected but not promoted here because the evidence maps cleanly into the existing F46 import/export/config-transfer and F51 provider-abstraction boundaries; no independent execution owner was required by this pass.

### P5.1 APK-share / APKS artifact reconciliation

A targeted pass on `apkshare` found an additional artifact boundary separate from APK import and restore/install.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F86** | APKS share-package creation / metadata + SHA-256 artifact manifest | `apkshare/a.java`, `ApkSharePackageMetadata`, `SaiApksMetadata`, `ApkImportActivity` | APK-share artifact builder | Reference builds APKS ZIP packages from one or more APK/split entries, validates archive entry names, computes SHA-256 per APK, records role/size/hash metadata, and emits `meta.sai_v2.json` and `meta.swiftbackup_v1.json`. This is distinct from consuming/importing APK/APKS files (F10) and restore/install execution (F40). |

F86 is static artifact evidence only; no archive was generated or installed at runtime.


### P5.1 Cloud credential / orphan execution reconciliation

A targeted direct decompile pass inspected the cloud persistence and orphan-cleanup state machines. These are promoted because they expose concrete persisted state or execution lifecycle beyond generic provider connectivity.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F87** | Cloud credential persistence / secure password-key merge / settings export | `cloud/protocols/a.java`, `CloudCredentials.java`, SharedPreferences keys `cloud_creds_*`, `cloud_creds_pswd_*`, `cloud_creds_pvt_key_*` | cloud credential repository + configuration export | Reference stores serialized cloud credentials per provider, separately persists encrypted/encoded password and private-key material, reconstructs a credential object by merging those persisted pieces, and exports credential settings through a document URI. This is a concrete credential lifecycle distinct from provider connection (F19/F20) and config transfer (F46). |
| **P5-F88** | Cloud orphan scan / result / deletion state machine | `cloud/orphans/a.java`, `CloudOrphanCleanerActivity`, orphan worker callbacks | orphan-cleanup engine | Reference exposes explicit **IDLE → SCANNING → RESULTS → DELETING → ERROR** states and coordinates scan/delete work, connected-provider metadata, result state, progress/operation completion, and cleanup errors. F21 covers orphan cleanup as a feature family; F88 makes its execution state machine explicit for P5.2. |

#### Cloud reconciliation notes

- F87 is not a claim that credential storage is secure by modern BaRe standards; it records the observed Reference persistence/merge/export mechanism only.
- F88 does not claim remote deletion success; only the statically evidenced cleanup state/operation boundary is recorded.
- Provider-specific SDK/network behavior remains behind F20/F51 and is not promoted per provider here unless an independent lifecycle is later proven.


### P5.1 Storage measurement / cached-usage reconciliation

A direct pass on the storage-switch model found a concrete measurement/cache lifecycle behind the storage UI.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F89** | Storage volume measurement / app-usage calculation / cached storage snapshot | `model/StorageInfoLocal.java`, `defpackage/wo7.java`, `defpackage/zn7.java`; SharedPreferences key `saved_storage_info_local` | storage measurement model + persisted snapshot | Reference computes total/used/free storage, used percentage, optional app-usage bytes/percentage, returns Loading/Error/Success states, and persists a serialized successful snapshot for later retrieval. It also derives filesystem/root-access conditions per volume. This is more concrete than F24's storage-selection UI contract. |

F89 is static evidence only; filesystem statistics and persisted snapshot behavior were not runtime-verified on BaRe.


### P5.1 Locale / contributor / notice data-engine reconciliation

A targeted direct pass inspected the smaller feature families that remained mostly represented by Activities. Only concrete persisted/derived behavior was promoted.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F90** | Locale selection persistence / resource-language switch | `locale/LocaleActivity.java`, `locale/LocaleChangedReceiver.java`, locale preference/state helpers | locale preference + configuration propagation | Reference persists selected locale and has a dedicated locale-change receiver that reacts to configuration changes. This is the state/propagation boundary behind F32 rather than merely the locale screen. |
| **P5-F91** | Contributor registration state / registration persistence | `contributor/ContributorRegistration.java`, `ContributorRegActivity.java`, contributor data/preferences | contributor registration state + persistence | Reference has a dedicated registration data object and persisted registration state consumed by the registration UI. This makes the contributor state lifecycle explicit beyond F33's screen surface. |
| **P5-F92** | Notice/license content loading / selection model | `notice/NoticeListActivity.java`, `NoticeViewActivity.java`, `settings/LicensesActivity.java`, notice/license resources/data | static notice/license content provider + selection state | Reference separates notice listing, selected notice rendering, and license content selection. The content model is static/read-only and is recorded here as a data boundary, not as a runtime backend feature. |

#### Small-family audit note

- F90–F92 are deliberately modest: no network or backend behavior is inferred.
- These units capture concrete state/data ownership where the original F32–F34 entries were primarily Activity-level.
- If later direct inspection shows no reusable consumer beyond the Activity itself, these may be collapsed during P5.2 rather than treated as separate implementation packages.


### P5.1 Restore/install privileged-engine reconciliation

A targeted direct decompile pass inspected the privileged execution surfaces behind app restore. Two independently evidenced boundaries were promoted; generic restore UI and existing artifact-pipeline coverage were not duplicated.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F93** | PackageInstaller session install / result verification engine | `apptasks/install/InstallerSourceProxy.java` | privileged APK/APKS installer bridge | Reference creates PackageInstaller sessions, streams one or more APK entries into the session, fsyncs them, commits through an IntentSender, waits up to 120 seconds for the result, maps timeout/status failures, and verifies initiating/installing package identity after success. This is a concrete execution boundary behind F40, not merely an Activity or restore-selection surface. |
| **P5-F94** | ~~Notification-policy backup / per-package restore engine~~ | ~~`apptasks/notifications/NotificationPolicyProxy.java`~~ | **MERGED INTO P5-F69** | Duplicate boundary discovered during P5.1 reconciliation. F69 already canonically owns the same `NotificationPolicyProxy` + `notificationPolicyXml` backup/restore lifecycle. F94 is retained only as an audit reconciliation marker and is **not counted as a unique feature-contract unit**. |

#### Restore/install reconciliation notes

- F93 records the actual PackageInstaller bridge; it does not claim that installation succeeds on BaRe or that privileged execution is currently available.
- F94 records the notification-policy bridge and its bounded XML transformation; it does not claim device-level restore success.
- Existing F40/F41/F42/F43 remain the higher-level restore/artifact/metadata/result families; F93/F94 expose concrete lower-level execution boundaries for later P5.2 ownership grouping.
- No build, install, privileged execution, or runtime verification was performed.


### P5.1 App cache backup policy reconciliation

**P5-F118 — App-cache inclusion policy / persistence / warning / change-detection projection**

Direct Reference evidence establishes a dedicated cache-inclusion policy lifecycle:

- Settings persists `backup_app_cache` from the dedicated cache preference.
- Enabling the option surfaces an explicit cache-backup warning.
- Settings import/restore paths also hydrate the same persisted policy from AppSettings when present.
- `defpackage/eq.java` consumes the persisted policy during app-data change detection: when enabled, cache paths remain eligible; when disabled, cache paths are filtered from the modified-file projection.
- A legacy `KEY_BACKUP_APP_CACHE` fallback is consulted before the current key.
- This is distinct from F39: F118 owns the **cache inclusion policy state and its propagation into change-detection**, while F39 owns broader app backup planning/change-detection/skip semantics.

Static-only; no cache backup was executed.

### P5.1 App-data compression-level settings reconciliation

**P5-F119 — App-data compression level selection / persistence / normalization / pipeline projection**

Direct Reference evidence establishes a dedicated compression-level settings contract:

- `compression_level_app_data` is edited through the Settings compression-level selector.
- `defpackage/px.java` persists the selected `xp1` level integer.
- `defpackage/z85.java` resolves the persisted integer back to the supported compression-level enum and falls back to `xp1.DEFAULT` when absent/invalid.
- The settings summary projects the resolved level into user-facing labels.
- The resolved setting is consumed by the app-data backup/compression pipeline rather than being limited to UI state.
- This is distinct from F41: F119 owns the **selection/persistence/default-resolution contract**; F41 owns the backup artifact compression/encryption pipeline itself.

Static-only; no compression operation was executed.


### P5.1 App backup-limit configuration lifecycle reconciliation

**P5-F117 — Per-app-part backup-limit configuration persistence / validation / serialization**

Direct Reference evidence establishes a configuration lifecycle separate from the downstream enforcement contract:

- `settings/appbackuplimits/AppBackupLimitsActivity` edits a Parcelable list of `AppBackupLimitItem` values for DATA, EXTDATA, MEDIA and EXPANSION.
- Each item has independent local/cloud MB limits and exposes byte conversion plus `hasLimits()` / `isValid()` normalization semantics.
- `defpackage/ok.java` loads each part's persisted value from SharedPreferences, deserializes the `AppBackupLimitItem`, returns empty/default items when absent, and aggregates all four app parts.
- Save logic normalizes non-positive limits to null; valid items with limits are serialized and stored under the app-part key; invalid/no-limit items remove the persisted key.
- Settings summary reads the persisted limit items and displays only entries that currently have limits.
- This is distinct from F63 **per-part backup-limit enforcement**: F117 owns the editable configuration/state persistence and normalization lifecycle; F63 covers application of those limits during backup planning/execution.

Static-only; no persisted settings were changed.


### P5.1 App-list swipe-action settings reconciliation

**P5-F116 — App-list left/right swipe action configuration / persistence / reset**

Direct Reference evidence establishes a dedicated settings contract:

- `settings/AppSwipeActionsActivity.java` owns the dedicated swipe-action settings surface.
- The settings flow persists separate left/right action selections under `app_list_left_swipe_actions` and `app_list_right_swipe_actions`.
- The reset action explicitly removes both persisted keys and refreshes the settings fragment.
- On activity destruction, the settings state is handed to `AppSettings.Companion.withSavedSettings()` through the existing settings persistence boundary.
- `defpackage/ho6.java` reads the two persisted keys for the corresponding left/right swipe projections.
- This is distinct from generic F23 Settings: the evidence shows a dedicated configuration owner, two named persisted state keys, explicit reset semantics, and downstream app-list action projection.

Static-only; no UI interaction or persisted-state mutation was executed.


### P5.1 Multiple-backup strategy contract reconciliation

**P5-F115 — MultipleBackupStrategy persistence / legacy migration / normalization / representation**

Direct Reference evidence establishes a standalone strategy contract beyond the generic app-backup planning units:

- `settings/MultipleBackupStrategy.java` defines the persisted strategy model with type, maximum-backup count, and conditional-backup condition fields, plus Parcelable transport.
- Strategy representations are normalized through `settings/f.java` into Single Backup, Dated Backups, or Conditional Backups; invalid/missing integer values fall back to defaults.
- `settings/b.java` owns default/legacy strategy resolution, reads the persisted `apps_multiple_backups_strategy` value, applies entitlement handling, and migrates the legacy `app_backup_archiving` preference into the legacy archive strategy when needed.
- Backup-count normalization is bounded to the Reference-supported range (minimum 2, maximum 10).
- `settings/k.java` maps the selected strategy back into the settings-state representation used by the Multiple Backups settings flow.
- `ConfigSettings` carries `MultipleBackupStrategy` as part of app configuration state, while task input objects carry the resolved strategy into backup preparation.
- This is distinct from F39 change-detection/skip semantics: F115 owns the **strategy state model, persistence/migration, normalization, and UI representation contract**, not the downstream decision to execute a backup.

Static-only; no settings migration or backup execution was run.


### P5.1 Scheduled domain-subtype execution reconciliation

A direct decompile trace of `ScheduleService` and the remaining `ScheduleItem` subtypes found five additional schedule-specific task-preparation boundaries. These are parallel to F107–F109 and are not merely generic F74 handoff.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F110** | Scheduled Messages selection / permission-data availability / task preparation | `ScheduleItem$Messages.smali`, `ScheduleService.java`, `qv1`, `ff5` | schedule engine → Messages task preparation | Reference collects enabled Messages schedule items, verifies the Messages capability/permission gate, loads available message data, explicitly skips schedules when no messages are available, and constructs `MessagesTask` providers with each schedule's item identity and sync/location parameters. This is distinct from F72 retention and F79 generic Messages task execution. |
| **P5-F111** | Scheduled Calls selection / call-log availability / task preparation | `ScheduleItem$CallLogs.smali`, `ScheduleService.java`, `d01`, `z11` | schedule engine → Calls task preparation | Reference collects CallLogs schedule items, checks call-log access, enumerates available call-log backups/data, explicitly skips when no call logs exist, and constructs `CallsTask` providers with schedule identity and transfer settings. This is distinct from F99 retention and F80 generic Calls task execution. |
| **P5-F112** | Scheduled Wallpapers selection / valid-wallpaper discovery / task preparation | `ScheduleItem$Wallpapers.smali`, `ScheduleService.java`, `sv7/tv7`, `wp8` | schedule engine → Wallpapers task preparation | Reference resolves the currently valid system wallpaper set, skips the scheduled wallpaper task when no valid wallpapers are available, and constructs the Wallpapers provider with schedule identity and selected transfer settings. This is distinct from F82 generic Wallpapers task execution. |
| **P5-F113** | Scheduled Wi-Fi selection / device-read prerequisite / task preparation | `ScheduleItem$Wifi.smali`, `ScheduleService.java`, `us8/hs8/gs8`, `tt8` | schedule engine → Wi-Fi task preparation | Reference reads saved Wi-Fi networks through the device adapter, handles explicit device-read failure/access-unavailable states and records corresponding `ScheduleLastRunDetails`, skips when no saved networks exist, and constructs `WifiTask` providers for valid schedule items. This is distinct from F49 Wi-Fi capability policy and F81 generic Wi-Fi task execution. |
| **P5-F114** | Scheduled Folders selection / backup-strategy projection / task preparation | `ScheduleItem$Folders.smali`, `ScheduleService.java`, `FolderBackupStrategy`, `qp3` | schedule engine → Folders task preparation | Reference persists folder schedule selection plus `backupAllFolders`, folder-item selection, backup strategy, locations, sync option and repeat/enabled state, then projects those values into `FoldersTask` providers. This is distinct from F47 folder artifact semantics and F78 generic Folders task execution. |

#### Scheduled domain-subtype notes

- F110–F114 are **schedule-specific preparation contracts**, not replacements for F74.
- F74 remains the shared scheduler eligibility/handoff spine.
- F79–F82 remain domain task execution owners.
- Static evidence only; no schedule was triggered or executed.


### P5.1 Scheduled Apps configuration reconciliation

A targeted direct decompile pass traced the schedule-specific `ScheduleItem.AppConfig` branch separately from generic configuration validation and task mapping.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F108** | Scheduled Apps custom-configuration selection / cloud fallback / task preparation / last-run lifecycle | `home/schedule/data/ScheduleItem$AppConfig.smali`, `home/schedule/ScheduleService.java`, `ConfigSettings` consumers | schedule engine → ConfigSettings/task preparation boundary | Reference schedules can carry a dedicated AppConfig subtype. `ScheduleService` resolves only valid settings, checks network/cloud availability, removes cloud destinations when unavailable, skips settings with no remaining destination, records schedule last-run outcomes, and prepares Apps task inputs from the surviving configuration set. This is distinct from F85's config validation and F62's generic config-to-task mapping because the schedule branch adds schedule-specific eligibility, destination fallback, and last-run semantics. |

### P5.1 Scheduled Apps label-selection reconciliation

A targeted direct decompile pass also traced the `ScheduleItem.AppsLabels` branch independently from the general Labels lifecycle.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F109** | Scheduled Apps label selection / installed-app projection / part filtering / task preparation | `home/schedule/data/ScheduleItem$AppsLabels.smali`, `home/schedule/ScheduleService.java`, `LabelParams`, app model `ji` | schedule engine → label predicate → Apps task preparation | Reference validates label IDs, separates label matching semantics, scans installed apps, matches label associations, de-duplicates packages, orders the selected projection, filters backup parts by capability, applies sync/multiple-backup settings, prepares Apps tasks, and records schedule last-run state. This is distinct from F58 label management and F107 Quick Actions because the schedule contract owns label-based app selection and task projection. |

#### Scheduled Apps subtype notes

- F108 = schedule-specific **custom configuration** path.
- F109 = schedule-specific **label selection** path.
- F107 = schedule-specific **Quick Actions** path.
- F74 remains the generic scheduler eligibility/handoff spine; these units are concrete subtype-specific task-preparation contracts.
- Static evidence only; no schedule was triggered or executed.


### P5.1 Scheduled Apps Quick Actions execution reconciliation

A targeted direct decompile pass traced the schedule-specific Apps Quick Actions path from persisted schedule data into concrete task preparation.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F107** | Scheduled Apps Quick Actions selection / task preparation / last-run lifecycle | `home/schedule/data/ScheduleItem$AppsQuickActions.smali`, `home/schedule/ScheduleService.smali`, `f47.smali` | schedule engine → Apps task preparation boundary | Reference persists a dedicated `AppsQuickActions` schedule subtype carrying quick-action IDs, allowed-app selection, app parts, backup locations, sync option, repeat days, and enabled state. `ScheduleService` consumes this subtype, validates sync prerequisites, resolves quick-action IDs and allowed-app predicates, prepares the Apps task with the selected parts/locations and `MultipleBackupStrategy`, and records schedule last-run states. This is distinct from F06's interactive quick-action surface, F62's custom-configuration-to-task mapping, and F74's generic scheduler eligibility/handoff. |

#### Scheduled Apps Quick Actions note

- F107 is the **schedule-specific execution contract**; F06 remains interactive Apps Quick Actions and F74 remains the shared scheduler/eligibility spine.
- The evidence is static; no scheduled task was triggered or executed at runtime.


### P5.1 Special-data payload codec reconciliation

A targeted direct decompile pass inspected the app special-data payload format used for permission/SSAID/notification-related metadata. The model is more than a passive DTO: it owns versioning, user binding, bounded read, compression/encoding, atomic file replacement, and read/write error handling.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F95** | App special-data payload serialization / compression / user-binding codec | `model/app/AppSpecialDataPayload.java` | special-data payload codec | Reference serializes special-data fields, encodes them into a versioned payload, compresses through native Zstd, binds the payload to the active user identity, rejects oversized/unsupported payloads, decompresses/deserializes on read, and writes through a temporary file followed by replacement. This is a concrete data-format lifecycle behind special-data restore, distinct from the notification-policy execution bridge F94. |

#### Special-data codec note

- F95 records the observed Reference format/codec boundary only; it does not preserve Firebase as the BaRe target backend contract.
- The Reference implementation checks its own Reference user identity while decoding; target identity/backend adaptation remains downstream.
- No runtime decode/write/restore test was performed.


### P5.1 Cloud login outcome reconciliation

A targeted direct decompile pass inspected the cloud login result contract and its consumers. The Reference does not collapse login into a boolean; it carries distinct terminal/error classes used by the connection flow.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F96** | Cloud login outcome taxonomy / connection-result contract | `cloud/protocols/CloudOperationsImpl$LoginResult.java` and consumers including `jh1`, `v52`, `l62`, `rv5` | cloud connection engine → connection UI/state | Reference explicitly distinguishes **Success**, **InvalidCredentials**, **TempConnectionError**, **UnknownHostKey**, **UntrustedCertificate**, **UnknownError**, and generic **Failed**, with error payloads and host-key properties where applicable. This is a concrete result contract behind F19/F20 and prevents downstream implementation from collapsing actionable connection outcomes into one boolean. |

#### Cloud login note

- F96 is a result/state contract, not a claim of successful network connectivity on BaRe.
- Provider-specific network implementations remain under F20/F51.
- No runtime connection test was performed.


### P5.1 Provider-specific cloud session reconciliation

A targeted direct decompile pass found two provider-specific authentication/session lifecycles that are independently consumed and therefore remain explicit. These are not generic per-provider network IDs: each has a concrete state transition that changes the connection contract.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F97** | MEGA multi-factor-auth-required login outcome / session gate | `protocols/mega/MegaLoginResult.java`, `defpackage/gt7.java`, consumers `sb5` / `x95` | MEGA authentication adapter → login/session state | Reference maps MEGA-specific error codes to an explicit `MultiFactorAuthRequired` terminal result, separate from generic failure, and the session accessor refuses to continue without a successful login/session. This is a provider-specific authentication gate with an independently consumed lifecycle. |
| **P5-F98** | Filen restorable encrypted-session state / session rehydration | `protocols/filen/FilenSession.java`, `FilenCredentials.java`, `defpackage/ai5.java`, `sb3` | Filen session persistence + crypto-state rehydration | Reference validates persisted session identity/auth version/crypto material, exposes `hasRestorableCryptoState()`, rehydrates the session before fresh login when valid, and optionally persists the refreshed session. This is a concrete session continuity/crypto-state lifecycle, not merely a credential DTO. |

#### Provider-specific reconciliation note

- F97/F98 are promoted only because each has an independent consumer and state transition.
- Other provider-specific credential/session classes remain under F20/F51/F87 unless a comparable lifecycle is directly evidenced.
- No provider network or authentication runtime was executed.


### P5.1 Calls retention / backup-lifecycle reconciliation

A targeted direct decompile pass on the Calls backup helper found a concrete retention lifecycle that is independently configurable and operates across both local and cloud backup inventories.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F99** | Calls backup retention / local-cloud cleanup policy | `defpackage/d01.java`, related `max_call_backups` preference consumers | calls backup helper + local/cloud backup metadata boundary | Reference reads the persisted `max_call_backups` limit, enumerates local or cloud call-log backups, sorts/limits the retained set, deletes older backups through the appropriate local/cloud path, and reports deletion failures. This is a concrete retention lifecycle distinct from Calls backup/restore UI (F15/F16) and Calls task execution (F80). |

#### Calls retention note

- F99 is promoted because the retention policy has its own persisted setting, local/cloud enumeration, deletion path, and error/reporting lifecycle.
- This does not duplicate F72: F72 owns the analogous Messages retention lifecycle; F99 is the Calls-specific counterpart directly evidenced in Reference.
- No backup deletion, cloud operation, or runtime execution was performed.


### P5.1 Settings cloud backup / restore reconciliation

A targeted direct decompile pass inspected the Reference `SettingsBackupHelper` because settings screens and first-run restore alone did not expose the complete persistence lifecycle.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F100** | Settings cloud backup / restore and local-settings application | `defpackage/ha7.java`, `SettingsBackupHelper$SettingsData`, consumers across Settings/Intro/restore flows | settings snapshot mapper + cloud settings repository boundary | Reference serializes current app settings into an `AppSettings` snapshot, writes it to the cloud settings document, reads the saved snapshot during restore, and applies a defined set of settings back into local preferences/models (backup strategy, restore permissions/special permissions, cache/SSAID flags, APK downgrade policy, notification sounds, language, cloud setup, and related settings). This is an execution/data lifecycle beyond the Settings UI surface (F23) and narrower than generic import/export/config transfer (F46). |

#### Settings cloud backup note

- F100 records the Reference cloud-settings snapshot/apply lifecycle only.
- Reference Firebase access in this evidence remains Reference-only; BaRe's target backend is Supabase and its runtime execution remains downstream.
- The first-run restore entry already belongs to the frozen P4 C10 contract; F100 captures the reusable settings snapshot/apply engine consumed by multiple settings/restore call-sites.
- No cloud read/write or settings restore was executed at runtime.


### P5.1 Folder restore strategy policy reconciliation

A targeted direct decompile pass traced `FolderRestoreStrategy` from its persisted preference state into the folder restore engine.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F101** | Folder restore strategy policy / persisted mode | `settings/FolderRestoreStrategy.java`, consumers `ln3`, `wj3`, `pn3`, `qp3` | folder restore policy + restore engine | Reference persists three explicit modes — **MISSING_ONLY**, **OVERWRITE**, and **FULL_RESTORE** — with MISSING_ONLY as the default, exposes the selected mode to folder restore orchestration, and branches restore behavior based on the selected policy (including full-restore deletion handling). This is a domain policy boundary beyond folder UI/batch surfaces (F11/F12) and the generic folder task executor (F78). |

#### Folder restore strategy note

- F101 records the persisted policy and its consumption by the restore engine; it is not merely a dialog/enum UI detail.
- Manifest/incremental-chain behavior remains under F47, while actual task execution remains under F78.
- No folder restore was executed and no filesystem mutation was performed.


### P5.1 Cloud diagnostics transfer-test engine reconciliation

A direct decompile pass on `cloud/diagnostics` found a concrete provider diagnostic execution boundary beyond the Cloud Diagnostics Activity/UI.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F102** | Cloud diagnostics transfer-test suite / result-state engine | `cloud/diagnostics/CloudDiagnosticsActivity.java`, `defpackage/hf1.java`, `we1.java`, `te1.java`, `ge1.java`, related diagnostic event/state classes | cloud diagnostics orchestrator + provider transfer-test boundary | Reference builds a selectable diagnostic test suite and executes concrete cloud checks including upload/download preparation, round-trip transfer, multithreaded download, provider transfer mode, file-size/hash validation, thumbnail/download validation, cache-file cleanup, and progress/error reporting. Test outcomes are explicitly represented as **NOT_RUN, RUNNING, PASSED, FAILED, ACTION_REQUIRED, SKIPPED**, with a generated summary/report path. This is a concrete execution family distinct from generic cloud provider operations (F20/F51) and cloud cleanup (F21/F88). |

#### Cloud diagnostics note

- F102 records the static diagnostic test/result boundary only; no provider transfer was executed.
- Existing F35 remains the broader diagnostics/logging feature surface; F102 exposes the concrete cloud transfer-test engine behind its cloud-diagnostics surface.
- Provider-specific network implementation remains downstream under F20/F51.
- No build/install/runtime/provider/backend execution was performed.


### P5.1 Cloud transfer concurrency policy reconciliation

A targeted direct decompile pass traced the persisted `parallel_cloud_transfers` setting into concrete Apps and Folders cloud upload/download paths.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F103** | Cloud transfer concurrency policy / parallel transfer execution mode | `defpackage/sj1.java`, `no5.java`, consumers `c40.java`, `qp3.java`, `ek3.java`, `fo8.java`, `jo8.java` | cloud transfer scheduler/concurrency boundary | Reference persists a boolean `parallel_cloud_transfers` (default false) and feeds it into the transfer dispatcher for Apps upload/download and Folders upload/download paths. The policy changes whether transfer work is dispatched concurrently or serially and is also consulted by transfer-result aggregation helpers. This is a cross-feature execution policy beyond generic provider operations (F20/F51) and the individual task providers (F77/F78). |

#### Cloud transfer concurrency note

- F103 records the observed execution-policy boundary only; it does not prescribe a BaRe concurrency implementation or claim runtime performance.
- The setting is consumed by multiple independent transfer paths, so it is not merely a Settings UI field.
- No cloud transfer or concurrency test was executed.


### P5.1 Special-data payload codec reconciliation

A targeted direct decompile pass separated the shared special-data **container/codec lifecycle** from the individual semantic payload types already represented by F65–F69.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F106** | AppSpecialDataPayload versioned serialization / compression / encryption / atomic persistence lifecycle | `model/app/AppSpecialDataPayload.java`, corresponding smali, special-data producer/consumer chain | special-data container codec + persistence boundary | Reference defines a versioned payload format (`v1`), encrypted-string separator semantics, user binding, bounded read/size handling, compression/decompression, payload validation, and atomic replacement write behavior. F65–F69 describe individual state payloads; F106 is the shared container/codec lifecycle that carries them. |

#### Special-data codec note

- F106 is intentionally **not** another permission/notification feature.
- F65–F69 remain the semantic state contracts carried inside the payload.
- F106 records serialization/container behavior only; no payload was generated, restored, or executed at runtime.


### P5.1 Protected-backup deletion enforcement reconciliation

A targeted direct decompile pass separated the protected-backup **policy** already represented by F52 from the concrete deletion/revalidation enforcement path.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F105** | Protected-backup deletion guard / revalidation / protected-count result | `defpackage/fh2.java`, `eh2.java`, `defpackage/uh1.java`, `defpackage/mn6.java`, `defpackage/bi1.java`, `defpackage/oj.java`, `defpackage/v20.java` | backup-delete orchestration + local/cloud metadata revalidation | Reference has an explicit delete flow with a “keep protected backups” control, a confirmation path for deleting protected backups, protected-file/count results, and local/cloud delete logic that re-checks `isProtectedBackup()` before deletion. This is an enforcement/result boundary beyond F52's protection/retention policy description. |

#### Protected-backup enforcement note

- F105 does not replace F52: **F52 = policy/metadata semantics; F105 = deletion enforcement + revalidation/result boundary**.
- The evidence includes both local and cloud backup paths.
- No delete operation was executed at runtime.


### P5.1 MEGA saved-session rehydration reconciliation

A targeted direct decompile pass traced the persisted MEGA session path independently from the F97 MFA-required outcome contract.

| ID | Feature unit | Reference evidence | Owner / boundary | Why explicit |
|---|---|---|---|---|
| **P5-F104** | MEGA saved-session persistence / validated session rehydration | `cloud/protocols/mega/lite/SwiftMegaSavedSession.java`, `defpackage/gt7.java`, `defpackage/ti8.java` | MEGA session persistence + authentication adapter | Reference persists `email`, `sessionId`, `masterKey`, and `userHandle` in the `mega_swift_session` preference, deserializes the saved session, validates it against the current email and required session/crypto fields, decodes the validated session material, and attempts session reuse before falling back to fresh authentication. This is a concrete continuity/rehydration lifecycle distinct from F97's MFA-required login outcome. |

#### MEGA saved-session note

- F104 records the persisted-session and rehydration contract only; it does not claim successful MEGA authentication on BaRe.
- F97 remains the separate MFA-required outcome/session gate.
- No provider authentication or session reuse was executed at runtime.


### P5.1 App configuration export/import payload reconciliation

**P5-F121 — App configuration export/import serialization / validation / replacement lifecycle**

Direct Reference evidence establishes a concrete configuration-transfer contract:

- App configuration export is represented as a dedicated serialized configuration payload rather than a direct SharedPreferences copy.
- The payload carries app-specific configuration state used by the App Configuration flow, including the settings required to reconstruct a `ConfigSettings` object.
- Import validates the serialized configuration before replacing/applying the target app configuration; malformed/incompatible input is rejected rather than partially applied.
- The transfer path is distinct from F46's broader import/export surface: F121 records the **App Configuration payload format, validation, and replacement boundary**, while F46 remains the cross-feature configuration-transfer orchestration.
- The same configuration payload can feed the Apps task input mapping already represented by F62 after successful application.

Static-only; no configuration was exported/imported or applied.

### P5.1 Manage-space cleanup / reclaim boundary reconciliation

**P5-F125 — Manage-space inventory projection / reclaim-action routing / backup-artifact cleanup boundary**

Direct Reference evidence establishes that Manage Space is more than a navigation screen:

- `ManageSpaceActivity` builds a storage/backup inventory projection from local backup artifacts and their metadata.
- The surface distinguishes reclaimable backup-artifact categories and routes delete/cleanup actions through the existing backup metadata/delete orchestration rather than directly mutating arbitrary files.
- Protected-backup state is respected by the cleanup path, connecting Manage Space to the same revalidation boundary represented by F105.
- Empty inventory and cleanup-result states are represented independently from the storage-measurement Loading/Error/Success contract of F89.
- This is distinct from F36's Manage Space feature surface and F89's storage measurement: F125 owns the **inventory-to-reclaim action boundary and cleanup routing**, while F105 remains the protected-delete enforcement owner.

Static-only; no cleanup or file deletion was executed.


### P5.1 Apps search index / result-provider reconciliation

**P5-F124 — Apps search query normalization / index-source projection / result-provider contract**

Direct Reference evidence establishes a search data boundary beyond the Apps search UI:

- Apps search input is normalized before query execution rather than being passed directly from the Activity text field.
- The search layer projects installed-app/package records into a dedicated searchable source and filters the source using package/app-label metadata.
- Result projection is owned by the search provider/model boundary and feeds the Apps result surface independently of the Activity's query-entry state.
- Empty-query/default state and no-result state are represented separately from an execution failure.
- This is distinct from F55: F55 owns the **Apps-list search UI/query state**, while F124 owns the **search-source/index projection and result-provider contract**.
- Home search F03 remains a separate feature because its search surface and source/result scope are not the Apps-list provider.

Static-only; no search index was built or queried at runtime.


### P5.1 Blacklist predicate / backup-planning integration reconciliation

**P5-F123 — Blacklist persistence / package predicate / backup-selection exclusion**

Direct Reference evidence establishes a consumer contract beyond the Blacklist UI/model:

- `BlacklistData` persists the blacklisted package set and exposes package-membership lookup used outside the blacklist screen.
- Apps inventory/task-selection paths consult blacklist membership when projecting eligible applications for backup-related operations.
- The predicate is package-identity based, so reinstall/label/list presentation does not require duplicating blacklist state in each consumer.
- Empty/absent blacklist state resolves to the non-excluding/default predicate.
- This is distinct from F30's Blacklist management surface: F123 records the **reusable exclusion predicate and its integration into app selection/backup planning**, not the CRUD UI itself.

Static-only; no blacklist mutation or backup task was executed.


### P5.1 Schedule aggregate persistence / ordering / battery-policy reconciliation

**P5-F122 — ScheduleData aggregate persistence / normalization / ordering / battery requirement state**

Direct Reference evidence establishes a schedule aggregate contract beyond the generic scheduling feature:

- `ScheduleData` is the aggregate model holding the schedule start hour/minute, battery requirement mode, minimum battery percentage, all eight schedule subtype lists, and explicit `scheduleOrderIds`.
- Battery policy has explicit modes **NONE**, **CHARGING**, and **MINIMUM_PERCENT**; percentage values are normalized to the supported 10–100 range with a default of 50.
- `c47`/`b47` load and persist `ScheduleData` through the Reference preferences/Gson helper, with an empty/default aggregate when no saved data exists.
- `ScheduleData.withNormalizedScheduleOrder()`, `withScheduleAppended()`, `withScheduleDeleted()`, and `withScheduleMoved()` own order-list reconciliation and schedule mutation semantics.
- The persistence writer normalizes schedule ordering before storing the aggregate.
- `ScheduleService` consumes the aggregate battery policy as an execution eligibility gate before preparing scheduled work.
- This is distinct from F22's scheduling feature surface and F50's last-run diagnostics: F122 owns the **persisted aggregate state, ordering model, normalization, and battery-policy contract**.

Static-only; no schedule state was mutated or executed.


### P5.1 Restore-special-permission policy configuration reconciliation

**P5-F120 — Restore-special-permission policy / root capability gating / ConfigSettings override**

Direct Reference evidence establishes a dedicated restore policy contract:

- `settings/RestoreSpecialDataDetailsActivity` exposes a dedicated switch for `restore_special_permissions`.
- In standalone Settings mode, the switch reads/writes the persisted `restore_special_permissions` preference with default `true`.
- The switch is disabled when the required root capability is unavailable and presents a root-access-needed state.
- When opened from an App `ConfigSettings` context, the activity reads the config-local value instead of global preference state and returns an updated `extra_config_settings` result; enabling the setting clears the nullable override so effective policy can fall back to config/default semantics.
- Settings navigation routes the `restore_special_permissions` preference to this dedicated activity.
- This is distinct from F65–F69: those units cover special-data/permission payload semantics; F120 owns the **user-selectable restore policy, persistence, capability gating, and ConfigSettings override boundary**.

Static-only; no root capability check or restore operation was executed.


### P5.1 Folder compression policy reconciliation — 2026-10-02

**P5-F126 — Folder-data compression level selection / persistence / normalization / task projection**

Direct Reference decompile evidence establishes a folder-specific compression contract that is independent from the existing app-data compression unit F119:

- `settings` folder settings expose the persisted `compression_level_folders` preference.
- `zn3` reads the preference and projects the resolved `xp1` compression level into the folder settings summary.
- `v10` persists the selected compression level as the `xp1` numeric level.
- `g67.s()` resolves the stored integer against the supported `xp1` values and falls back to `xp1.DEFAULT` when the stored value is absent/invalid.
- `ScheduleService`/`l30` reads the same folder compression policy while constructing folder backup task inputs.
- `bo3` carries the resolved `compressionLevel` as an explicit field of each folder backup work item, so the setting crosses from persisted configuration into the folder backup execution contract.
- This is distinct from **F119**, which owns the app-data compression-level setting and pipeline projection. It is also not merely F41: F41 owns the generic artifact format/compression/encryption boundary, while F126 owns the **folder-specific persisted policy and its task-input projection**.

Static-only; no folder backup, compression operation, build/install/runtime/provider/backend/privileged execution was performed.


### P5.1 Folder metadata reconciliation / cloud publication lifecycle

**P5-F129 — Folder metadata reconstruction / local persistence / cloud synchronization lifecycle**

Direct Reference decompile evidence establishes a folder-specific metadata lifecycle beyond the generic cross-feature metadata boundary:

- FolderMetadata owns the persisted folder identity plus base-backup and incremental-backup metadata, including artifact links, sizes, original sizes, manifest links/sizes, and timestamps.
- defpackage.a loads the local metadata file when present; when it is absent/invalid, it reconstructs metadata from the currently existing base/incremental folder backup artifacts and persists the reconstructed representation.
- FolderMetadata.refreshLocalMetadataFile(kj3) re-reads the current filesystem backup set, rebuilds the base/incremental metadata projection from existing artifacts/manifests, compares it with the persisted metadata, and writes the replacement metadata when the projection changed.
- FolderMetadata.writeToFile(q63) is the concrete local persistence boundary for this folder metadata representation.
- FolderMetadata.writeToFirebaseNode() validates folder identity, cloud links, base backup, and incremental backup metadata before publishing the folder metadata node; removeFromFirebaseNode() owns the corresponding cloud-node deletion path.
- ik3 consumes this boundary when a FolderItem changes, updating both the local metadata representation and the corresponding cloud metadata representation.
- This is distinct from F42: F42 is the broader local/cloud metadata lifecycle policy across backup domains, while F129 records the folder-specific reconstruction, artifact-to-metadata reconciliation, persistence, and cloud-node publication/deletion contract.

Static-only; no metadata write, cloud metadata mutation, filesystem scan, provider/backend execution, or runtime verification was performed.

### P5.1 Latest folder manifest selection / cloud-cache reconciliation

**P5-F130 — Latest folder manifest selection / cloud-download cache lifecycle**

Direct Reference decompile evidence establishes a dedicated manifest-cache boundary used by folder restore/download flows:

- defpackage/sk3.a(FolderMetadata) selects the manifest belonging to the latest valid folder backup: the base manifest when no incremental backups exist, otherwise the newest valid incremental manifest by backup date.
- The selected manifest's cloud link and expected size are validated before transfer.
- The local cache is keyed by folder ID as <folderId>.json; when the cached file already exists with the expected size, the cache is reused without another download.
- If the cache is stale/missing, sk3 creates a cloud-download work item targeting the cache file and accepts the cache only after the transfer completes with a valid local file.
- ek3 and pn3 consume this helper when a current cloud manifest is needed, and the upload path refreshes the same cache after metadata/manifest upload.
- This is distinct from F47, which owns manifest/incremental chain semantics and restore-chain validation, and from F127/F128, which own folder backup/restore result algebra. F130 owns the latest-manifest selection plus local cloud-manifest cache/download boundary.

Static-only; no cloud download, cache mutation, restore operation, provider/backend execution, or runtime verification was performed.
### P5.1 TeraBox token credential lifecycle reconciliation

**P5-F131 — TeraBox token credential persistence / validity / OAuth refresh lifecycle**

Direct Reference decompile evidence establishes a provider-specific token lifecycle beyond generic cloud credentials/login:

- `TeraBoxTokenCredentials` carries access token, refresh token, API/upload domains, user key (`uk`), display identity, expiry time, and CloudServiceId.
- `defpackage/m08` persists and reloads the token credential object through the saved-credentials preference boundary.
- `TeraBoxTokenCredentials.isValid()` and `needsAccessTokenRefresh(...)` provide explicit validity/expiry-skew policy; the Reference uses a 5-minute default refresh skew.
- `defpackage/h08` exchanges an OAuth authorization code for token credentials and reconstructs the credential object from the provider response.
- The same provider adapter detects an expiring saved access token and performs an OAuth refresh-token request before continuing with the refreshed credential state.
- `k08` consumes the saved credential, invokes the provider authentication/refresh adapter, and persists the resulting credential state for subsequent use.
- This is distinct from F87 generic cloud credential persistence, F96 generic login-result taxonomy, and F20 provider operations: F131 owns the **TeraBox token/session continuity, validity, expiry, authorization-code exchange, refresh-token, and persisted credential lifecycle**.

Static-only; no TeraBox authentication, token refresh, network/provider execution, build/install/runtime/backend execution was performed.
### P5.1 TeraBox browser OAuth sign-in handoff reconciliation

**P5-F132 — TeraBox browser OAuth sign-in handoff / deep-link callback / sign-in result lifecycle**

Direct Reference decompile evidence establishes a sign-in integration boundary separate from F131 token lifecycle:

- `TeraBoxSignInActivity` checks that TeraBox app credentials are configured and that a browser/intent handler is available before starting the external TeraBox login URL.
- The Activity builds the TeraBox outside-login URL with the configured client identifier and launches it through an Android VIEW intent.
- `onNewIntent()` receives the callback/deep-link intent and resets the sign-in state before handing the returned URI to the sign-in coordinator.
- The sign-in coordinator parses the callback authorization code and passes it to the TeraBox OAuth token-exchange path.
- UI state explicitly exposes handler/browser errors, missing TeraBox API credentials, callback processing errors, and sign-in completion/error outcomes.
- The completion path updates the surrounding cloud-connect flow after the callback rather than treating browser launch as successful authentication.
- This is distinct from **F131**, which owns token credential construction, persistence, validity, expiry, and refresh. F132 owns the **external-browser OAuth handoff, callback/deep-link intake, authorization-code routing, and sign-in UI/result lifecycle**.

Static-only; no browser launch, callback delivery, TeraBox authentication, network/provider execution, build/install/runtime/backend execution was performed.
### P5.1 TeraBox chunked-upload protocol reconciliation

**P5-F133 — TeraBox chunked upload session / per-part MD5 / sequencing / finalization contract**

Direct Reference decompile evidence establishes a provider-specific multipart upload contract separate from authentication:

- `o08` models an upload chunk with explicit `index`, `start`, and `size` fields.
- The upload path reads each chunk and computes an MD5 digest before transmission; unexpected EOF while reading a chunk is surfaced as an explicit failure.
- The provider response supplies an `uploadid` that becomes the upload-session identifier for subsequent part requests.
- `p08` models each part result with `md5`, `uploadId`, and `partSeq`, preserving provider acknowledgement state.
- Each returned part MD5 is compared with the locally calculated digest; a mismatch raises an explicit `IOException` rather than silently accepting the part.
- Part sequence metadata is retained while the upload session is continued/finalized, so the upload is not merely a generic byte-stream transfer.
- This is distinct from F20 generic provider operations and F41 generic artifact format/compression/encryption: F133 owns the **TeraBox multipart upload session, chunk boundaries, per-part integrity verification, sequence/result state, and finalization protocol**.

Static-only; no TeraBox upload, network/provider execution, file mutation, build/install/runtime/backend execution was performed.
### Task-engine reconciliation result

- P5.1 explicit feature-contract units after this pass: **127 unique units**.
- F75–F76 expose the shared task orchestration/governance spine.
- F77–F82 expose six concrete task-provider execution boundaries.
- F83–F85 expose persistence/configuration engine boundaries.
- F86 exposes the APKS share-package artifact builder/metadata manifest boundary.
- F87–F88 expose cloud credential persistence and orphan-cleanup execution state boundaries.
- F89 exposes storage measurement and cached-usage snapshot behavior.
- F90–F92 expose locale, contributor, and notice/license data/state boundaries.
- F93 exposes the privileged PackageInstaller execution boundary.
- F94 is merged into existing F69 and is not counted separately.
- F95 exposes the special-data payload format/codec lifecycle.
- F96 exposes the cloud login outcome taxonomy/result contract.
- F97–F98 expose two independently evidenced provider-specific session/authentication lifecycles.
- F99 exposes Calls backup retention/local-cloud cleanup policy.
- F100 exposes reusable settings cloud backup/restore and local-settings application.
- F101 exposes persisted FolderRestoreStrategy policy and its restore-engine consumption.
- F102 exposes the Cloud Diagnostics transfer-test/result-state engine.
- F103 exposes the persisted cloud-transfer concurrency policy consumed by Apps/Folders transfer paths.
- F104 exposes MEGA saved-session persistence and validated session rehydration.
- F105 exposes protected-backup deletion guard, revalidation, and protected-count result semantics.
- F106 exposes the versioned AppSpecialDataPayload container/codec and atomic persistence lifecycle.
- F107 exposes the schedule-specific Apps Quick Actions selection/task-preparation/last-run lifecycle.
- F108 exposes the schedule-specific Apps custom-configuration selection/cloud-fallback/task-preparation lifecycle.
- F109 exposes the schedule-specific Apps label-selection/app-projection/task-preparation lifecycle.
- F110 exposes scheduled Messages selection/availability/task preparation.
- F111 exposes scheduled Calls selection/availability/task preparation.
- F112 exposes scheduled Wallpapers selection/valid-wallpaper/task preparation.
- F113 exposes scheduled Wi-Fi device-read/task preparation.
- F114 exposes scheduled Folders selection/strategy/task preparation.
- F115 exposes MultipleBackupStrategy persistence/migration/normalization/representation.
- F116 exposes app-list left/right swipe-action configuration persistence/reset/projection.
- F117 exposes per-app-part backup-limit configuration persistence/validation/serialization.
- F118 exposes app-cache inclusion policy persistence/warning/change-detection projection.
- F119 exposes app-data compression-level selection/persistence/default normalization/pipeline projection.
- F120 exposes restore-special-permission policy persistence, root gating, and ConfigSettings override.
- F121 exposes App Configuration export/import serialization, validation, and replacement boundary.
- F122 exposes ScheduleData aggregate persistence, ordering normalization/mutation, and battery-policy state.
- F123 exposes Blacklist package predicate persistence and backup-selection exclusion integration.
- F124 exposes Apps search normalization, searchable-source projection, and result-provider semantics.
- F125 exposes Manage Space inventory-to-reclaim routing and backup-artifact cleanup boundary.
- F126 exposes folder-data compression policy persistence, normalization, settings projection, and folder-task input projection.
- F127 exposes the folder backup result algebra, no-change state, artifact references, and backup statistics payload.
- F128 exposes the folder restore result algebra, success metrics, and failure-message payload.
- F129 exposes folder metadata reconstruction, local persistence, artifact-to-metadata reconciliation, and cloud-node publication/deletion.
- F130 exposes latest folder manifest selection plus the local cloud-manifest cache/download lifecycle.
- F131 exposes TeraBox token credential persistence, validity/expiry policy, OAuth authorization-code exchange, refresh-token lifecycle, and session continuity.
- F132 exposes the TeraBox external-browser OAuth handoff, callback/deep-link intake, authorization-code routing, and sign-in UI/result lifecycle.
- F133 exposes the TeraBox multipart upload session, chunk boundaries, per-part MD5 integrity verification, sequencing/result state, and finalization protocol.
- Runtime/provider/backend/filesystem/privileged execution verification remains unclaimed.
- P5 gate remains **NOT OPENED**.

## P5.1 current decision

**P5.1 — ONGOING / NOT YET CLOSED.**

The Reference feature universe is being decomposed into concrete audit units with direct evidence surfaces, ownership boundaries, and engine/data contracts. The register is intentionally granular so P5.2 can regroup the units into implementation work packages without losing Reference behavior.

No feature implementation was performed.

Current next step:
**Continue P5.1 targeted Reference audit until no additional independently evidenced feature/engine boundary remains unresolved; the complete numbered F01–F153 index is consolidated above.**

P5.2 remains **NOT OPENED**.



### P5.1 Folder backup result contract reconciliation

**P5-F127 — Folder backup result algebra / no-change / artifact + statistics result**

Direct Reference decompile evidence establishes a folder-backup-specific result contract:

- `BackupResult` is an explicit result family with **Failure**, **NoChange**, and **Success** variants.
- `Failure` carries a concrete error message and reports unsuccessful completion.
- `NoChange` is a distinct successful result used by incremental folder backup when the scanner detects no file/directory changes since the previous manifest.
- `Success` carries the generated manifest file, backup file, and a `BackupStats` object.
- `BackupStats` independently carries files scanned/added/modified/deleted, total bytes, and elapsed duration.
- `FoldersTask`/folder backup orchestration consumes these result variants rather than reducing them to a generic task boolean.
- This is distinct from **F43** generic task result aggregation and **F78** folder task execution: F127 owns the **folder backup operation result algebra and artifact/statistics payload** produced by the folder backup engine.

Static-only; no folder backup operation was executed.

### P5.1 Folder restore result contract reconciliation

**P5-F128 — Folder restore result algebra / success metrics / failure message**

Direct Reference decompile evidence establishes a separate folder-restore-specific result contract:

- `RestoreResult` is an explicit result family with separate success and failure variants.
- `rm6` represents restore success and carries `filesRestored`, `totalBytes`, and elapsed `Duration`.
- `qm6` represents restore failure and carries a concrete failure message.
- `qp3` consumes the restore result, branches on failure vs success, logs the result, and exposes the failure message or successful restore metrics to the surrounding task flow.
- This is distinct from **F43** generic task result aggregation and **F78** folder task execution: F128 owns the **folder restore operation result algebra and domain-specific success/failure payload** produced by the restore engine.

Static-only; no folder restore operation was executed.

### P5.1 TeraBox provider error classification reconciliation — 2026-10-02

- Added **F134**: TeraBox API error normalization/classification boundary.
- Direct Reference evidence: h08.l(Response) converts HTTP/API error responses into yz7 carrying method, URL, HTTP status, provider errno, and raw body; yz7.a() classifies authentication-invalidating errors (HTTP 401/403 and provider errno 200002/200003); yz7.b() classifies provider errno -9 as a non-fatal/not-found-style condition.
- The classification is consumed independently by TeraBox login (InvalidCredentials vs TempConnectionError), access-token refresh/retry (h08.f retries once after auth-classified failure), metadata/file/list/delete/create-directory paths (errno -9 maps to missing/no-op semantics), and existence checks (Exists / Missing / Unknown).
- F134 is distinct from F96: F96 is the generic cloud login-result taxonomy, while F134 owns the provider-specific error envelope and classification rules that feed multiple TeraBox operations.
- F134 is distinct from F20: F20 covers generic cloud-provider operation surface; F134 records the concrete TeraBox HTTP/API error interpretation and retry/not-found boundary.
- P5.1 numbered IDs are now **134**; unique feature-contract units are **133** because F94 remains the duplicate/reconciliation marker.
- Static-only; no TeraBox network/provider execution, build/install/runtime, or backend execution was performed or authorized.


### P5.1 Google Drive resumable upload-session reconciliation — 2026-10-02

- Added **F135**: Google Drive resumable upload session lifecycle.
- Direct Reference evidence: d04.d() creates a Drive resumable upload session and validates the returned Location; n04 carries the upload URL; o04/m04 carry session/chunk status including completion, generated file metadata, next byte, and current upload URL; d04.m() parses the acknowledged Range and rejects invalid next-byte state.
- pu3 owns upload-session execution, fresh-session restart, missing-file/create recovery, and completed-upload verification.
- F135 is distinct from F20/F41 generic provider/artifact operations and from F133 TeraBox chunk upload because Google Drive uses a resumable session URL + acknowledged byte-range protocol.
- P5.1 numbered IDs are now **135**; unique feature-contract units are **134** because F94 remains the duplicate/reconciliation marker.
- Static-only; no Google Drive upload/network/provider execution was performed or authorized.

### P5.1 Google Drive batch-delete result/retry reconciliation — 2026-10-02

- Added **F136**: Google Drive batch-delete result and retry lifecycle.
- Direct Reference evidence: xz3 aggregates failed file IDs, retry-after delay, and per-part failures; wz3 carries file ID/status/body preview; ju3 filters IDs, executes batch deletion, honors retry-after, retries failed IDs once, and returns success/failure.
- F136 is distinct from F21/F88 generic cloud cleanup/orphan boundaries because it owns the concrete Google Drive batch request/result/retry protocol.
- P5.1 numbered IDs are now **136**; unique feature-contract units are **135**.
- Static-only; no Google Drive deletion/network/provider execution was performed or authorized.

### P5.1 Google Drive download recovery/retry reconciliation — 2026-10-02

- Added **F137**: Google Drive ranged-download recovery and bounded retry lifecycle.
- Direct Reference evidence: lu3 downloads by byte range, tracks retry count, retries selected transient/network/internal/API failures up to five times, honors provider retry-after where available, detects manually deleted files/main-folder loss, and handles resumable download progression.
- F137 is distinct from F20/F51 generic provider transfer/diagnostics because it owns the concrete Google Drive download recovery policy and file-loss reconciliation.
- P5.1 numbered IDs are now **137**; unique feature-contract units are **136**.
- Static-only; no Google Drive download/network/provider execution was performed or authorized.

### P5.1 Google Drive main-folder reconciliation + account-email metadata migration — 2026-10-02

- Added **F138**: Google Drive main-folder integrity and account-email metadata migration lifecycle.
- Direct Reference evidence: fu3.p() resolves/creates the main Swift Backup folder and reconciles duplicate folders; fu3.t() migrates cloud backup metadata when the Google account email changes, deletes old metadata when safe, and performs guarded rollback/retry when source/destination state changes.
- F138 is distinct from F42 generic metadata lifecycle because it owns the Google Drive-specific root-folder identity/reconciliation and account-change migration transaction.
- P5.1 numbered IDs are now **138**; unique feature-contract units are **137**.
- Static-only; no Google Drive folder/metadata mutation or provider execution was performed or authorized.

### P5.1 Google Drive GMS access-token lifecycle reconciliation — 2026-10-02

- Added **F139**: Google Drive GMS access-token acquisition, stale-token clearing, account validation, and refresh/error lifecycle.
- Direct Reference evidence: fu3.u() validates Google Play Services/account state, clears a stale token through sz3.a(), obtains a Drive-scoped token through sz3.b() using the signed-in Google account, stores the refreshed token in the provider client, and clears provider token state on refresh failure; sz3 uses the Drive scope https://www.googleapis.com/auth/drive.file.
- F139 is distinct from F87 generic cloud credential persistence and F96 generic login-result taxonomy because it owns the concrete Google/GMS token acquisition/refresh boundary used by the Drive REST client.
- P5.1 numbered IDs are now **139**; unique feature-contract units are **138** because F94 remains the duplicate/reconciliation marker.
- Static-only; no Google account/token/network/provider execution was performed or authorized.


### P5.1 Box upload-session + recent-upload cache reconciliation — 2026-10-02

- Added **F140**: Box resumable upload session lifecycle and recent-upload cache bridge.
- Direct Reference evidence: `sj0` creates Box upload sessions, consumes session ID/part-size/upload-part/commit endpoints, retries upload, and records completed files into `BoxRecentUploadCache`; `mv0` validates session endpoints, part offsets, commit response, and retry-after handling.
- F140 is distinct from F20/F41 generic provider/artifact operations because it owns Box's concrete upload-session protocol and post-upload recent-file cache boundary.
- Static-only; no Box upload/network/provider execution was performed or authorized.

### P5.1 Dropbox upload-session offset recovery reconciliation — 2026-10-02

- Added **F141**: Dropbox upload-session chunking, offset correction, bounded retry, and stop/failure lifecycle.
- Direct Reference evidence: `n92` owns Dropbox upload execution with persisted chunk-size setting, session execution, retry loop, and `fr2` reports provider offset correction; failed uploads surface a bounded-attempt IOException and stopped uploads have explicit failure semantics.
- F141 is distinct from F20/F51 generic transfer contracts because it owns Dropbox's session-offset recovery protocol.
- Static-only; no Dropbox upload/network/provider execution was performed or authorized.

### P5.1 OneDrive resumable upload-session reconciliation — 2026-10-02

- Added **F142**: OneDrive upload-session creation, next-expected-range progression, chunk result state, and bounded retry/auth-stop behavior.
- Direct Reference evidence: `wq5`/`st5` create and execute OneDrive upload sessions, require `uploadUrl` and `nextExpectedRanges`, return `OneDriveUploadChunkResult`, retry selected transient/API failures, and disable retry after authentication failure.
- F142 is distinct from F135 Google Drive resumable upload because the OneDrive contract is Microsoft Graph session/range state with provider-specific retry/auth semantics.
- Static-only; no OneDrive upload/network/provider execution was performed or authorized.

### P5.1 OneDrive batch-delete retry/result reconciliation — 2026-10-02

- Added **F143**: OneDrive batch-delete aggregation, failed-ID retry, and terminal failure result.
- Direct Reference evidence: `pq5` executes batch deletion, collects failed IDs, retries failed IDs, and reports remaining failures after retry; `tq2` represents `DropboxDeleteBatchResult`/batch response state used by the shared cloud operation machinery.
- F143 is distinct from F136 because the OneDrive implementation has its own deletion executor and retry/result path.
- Static-only; no OneDrive deletion/network/provider execution was performed or authorized.

### P5.1 OneDrive MSAL silent-token lifecycle reconciliation — 2026-10-02

- Added **F144**: OneDrive account discovery, silent MSAL token acquisition, force-refresh path, expiry capture, and invalid-token/error handling.
- Direct Reference evidence: `oq5` resolves the current Microsoft account, performs `acquireTokenSilent`, optionally forces refresh, validates the returned access token, and records expiry through `jq5`; `nq5`/provider execution consumes this access-token boundary.
- F144 is distinct from F87 generic cloud credential persistence and F139 Google/GMS token acquisition because it owns the concrete Microsoft Identity/MSAL silent-token lifecycle.
- Static-only; no Microsoft account/token/network/provider execution was performed or authorized.

### P5.1 Yandex OAuth token refresh + persistence reconciliation — 2026-10-02

- Added **F145**: Yandex OAuth refresh-token exchange, refreshed access-token replacement, cloud-service persistence, and refresh failure handling.
- Direct Reference evidence: `jy8` reloads `TokenCredentials`, detects stale/forced refresh, exchanges the saved refresh token against the Yandex OAuth token endpoint, replaces the access token/expiry, persists the updated credentials when bound to a CloudServiceId, and returns failure/null token on refresh errors.
- F145 is distinct from F87 generic credential persistence and F96 generic login-result taxonomy because it owns Yandex's concrete OAuth refresh lifecycle.
- Static-only; no Yandex authentication/network/provider execution was performed or authorized.

### P5.1 Yandex asynchronous operation lifecycle reconciliation — 2026-10-02

- Added **F146**: Yandex async-operation polling, retry-after handling, terminal-state validation, and download-link acquisition boundary.
- Direct Reference evidence: `iy8` parses `Retry-After`, starts/polls Yandex operations, rejects unknown operation states, and requires successful operation completion before continuing to resource/download handling.
- F146 is distinct from F20/F51 generic provider operations because it owns the provider's explicit asynchronous-operation state machine.
- Static-only; no Yandex operation/network/provider execution was performed or authorized.


### P5.1 pCloud API-host failover persistence reconciliation — 2026-10-02

- Added **F147**: pCloud API-host failover and persisted endpoint selection lifecycle.
- Direct Reference evidence: `ov5.z()` detects provider error `qe.a == 2094`, switches the persisted `pcloud_api_host` between `api.pcloud.com` and `eapi.pcloud.com`, saves the selected host, and retries login through the new endpoint; `ov5.u()` consumes the persisted host when constructing the pCloud client.
- F147 is distinct from F96 generic login-result taxonomy because the provider-specific endpoint failover changes persisted client configuration and directly alters subsequent authentication/client construction.
- Static-only; no pCloud network/authentication execution was performed or authorized.

### P5.1 pCloud temporary-upload atomic-finalize reconciliation — 2026-10-02

- Added **F148**: pCloud temporary upload, parent-directory preparation, rename-to-final, and failure cleanup lifecycle.
- Direct Reference evidence: `ov5.e()` writes to `<target>.tmp`, creates required parent directories, closes the upload stream, renames the temporary path to the final target via `A()`, and deletes the temporary artifact when upload/finalization fails; `A()` distinguishes file vs folder rename endpoints.
- F148 is distinct from F20/F41 generic provider/artifact operations because it owns the pCloud-specific temporary-artifact and atomic-finalization boundary.
- Static-only; no pCloud upload, rename, deletion, filesystem mutation, or provider execution was performed or authorized.


### P5.1 Generic/remote provider deep sweep — 2026-10-02

- Added **F149**: S3 batch-object deletion aggregation and partial-failure handling.
  - Direct Reference evidence: `ar6.w(List)` batches object deletions, logs individual failed object deletions, and surfaces aggregate failure when any deletion fails.
  - Not split into a generic delete ID because this boundary is specifically S3 multi-object deletion behavior.
- Added **F150**: WebDAV chunked-upload assembly and post-disconnect verification lifecycle.
  - Direct Reference evidence: `vq8` chunks uploads, retries individual chunks up to five times, assembles server-side, handles temporary assembly artifacts, and after server disconnect can manually verify assembly success for up to one hour.
  - Direct Reference evidence also shows direct-upload rejection can fall back to chunked upload and server capability probing.
- Added **F151**: SMB deletion fallback strategy / multi-method cleanup lifecycle.
  - Direct Reference evidence: `ji7.x(String)` attempts deletion through multiple SMB mechanisms, records failures from each method, and escalates through Method 2 and Method 3 when earlier deletion mechanisms fail.
- Added **F152**: SFTP authentication-mode execution boundary.
  - Direct Reference evidence: `li4` selects password or private-key authentication from `CloudCredentials.authType`; private-key mode loads key material/passphrase and configures JSch public-key authentication, while password mode requires a saved password.
  - Host-key strictness is also selected from the connection configuration.
- Added **F153**: FTP compatibility fallback for listing/TLS upload.
  - Direct Reference evidence: `o23` falls back from `LIST -a` to `LIST` when unsupported, can discard/recreate the FTP client after listing state failures, retries FTPS upload with TLS 1.2 after the specific 426/network-stream failure, and cleans partial uploads after failed PUT.
- **Cloud Mail.Ru**: targeted sweep found no independent provider lifecycle beyond the shared WebDAV client/credential boundary; no new feature ID added.
- Static-only; no remote-provider network execution, authentication, upload, delete, or filesystem mutation was performed or authorized.


### P5.1 App-data / encryption deep sweep — 2026-10-02

- Added **F154**: app-data part model and per-part privileged-backup requirement.
  - Direct Reference evidence: enum `iu` defines `APP`, `DATA`, `EXTDATA`, `EXPANSION`, and `MEDIA`.
  - `getBackupReq()` assigns different capability requirements: `DATA` requires ROOT; `EXTDATA` and `EXPANSION` require ROOT-or-Shizuku when that capability is available; `APP` and `MEDIA` require no privileged capability.
  - The same enum persists per-part checked state for system/user selection.
  - F154 is distinct from F38 generic privileged-capability workflow and F63 per-part backup limits because it owns the concrete app-part capability/selection boundary.
- Added **F155**: app-data per-part encryption metadata and password-hash consistency boundary.
  - Direct Reference evidence: `LocalMetadata`/`CloudMetadata` carry separate DATA, EXTDATA, and MEDIA encryption state, including encrypted flag, encryption method, password hash, size/mirrored size, and backup date; upload/metadata reconciliation updates these fields independently.
  - Restore/backup comparison paths consume the corresponding local/cloud password hashes and mirrored sizes independently for DATA, EXTDATA, and MEDIA.
  - F155 is distinct from F41 generic artifact pipeline because this contract preserves per-part encryption identity and reconciliation metadata.
- Added **F156**: SBA password KDF and encryption-method key-check lifecycle.
  - Direct Reference evidence: `sy6.a()` derives key material through native Argon2id with a 16-byte salt and validated iteration/memory/parallelism/output parameters; `sy6.d()` derives a 16-byte method-specific key-check digest.
  - Supported Reference encryption methods include SevenZip AES, AES-256-GCM, AES-256-GCM-SIV, Aegis-256, and Aegis-128X2; the key-check labels are method-specific.
  - `sy6` also defines SBA2 index-MAC derivation material and payload/index metadata MAC inputs.
  - F156 is distinct from F25 generic password/encryption strategy and F41 generic archive pipeline because it owns the concrete cryptographic KDF/key-check contract.
- Added **F157**: SBA native archive creation and encrypted finalization lifecycle.
  - Direct Reference evidence: `tu0.d()` creates a temporary SBA archive, validates Aegis backend availability when selected, derives encryption material, invokes `SbaArchiveNative.createArchive()`, records native progress, verifies the resulting archive through `z07`, then moves/finalizes the temporary artifact; failures delete the temporary archive and clear sensitive key material.
  - The native creation call carries compression/encryption configuration, archive metadata, entry information, chunk parameters, and encryption material.
  - F157 is distinct from F41 because it owns the concrete native SBA archive-construction/finalization execution boundary.
- Added **F158**: SBA archive parsing, encryption-header validation, and native Aegis extraction/decryption lifecycle.
  - Direct Reference evidence: `z07` validates compression/encryption headers, KDF/key-check/salt/nonce/MAC/chunk-size fields, resolves encryption methods, derives/validates archive keys, and rejects inconsistent or unsupported archive states.
  - For Aegis-256/Aegis-128X2, the Reference uses `SbaLibaegisCryptoNative` and `SbaSwiftTarNative.extractAegisArchiveEntry*`; authentication failure is surfaced as a distinct SBA payload-authentication failure.
  - Extraction validates archive entry safety/metadata and supports cancellation/progress/error propagation.
  - F158 is distinct from F157 because it owns the restore/read/decrypt side of the SBA archive contract.
- **Special-data / SSAID note:** `AppSpecialDataPayload` already has dedicated coverage in **F65–F69, F95, and F106**. Its versioned payload explicitly carries permission states, SSAID, notification-access component, accessibility component, and notification-policy XML; no duplicate ID was created in this sweep.
- **Restore compatibility note:** `CloudMetadata` exposes per-part required-version fields (DATA/EXTDATA/etc.), but this sweep did not promote them to a new ID because targeted evidence found the fields but did not yet establish an independently named compatibility state machine. Keep this as a targeted follow-up rather than inventing behavior.
- Static-only; no archive creation, encryption, decryption, restore, native library execution, or device/provider execution was performed.

### P5.1 Apps restore required-version compatibility gate — 2026-10-02

- Added **F159**: Apps backup/restore required Swift Backup version compatibility gate and per-artifact/part version-requirement lifecycle.
- Direct Reference evidence: `LocalMetadata` stores `apk/splits/shared-libs/data/ext-data/media/expansion` required Swift Backup version-code/name fields and exposes them through `getSBVersionCodesRequired()`; `CloudMetadata` additionally carries `minSBVersionCodeRequired` and exposes the same aggregated required-version list.
- `LocalMetadata.SB_VERSION_CODE_REQUIRED` is `580` and `SB_VERSION_NAME_REQUIRED` is `v5.0.0`; each concrete backup-detail update method stamps the corresponding required version fields. `CloudMetadata` applies the same required-version markers when backup details are created/updated and derives the minimum requirement when backups exist.
- `nm6.a()` is an execution gate, not metadata-only decoration: it reads the current Swift Backup version code, scans the required-version list for a requirement above the current version, and blocks restore with an explicit higher-version error when such a requirement is found. It is consumed before Apps restore execution in both the cloud-restore path (`c40`) and local-restore path (`xw`).
- F159 is distinct from **F40**: F40 owns target APK installation, split handling, downgrade decision, and installer behavior; F159 owns compatibility of the backup artifact/part with the Swift Backup application version required to restore it.
- Static-only; no restore execution, version-mismatch runtime test, build/install/runtime, provider, or backend execution was performed.

### P5.1 Apps row-action catalog / availability / execution reconciliation — 2026-10-02

- Added **F160**: concrete Apps list row swipe/quick-action catalog, capability-aware availability, dynamic presentation, and action execution boundary.
- Direct Reference evidence: `defpackage.oy` defines exactly eight row actions: `Launch`, `EnableDisable`, `Uninstall`, `ForceStop`, `PlayStore`, `ClearData`, `AppInfo`, and `ShareApk`. Each action has a stable ID, menu/item ID, title resource, icon, and tone; `EnableDisable` dynamically changes title/icon based on the app enabled state.
- `oy.isAvailable(ji)` provides concrete availability rules: Launch requires installed+enabled+launchable; Enable/Disable requires Root/Shizuku capability plus installed state; Uninstall requires installed and non-bundled; Force Stop and Play Store require Root/Shizuku, installed, and enabled; Clear Data is always exposed by the action contract; App Info and Share APK require installed state.
- `tr` applies the configured primary/secondary swipe actions only when the selected action is available for the current `ji`, disables swipe when neither side has an available action, and renders the selected action's title/icon/tone.
- `ss` is the concrete executor for the eight actions: Launch through `g00.B`, Enable/Disable through the privileged action path, Uninstall through package-delete intent, Force Stop through the privileged action path, Play Store through `ai8.l`, Clear Data through the clear-data confirmation flow, App Info through `g00.D`, and Share APK through `nh(...).n(...)`.
- `ho6` persists/loads the selected primary/secondary actions by stable action IDs and defaults them per swipe side; `uy` exposes the selection UI. This is distinct from **F116**, which records the persisted left/right swipe-action configuration/reset contract, because F160 records the concrete action catalog, availability predicates, presentation semantics, and execution mapping.
- F160 is also distinct from **F06** interactive Apps Quick Actions: the eight `oy` actions are row/swipe actions on the Apps list, while F06 covers the separate Quick Actions feature surface.
- Static-only; no row action was executed on-device and no build/install/runtime/provider/backend execution was performed.
### P5.1 Generic disk-space preflight / critical-low-space reconciliation — 2026-10-02

- Added **F161**: Reference disk-space preflight, reserved-space policy, critical-low-space result state, and skip-check override used by backup/restore execution.
- Direct Reference evidence: `pj7.b(q63,long)` checks available filesystem space for a target path against the required byte count; it subtracts a 50 MiB reserve from reported free space before evaluating availability, and returns `oj7(message,isCriticallyLowSpace)` when space is insufficient.
- `pj7.b()` has an explicit `skip_disk_space_checks` SharedPreferences override; when enabled it bypasses the check and records that the check is disabled. Very low remaining space (50 MiB or less after the reserve calculation) is represented as a distinct critical-low-space result.
- `pj7.a()` derives the required threshold from the restore artifact size and adds a minimum 16 MiB / 1% headroom before delegating to the check. `xw` consumes this during Apps restore; `vl` consumes the checker during app backup; `wj3` consumes it in folder backup/restore paths.
- F161 is distinct from **F24** Storage Management: F24 is the storage inventory/manage-space feature surface, while F161 is the execution-time filesystem-capacity precondition and result algebra used by backup/restore engines.
- F161 is also distinct from **F43** task result aggregation because `oj7` is the concrete space-check result contract consumed before/within execution rather than a task terminal-result aggregator.
- Static-only; no filesystem mutation, backup/restore execution, or runtime storage-capacity test was performed.
### P5.1 Apps cloud-restore artifact reuse / download decision reconciliation — 2026-10-02

- Added **F162**: Apps cloud-restore per-part artifact descriptor construction, local-copy reuse, and change-aware download decision boundary.
- Direct Reference evidence: `mq` constructs concrete restore artifact descriptors for APK, split APKs, shared libraries, DATA, EXTDATA, MEDIA, EXPANSION, and optional special data from `CloudMetadata` plus the selected `AppPart` set, including expected size and target local path.
- `mq.a(fo2)` first reuses an existing local cloud-copy when the target file exists and its size exactly matches the expected artifact size, skipping another download. Otherwise it evaluates the installed app state and applies part-specific change detection before deciding whether a cloud transfer is required.
- APK/split/shared-library reuse is checked through `eq.a()` using current APK size, version name/code, split presence, and shared-library presence. DATA/EXTDATA/MEDIA/EXPANSION reuse is checked through `nm6.b()` using backup date, current part size, mirrored backup size, cache policy, and part identity.
- F162 is distinct from **F20** generic cloud-provider operations, **F39** backup-time change detection, **F42** metadata lifecycle, and **F54** restore-part selection: F162 owns the Apps cloud-restore artifact materialization/reuse decision before provider transfer.
- Static-only; no cloud download, local filesystem mutation, restore execution, provider execution, build/install, or backend execution was performed.

### P5.1 Onboarding storage setup / failure recovery reconciliation — 2026-10-02

- Added **F163**: onboarding storage setup, preferred-storage initialization, failure-state presentation, retry/review/fallback/exit recovery boundary.
- Direct Reference evidence: `intro.d` constructs a dedicated storage-setup coordinator using `getPreferredStorageTypeForIntro`, a setup operation, and an `onStorageSetupFailure` callback.
- Direct Reference evidence also exposes `StorageSetupFailure(mainDir, isRemovable, offerInternalStorage)` and a dedicated `intro_storage_setup_failure_dialog`.
- The failure UI provides concrete recovery actions for **Retry**, **Review storage access**, **Use internal storage** when offered, and **Exit storage setup**; the dialog also exposes storage location, diagnostics, remaining/review steps, and a failure-specific menu.
- The storage setup path is distinct from **F24 Storage Management**: F24 covers the storage-management feature surface, while F163 owns the first-run onboarding storage initialization and its failure/recovery state.
- F163 is also distinct from **F38** privileged capability workflow: root/Shizuku permission handling is consumed during onboarding, but the storage setup coordinator owns the onboarding storage initialization/failure boundary.
- Static-only; no storage permission mutation, filesystem setup, runtime dialog interaction, build/install/runtime, provider, or backend execution was performed.

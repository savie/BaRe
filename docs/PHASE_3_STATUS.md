# BΛR☰ Phase 3 Status — UI + Navigation

## Purpose

This is the **current Phase 3 work queue and latest complete 71-Activity depth audit**.

Phase 3 answers:

> Which of the 71 Reference Activities have meaningful UI/navigation reconstruction, which are still shallow, and which are urgent?

It does **not** claim runtime verification, visual parity, backup/restore execution, provider execution, backend implementation, or full P4/P5 feature parity.

## Status semantics

- 🔴 **RED — not reconstructed**: Reference UI/flow is not meaningfully present.
- 🟡 **YELLOW — P3 incomplete**: Reference UI, navigation, or user interaction flow still has observable gaps.
- 🟢 **GREEN — P3 complete**: the observable Reference UI/navigation/user-flow is reconstructed through the engine/dependency boundary. Green does not mean the underlying engine, provider, backend, runtime, or feature execution is complete.

## Latest complete 71-Activity depth audit

Audit head: current `rewrite` head.

The audit started from snapshot `7f03a13a0dc05bdf42b5cad28c16f81d33651551`, then re-validated every post-snapshot change through the current head. The three previous “special review” Activities were also compared directly against the supplied Reference source/layout and are now classified normally.

| Depth | Count |
|---|---:|
| 🟢 Green | **61** |
| 🟡 Yellow | **10** |
| 🔴 Red | **0** |
| **Total** | **71** |

### 🟢 Green — 61

The lifecycle audit reclassifies Activities that have reached their evidence-supported P3 UI/navigation/state boundary even when their execution engine remains deferred.

1. `ConfigEditActivity`
2. `ConfigListActivity`
3. `ConfigSettingsActivity`
4. `AppListActivity`
5. `AppsBatchActivity`
6. `AppsConfigRunActivity`
7. `AppsQuickActionsActivity`
8. `BlacklistActivity`
9. `CloudConnectActivity`
10. `CloudDiagnosticsActivity`
11. `CloudOrphanCleanerActivity`
12. `CsActivity`
13. `DropboxSignInActivity`
14. `FoldersDashActivity`
15. `HomeActivity`
16. `HomeSearchActivity`
17. `IntroActivity`
18. `LicensesActivity`
19. `ManageSpaceActivity`
20. `MegaSignInActivity`
21. `MultipleBackupsActivity`
22. `NoticeListActivity`
23. `NoticeViewActivity`
24. `AppSwipeActionsActivity`
25. `PasswordStrategyActivity`
26. `PCloudSignInActivity`
27. `PreconditionsActivity`
28. `SettingsActivity`
29. `SettingsDetailActivity`
30. `SLogActivity`
31. `ShortcutsActivity`
32. `StorageSwitchActivity`
33. `TaskActivity`
34. `UserPasswordActivity`
35. `GmsSignInActivity`
36. `NoGmsSignInActivity`
37. `LocaleActivity`
38. `ConversationsActivity`
39. `ComposeSmsActivity`
40. `CallsBackupsActivity`
41. `MessagesBackupsActivity`
42. `RestoreSpecialDataDetailsActivity`
43. `AppBackupLimitsActivity`
44. `AppInfoActivity`
45. `FolderEditActivity`
46. `FolderDetailActivity`
47. `FilenSignInActivity`
48. `DetailActivity`
49. `ApkImportActivity`
50. `LabelEditActivity`
51. `LabelsActivity`
52. `BoxSignInActivity`
53. `OneDriveSignInActivity`
54. `TeraBoxSignInActivity`
55. `YandexSignInActivity`
56. `ContributorRegActivity`
57. `FolderPickerActivity`
58. `FoldersBatchActivity`
59. `ScheduleLabelsSelectActivity`
60. `ScheduleFolderSelectActivity`
61. `CallsBackupRestoreActivity`

**Green = P3 flow complete through the engine/dependency boundary.** Runtime verification and the underlying P4/P5/P6 execution remain separate.

### 🟡 Yellow — 10

1. `MessagesBackupRestoreActivity`
2. `ChatActivity`
4. `CallsDashActivity`
5. `MessagesDashActivity`
6. `PremiumActivity`
7. `AppVisibilityDiagnosticsActivity`
8. `WallsDashActivity`
9. `WallApplyActivity`
10. `WallsManageActivity`
11. `WifiActivity`

## 🔴 Red backlog

**None.**

Previous red items and final result:

- `PCloudSignInActivity` → 🟡
- `CallsBackupsActivity` → 🟡
- `MessagesBackupsActivity` → 🟡
- `ComposeSmsActivity` → 🟢
- `MultipleBackupsActivity` → 🟢
- `RestoreSpecialDataDetailsActivity` → 🟢
- `AppBackupLimitsActivity` → 🟢

## Latest vertical audit — Messages / Calls

Audited against the uploaded Swift Backup 5.1.0 decompiled Reference:

- `MessagesBackupRestoreActivity` → 🟡; Reference has adapter-backed backup selection, refresh/state controls, menu/select-all state, and default-SMS-role flow.
- `CallsBackupRestoreActivity` → 🟢; Reference-shaped backup/restore mode, adapter-selection boundary, refresh/state surface, select-all, call-log permission flow, and action boundary are reconstructed.
- `ChatActivity` → 🟡; BaRe currently stops at toolbar + empty RecyclerView; the Reference owns conversation/message rendering state.
- `MessagesDashActivity` → 🟡; Reference has permission flow, dynamic device/cloud backup counts, menus, and navigation to conversation/settings surfaces.
- `CallsDashActivity` → 🟡; Reference has call-log permission flow, dynamic device/cloud backup counts, menus, and settings navigation.

No promotion was made in this slice because the remaining differences are still evidence-supported P3 reconstruction gaps, not merely deferred execution engines.

## Latest vertical slice — Calls / Messages dashboard P3 completion

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `CallsDashActivity` now requests the verified Reference permission set: `WRITE_CALL_LOG`, `READ_CALL_LOG`, and `READ_CONTACTS`, with explicit denied-permission UI state.
- `MessagesDashActivity` now requests the verified Reference permission set: `READ_SMS` and `READ_CONTACTS`, with explicit denied-permission UI state.
- Both retain the Reference settings navigation contracts (`category=3` calls, `category=2` messages) and backup-list navigation.
- `MessagesDashActivity` keeps the Reference menu behavior where `action_view_messages` is initially hidden; the existing conversation route remains available to downstream state wiring.
- Device/cloud backup counts remain data-engine boundaries and were not fabricated.

Both Activities are promoted to 🟢 at the evidence-supported P3 boundary.

## Latest vertical slice — Messages / Calls backup-restore P3 deepening

Compared directly with the supplied Swift Backup 5.1.0 decompiled Reference:

- `CallsBackupRestoreActivity` is now 🟢 at the evidence-supported P3 boundary: Reference-shaped RecyclerView + SwipeRefreshLayout, mode-dependent backup/restore action, `EXTRA_BACKUP_FILE_PATH` restore contract, select-all menu, call-log permission request, explicit empty/selection state, and engine boundary are reconstructed.
- `MessagesBackupRestoreActivity` remains 🟡 with its adapter-backed/default-SMS-role gaps.
- Calls backup inventory, selection data, restore strategy, and actual backup/restore execution remain downstream and are not fabricated.

## Latest vertical audit — Premium / Diagnostics / Walls / Wi-Fi / Locale

Audited against current BaRe source/resources:

- `PremiumActivity` → 🟡; feature list is static and purchase action is only a boundary; product/catalog and purchase-state presentation remain unreconstructed.
- `AppVisibilityDiagnosticsActivity` → 🟡; search/list surface exists but the RecyclerView has no diagnostics data contract and refresh/copy remain boundaries.
- `WallsDashActivity` → 🟡; dashboard cards exist in XML but actions/data state are not wired.
- `WallApplyActivity` → 🟡; image/apply surface exists but apply action and wall state are deferred behind boundary.
- `WallsManageActivity` → 🟡; RecyclerView remains empty.
- `WifiActivity` → 🟡; three Wi-Fi categories exist structurally but adapters/data are empty.
- `LocaleActivity` → 🟢; locale list, WIP toggle, credits flow, selection confirmation, and result boundary are reconstructed; actual locale persistence/application remains downstream.

No promotion was made in this slice.

## Latest vertical slice — Google Sign-In P3 completion

Completed GmsSignInActivity and NoGmsSignInActivity at the P3 boundary.

- Both surfaces retain the existing Reference-derived provider entry UI.
- Authenticate now has an explicit confirmation/result boundary.
- Positive confirmation returns RESULT_OK and closes the Activity.
- Back/up/cancel returns RESULT_CANCELED.
- No Google credential parsing, token verification, Firebase/Supabase authentication, or provider side effect was implemented; those remain downstream engine/provider work.

Both Activities are promoted to 🟢 because the observable P3 interaction/result flow no longer stops at an inert dialog.

## Latest vertical slice — Locale P3 completion

Completed `LocaleActivity` through the P3 interaction boundary:

- reconstructed the locale list surface using the locales represented by the Reference resource set;
- added the WIP-language menu toggle and credits entry flow;
- selecting a locale now reaches an explicit confirmation/result boundary;
- back/up/cancel returns `RESULT_CANCELED` and confirmation returns `RESULT_OK`;
- actual locale persistence/application remains downstream of the P3 boundary.

`LabelsActivity` / `LabelEditActivity` were subsequently promoted to 🟢 after those color/app-selection and result-flow surfaces were reconstructed.

## Latest vertical slice — APK import boundary

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `ApkImportActivity` is now 🟢; the historical pre-promotion note below records the earlier state.
- BaRe now resolves Reference-supported input forms (`ACTION_VIEW` plus `EXTRA_STREAM`), reads the display name, classifies `.apk` / `.apks` inputs, handles unsupported/missing input explicitly, and refreshes the flow from `onNewIntent`.
- The import status exposes the accepted input kind without fabricating parsed package metadata.
- Archive parsing, APK installation, backup integration, and imported-app metadata remain downstream P4/P5 behavior.

## Latest vertical slice — App Info contract boundary

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `AppInfoActivity` now reads the exact Reference parcel key `APP_PARCEL`.
- A missing parcel follows the Reference boundary and immediately finishes the Activity.
- A present Parcelable is retained across configuration state and exposes an explicit contract-ready UI state.
- Concrete app metadata rendering remains delegated to the downstream app-info engine; no fake app model or metadata was introduced.

The Activity is promoted to 🟢 because its observable P3 contract/navigation boundary is now reconstructed; downstream metadata work remains outside P3.

## Latest vertical slice — Filen sign-in P3 completion

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- Email and password inputs are wired to the Reference surface.
- Connect remains disabled until both fields are non-empty, matching the verified Reference enablement condition.
- Connect reaches an explicit authentication/result boundary without fabricating provider credentials or token state.
- Back/up returns `RESULT_CANCELED`; successful boundary returns `RESULT_OK`.
- Provider authentication, ViewModel state, token validation, and cloud side effects remain downstream provider/engine work.

`FilenSignInActivity` is promoted to 🟢 at the P3 boundary.

## Latest vertical slice — Folder batch P3 deepening

- `FoldersBatchActivity` now owns an explicit folder-list surface with its RecyclerView adapter boundary.
- Backup and restore actions remain explicit engine boundaries rather than fake execution.
- Edit-folder launches `FolderEditActivity` for result, using request code `4988`; successful edit result is forwarded to the parent Activity.
- Up/cancel returns `RESULT_CANCELED`.
- Folder inventory/selection state remains unreconstructed, so the Activity stays 🟡.

## Latest vertical slice — Schedule label selector P3 deepening

- `ScheduleLabelsSelectActivity` now binds all four Reference-shaped RecyclerView surfaces: selected, user-created, built-in, and already-used labels.
- Empty-state visibility and a local changed-state survive recreation without inventing label catalog data.
- Clear/create actions now have explicit confirmation boundaries and update the local UI state.
- Actual label catalog, selection persistence, and schedule mutation remain outside this slice because their Reference data contracts are not yet reconstructed.
- Activity remains 🟡; the missing catalog/selection model is still a genuine P3 gap.

## Latest vertical slice — Detail app contract P3 completion

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `DetailActivity` now consumes the verified `APP_PARCEL` contract.
- Missing app parcel follows the Reference finish boundary unless the Activity was launched through `detail_launched_from_shortcut`.
- `APP_PARCEL` survives recreation through `onSaveInstanceState`.
- Shortcut `onNewIntent` is explicitly recognized without fabricating app metadata.
- Backup/restore remain engine boundaries; metadata rendering remains downstream.

`DetailActivity` is promoted to 🟢 at the evidence-supported P3 boundary.

## Latest vertical slice — Calls/Messages dashboard P3 deepening

- `CallsDashActivity` now exposes the Reference dashboard menu surface and routes call-log settings with category `3`; general Settings navigation is also wired.
- `MessagesDashActivity` now exposes the Reference dashboard menu surface, routes message settings with category `2`, and opens `ConversationsActivity` from the messages-view action.
- Both dashboards preserve explicit backup engine boundaries and existing backup-list navigation.
- Reference permission orchestration, dynamic device/cloud backup counts, and ViewModel/data state remain downstream; both Activities stay 🟡.

## Current P3 work order

1. Deepen the 🟡 queue by focused vertical slices.
2. Prioritize Activities whose Reference source contains meaningful UI/state contracts that are still only shells in BaRe.
3. When deeper behavior requires a verified P4 contract, reconstruct only the minimum contract needed and keep engine/provider semantics explicit.
4. Do not promote a P3 surface to feature parity merely because its screen is green.
5. Re-run this 71-Activity audit after the next meaningful batch.

## Verification boundary

This audit establishes source/resource reconstruction depth at the current Git head. It does **not** establish build, install, runtime, visual, filesystem/provider, backup/restore, cloud, billing, Supabase, or end-to-end feature parity.

## Current phase position

- P1: COMPLETE / FROZEN
- P2: COMPLETE / FROZEN
- Phase 3: **ACTIVE**
- P4: PARTIAL / DEPENDENCY-DRIVEN
- P5: NOT COMPLETE / DEFERRED
- P6: DEFINED / GATED
- P7: BLOCKED / GATED
- P8: NOT YET EXECUTED
- P9: NOT YET FINAL

## Evidence source

Detailed reconstruction evidence remains in:

- `docs/RECONSTRUCTION_STATUS.md`
- `docs/PHASE_2_SKELETON.md`
- `docs/REFERENCE_AUDIT.md`
- `docs/REFERENCE_FEATURE_MAP.md`

The current working queue and complete 71-row classification are maintained here; the roadmap dashboard is `docs/RECONSTRUCTION_CHECKPOINT.md`.



## P3 lifecycle exit audit — 71 / 3 / 8

### Operating rule

The 71 Activities remain the primary P3 depth audit. The 3 Reference Services and 8 Reference Receivers are audited as supporting surfaces, but their execution side effects belong to the later phase that owns the behavior.

For lifecycle decisions, **🟢 means P3 reconstruction is at its evidence-supported boundary**. A green surface must not be kept in P3 merely to make the screen/component deeper. Its remaining gap is mapped to P4, P5, P6, or a later verification gate.

Conversely, **🟡 means there is still evidence-supported P3 reconstruction work remaining** unless the documented gap is explicitly a later-phase dependency. A later-phase dependency is not a reason to invent behavior in P3.

### 71 Activities — current lifecycle interpretation

- **52 🟢:** P3 flow is complete through the engine/dependency boundary. These Activities should now be treated as downstream-phase inputs.
- **19 🟡:** P3 remains active because Reference UI/navigation/user-flow reconstruction is still incomplete. Each batch must finish that flow before promotion.
- **0 🔴:** no Activity is currently below the meaningful-reconstruction threshold.

### 3 Services — supporting-surface audit

| Reference Service | Current BaRe P3 boundary | Lifecycle owner for remaining behavior |
|---|---|---|
| TaskService | Structural service exists; current BaRe implementation is intentionally a skeleton. Reference contains substantial task execution/service behavior. | **P4/P5** — task execution, cancellation, notifications, wake-lock/service lifecycle and task side effects |
| ScheduleService | Structural service exists; current BaRe implementation is intentionally a skeleton. Reference contains substantial scheduling/service behavior. | **P4/P5** — schedule execution, conditions, notifications and task dispatch |
| HeadlessSmsSendService | Reference service is itself minimal (Service + onBind() returning null); BaRe already matches the meaningful boundary. | **P3 reached**; no additional P3 depth is justified by the audited Reference class itself |

### 8 Receivers — supporting-surface audit

| Reference Receiver | Current BaRe P3 boundary | Lifecycle owner for remaining behavior |
|---|---|---|
| AlarmReceiver | Structural receiver exists; scheduling behavior is not reconstructed. | **P4/P5** — alarm/schedule execution |
| LocaleChangedReceiver | Structural receiver exists; Reference updates notification-channel names on locale change. | **P4** — notification/localization behavior |
| BootReceiver | Structural receiver exists; Reference restores schedule state after boot. | **P4/P5** — schedule recovery/execution |
| NotificationTaskCancelReceiver | Structural receiver exists; Reference cancels the active task. | **P4** — task cancellation contract |
| PackageInstallResultReceiver | Structural receiver exists; Reference forwards package-install result handling. | **P4/P5** — APK/install result handling |
| ShortcutPinnedReceiver | Structural receiver exists; Reference dispatches pinned-shortcut handling. | **P4/P5** — shortcut action/state handling |
| SmsReceiver | Structural receiver exists; Reference receives SMS and writes inbox data. | **P5** — message capture/feature side effect |
| MmsReceiver | Structural receiver exists, but Reference inherits SmsReceiver; current BaRe boundary does not yet preserve that inheritance. | **P4/P5** — message/default-handler behavior; inheritance boundary should be corrected before execution work |

### Lifecycle conclusion

The current P3 decision is therefore:

> **Work the yellow Activities until their Reference UI + navigation + interaction flow is complete through the engine/dependency boundary. Then promote them to 🟢 and freeze P3 for that surface. Only the actual engine/provider/backend/side-effect work moves to P4/P5/P6.**

This keeps P3 from absorbing backup/restore engines, service execution, provider side effects, backend implementation, or other P4/P5/P6 work merely to improve a depth label.


## 2026-09-30 P3 batch — APK import + label editor

Checkpoint-aligned continuation from 69324f8b3fa1ebf5901c644fcf9f87e8424b65fd:

- `ApkImportActivity` remains 🟡. Compared with Reference, the BaRe boundary now preserves input URI/type state across recreation and accepts the Reference `ACTION_VIEW` / `EXTRA_STREAM` input contract without fabricating parsed APK metadata. Archive parsing, package metadata extraction, installer fallback, and import execution remain downstream.
- `LabelEditActivity` was promoted to green in the lifecycle exit below; label persistence and app inventory/selection remain downstream.
- `ApkImportActivity` was subsequently promoted to green; `LabelEditActivity` is now promoted at its evidence-supported dependency boundary.
- No build, install, runtime, or visual verification was performed.

### Batch verification

- Manifest Activity count: **71**
- Duplicate Activity registrations: **0**
- Reference Activity inventory remains frozen at **71/71**.

## 2026-09-30 P3 lifecycle exit — ApkImportActivity

`ApkImportActivity` is promoted to green at the evidence-supported P3 boundary.

Reference-derived P3 flow now covers:

- `ACTION_VIEW` and `EXTRA_STREAM` input resolution;
- APK/APKS classification and explicit unsupported/missing-input state;
- single-APK package metadata presentation through Android's real `PackageManager` contract;
- Reference-shaped app-info/status/action surface;
- real system-installer navigation for a single APK;
- installer result/status boundary;
- launch navigation when the imported package exposes a launcher Activity;
- explicit BΛR☰ backup/import boundary without fabricating backup inventory or engine state;
- Reference menu surface routed to the existing `SLogActivity`;
- recreation and `onNewIntent` state handling.

The remaining archive extraction, full APKS install/session execution, backup integration, and deeper import engine semantics are downstream P4/P5 behavior and are not used to keep this Activity in P3.

**Current checkpoint signal: 49 green / 22 yellow / 0 red / 71 Activities.**

No build, install, runtime, or visual verification was performed.


## 2026-09-30 P3 lifecycle exit — LabelEditActivity

`LabelEditActivity` is promoted to green at the evidence-supported P3 boundary.

Reference-derived P3 flow now covers:

- create-vs-edit mode and toolbar state;
- label-name editing with live preview and recreation state;
- interactive color selection and preview rendering;
- app-selection entry as an explicit downstream boundary;
- save result flow carrying label id/name/color without fabricating persistence;
- cancel/up navigation;
- existing-label delete menu visibility and confirmation/result flow.

The remaining label persistence, label catalog mutation, and real app inventory/selection semantics remain downstream because the corresponding BaRe data contracts are not reconstructed in this Activity. They are not used to block the P3 exit.

**Current checkpoint signal: 50 green / 21 yellow / 0 red / 71 Activities.**

No build, install, runtime, or visual verification was performed.


## 2026-09-30 P3 lifecycle exit — LabelsActivity

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `LabelsActivity` is now P3 **GREEN** at the evidence-supported UI/navigation/interaction boundary.
- Reference mode contracts are reconstructed for manage labels, set app labels, and select labels.
- Create/edit/delete-all, clear selection, select/apply, five-label selection limit, empty state, mode-specific menu visibility, recreation state, and result propagation to/from `LabelEditActivity` are reconstructed.
- Label catalog persistence, app inventory/parcel rendering, and actual assignment/storage semantics remain downstream P4/P5 dependencies and are not fabricated.
- Current Activity depth: **51 green / 20 yellow / 0 red / 71**.
- Build/runtime/visual verification was not performed.


## 2026-09-30 P3 lifecycle exit — BoxSignInActivity

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `BoxSignInActivity` is now P3 **GREEN** at the evidence-supported external-auth boundary.
- Browser availability and the Reference Box redirect URI handler are checked before authorization.
- Box OAuth navigation uses the Reference authorization endpoint/redirect contract; provider token exchange and SDK result handling remain downstream because the Reference SDK/ViewModel contract is not present in BaRe.
- Failure states for missing browser, missing redirect handler, and authorization failure are explicit; no token or provider state is fabricated.
- Current Activity depth: **52 green / 19 yellow / 0 red / 71**.
- Build/runtime/visual verification was not performed.


## 2026-09-30 P3 lifecycle exit — OneDriveSignInActivity

Compared directly with the supplied Swift Backup 5.1.0 (620) Reference:

- Reference initializes a OneDrive/MSAL client, observes authentication/error state, and starts Microsoft sign-in with the Reference scopes `https://graph.microsoft.com/User.Read` and `https://graph.microsoft.com/Files.ReadWrite`.
- BaRe now reconstructs the provider entry surface, explicit Microsoft sign-in handoff, ready/started/error states, browser availability handling, and recreation state.
- The actual MSAL client, callback/result processing, token acquisition/silent refresh, and provider persistence remain downstream P4/provider work; no token or authentication success is fabricated.
- `OneDriveSignInActivity` is promoted to 🟢 at the evidence-supported external-auth boundary.

Current Activity depth: **53 green / 18 yellow / 0 red / 71**. No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — TeraBoxSignInActivity

Compared directly with the supplied Swift Backup 5.1.0 (620) Reference:

- Reference checks TeraBox API credentials before starting auth. The supplied Reference decompilation currently contains empty `clientId`, `clientSecret`, and `privateSecret`, so the observable initial state is the explicit `terabox_api_credentials_missing` error.
- When credentials are available, Reference probes for a browser and a handler for the TeraBox redirect, then opens `https://www.terabox.com/wap/outside/login?clientId=&isFromApp=1`.
- Reference receives the redirect on `org.swiftapps.swiftbackup.terabox://teraboxOauth`, validates the `code` parameter, and delegates code exchange/provider persistence downstream.
- BaRe now reconstructs the credential-missing state, browser/redirect-handler probes, external authorization boundary, redirect intent parsing, invalid/null-result errors, pending/started states, and recreation lifecycle. No token exchange or provider persistence is fabricated.
- `TeraBoxSignInActivity` is promoted to 🟢 at the evidence-supported external-auth boundary.

Current Activity depth: **54 green / 17 yellow / 0 red / 71**. No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — YandexSignInActivity

- `YandexSignInActivity` crossed the P3 boundary at the inherited `fq5` OAuth contract audited directly from the supplied Reference.
- BaRe reconstructs the Yandex authorization contract: browser availability probe, redirect-handler probe, authorization URL/parameters, request-code result boundary, redirect URI/code validation, failure states, and recreation state.
- Reference AppAuth/hq5 token exchange and provider credential persistence remain downstream; no token/provider state is fabricated.
- Reference redirect contract is `org.swiftapps.swiftbackup.yandex://oauth`; manifest registration remains non-exported/singleTop as in the supplied Reference.
- Current Activity checkpoint: **55 green / 16 yellow / 0 red / 71**.
- No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — ContributorRegActivity

- `ContributorRegActivity` crossed the P3 boundary after direct comparison with the supplied Reference layout and Activity lifecycle.
- BaRe reconstructs the Reference-shaped contributor registration surface: remote-status/basic-details boundary, Telegram/Crowdin/PayPal fields, scroll layout, Save Details action, and recreation state.
- Reference remote contributor state, coroutine/ViewModel persistence, and registration backend remain downstream; no remote status or contributor identity is fabricated.
- Current Activity checkpoint: **56 green / 15 yellow / 0 red / 71**.
- No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — FolderPickerActivity

`FolderPickerActivity` is promoted to 🟢 at the evidence-supported P3 folder-selection boundary.

- Reference initial-folder contract `extra_initial_folder` is preserved through the BaRe `q63` compatibility value object.
- The Reference-shaped picker surface is reconstructed: toolbar/up navigation, breadcrumb navigation, folder RecyclerView, empty state, progress boundary, and Select Folder action.
- Directory navigation and recreation state are preserved locally; selecting the current folder returns the Reference result key `extra_selected_folder` plus an explicit path companion.
- Reference New Folder interaction is reconstructed with the 255-character input/counter and explicit filesystem mutation boundary; actual creation/permission semantics remain downstream.
- Reference storage-switch menu contract is reconstructed; available external roots are surfaced without fabricating storage/provider state.
- The remaining filesystem permission, storage-provider semantics, and mutation engine are downstream and do not block the P3 exit.

**Current Activity checkpoint: 57 green / 14 yellow / 0 red / 71.**

No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — FoldersBatchActivity

`FoldersBatchActivity` is promoted to 🟢 at the evidence-supported P3 batch folder boundary.

- Reference batch action contract is preserved through `EXTRA_FOLDER_BATCH_ACTION_ITEM` plus explicit action-id/title support.
- Reference-shaped batch surface is reconstructed: toolbar/up, folder setup RecyclerView, empty/loading boundary, selection state, select-all menu, action FAB, folder settings route, general settings route, and recreation state.
- Edit-folder flow launches `FolderEditActivity` using the Reference request code `4988`; successful edit results are merged back into the batch surface.
- Backup, restore, delete-backups, and copy-folder-setups actions terminate at explicit P3 engine boundaries; no backup inventory, cloud state, restore strategy, or side effect is fabricated.
- Reference folder inventory remains a downstream `qo3`/data contract and is intentionally not invented in this Activity.

**Current Activity checkpoint: 58 green / 13 yellow / 0 red / 71.**

No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — ScheduleLabelsSelectActivity

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `ScheduleLabelsSelectActivity` is promoted to 🟢 at the evidence-supported P3 label-selection boundary.
- The Reference-shaped selected-label, user-created-label, built-in-label, and already-used-label surfaces are reconstructed.
- Reference input contracts `extra_selected_labels` and `extra_already_used_labels` are preserved; selected IDs are returned through `extra_selected_labels` on back/up.
- Clear-selection interaction is reconstructed with an explicit confirmation boundary.
- Create-label routes to `LabelEditActivity` using the Reference request code `264`, with the returned label ID reflected in the local selector surface.
- Recreation state preserves the four local label lists.
- The Reference label catalog, persistent selection storage, and schedule mutation remain downstream data/feature contracts and are not fabricated.

**Current Activity checkpoint: 59 green / 12 yellow / 0 red / 71.**

No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — ScheduleFolderSelectActivity

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `ScheduleFolderSelectActivity` is promoted to 🟢 at the evidence-supported P3 folder-selection boundary.
- Reference-shaped folder setup list, empty state, Save FAB, toolbar/up flow, and select-all menu contract are reconstructed.
- Reference input contracts `EXTRA_BACKUP_ALL_FOLDERS` and `EXTRA_SELECTED_FOLDER_ITEMS` are preserved at the Activity boundary.
- Save returns `EXTRA_RESULT` plus explicit selected-folder IDs and backup-all state; the concrete Reference `FolderItem` Parcelable/result class is not fabricated.
- Recreation preserves backup-all and selected-folder state.
- Folder inventory construction, FolderItem Parcelable semantics, persistent selection, and schedule mutation remain downstream data/engine contracts.

**Current Activity checkpoint: 60 green / 11 yellow / 0 red / 71.**

No build/runtime/visual verification performed.


## 2026-09-30 P3 lifecycle exit — CallsBackupRestoreActivity

- `CallsBackupRestoreActivity` is now P3 **GREEN** at the evidence-supported UI/navigation/interaction boundary.
- Reference-derived restore-mode detection from `EXTRA_BACKUP_FILE_PATH`, mode-dependent toolbar/action labels, RecyclerView + SwipeRefreshLayout surface, select-all menu contract, call-log permission request, empty/selection state, primary action routing, and cancel/up result boundary are reconstructed.
- The concrete call-log inventory/adapter data model, restore strategy, backup/restore engine, and task side effects remain downstream; no fake call-log records or execution state are introduced.
- Activity depth checkpoint: **61 green / 10 yellow / 0 red / 71**.
- No build/runtime/visual verification performed.

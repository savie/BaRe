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
| 🟢 Green | **40** |
| 🟡 Yellow | **31** | |
| 🔴 Red | **0** |
| **Total** | **71** |

### 🟢 Green — 43

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
37. `ComposeSmsActivity`
38. `CallsBackupsActivity`
39. `MessagesBackupsActivity`
40. `RestoreSpecialDataDetailsActivity`
41. `AppBackupLimitsActivity`

**Green = P3 flow complete through the engine/dependency boundary.** Runtime verification and the underlying P4/P5/P6 execution remain separate.

### 🟡 Yellow — 28

1. `ApkImportActivity`
2. `AppInfoActivity`
3. `LabelEditActivity`
4. `LabelsActivity`
5. `BoxSignInActivity`
6. `FilenSignInActivity`
7. `OneDriveSignInActivity`
10. `TeraBoxSignInActivity`
11. `YandexSignInActivity`
12. `ContributorRegActivity`
13. `DetailActivity`
14. `FolderDetailActivity`
15. `FolderEditActivity`
16. `FolderPickerActivity`
17. `FoldersBatchActivity`
18. `ScheduleLabelsSelectActivity`
19. `ScheduleFolderSelectActivity`
20. `CallsBackupRestoreActivity`
21. `MessagesBackupRestoreActivity`
22. `ChatActivity`
23. `CallsDashActivity`
24. `MessagesDashActivity`
25. `PremiumActivity`
26. `AppVisibilityDiagnosticsActivity`
27. `WallsDashActivity`
28. `WallApplyActivity`
29. `WallsManageActivity`
30. `WifiActivity`

**Yellow = evidence-supported P3 UI/navigation/user-flow reconstruction is still incomplete.** If only the underlying engine/provider/backend is missing after the flow reaches its boundary, the Activity must be green and that gap belongs to the later phase.

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
- `CallsBackupRestoreActivity` → 🟡; Reference has adapter-backed backup selection, refresh/state controls, and call-log permission flow.
- `ChatActivity` → 🟡; BaRe currently stops at toolbar + empty RecyclerView; the Reference owns conversation/message rendering state.
- `MessagesDashActivity` → 🟡; Reference has permission flow, dynamic device/cloud backup counts, menus, and navigation to conversation/settings surfaces.
- `CallsDashActivity` → 🟡; Reference has call-log permission flow, dynamic device/cloud backup counts, menus, and settings navigation.

No promotion was made in this slice because the remaining differences are still evidence-supported P3 reconstruction gaps, not merely deferred execution engines.

## Latest vertical audit — Premium / Diagnostics / Walls / Wi-Fi / Locale

Audited against current BaRe source/resources:

- `PremiumActivity` → 🟡; feature list is static and purchase action is only a boundary; product/catalog and purchase-state presentation remain unreconstructed.
- `AppVisibilityDiagnosticsActivity` → 🟡; search/list surface exists but the RecyclerView has no diagnostics data contract and refresh/copy remain boundaries.
- `WallsDashActivity` → 🟡; dashboard cards exist in XML but actions/data state are not wired.
- `WallApplyActivity` → 🟡; image/apply surface exists but apply action and wall state are deferred behind boundary.
- `WallsManageActivity` → 🟡; RecyclerView remains empty.
- `WifiActivity` → 🟡; three Wi-Fi categories exist structurally but adapters/data are empty.
- `LocaleActivity` → 🟡; locale RecyclerView remains empty.

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

`LabelsActivity` / `LabelEditActivity` were also deepened with create/delete/clear/save confirmation flows, but remain 🟡 because Reference exposes additional label color/app-selection interaction surfaces that are not yet reconstructed.

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

- **42 🟢:** P3 flow is complete through the engine/dependency boundary. These Activities should now be treated as downstream-phase inputs.
- **28 🟡:** P3 remains active because Reference UI/navigation/user-flow reconstruction is still incomplete. Each batch must finish that flow before promotion.
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

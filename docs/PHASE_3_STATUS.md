# BΛR☰ Phase 3 Status — UI + Navigation

## Purpose

This is the **current Phase 3 work queue and latest complete 71-Activity depth audit**.

Phase 3 answers:

> Which of the 71 Reference Activities have meaningful UI/navigation reconstruction, which are still shallow, and which are urgent?

It does **not** claim runtime verification, visual parity, backup/restore execution, provider execution, backend implementation, or full P4/P5 feature parity.

## Status semantics

- 🔴 **RED — not meaningful yet**: too thin/stub-like to count as meaningful Phase 3 reconstruction.
- 🟡 **YELLOW — shallow/boundary**: the surface exists, but meaningful Reference data/behavior/deeper contract is still pending or intentionally deferred.
- 🟢 **GREEN — meaningful Phase 3 reconstruction**: the Activity has substantive Reference-derived UI/navigation/state/source-contract depth. Green does not mean runtime verified or feature-complete.

## Latest complete 71-Activity depth audit

Audit head: `36704f7803bf779887e59c3c94513f457f1ea1aa` (`rewrite`).

The audit started from snapshot `7f03a13a0dc05bdf42b5cad28c16f81d33651551`, then re-validated every post-snapshot change through the current head. The three previous “special review” Activities were also compared directly against the supplied Reference source/layout and are now classified normally.

| Depth | Count |
|---|---:|
| 🟢 Green | **23** |
| 🟡 Yellow | **48** |
| 🔴 Red | **0** |
| **Total** | **71** |

### 🟢 Green — 23

1. `ConfigEditActivity`
2. `ConfigListActivity`
3. `AppListActivity`
4. `AppsBatchActivity`
5. `BlacklistActivity`
6. `CloudConnectActivity`
7. `FoldersDashActivity`
8. `HomeActivity`
9. `HomeSearchActivity`
10. `IntroActivity`
11. `NoticeListActivity`
12. `NoticeViewActivity`
13. `AppSwipeActionsActivity`
14. `LicensesActivity`
15. `SettingsActivity`
16. `SettingsDetailActivity`
17. `SLogActivity`
18. `PreconditionsActivity`
19. `TaskActivity`
20. `ComposeSmsActivity`
21. `MultipleBackupsActivity`
22. `RestoreSpecialDataDetailsActivity`
23. `AppBackupLimitsActivity`

**Green = P3 depth only.** Runtime/visual verification and underlying P4/P5 execution remain separate gates.

### 🟡 Yellow — 48

1. `ApkImportActivity`
2. `ConfigSettingsActivity`
3. `AppInfoActivity`
4. `LabelEditActivity`
5. `LabelsActivity`
6. `AppsConfigRunActivity`
7. `AppsQuickActionsActivity`
8. `BoxSignInActivity`
9. `CsActivity`
10. `DropboxSignInActivity`
11. `FilenSignInActivity`
12. `GmsSignInActivity`
13. `MegaSignInActivity`
14. `NoGmsSignInActivity`
15. `OneDriveSignInActivity`
16. `TeraBoxSignInActivity`
17. `YandexSignInActivity`
18. `CloudDiagnosticsActivity`
19. `CloudOrphanCleanerActivity`
20. `ContributorRegActivity`
21. `DetailActivity`
22. `FolderDetailActivity`
23. `FolderEditActivity`
24. `FolderPickerActivity`
25. `FoldersBatchActivity`
26. `ScheduleLabelsSelectActivity`
27. `ScheduleFolderSelectActivity`
28. `StorageSwitchActivity`
29. `ManageSpaceActivity`
30. `CallsBackupRestoreActivity`
31. `MessagesBackupRestoreActivity`
32. `ChatActivity`
33. `ConversationsActivity`
34. `CallsDashActivity`
35. `MessagesDashActivity`
36. `PasswordStrategyActivity`
37. `UserPasswordActivity`
38. `PremiumActivity`
39. `AppVisibilityDiagnosticsActivity`
40. `ShortcutsActivity`
41. `WallsDashActivity`
42. `WallApplyActivity`
43. `WallsManageActivity`
44. `WifiActivity`
45. `LocaleActivity`
46. `PCloudSignInActivity`
47. `CallsBackupsActivity`
48. `MessagesBackupsActivity`

### Former special-review items

Direct comparison against the supplied Reference source/layout at the current head resolves all three as **🟡 Yellow**:

- `WallsManageActivity`: Reference has substantive menu/state/list behavior; BaRe currently exposes the shell with an empty adapter.
- `WifiActivity`: Reference contains substantial Wi-Fi backup/restore/settings logic; BaRe currently exposes the card/dialog surface with empty adapters and no provider engine.
- `LocaleActivity`: Reference has locale catalog/menu/selection behavior; BaRe currently exposes the toolbar/list shell with an empty adapter.

They are no longer a separate classification bucket.

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

- **23 🟢:** P3 boundary is considered reached. These Activities should now be treated as downstream-phase inputs rather than routine P3 backlog. Their remaining work, where any exists, is execution/feature/deviation/verification work.
- **48 🟡:** P3 remains active because these Activities still have shallow Reference-derived UI/navigation/state depth, or they expose a boundary whose deeper reconstruction is still pending. Each next slice must distinguish P3 work from P4/P5 dependency before implementation.
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

The current P3 decision is therefore **not** “make every 71/3/8 component green before leaving P3.” The correct gate is:

> **Finish evidence-supported P3 reconstruction, freeze surfaces that have reached their P3 boundary, and move their remaining gaps to the phase that owns those gaps.**

This keeps P3 from absorbing backup/restore engines, service execution, provider side effects, backend implementation, or other P4/P5/P6 work merely to improve a depth label.

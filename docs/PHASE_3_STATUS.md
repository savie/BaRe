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
| 🟢 Green | **66** |
| 🟡 Yellow | **5** |
| 🔴 Red | **0** |
| **Total** | **71** |

### 🟢 Green — 66

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
62. `MessagesBackupRestoreActivity`
63. `ChatActivity`
64. `CallsDashActivity`
65. `MessagesDashActivity`
66. `PremiumActivity`

**Green = P3 flow complete through the engine/dependency boundary.** Runtime verification and the underlying P4/P5/P6 execution remain separate.

### 🟡 Yellow — 5

1. `AppVisibilityDiagnosticsActivity`
2. `WallsDashActivity`
3. `WallApplyActivity`
4. `WallsManageActivity`
5. `WifiActivity`

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

- `MessagesBackupRestoreActivity` → 🟢; Reference-shaped backup/restore mode, adapter-selection boundary, select-all, default-SMS-role request/rationale flow, refresh/state surface, and action boundary are reconstructed.
- `CallsBackupRestoreActivity` → 🟢; Reference-shaped backup/restore mode, adapter-selection boundary, refresh/state surface, select-all, call-log permission flow, and action boundary are reconstructed.
- `ChatActivity` → 🟢; Reference toolbar/conversation-title surface, RecyclerView message surface, hidden debug-menu contract, back navigation, and recreation state are reconstructed through the message-provider/adapter boundary. The Reference `qv1` conversation Parcelable and message-rendering provider are not fabricated.
- `MessagesDashActivity` → 🟢; Reference-shaped local/cloud cards, READ_SMS + READ_CONTACTS permission gate, MessagesBackupRestoreActivity navigation, settings/navigation menu contracts, cloud-card highlight input, and explicit provider/count boundary are reconstructed.
- `CallsDashActivity` → 🟢; Reference-shaped local/cloud cards, call-log permission flow, backup/settings navigation, menu contracts, cloud-card highlight input, and explicit data-count boundary are reconstructed.

## Latest vertical slice — Calls / Messages dashboard P3 completion

Compared directly with the supplied Swift Backup 5.1.0 Reference:

- `CallsDashActivity` now requests the verified Reference permission set: `WRITE_CALL_LOG`, `READ_CALL_LOG`, and `READ_CONTACTS`, with explicit denied-permission UI state.
- `MessagesDashActivity` now requests the verified Reference permission set: `READ_SMS` and `READ_CONTACTS`, with explicit denied-permission UI state.
- Both retain the Reference settings navigation contracts (`category=3` calls, `category=2` messages) and backup-list navigation.
- `MessagesDashActivity` keeps the Reference menu behavior where `action_view_messages` is initially hidden; the existing conversation route remains available to downstream state wiring.
- Device/cloud backup counts remain data-engine boundaries and were not fabricated.

`CallsDashActivity` is promoted to 🟢 at the evidence-supported P3 boundary.

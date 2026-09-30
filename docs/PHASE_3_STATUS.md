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

# Apps Reference Resource Inventory & Producer-Consumer Reconciliation Ledger

Status: AUDIT / STATIC EVIDENCE ONLY

## Evidence boundary

Sumber:
- SwiftBackup 5.1.0-620 decompiled JADX source/resource tree.
- AndroidManifest dan smali pada decompile.
- Audit checkpoints 1–35 pada `reference/reference_apps_audit.md`.

Tidak ada runtime Reference/Apps2 yang dijalankan pada pass ini. Karena itu seluruh status VERIFIED di dokumen ini berarti VERIFIED STATICALLY, bukan runtime-verified.

## A. Formal inventory — remaining candidate set inspected in Checkpoint 34–35

| Candidate | Evidence | Classification | Confidence |
|---|---|---|---|
| app_backup_limits_edittext | included by app_backup_limits_item | TRANSITIVE | VERIFIED STATICALLY |
| app_backup_limits_item | referenced by app_backup_limits_activity | TRANSITIVE | VERIFIED STATICALLY |
| app_swipe_preview_content | referenced by app_swipe_actions_fragment | TRANSITIVE | VERIFIED STATICALLY |
| app_visibility_diagnostics_activity | included by appbar; Activity also present at manifest/smali boundary | RUNTIME + TRANSITIVE | VERIFIED STATICALLY |
| appbar | referenced by multiple detail/config/folder/Apps/settings layouts | TRANSITIVE | VERIFIED STATICALLY |
| appbar_with_filters | referenced by app_list_activity/apps_batch_activity/apps_config_run_activity | TRANSITIVE | VERIFIED STATICALLY |
| config_notice_view | referenced by config_edit_activity | TRANSITIVE | VERIFIED STATICALLY |
| config_settings_view | referenced by config_settings_activity/config_edit_item | TRANSITIVE | VERIFIED STATICALLY |
| delete_app_backups_dialog_switch_item | referenced by delete_app_backups_dialog | TRANSITIVE | VERIFIED STATICALLY |
| detail_card_app_backup | referenced by detail_activity | TRANSITIVE | VERIFIED STATICALLY |
| detail_card_app_info | referenced by detail_activity | TRANSITIVE | VERIFIED STATICALLY |
| detail_card_app_storage | referenced by detail_card_app_info | TRANSITIVE | VERIFIED STATICALLY |
| detail_card_storage_loading | referenced by detail_card_app_storage | TRANSITIVE | VERIFIED STATICALLY |
| folder_backup_card_item | referenced by folder_detail_backup_card | TRANSITIVE | VERIFIED STATICALLY |
| folder_detail_backup_card | referenced by folder_detail_activity | TRANSITIVE | VERIFIED STATICALLY |
| folder_detail_card_loading_view | referenced by folder_detail_info_card | TRANSITIVE | VERIFIED STATICALLY |
| folder_detail_info_card | referenced by folder_detail_activity | TRANSITIVE | VERIFIED STATICALLY |
| folder_restore_location_item | referenced by folder_restore_dialog | TRANSITIVE | VERIFIED STATICALLY |
| folder_strategy_item | referenced by folder_backup_dialog/folder_restore_dialog | TRANSITIVE | VERIFIED STATICALLY |
| home_appbar | referenced by home_activity and layout-w600dp/home_activity | TRANSITIVE | VERIFIED STATICALLY |
| label_edit_apps_view | referenced by label_edit_activity / binding collaborator | TRANSITIVE | VERIFIED STATICALLY |
| label_edit_color_view | referenced by label_edit_activity / binding collaborator | TRANSITIVE | VERIFIED STATICALLY |
| multiple_backups_strategy_item | referenced by multiple_backups_strategy_activity | TRANSITIVE | VERIFIED STATICALLY |
| quick_action_card | referenced by dash_fragment/apps_quick_actions_fragment | TRANSITIVE | VERIFIED STATICALLY |
| task_activity_top | referenced by task_activity / TaskActivity binding path | TRANSITIVE | VERIFIED STATICALLY |

### Inventory boundary

This is the **formalized set actually inspected in Checkpoints 34–35**. The historical "112 candidates" was generated before the formal inventory existed; this ledger does not fabricate the other candidate names. Therefore the historical 112 count is not treated as a current unresolved count.

## B. Producer-consumer ledger — core Apps subsystem

### 1. Apps list / navigation

`AppListActivity`
→ local/cloud repository selection
→ app collection/state
→ `ws` list presenter/adapter
→ app item rendering
→ selection/swipe/overflow actions
→ Detail / Batch / Quick Actions / Labels / Config navigation.

Status: VERIFIED STATICALLY at subsystem level.

### 2. Canonical app model

Producers:
- PackageInfo → `ji.Companion.fromPackageInfo`
- LocalMetadata → `ji.Companion.fromMetadataFile`
- AppCloudBackups → `ji.Companion.fromCloudBackups`

Consumers:
- Apps list/filter/sort
- Detail
- Backup/restore selection
- labels
- local/cloud backup state.

Status: producer convergence VERIFIED STATICALLY.

### 3. Size model

`qx`
→ APK / split APK / shared libraries / data / DE-data / external data / media / expansion / cache / aggregate sizes.

Consumers include metadata display, backup sizing/selection, and restore sizing paths.

Status: VERIFIED STATICALLY.

### 4. AppPart routing

`iu`
→ APP / DATA / EXTDATA / EXPANSION / MEDIA
→ part-specific backup artifact
→ LocalMetadata / CloudMetadata
→ restore descriptor / selected restore parts.

Additional split/shared-library metadata is covered by the artifact graph.

Status: VERIFIED STATICALLY for observed producer/consumer graph.

Boundary: exact low-level implementation details outside the inspected EXPANSION restore path remain subject to collaborator closure.

### 5. Special-data boundary

Sources:
- requested permissions + permission flags
- notification-access component state
- accessibility component state
- SSAID
- notification policy XML

→ `AppSpecialDataPayload.write()`
→ versioned user-bound compressed/base64 artifact
→ Local/cloud special-data artifact
→ `AppSpecialDataPayload.read()`
→ restore consumers.

Status: VERIFIED STATICALLY.

### 6. Local metadata transition

Artifact writers:
- APP
- SPLITS
- SHARED-LIBS
- DATA/DE-DATA
- MEDIA
- EXPANSION
- special-data.

→ LocalMetadata mutation
→ transient special-data legacy fields cleared after payload finalization
→ metadata persistence.

Status: VERIFIED STATICALLY.

### 7. Cloud metadata transition

Part upload descriptors
→ CloudMetadata update methods
→ version requirement stamping
→ `prepareForFirebaseUpload()`
→ legacy special-data fields cleared
→ Firebase metadata persistence.

Special-data:
→ upload artifact
→ success gate
→ `updateSpecialDataDetails(link,size)`.

Delete:
→ metadata mutation
→ special-data link deletion when applicable
→ remote delete retry.

Status: VERIFIED STATICALLY.

Boundary: remote/backend transaction atomicity UNKNOWN.

### 8. Restore orchestration

Restore request:
- canonical `ji`
- selected `AppPart`
- permission mode
- restore-special-permissions flag
- restore-SSAID flag
- local/cloud backup identity
- force-redo.

→ restore task
→ version compatibility predicate
→ artifact resolution
→ APK/data/platform restore
→ special-data/permission/SSAID post-processing.

Status: VERIFIED STATICALLY at orchestration/data-contract level.

Boundary:
- explicit historical metadata schema migration engine UNKNOWN / NOT FOUND IN INSPECTED SOURCE;

### 9. Task/precondition boundary

Apps backup/restore execution
→ task infrastructure
→ preconditions
→ progress/error summary
→ TaskActivity/task support.

Status: VERIFIED STATICALLY.

### 10. UI resource boundary

Evidence classes:
1. direct Java `R.*`;
2. XML include/reference;
3. binding/decompiled collaborator;
4. manifest/smali runtime surface.

Therefore absence of direct Java `R.*` is not an unused-resource proof.

Status: VERIFIED STATICALLY for inspected candidate set.

## C. 45-class cluster reconciliation

| Cluster | Source count | Current producer/consumer status |
|---|---:|---|
| appslist | 14 | list/navigation/filter/model/resource graph substantially reconciled; exact obfuscated filter collaborators partly UNKNOWN |
| appsquickactions | 1 | Activity/fragment/card/dialog/resource graph reconciled at static level |
| appinfo | 1 | detail→AppInfo navigation and model/metadata relationship reconciled |
| detail | 2 | detail cards/chips/storage/backup-history graph reconciled |
| appconfigs | 11 | config list/edit/settings/run surfaces and resource/binding edges substantially reconciled |
| apptasks | 8 | task/precondition/execution boundary reconciled; exact low-level execution collaborators partly UNKNOWN |
| model/app | 5 | `ji`, `qx`, backup/model convergence substantially reconciled |
| settings/appbackuplimits | 2 | backup-limits resource path reconciled; deeper settings behavior remains separate scope |
| settings/appvisibility | 1 | Activity/resource/manifest boundary reconciled; exact runtime layout behavior remains static-only |

Total source inventory: 45.

## D. Explicit unresolved boundaries

- Exact mapping of all 342 imported `defpackage.*` collaborators is not complete.
- Exact filter collaborator decomposition remains partly UNKNOWN.
- Explicit historical metadata schema migration engine: UNKNOWN / NOT FOUND IN INSPECTED SOURCE.
- Cloud backend transactional/atomic semantics remain UNKNOWN.
- Runtime visual parity and runtime branch behavior remain UNVERIFIED.
- Full formal reconciliation of the historical 112-candidate universe is blocked by the absence of its original complete candidate-name list in the committed audit text; this ledger therefore records only the candidates actually inspected and evidenced rather than inventing missing entries.

## Gate

Apps2 implementation: NOT STARTED.
Architecture freeze: NOT AUTHORIZED.
Home cutover: NOT AUTHORIZED.
Legacy Apps: UNCHANGED.


## E. Checkpoint 38 closure update

### Split restore
- `mq` cloud metadata → `fo2(type=2)` → split target descriptor: VERIFIED STATICALLY.
- `xw` restore orchestration → `yw`: VERIFIED STATICALLY.
- `mv.c` split extraction into `workingDir/splits`: VERIFIED STATICALLY.
- `mv.g` base-version filtering and exclusion set: VERIFIED STATICALLY.
- `mv.f` source-preserving install, package-manager fallback, split failure cleanup, retry, and `pm install-existing` fallback: VERIFIED STATICALLY.
- Low-level split extraction/install boundary is therefore no longer UNKNOWN at the execution-path level inspected here.

### Metadata version / migration
- LocalMetadata version constants and per-part stamping: VERIFIED STATICALLY.
- CloudMetadata per-part stamping, global minimum version, and legacy-field normalization: VERIFIED STATICALLY.
- Explicit historical schema-by-schema migration engine: UNKNOWN / NOT FOUND IN INSPECTED SOURCE.
- Do not infer from the absence of a dedicated migrator class that no historical migration exists elsewhere.

### Current unresolved boundaries
- 342 imported `defpackage.*` collaborators: not fully reconstructed.
- Exact filter predicate collaborator decomposition: partly UNKNOWN.
- Explicit historical metadata schema migration engine: UNKNOWN.
- Cloud backend transaction/atomicity: UNKNOWN.
- Runtime visual/branch verification: UNVERIFIED.

## F. Checkpoint 39 — Exact 45-Class Inventory Reconciliation

### Inventory verification

The decompiled source tree was rechecked against the nine audit clusters. The exact 45-class inventory is:

#### appslist — 14
1. `FavoriteApp`
2. `FavoriteAppsRepo$FavoritesWrapper`
3. `AppListItemLayout`
4. `AppRowLabelsView`
5. `AppItemContentLayout`
6. `AppSwipeActionRevealLayout`
7. `AppListActivity`
8. `LabelEditActivity`
9. `LabelParams`
10. `LabelledApp`
11. `LabelsData`
12. `LabelsActivity`
13. `AppsConfigRunActivity`
14. `AppsBatchActivity`

#### appsquickactions — 1
15. `AppsQuickActionsActivity`

#### appinfo — 1
16. `AppInfoActivity`

#### detail — 2
17. `ShortcutPinnedReceiver`
18. `DetailActivity`

#### appconfigs — 11
19. `b` (list)
20. `ConfigListActivity`
21. `a` (list)
22. `ConfigSettingsActivity`
23. `a` (edit)
24. `ConfigEditActivity`
25. `Config`
26. `b` (data)
27. `ConfigSettings`
28. `ConfigsData`
29. `a` (data)

#### apptasks — 8
30. `AppsWorkingDir`
31. `InstallerSourceProxy`
32. `NotificationPolicyProxy`
33. `a` (notifications)
34. `b` (notifications)
35. `c` (notifications)
36. `SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata`
37. `a` (sba)

#### model/app — 5
38. `AppSpecialDataPayload`
39. `AppCloudBackup`
40. `CloudMetadata`
41. `LocalMetadata`
42. `AppCloudBackups`

#### settings/appbackuplimits — 2
43. `AppBackupLimitsActivity`
44. `AppBackupLimitItem`

#### settings/appvisibility — 1
45. `AppVisibilityDiagnosticsActivity`

### Reconciliation result

- Inventory count: **45 / 45 VERIFIED STATICALLY**.
- All nine cluster counts now reconcile exactly to 45.
- The previous apparent task-cluster mismatch was caused by separating `apptasks` from the generic `tasks` package; the 8-class audit cluster is the concrete `org.swiftapps.swiftbackup.apptasks` subtree.
- The model/app cluster includes the already-closed special-data and metadata producer/consumer graph.
- The apptasks cluster is execution-boundary reconciled, but its low-level collaborators outside the eight concrete classes are not all reconstructed.
- The appslist cluster is substantially reconciled; exact full filter predicate decomposition remains collaborator-level UNKNOWN.
- appconfigs, detail, appinfo, appsquickactions, settings/appbackuplimits, and settings/appvisibility have static class/resource/navigation coverage at the inspected boundary.

### Gate interpretation

This closes the **45-class inventory reconciliation**, not every collaborator semantic.

Therefore:
- 45-class inventory: VERIFIED STATICALLY.
- 45-class cluster producer/consumer reconciliation: VERIFIED STATICALLY.
- Deep reconstruction of every imported collaborator: BELUM SELESAI.
- Historical metadata migration engine: UNKNOWN / NOT FOUND IN INSPECTED SOURCE.
- Cloud backend transaction/atomicity: UNKNOWN.
- Runtime visual/branch verification: UNVERIFIED.
- Apps2 implementation: BELUM DIMULAI.
- Architecture freeze: BELUM / NOT AUTHORIZED.
- Home cutover: BELUM / NOT AUTHORIZED.
- Legacy Apps: TIDAK DIUBAH.


## G. Architecture baseline gate

The reconciliation is sufficient to define a static evidence-based Apps2 architecture baseline.

Baseline-safe contracts:
- app discovery → canonical app model;
- local/cloud repository → list state;
- search/filter/sort → list projection;
- AppPart → artifact writer/reader → metadata;
- special-data → isolated payload artifact;
- restore request → compatibility gate → artifact restore → task/precondition;
- capability checks → explicit platform adapter boundary;
- Legacy Apps remains isolated.

Not safe to assume:
- historical metadata migration behavior;
- cloud backend atomicity;
- runtime visual/branch parity;
- unresolved obfuscated collaborator semantics.

**Architecture baseline:** AUTHORIZED.
**Architecture freeze:** NOT AUTHORIZED.
**Apps2 implementation:** NOT AUTHORIZED YET until the baseline artifact is recorded.

# Audit Referensi Apps — Checkpoint 1

## Status

Status: AKTIF / AUDIT PENEMUAN

Sumber bukti:
- SwiftBackup 5.1.0-620 decompiled JADX sources
- apktool resources
- AndroidManifest
- `docs/reference_apps_shell_mapping.md`
- `docs/worklog-apps2.md`

Batas bukti:
- runtime Reference belum dijalankan;
- runtime Apps2 belum ada;
- static/decompiled evidence tidak dianggap sebagai bukti runtime;
- collaborator `defpackage.*` yang belum direkonstruksi tetap UNKNOWN.

## Inventory

Cluster source yang diaudit:

| Cluster | Source |
|---|---:|
| appslist | 14 |
| appsquickactions | 1 |
| appinfo | 1 |
| detail | 2 |
| appconfigs | 11 |
| apptasks | 8 |
| model/app | 5 |
| settings/appbackuplimits | 2 |
| settings/appvisibility | 1 |

Total: 45 source class pada cluster tersebut.

Cluster tersebut mengimpor 342 nama `defpackage.*` unik. Angka ini adalah jumlah nama collaborator yang terimpor pada cluster audit, bukan jumlah class Apps yang seluruhnya sudah dipahami.

## Apps List

Entry utama:

`org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity`

Teramati:

- section LOCAL dan CLOUD melalui `KEY_SECTION`;
- toolbar title berdasarkan section;
- search;
- filter;
- drawer;
- pull-to-refresh;
- RecyclerView;
- FastScroller;
- batch-action entry;
- drawer actions: Quick Actions, Labels, Custom Configurations, Blacklist;
- drawer bottom actions: App Backup Settings, Settings;
- state/controller: `tt`;
- repository: `kz4` untuk local dan `ua1` untuk cloud;
- list adapter/presenter: `ws`.

Core layout:

- `app_list_activity.xml`
- `appbar_with_filters.xml`
- `toolbar_mini.xml`
- `app_item.xml`
- `error_layout.xml`

Core menu:

- `menu_apps.xml`

Shell menu hanya mendefinisikan:

1. Search → inline search.
2. Filter → filter surface.
3. Drawer → navigation drawer.

`app_list_activity.xml` secara static terdiri dari DrawerLayout, CoordinatorLayout, appbar, SwipeRefreshLayout, RecyclerView, FastScroller, error surface, ExtendedFAB batch action, dan drawer top/bottom list.

`app_item.xml` memiliki icon, package/name, backup status, labels, favorite indicator, item menu, selection checkbox, dan swipe-action containers.

Custom Apps List view:

- `AppListItemLayout`
- `AppItemContentLayout`
- `AppRowLabelsView`
- `AppSwipeActionRevealLayout`

## Filter / Sort

Filter surface:

`filter_bottom_dialog.xml`

Kelompok yang teramati:

- Sort
- App type
- System app filters
- Favorites
- Labels
- Backup status
- Cloud sync
- Install status
- Enabled status
- Miscellaneous

Sort enum `defpackage.sx`:

- Name
- InstallDate
- UpdateDate
- BackupDate
- AppSize
- BackupSize
- DateUsed

Filter implementation utama: `defpackage.sc3`.

Persisted/state helper yang teramati: `defpackage.iy`.

Exact mapping semua obfuscated filter collaborator masih UNKNOWN.

## Canonical App Model

`defpackage.ji` adalah central app model.

Teramati mencakup:

- package/name/appId;
- version name/code;
- source/data/de-data path;
- split APK dan shared libraries;
- install/update/backup timestamp;
- installed/bundled/enabled/launchable/favorite/cloud state;
- local/cloud backups;
- labels;
- size;
- installer package;
- restorable-backup state;
- external/media/expansion information.

Size model: `defpackage.qx`.

Teramati mencakup APK, split APK, shared libraries, data, de-data, external data, media, expansion/OBB-related size, cache, dan aggregate.

## Batch / Config / Quick Actions

Teridentifikasi:

- `AppsBatchActivity`
- `AppsConfigRunActivity`
- `AppsQuickActionsActivity`

Resource utama:

- `apps_batch_activity.xml`
- `apps_config_run_activity.xml`
- `apps_quick_actions_activity.xml`
- `apps_quick_actions_fragment.xml`
- action dialog resources

Batch terhubung dengan search/filter, multi-selection, label selection/apply, dan App backup settings.

Config memiliki custom configuration execution/list.

Quick Actions memiliki Activity + fragment/card/dialog resource sendiri.

## Labels

Teridentifikasi:

- `LabelsActivity`
- `LabelEditActivity`
- `LabelParams`
- `LabelledApp`
- `LabelsData`

Resource utama:

- `labels_activity.xml`
- `label_edit_activity.xml`
- `label_edit_apps_view.xml`
- `label_edit_color_view.xml`
- `app_label_item.xml`

Static evidence mendukung list, create/edit/delete, assign, association, dan selected-label filtering.

## Detail / Backup History

Entry:

`org.swiftapps.swiftbackup.detail.DetailActivity`

Manifest parent chain:

`AppListActivity → DetailActivity → AppInfoActivity`

Detail resource:

- `detail_activity.xml`
- `detail_card_app_backup.xml`
- `detail_card_app_info.xml`
- `detail_card_app_storage.xml`
- `detail_card_custom_tab.xml`
- `detail_card_storage_loading.xml`
- `detail_chip.xml`
- `appbar.xml`

Backup-card actions:

- backup details
- metadata
- protect/unprotect
- add note
- cloud sync
- delete

Backup-chip actions:

- restore
- cloud sync
- encryption information
- share APK
- delete

Storage-chip actions:

- backup to local
- backup to cloud
- backup to local and cloud
- share APK
- delete

## Backup Parts

`defpackage.iu` memiliki:

- APP
- DATA
- EXTDATA
- EXPANSION
- MEDIA

Static code menunjukkan display label, icon, backup capability requirement, dan persisted checked state.

`EXPANSION` adalah part eksplisit Reference. Mapping capability/behavior-nya ke Apps2 masih UNKNOWN.

## Restore Evidence

Detail backup-chip restore:

- menentukan backup identity;
- meneruskan app + selected part ke restore orchestration;
- membaca `restore_special_permissions` dengan default true pada path yang diperiksa;
- membaca `restore_ssaids` dengan default false pada path yang diperiksa;
- selected parts berasal dari `iu`.

Ini menunjukkan restore bukan sekadar aksi copy dari UI.

Exact restore task/install/data/platform graph masih harus dibongkar.

## Task / Preconditions

Teridentifikasi:

- `AppsWorkingDir`
- `SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata`
- `sba.a`
- `InstallerSourceProxy`
- `TaskService`
- `TaskManager$ErrorSummary`
- `PreconditionsActivity`
- `TaskActivity`
- notification/task support

Static evidence menunjukkan execution berbasis task dengan precondition/progress/error infrastructure.

## Navigation Boundary

Terbukti dari manifest:

```
HomeActivity
  ↓
AppListActivity
  ├── AppsBatchActivity
  ├── AppsConfigRunActivity
  └── DetailActivity
        └── AppInfoActivity
```

Surface lain yang teridentifikasi:

- LabelsActivity
- LabelEditActivity
- AppsQuickActionsActivity
- ConfigListActivity
- ConfigEditActivity
- ConfigSettingsActivity
- RestoreSpecialDataDetailsActivity
- MultipleBackupsActivity
- AppBackupLimitsActivity
- AppVisibilityDiagnosticsActivity
- task/precondition activities

Belum semua terbukti wajib untuk first Apps2 slice.

## Architecture Conclusion

**CONFIRMED**

Reference Apps adalah subsystem multi-layer:

```
Apps Shell
  ↓
List / State / Repository
  ↓
Canonical App Model
  ↓
Filter / Sort / Selection
  ↓
Detail / Backup History
  ↓
Backup / Restore orchestration
  ↓
Task / Preconditions / Platform capability
```

**PARTIALLY CONFIRMED**

- class-to-class mapping obfuscated collaborators;
- local/cloud persistence graph;
- full backup task graph;
- full restore execution graph;
- advanced/settings dependency graph.

**UNKNOWN**

- runtime visual parity;
- runtime branch behavior;
- full error/recovery behavior;
- complete EXPANSION semantics;
- complete cloud synchronization semantics.

## Apps2 Boundary

Tetap berlaku:

- Reference Apps = blueprint/source evidence;
- BaRe = implementation environment;
- Apps2 = isolated rewrite/port;
- Legacy Apps-specific implementation bukan dependency default;
- collision → namespace/class baru;
- Reference encryption bukan otomatis requirement;
- Home → Apps cutover ditunda sampai implementation + verification.

`docs/reference_apps_shell_mapping.md` tetap berguna sebagai evidence geometry/component Reference, tetapi bagian yang menyarankan mempertahankan `AppsFilterScreen` Legacy **bukan contract arsitektur Apps2**.

## Audit Result

Checkpoint ini **BERHASIL sebagai inventory/decomposition checkpoint**, tetapi **BELUM audit Reference Apps 100% selesai**.

Sebelum implementation, masih perlu:

1. `ji` producer/population graph.
2. `tt → dv → kz4/ua1` full state/repository graph.
3. filter state persistence/application graph.
4. app item swipe/overflow action graph.
5. DetailActivity backup/restore collaborator graph.
6. backup task/archive/precondition graph.
7. restore install/data/platform capability graph.
8. local/cloud metadata/history representation.
9. advanced Apps configuration dependencies.
10. exact Apps2 class/resource mapping.

## Next Action

Lanjut audit class-by-class pada unresolved collaborators dan execution graph.

Belum membuat implementation Apps2.
Belum mengubah Home → Apps.
Belum mengubah Legacy Apps.

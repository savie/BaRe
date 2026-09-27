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


## Checkpoint 2 — App Model / Repository Producers

### `ji` producer graph

Static inspection confirms three important construction paths:

- `ji.Companion.fromPackageInfo(PackageInfo)`
  - creates the canonical app model from Android package information;
  - calls `setFromPackageInfo`;
  - calls `refreshExtras`.

- `ji.Companion.fromMetadataFile(q63)`
  - reads `LocalMetadata` through `cu.b`;
  - constructs a `ji` from persisted metadata;
  - checks installation state;
  - refreshes backup details.

- `ji.Companion.fromCloudBackups(AppCloudBackups)`
  - reads the latest cloud metadata;
  - tries to resolve the installed PackageInfo;
  - falls back to metadata-only app construction when the package is not installed;
  - attaches cloud backups;
  - marks the app as cloud app;
  - refreshes backup details.

This establishes that `ji` is a convergence model for installed-package discovery, local metadata, and cloud backup inventory.

### Local / cloud backup representation

Local:

`defpackage.gm` = backup identity wrapper + `LocalMetadata`.

Cloud:

`AppCloudBackup` = backup ID + `CloudMetadata`.

`AppCloudBackups`:

- contains multiple `AppCloudBackup`;
- exposes latest backup;
- calculates total metadata size;
- can reconstruct the list from a cloud snapshot;
- sorts backups by backup/update date;
- rejects empty/invalid backup collections.

### Metadata boundary

`LocalMetadata` and `CloudMetadata` are not minimal display records.

Static fields show per-part backup metadata including APK, data, external data, expansion, media, split APK, shared-library, encryption metadata, version requirements, sizes, mirrored sizes, permissions/special-data fields, backup dates, installer/package/version information, and protection/note state.

Exact serialization/storage schema beyond these model fields remains to be mapped.

### Repository state

`tt` confirms:

- current section state is retained;
- persisted sync filter is read from SharedPreferences;
- local section resets applied sync filtering when required network/cloud capability is unavailable;
- repository is selected externally as local `kz4` or cloud `ua1`;
- repository load is delegated through `dv`;
- search text is maintained separately from the full list;
- search filtering produces a distinct list-state result;
- list state exposes loading/result state through observable holders.

### Local repository

`kz4` statically:

- checks root/capability state;
- reads the `show_system_apps` preference;
- obtains local installed app inventory through `g00.l(showSystemApps)`;
- updates/removes apps on package events;
- refreshes existing `ji` objects after package events;
- constructs new `ji` from PackageInfo for newly observed packages.

### Cloud repository

`ua1` statically:

- requires cloud/drive connectivity;
- fetches cloud snapshot data;
- reconstructs `AppCloudBackups`;
- converts each valid cloud backup collection into `ji`;
- marks the resulting app as cloud app;
- reacts to app events for existing inventory.

### Discovery implication

The Apps2 first list slice therefore needs its own equivalent boundaries for:

```
Apps2 App Discovery
      ↓
Apps2 Canonical App Model
      ↓
Apps2 Local/Cloud Inventory
      ↓
Apps2 List State
      ↓
Apps2 Search / Filter / Sort
      ↓
Apps2 UI
```

This does not authorize reuse of Legacy Apps repositories merely because they already implement similar behavior.

## Checkpoint 2 State

Confirmed further:

- `ji` has multiple producer paths;
- local and cloud backup records have different model boundaries;
- metadata is a substantial domain boundary, not only UI text;
- `tt` is the list-state coordinator rather than the repository itself;
- `kz4` and `ua1` are repository specializations.

Still unresolved:

- complete `g00.l` inventory reconstruction;
- exact `dv` result/state contract;
- complete filter application graph;
- app item action graph;
- detail backup/restore graph;
- task/archive/restore execution graph.


## Checkpoint 3 — List State, Filtering, Search, and Item Actions

### `dv` repository/state contract

Static inspection of `dv` confirms it is a reusable repository state base, not a concrete local/cloud inventory.

Observed responsibilities:

- owns an item cache keyed by `itemId`;
- exposes item lookup;
- exposes current list;
- loads/reloads through abstract `a()`;
- publishes `ik6` state;
- states observed: Loading, Success, Empty;
- supports item insert/update/remove;
- maintains observer/subscriber callbacks;
- prevents the synchronous `a()` load from running on the main thread;
- when a reload is requested, can publish Loading first and then replace the cache from `a()`;
- can return cached data without reloading when appropriate.

This confirms:

```
Repository implementation
      ↓
dv cache + result state
      ↓
tt list controller
      ↓
AppListActivity / ws
```

### Local repository `kz4`

Observed:

- checks root/capability state before loading;
- reads `show_system_apps`;
- obtains installed package inventory through `g00.l(showSystemApps)`;
- builds local list from the returned grouped result;
- package events update an existing `ji`, remove an uninstalled-without-backup app, or construct a new `ji` from PackageInfo;
- updates are pushed through the `dv` cache/update path.

### Cloud repository `ua1`

Observed:

- checks cloud/drive connectivity;
- checks network availability;
- reads cloud snapshot;
- reconstructs `AppCloudBackups`;
- converts valid cloud backup collections to `ji`;
- package/app events update existing cloud inventory entries;
- cloud load can return DriveNotConnected, NetworkError, Empty, Success, or CloudError result states.

### Installed-app discovery `g00.l` / `g00.m`

Two distinct discovery boundaries are now confirmed.

`g00.m(showSystemApps)`:

- uses PackageManager `getInstalledPackages(0)`;
- if no packages are returned, attempts a Shizuku fallback command;
- resolves package names back to PackageInfo;
- applies `g00.z(packageInfo, showSystemApps)` filtering;
- returns the filtered PackageInfo collection.

`g00.l(showSystemApps)`:

- is the heavier local Apps inventory path;
- reads local account/archive directories;
- scans local backup metadata XML locations;
- reconstructs backup metadata and associates it with package/app identity;
- combines inventory information with installed-package discovery;
- returns a grouped `c00` result used by `kz4`.

The exact full `c00` grouping semantics remain partially reconstructed because the decompiled method contains JADX type-inference failures and large generated regions.

### Search

`tt.m(query, list)` confirms search is applied after the repository/list inventory exists.

Observed:

- query is normalized;
- search delegates to `ns0.k(query, list)`;
- if no match exists, list state becomes a search-empty state;
- otherwise the filtered list is published;
- original/current list and search result are kept as separate state.

`ns0.k` statically evaluates multiple app fields, including:

- app name;
- package name;
- name token/prefix fragments;
- package fragments;
- additional normalized search tokens.

The complete matching algorithm is more complex than a single `contains(name)` check.

### Filter surface vs filter application

`sc3` is the filter UI/state selection surface.

It reads/writes persisted filter values through the individual filter helper objects.

Observed persisted keys include:

- `key_filter_favorites`
- `key_filter_app_backup`
- `key_filter_app_synced`
- `key_filter_app_install`
- `key_filter_app_enabled`
- `key_filter_app_backup_age`
- `key_filter_labels`
- `selected_labels_filter`
- temporary selected-label state
- `show_system_apps`
- `app_sort_mode`

The filter surface builds the selected options but is not itself the complete filtering engine.

The filtering engine boundary is `qq`.

Observed signature:

`qq.a(list, isCloudSection, systemAppFilter, appTypeFilter, labelFilter, backupFilter, favoriteFilter, syncFilter, enabledFilter, backupAgeFilter)`

This confirms the list filter operation is a separate domain/helper boundary receiving the selected filter contracts together.

Sync filtering has a separate path:

`qq.b(list, ce3 syncFilter)`

It obtains cloud inventory and compares each app against cloud backup collections before including/excluding it.

### Filter selection state

`nd3` is the common filter contract:

- display string;
- default state;
- applied state;
- reset.

`od3` is the persisted selector contract:

- read current selection;
- read default selection;
- persist selected value;
- reset to default.

Label filtering is special:

- `ud3` handles persistent selected labels;
- `xd3` handles temporary selected-label state used by the dialog;
- selected-label mode falls back to All when no selected label IDs remain.

### Sort

`iy` owns persisted sort mode and derived calculations.

Observed:

- `app_sort_mode` is persisted;
- Name is the default fallback;
- available sort modes include Name, InstallDate, UpdateDate, BackupDate, AppSize, BackupSize, DateUsed;
- size maps are calculated per package;
- last-used maps are calculated for usage-date sorting;
- usage sort can be reset when required usage-access capability is unavailable.

`ws` uses the current `iy` sort mode to render the corresponding secondary text and section-index value.

### App item action graph

`tr` is the actual list-item presenter/view-holder.

Observed item subviews:

- app icon;
- title;
- subtitle(s);
- backup status;
- labels;
- favorite icon;
- item menu icon;
- selection checkbox;
- left/right swipe containers;
- up to four swipe action buttons.

Observed behavior:

- app icon click delegates to an injected callback;
- favorite icon click invokes the favorite callback and updates checked/favorite presentation;
- selection state is driven by the selection callback/state;
- item long-click invokes the injected selection/action callback;
- overflow/menu click invokes the injected item-action callback;
- swipe actions are resolved through `oy` action objects;
- action availability is evaluated per app;
- action icon, title, tone, click behavior, and swipe mode are configured dynamically;
- swipe actions are disabled when no action is available.

The exact concrete `oy` action inventory is still unresolved and must be audited before declaring the complete App Item action contract.

### App List Activity action/state boundary

`AppListActivity` confirms:

- shell menu contains Search, Filter, Drawer;
- Search opens inline search when list is populated;
- Filter opens `sc3` when repository cache is not empty;
- Drawer opens/closes the navigation drawer;
- pull-to-refresh delegates to `tt.k`;
- list updates are observed and forwarded to `ws`;
- FastScroller is connected to the adapter;
- batch FAB is a separate action entry;
- empty/error/search states are rendered differently;
- reset-filters action is exposed when the filter result is empty.

### Checkpoint 3 conclusion

The Apps List vertical slice is now sufficiently understood at the following contract level:

```
Local/Cloud Repository
        ↓
dv cache/result
        ↓
tt list state
   ├── search → ns0
   ├── filters → qq
   └── sort → iy
        ↓
ws adapter/presenter
        ↓
tr app item
        ↓
item actions / selection / swipe
```

Still unresolved before implementation:

1. complete `oy` concrete action inventory;
2. exact `qq.a` predicate semantics for every filter enum;
3. complete `g00.l` backup metadata reconstruction;
4. batch selection/action graph;
5. Detail → backup/restore execution graph.


## Checkpoint 4 — Item Action Inventory and Batch Selection

### Concrete item actions `oy`

The decompiled Reference action model resolves to eight concrete app-item actions:

| Action | Availability observed |
|---|---|
| Launch | installed + enabled + launchable |
| EnableDisable | root/privileged capability + installed |
| Uninstall | installed + not bundled |
| ForceStop | root/privileged capability + installed + enabled |
| PlayStore | available without the root prerequisite used by ForceStop/EnableDisable |
| ClearData | available without the root prerequisite in the observed `isAvailable` branch |
| AppInfo | always available |
| ShareApk | installed |

Each action carries:

- stable action ID;
- menu/action item ID;
- title resource;
- icon;
- tone (positive, neutral, destructive);
- dynamic icon/title for EnableDisable.

The exact side-effect implementation for each action is delegated through the injected action callback and remains outside `tr`; those implementations still need separate audit.

### Item selection

`gm7` is the shared list adapter selection base.

Observed:

- selected IDs are stored separately from the visible item list;
- selection can be toggled per item;
- select-all selects all visible item IDs;
- clear-all removes all selected IDs;
- selected item list can be derived from the current visible list;
- selection state survives list-state replacement through the adapter model;
- adapter exposes selected count and whether all visible items are selected;
- selection changes trigger callbacks used by the batch Activity/FAB.

`tr` renders the selection state through the card/checkbox when selection mode is active.

### Batch Activity

`AppsBatchActivity` receives either:

- `batch_action_item`, or
- `quick_action_item`.

Observed setup:

- local/cloud section is derived from the incoming request;
- adapter is `l20`;
- `l20` reuses the Reference `app_item` layout;
- selection is handled through the shared `gm7` model;
- Search and Filter are available;
- Select All is an explicit toolbar action;
- selected count is rendered as `selected / total`;
- filter surface is configured according to the batch capability;
- App Backup Settings and Settings remain reachable.

The batch state holder `r20` keeps:

- current list;
- selected state;
- search query;
- action request;
- loading/data state;
- filter/configuration context.

The batch Activity therefore has a real state/selection layer; it is not merely a UI dialog around the normal list.

### Batch implication for Apps2

Apps2 needs a dedicated batch state/adapter boundary derived from Reference rather than turning normal list selection into an ad-hoc feature.

The implementation can share truly global UI foundation, but Apps-specific selection state and action contracts remain inside Apps2.

## Checkpoint 4 Conclusion

Apps List now has a materially complete structural contract for:

- discovery;
- repository state;
- search;
- filter selection;
- filter engine boundary;
- sort;
- item rendering;
- item selection;
- item actions;
- batch entry.

Remaining high-risk audit boundary is now the **Detail → Backup / Restore execution graph**, including task, archive, precondition, install, metadata, and verification collaborators.


## Checkpoint 5 — Detail / Backup / Restore Execution Boundary

### Detail backup-card actions

`DetailActivity.b0()` configures backup-card actions for a local or cloud backup.

Observed actions:

- backup details;
- protect/unprotect;
- update note;
- sync;
- delete;
- metadata is hidden on the card menu and handled through the detail surface.

Protection state and note are read from the corresponding `LocalMetadata` or `CloudMetadata`.

Protecting a backup can be gated by premium state and has a first-use help dialog.

Deleting a backup uses an explicit confirmation dialog and has a different title for protected backups.

### Detail backup-chip actions

`DetailActivity.c0()` configures per-part backup actions.

For a backup part:

- restore visibility depends on the part's `BackupRequirement.isPossible()`;
- non-APK restore additionally requires the app to be installed in the observed branch;
- APK restore has a separate capability condition;
- APK share is only visible when an APK artifact is available;
- local backup sync is exposed when a local backup exists;
- encryption information is shown when encryption metadata is present;
- delete is confirmation-gated.

Restore request construction is now confirmed:

```
DetailActivity
  ↓
selected backup identity
  ↓
selected AppPart list
  ↓
restore permission mode
  ↓
restore special permissions flag
  ↓
restore SSAID flag
  ↓
jz Restore request
  ↓
mk2 Detail restore/task coordinator
  ↓
AppsTask / c40 restore execution
```

### Restore request model `jz`

Observed fields:

- canonical `ji` app;
- selected AppPart list;
- `yu` restore-permission mode;
- restore-special-permissions flag;
- restore-SSAID flag;
- local backup identity;
- optional cloud backup;
- force-redo currently false in the observed representation.

The constructor rejects an empty AppPart list.

### Restore task `c40`

The Reference Apps task class is `c40` with task name `AppsTask`.

Restore execution is selected through the `ry7` task mode.

Observed restore phases:

1. Create restore manager/task state.
2. Perform pre-restore tasks.
3. Inspect/adjust package verifier settings when privileged capability is available.
4. Process each selected restore request.
5. For cloud-backed restore, create download task state and resolve required cloud artifacts.
6. Resolve required backup parts including EXPANSION where selected.
7. Perform restore work.
8. Perform post-restore tasks.
9. Complete task state and publish app/task events.
10. Cleanup/prepare extracted APK artifacts when required.

The static source also shows progress/error/cancellation state throughout the task.

Important:

The source does not establish that file extraction alone equals successful app restore. Restore is a task-level operation with pre/post phases and capability conditions.

### Restore special-data / permissions

The Detail restore request passes:

- `restore_special_permissions`, default true in the inspected path;
- `restore_ssaids`, default false in the inspected path;
- `yu` permission restore mode.

The exact downstream behavior for every permission category remains to be mapped through the task collaborators.

### Backup task `c40`

The same `AppsTask` class handles backup mode through the `ky7` task branch.

Observed backup request model `hz` contains:

- canonical app;
- selected AppParts;
- target locations;
- optional sync backup identity;
- SyncOption;
- backup-cache flag;
- compression level;
- MultipleBackupStrategy;
- backup-limit items.

The request rejects empty AppParts and empty locations.

Backup task flow observed at the orchestration level:

1. Create AppsTask.
2. Process each app.
3. Resolve backup strategy/locations.
4. Create per-app backup task state.
5. Execute backup through the per-app backup manager.
6. Handle result/error.
7. If cloud upload is requested, create upload task.
8. Check cloud sync status and skip already-synced artifacts when applicable.
9. Persist/update local/cloud metadata.
10. Apply multiple-backup cleanup strategy.
11. Publish task completion/app events.

Cancellation is explicit: running upload/download/archive-related task components are marked cancelled and active connections are closed/aborted through their respective task objects.

### Architecture implication

Reference Detail is therefore not the backup/restore engine itself.

It is:

```
Detail UI
  ↓
Backup/Restore request model
  ↓
AppsTask
  ↓
Per-app manager
  ↓
Archive / download / upload / install / restore collaborators
  ↓
Metadata + inventory update
  ↓
Task result / app event
```

The complete per-app archive/install implementation is still a separate audit boundary.

## Checkpoint 5 conclusion

Detail → Backup/Restore orchestration is now substantially mapped.

Remaining high-risk collaborators:

1. per-app backup manager / archive writer;
2. per-app restore manager / install path;
3. precondition task collaborators;
4. local metadata commit/update;
5. cloud metadata commit/update;
6. exact cancellation/recovery behavior;
7. complete `EXPANSION` execution semantics.


## Checkpoint 6 — Per-App Archive / Cloud Artifact Boundary

### Per-app backup manager `vl`

Static inspection identifies `vl` as the per-app backup manager used by the `AppsTask` backup branch.

Observed responsibilities:

- receives `hz` backup request and canonical `ji`;
- resolves selected AppParts;
- builds source/archive entries for each selected part;
- applies cache exclusion rules for data/code-cache/shared-preference patterns according to backup-cache state;
- invokes the archive/compression boundary through `mz6.b(op3(...))`;
- passes compression profile, progress callback, archive source, and related metadata/callback objects separately;
- handles part-level failure and propagates a task error message;
- updates per-app progress;
- builds data/de-data source entries from the app's actual data paths;
- includes APK, split APK, shared-library, DATA, EXTDATA, MEDIA, and EXPANSION-specific source handling through the AppPart switch;
- special-data is not treated as a normal AppPart archive in the observed branch; the source explicitly states that special data is generated with app metadata.

The source also contains cleanup of stale split/shared-library archive details when the currently installed APK no longer contains those artifacts.

### Archive boundary

Reference confirms a distinct archive engine boundary.

Static contract:

AppPart → source path + exclusion rules → archive entry/profile → compression → archive engine → part artifact → metadata/result.

The exact internal archive format implementation is not copied into Apps2 automatically.

### Cloud restore artifact boundary `mq`

`mq` builds cloud download work from `AppCloudBackup + CloudMetadata + selected AppParts`.

Observed cloud artifacts include:

- APK;
- split APKs;
- shared libraries;
- DATA;
- EXTDATA;
- MEDIA;
- EXPANSION;
- special-data when restore-permission/special-data flags and metadata allow it.

Each artifact is represented with remote link, local target path, expected size, and artifact type.

Existing local cloud artifact copies can be reused when size/state matches the expected cloud artifact, avoiding unnecessary download.

### Restore execution implication

Reference cloud restore is therefore: CloudMetadata → selected AppParts → artifact descriptors → download/reuse decision → local artifact availability → restore manager.

The actual install/data mutation boundary remains downstream and still requires dedicated audit.

### EXPANSION

This checkpoint confirms `EXPANSION` is not only a UI enum.

Reference cloud metadata and cloud restore artifact construction explicitly include expansion link, expansion size, expansion local target, and selected-part gating.

Reference backup source construction also includes EXPANSION handling.

Exact device-side mutation semantics for EXPANSION still require audit.

## Checkpoint 6 conclusion

Per-app backup/archive and cloud-artifact boundaries are now materially identified.

Remaining highest-risk boundary:

- device-side restore/install/data mutation and post-restore verification;
- preconditions and platform capability resolution;
- metadata commit semantics;
- complete EXPANSION device-side restore semantics.


## Checkpoint 7 — Device Restore, Capability, and Post-Restore Verification

### Per-app restore manager `xw`

Static inspection resolves the main device-side restore manager as `xw` (`AppRestoreTask` logging).

Observed restore gate and sequencing:

1. Reject restore of the Shizuku package while Shizuku is actively used by Reference.
2. If data-only parts are selected while the app is not installed, stop the data restore path.
3. If restore is configured to reinstall APK/data, stop the installed app through privileged command when required.
4. Resolve APK backup availability and compare the backup APK against the installed package metadata.
5. Detect newer/older APK conditions and apply Reference downgrade policy.
6. Build an install request through `mv` and wait for install result.
7. Continue to data restore only when the package is installed/usable; otherwise record a data-restore skip/failure.
8. Resolve installed UID before data mutation.
9. Restore selected DATA / EXTDATA / EXPANSION / MEDIA parts through dedicated methods.
10. Apply post-data restore operations, permission restoration, SSAID handling, and special-data restoration according to the restore request.
11. Publish progress/result through the task callback.

### APK installation boundary

The Reference install path uses `InstallerSourceProxy` / Android `PackageInstaller`.

Static evidence shows:

- creates a `PackageInstaller.Session`;
- sets package name, install reason, installer package metadata, package source, user-action policy, and expected size;
- streams each APK/split artifact into the session;
- calls `fsync` on each written stream;
- commits the session;
- waits up to 120 seconds for the install result;
- interprets PackageInstaller status;
- performs installer-source verification after a successful install;
- abandons the session on failure.

This is a stronger contract than `copy APK → assume installed`.

### APK restore validation

Before installation, Reference checks backup APK/artifact state against installed package state, including version code, version name, split APK presence, shared libraries, and mirrored APK size metadata.

Observed policies include:

- no APK backup → no APK restore;
- older APK + batch restriction → skip downgrade;
- older bundled/system app → skip downgrade in the observed path;
- older non-bundled app → Reference can attempt downgrade workarounds;
- failed APK install can still permit data restore when the app remains installed at a newer version.

Invalid/empty base APK is an explicit failure condition.

### DATA restore boundary

Reference `xw.h()` dispatches by archive format.

Observed format paths include:

- format 1 → unpack archive to AppsWorkingDir, then privileged copy into actual app data and DE-data directories;
- formats 2/4/5 → dedicated archive restore path with package-entry validation, password validation, and extraction;
- format 6 → dedicated archive-entry restore path.

After DATA restore, Reference calls a package/data state update path and records the restore progress.

Data restore also requires an installed UID. Missing UID produces an explicit skip/error.

### EXPANSION restore boundary

Reference `xw.l()` confirms device-side EXPANSION restore.

Observed behavior:

- archive format 1: unpack to working directory and copy to the app expansion directory using privileged command;
- archive format 3: prepare the expansion target and extract through the archive/root boundary;
- archive format 6: validate archive entry against package identity and restore through the common archive extraction boundary;
- after extraction, Reference checks the expansion directory and performs the final OBB-directory fetch/copy path when the platform capability requires it;
- failures are surfaced as `Expansion cannot be restored (...)`.

Therefore EXPANSION is a complete restore capability, not only metadata.

### EXTDATA / MEDIA

Dedicated restore methods exist for external data and media.

Observed common characteristics:

- archive type detection;
- password validation where encrypted archive metadata requires it;
- decompression/unpack path for older formats;
- extraction target preparation;
- explicit no-files/no-tar failure handling;
- final target directory verification/preparation;
- restore progress callbacks;
- explicit success/failure result.

### Special permissions / SSAID

The restore manager reads stored permission and special-data metadata from LocalMetadata/CloudMetadata and applies permission restoration according to `yu` restore mode and request flags.

Observed special-data operations include notification access and accessibility service restoration, with other special permission categories represented in the model/path.

SSAID restoration has an explicit path and can report `No saved ssaid`; it is not an unconditional side effect.

### Post-restore state

Reference performs explicit post-restore tasks after the per-app restore loop.

Static evidence includes:

- permission/special-data restoration;
- package/event updates;
- cleanup of temporary extracted APK artifacts when required;
- progress completion;
- task result publication;
- conditional cleanup of downloaded cloud cache.

The inspected static path does **not** prove a universal byte-for-byte content verification of every restored data file. It proves task-level result/error handling and target/package state checks.

### Engineering invariant extracted from Reference

The Reference source supports the following distinction:

`artifact available` ≠ `APK installed` ≠ `data restored` ≠ `app restore task successful`.

The install boundary has its own PackageInstaller result; data parts have their own restore methods/result paths; the AppsTask has an outer task result.

## Checkpoint 7 conclusion

The highest-risk device restore boundary is now materially reconstructed:

```text
Restore Request
    ↓
AppsTask / xw AppRestoreTask
    ↓
Capability + target checks
    ↓
APK validation/install (PackageInstaller)
    ↓
DATA / DE-DATA restore
    ↓
EXPANSION / EXTDATA / MEDIA restore
    ↓
Permissions / special data / SSAID
    ↓
Post-restore cleanup + package state update
    ↓
Task result
```

Remaining audit gaps before Apps2 architecture freeze:

1. exact precondition/capability resolver mapping for each AppPart;
2. complete local/cloud metadata commit/update path after backup and restore;
3. exact concrete `mv` install request model and downgrade workaround collaborators;
4. complete archive-format matrix behind `xw.k()` and related extraction helpers;
5. runtime verification of Reference behavior.


## Checkpoint 8 — Part Capability Contract and Metadata Update Boundary

### AppPart capability contract

Reference `iu.getBackupReq()` maps part requirements as follows:

| AppPart | Capability requirement |
|---|---|
| APP | NONE |
| DATA | ROOT |
| EXTDATA | ROOT_OR_SHIZUKU when the Reference capability condition is active, otherwise NONE |
| EXPANSION | ROOT_OR_SHIZUKU when the Reference capability condition is active, otherwise NONE |
| MEDIA | NONE |

`sk0.isPossible()` then resolves the requirement against the active capability state:

- ROOT → `mp6.g`;
- ROOT_OR_SHIZUKU → `mp6.f()`;
- NONE → always possible.

This is the concrete Reference capability contract for the AppPart enum. It is stronger evidence than inferring capability from UI visibility alone.

### Restore preconditions

The restore path adds target-specific conditions on top of the part capability requirement:

- DATA/EXTDATA/EXPANSION/MEDIA restore requires an installed app in the observed path;
- DATA restore additionally requires an installed UID before mutation;
- APK restore requires a valid base APK artifact and a valid PackageInstaller path;
- downgrade policy can alter whether APK restore proceeds;
- restore permission mode can add permission/special-data work even when no normal file AppPart is being mutated.

`PreconditionsActivity` separately models permission preconditions for request codes 2, 3, and 589 in the inspected activity. The complete mapping from every AppsTask request to that Activity is not yet proven.

### Metadata update boundary

Backup/cloud-upload inspection confirms metadata is updated after artifact processing:

- APK details;
- split details;
- DATA details;
- EXTDATA details;
- MEDIA details;
- EXPANSION details;
- special-data details;
- note/protection/date-updated fields.

These updates occur on `CloudMetadata` during the cloud-upload/database path.

For restore, the inspected `xw` / `c40` path does not show a symmetric "rewrite LocalMetadata/CloudMetadata backup record" operation after successful restore. It updates package/app state and task result, while the backup metadata remains the record describing the selected artifact. Therefore **restore metadata commit is currently NOT EVIDENCED as a separate persistence operation** in the inspected Reference path.

### Archive format matrix

`xw` restore dispatch confirms at least these format families:

- format 1;
- formats 2, 4, 5;
- format 3 for EXPANSION-specific extraction path;
- format 6.

The common encrypted/archive extraction boundary is `mz6`, with `xw.t()` performing password validation, archive extraction, diagnostics, and result mapping for the applicable formats.

The exact internal implementation of each archive format is still not fully reconstructed from the decompiled source because JADX has explicit type-inference/decompilation gaps in `xw.k()` and related large methods.

## Checkpoint 8 conclusion

The Apps2 capability contract can now be modeled explicitly rather than inferred:

```text
AppPart
  ↓
BackupRequirement
  ↓
Capability state
  ↓
Target/package preconditions
  ↓
Part restore operation
```

Remaining audit gaps are now primarily:

1. exact permission/precondition request mapping;
2. exact `mv` install request structure and downgrade workaround details;
3. archive format internals hidden by JADX gaps;
4. complete cloud/local metadata persistence implementation;
5. runtime verification.

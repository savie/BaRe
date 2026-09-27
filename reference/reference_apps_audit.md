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

`PreconditionsActivity` is **not established as an Apps restore precondition contract**. Its inspected request codes 2, 3, and 589 are wired to SMS/call-log permission checks (`dz5.m()` / `dz5.g()`) and are also launched from Messages/Calls/Quick Actions/scheduling paths. Therefore it must not be used as evidence for Apps restore capability. Apps restore preconditions are instead evidenced directly in `xw` / `nm6` and the AppPart capability contract.

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

## Checkpoint 9 — Apps Restore Preconditions, Installer Request, and Metadata Persistence

### Apps-specific preconditions

The previous audit treated `PreconditionsActivity` as a possible generic Apps precondition boundary. Further inspection narrows this:

- `PreconditionsActivity` request codes 2, 3, and 589 resolve to SMS/call-log permission checks.
- Launch sites include Messages, Call Logs, Home Search, Quick Actions, and scheduling paths.
- No inspected Apps restore path was found that establishes `PreconditionsActivity` as the Apps restore gate.

Therefore the Apps restore precondition contract is reconstructed from `xw`, `nm6`, `iu`, and `sk0` instead.

Observed Apps restore gates include:

1. Do not restore the active Shizuku package when Swift Backup is using Shizuku.
2. DATA/EXTDATA/EXPANSION/MEDIA restore is stopped when the target app is not installed.
3. DATA/EXTDATA/EXPANSION/MEDIA task selection is further filtered through installed-target state and per-part backup availability.
4. DATA/EXTDATA/EXPANSION/MEDIA use the `nm6.b()` change checker when the target is installed:
   - compare current size against mirrored backup size;
   - otherwise inspect changed files from the recorded backup date;
   - cache exclusion follows the `backup_app_cache` preference.
5. DATA restore requires an installed UID before mutation; missing UID produces an explicit skip.
6. An Apps restore can continue DATA restore when APK downgrade fails but the app remains installed, as observed in the `xw` flow.
7. Blacklisted-app state can suppress data restore in the observed path.

This gives a more concrete Apps-specific precondition chain:

~~~text
AppPart
  ↓
BackupRequirement / capability
  ↓
Target installed-state
  ↓
Backup artifact exists
  ↓
Part-specific change/size check
  ↓
Additional target condition (e.g. UID)
  ↓
Restore operation
~~~

### Concrete APK installer request model

The concrete installer request boundary is now identified as `fd4` + `ad4`, not `mv`.

`fd4` represents:
- `installerPackage`;
- `packageName`;
- list of APK files.

`ad4` represents one APK artifact:
- archive/session entry name;
- local file path;
- file length.

`zm5.w()` parses the installer invocation arguments and validates:
- at least installer package, target package, and one APK file;
- APK argument format `name|path`;
- non-blank APK name;
- file existence;
- non-zero file length.

It then builds `ad4` entries and the `fd4` request.

`InstallerSourceProxy.install()` maps that request into Android `PackageInstaller.SessionParams`:
- install mode `1`;
- target package name;
- install reason `4`;
- installer package name on API 34+;
- package source `2` on API 33+;
- `requireUserAction(2)` on API 31+;
- expected total session size from all APK files.

Each APK is streamed into the PackageInstaller session and `fsync()` is called before close. The session is committed and the result is awaited for up to 120 seconds.

Successful installation is not accepted solely from the PackageInstaller status. Reference additionally verifies installer-source identity:
- `getInstallerPackageName()`;
- on API 30+, `getInstallSourceInfo()` initiating package;
- installing package.

Failed sessions are abandoned.

### `mv` role clarification

`mv` is the `AppRestoreHelper` / downgrade-workaround collaborator around APK restore.

It is not the concrete PackageInstaller request model.

Observed responsibilities include:
- processing downgrade restore output;
- preserving downgrade backup artifacts on failure;
- retrying restore after excluding problematic split APKs;
- `pm install-existing --user` fallback;
- secondary-user downgrade workaround;
- reusing the common APK install path.

Therefore the concrete architecture boundary is:

~~~text
AppRestoreTask (`xw`)
  ↓
APK restore / downgrade helper (`mv`)
  ↓
installer request (`fd4`)
  ├─ APK artifacts (`ad4`)
  └─ installer/package identity
  ↓
InstallerSourceProxy
  ↓
PackageInstaller.Session
  ↓
install result + source verification
~~~

### Local metadata persistence

The local metadata persistence boundary is now evidenced by `cu`.

`cu`:
- reads `LocalMetadata` from the metadata file;
- validates metadata version/user identity;
- serializes versioned metadata;
- writes metadata through `saveMetadataFile`;
- reports write failures explicitly.

Observed callers include:
- `vl` / `AppBackupTask`: after backup processing, saves the updated `LocalMetadata`;
- `vi2`: protect/unprotect local backup updates `LocalMetadata` and persists it;
- `oj`: note updates local backup metadata and persists it.

Therefore local backup metadata persistence is **VERIFIED from static source evidence** as a separate write boundary.

### Cloud metadata persistence

The cloud upload path in `c40` updates `CloudMetadata` after artifact processing, including:
- APK;
- split APK;
- shared libraries;
- DATA;
- EXTDATA;
- MEDIA;
- EXPANSION;
- special data;
- installer package;
- backup date;
- note;
- protection;
- backup-updated timestamp.

Before cloud upload, the metadata is prepared for Firebase upload and then written through the cloud detail node update path (`cf3.c(...)` in the inspected branch).

This establishes a distinct cloud metadata persistence path after artifact processing.

### Restore metadata conclusion

The distinction is now clearer:

- **Backup → LocalMetadata:** concrete file persistence is evidenced.
- **Backup/Cloud upload → CloudMetadata:** cloud metadata update/upload is evidenced.
- **Restore → selected backup metadata record:** the inspected `xw` / `c40` restore path still does not establish a separate rewrite of the selected backup's metadata record after successful restore.

Therefore the earlier statement remains:

**Restore metadata commit after successful restore is NOT EVIDENCED as a separate persistence operation.**

### Checkpoint 9 conclusion

Newly verified/narrowed boundaries:

1. Apps-specific restore preconditions are in `xw` / `nm6`, not `PreconditionsActivity`.
2. Concrete APK install request is `fd4` + `ad4`.
3. `mv` is downgrade/install orchestration, not the request DTO.
4. Local backup metadata has an explicit file persistence boundary through `cu`.
5. Cloud backup metadata has an explicit upload/update boundary through `c40`.
6. Restore-side metadata rewrite remains unverified.

Remaining high-risk audit gaps:

1. complete archive-format semantics behind `xw.h/i/j/k/l/m/n`;
2. exact restore manager → archive extractor contract;
3. complete local/cloud metadata lifecycle for restore/delete/sync edge cases;
4. exact downgrade workaround decision matrix;
5. runtime verification against SwiftBackup 5.1.0-620;
6. final separation of pure Reference evidence from BaRe/Apps2 reconstruction analysis in repository documentation.

## Checkpoint 10A — Archive Format Detection and Extraction Boundary

### Archive format detection

Further inspection of the actual SwiftBackup decompile resolves the archive-format detector in \`org.swiftapps.swiftbackup.compress.Packer\`.

\`Packer.c(q63)\` delegates to \`Packer.b(q63)\` and returns \`ArchiveInfo\` (\`i40\`). The detector is evidence-backed by the decompiled source rather than inferred from restore call sites.

Observed \`ArchiveInfo.format\` mapping:

| Format | Detection / structure | Observed restore boundary |
|---|---|---|
| 1 | ZIP container whose entries are not all \`.tar\` | \`Packer.a(...)\` unpack path |
| 2 | ZIP container whose entries are all \`.tar\` | unpack to working dir, then tar/decompression processing |
| 3 | non-ZIP/non-7Z archive handled through raw TAR listing | privileged/local TAR extraction path |
| 4 | legacy 7-Zip archive | \`Packer.a(...)\` seven-zip extraction path |
| 5 | 7-Zip archive with compressed-entry structure detected | \`Packer.a(...)\` seven-zip extraction path |
| 6 | Swift Backup Archive (SBA) | \`mz6\` SBA metadata/entry/extraction boundary |

Encryption metadata is also detected:

- ZIP formats carry an encrypted-entry flag when archive entries report encryption.
- 7-Zip formats detect AES-256 encryption and label it \`7Z AES-256\`.
- SBA format derives encryption state/label from SBA metadata, including \`AEGIS-256\` or \`AEGIS-128X2\`.

### Format 1 / 2 / 4 / 5 data restore

\`xw.h()\` dispatches by \`ArchiveInfo.format\`:

- format 1 → \`xw.i()\`;
- formats 2, 4, 5 → \`xw.k()\`;
- format 6 → \`xw.j()\`.

\`xw.i()\`:

1. creates an \`AppsWorkingDir\`;
2. calls \`Packer.a(...)\` to unpack the archive;
3. updates task phase to \`UNPACK\`;
4. copies restored DATA into the real app data directory through the privileged command boundary;
5. restores DE-data when the archive contains \`data_de\`;
6. cleans the working directory.

\`xw.k()\` is not recoverable as Java from JADX because of a type-inference failure, but the APK smali is available and materially reconstructs its control flow:

1. create an app working directory;
2. call \`Packer.a(...)\` with the archive and data password hash;
3. reject/report extraction failure;
4. obtain unpacked files;
5. if the archive is marked compressed, create a second working directory and decompress the unpacked content;
6. locate the package-specific \`\${packageName}.tar\` artifact;
7. require that artifact before continuing;
8. extract DATA and then DE-DATA through the TAR/privileged restore boundary;
9. clean temporary working directories.

This resolves a major JADX gap: formats 2/4/5 are not a single direct data-copy operation; they have an unpack/decompress/TAR staging chain.

### Format 3 raw TAR

\`xw\` uses the TAR path directly for format 3.

The common helper \`mz6.k(...)\`:

- resolves \`Auto\` execution mode before execution;
- chooses Local, Root, or Shizuku execution mode;
- uses \`z85.h(...)\` for Local extraction;
- uses privileged \`tar extract\` through \`z84\` for Root/Shizuku;
- maps \`f27.Basic\`, \`Fidelity\`, and \`RootFidelity\` into TAR extraction behavior;
- reports extraction progress and diagnostics.

\`mz6.o(...)\` lists TAR entries for format detection/validation.

### Format 6 SBA

\`Packer.b(...)\` identifies SBA through \`mz6.m(...)\`.

\`mz6.m(...)\` checks the SBA signature/metadata boundary and \`mz6.t(...)\` reads SBA entry metadata.

\`xw.j()\` uses the SBA entry path with:

- required \`data\` entry;
- optional \`data_de\` entry;
- package-name validation;
- password validation;
- \`mz6\` SBA extraction;
- restore progress/result;
- explicit failure when required entries are absent.

The common \`xw.t()\` path constructs an \`mz6.f(jd0)\` extraction request. \`mz6.f()\` resolves \`Auto\` mode and dispatches:

- Local → SBA extraction through \`mz6.h()\`;
- Root/Shizuku → privileged SBA extraction through \`mz6.i()\`.

### Important archive invariant

The actual Reference flow is therefore:

\`\`\`text
Archive file
  ↓
Packer.c / ArchiveInfo
  ↓
format + entries + encryption
  ↓
format-specific staging
  ├─ ZIP
  ├─ 7Z
  ├─ raw TAR
  └─ SBA
  ↓
package/entry validation
  ↓
capability/execution mode
  ↓
DATA / DE-DATA extraction
  ↓
target mutation
  ↓
task result
\`\`\`

This confirms that **archive availability, archive recognition, extraction success, and app-data restore success are separate states**.

### Remaining archive gaps

The archive boundary is now materially reconstructed, but the following remain unresolved:

1. exact internal implementation of \`Packer.a()\` / \`nb7.a()\` for every ZIP/7Z edge case;
2. complete archive encryption/password error matrix across formats;
3. exact semantics of \`f27.Fidelity\` versus \`RootFidelity\` for every archive type;
4. runtime verification against a real SwiftBackup 5.1.0-620 archive;
5. device-side post-extraction verification beyond the task/result checks already observed.

## Checkpoint 10B — Archive Profile / Legacy 7-Zip Extraction Details

### Format 4 vs format 5

The `Packer.b()` detector distinguishes legacy 7-Zip formats by archive entry names:

- format 4 is the normal legacy 7-Zip classification;
- format 5 is selected when at least one listed entry has the `compressed` suffix.

Both formats use the same `Packer.a()` extraction boundary, which delegates to `nb7.a()`.

### Legacy 7-Zip extraction

`nb7.a()` provides concrete extraction behavior:

1. validate/create destination directory;
2. normalize the requested include/exclude entry list;
3. open the 7-Zip archive through the legacy 7-Zip reader;
4. pass the UTF-16LE password when supplied;
5. enumerate archive entries;
6. exclude requested paths;
7. create directory entries;
8. stream file entries into destination files;
9. report extraction progress;
10. close archive/channel resources.

The extraction implementation therefore is not merely a metadata reader. It performs actual file materialization.

### TAR restore profile mapping

`z85.h()` maps `f27` to native SBA TAR extraction profiles:

| `f27` | Native profile value |
|---|---:|
| `Basic` | 511 |
| `Fidelity` | 468 |
| `RootFidelity` | 384 |

The native extraction call is `SbaSwiftTarNative.a(...)`.

The exact semantic meaning of each native numeric profile is **not independently proven** from the Java/Kotlin source because the final interpretation occurs in the native TAR implementation. Therefore the audit records the mapping but does not assign a stronger behavioral meaning to those values.

### Reference usage observed

- normal DATA/DE-DATA restore through `xw` uses `RootFidelity` where privileged restore is required;
- SBA generic extraction paths can use `Basic`;
- `mv` downgrade-related DATA restore also explicitly constructs `RootFidelity`;
- backup/archive paths use `Basic` and, in selected fidelity-sensitive paths, `Fidelity`.

This establishes that `f27` is an actual extraction-profile contract, not a UI-only enum.

### Current evidence status

**VERIFIED STATICALLY:**

- archive format detection;
- ZIP/7-Zip/raw-TAR/SBA dispatch;
- format 4/5 legacy 7-Zip extraction;
- password forwarding to legacy 7-Zip;
- TAR profile numeric mapping;
- SBA native TAR extraction call boundary.

**UNKNOWN / UNVERIFIED:**

- exact behavioral semantics encoded by native profile values 511/468/384;
- all native TAR edge cases;
- runtime behavior against actual SwiftBackup-generated archives.
## Checkpoint 11 — APK Install / Downgrade Decision Matrix

### Concrete installer request

The installer proxy boundary is now fully traced from restore helper to the PackageInstaller process:

~~~text
AppRestoreHelper (`mv`)
  ↓
source-preserving path (`nj7`) when its condition is active
  ↓
`InstallerSourceProxy`
  ↓
`zm5.w(String[])`
  ↓
`fd4(installerPackage, packageName, apkFiles)`
  ├─ `ad4(name, path, length)`
  ↓
PackageInstaller.SessionParams
  ↓
stream APK → fsync → commit
  ↓
PackageInstaller result
  ↓
installer-source verification
~~~

`zm5.w()` validates every APK argument before creating the request:
- at least installer package, target package, and one APK;
- argument format `name|path`;
- non-blank APK name;
- file exists;
- file length > 0.

`InstallerSourceProxy` then:
- creates the installer package context;
- creates `PackageInstaller.SessionParams(1)`;
- sets target package;
- sets install reason `4`;
- API 34+: installer package name;
- API 33+: package source `2`;
- API 31+: `requireUserAction(2)`;
- sets total session size;
- streams every APK;
- calls `fsync()`;
- commits the session;
- waits up to 120 seconds;
- verifies installer package and, API 30+, initiating/installing package;
- abandons the session on exception.

### Source-preserving install condition

`mv.f()` selects the source-preserving install path only when the observed condition resolves to:

- `mp6.g` is active; and
- installer package equals `com.android.vending`.

The source-preserving path stages APKs into a temporary shell-accessible directory through `nj7.e()`, invokes `InstallerSourceProxy` through `nj7.c()`, and requires an `SB_INSTALL:Success` result before considering the source-preserving install successful.

After a source-preserving PackageInstaller failure, `mv.f()` distinguishes two cases:

1. package is still installed → verification warning may be tolerated and data restore can continue;
2. package is not installed → the helper falls back to the normal shell APK installer.

The fallback shell installer is `sd7.d(qd7)` and uses `pm install-create`, writes APKs into the shell install session, then commits with `pm install-commit` through Shizuku.

### Split APK failure handling

Normal shell APK restore records split-install failures and extracts the split name/path from failure output. Failed temporary split artifacts are deleted.

The helper tracks failing split names in a persistent in-memory exclusion set for that restore attempt. When the resulting failure set contains only splits already identified as failing, the restore is retried while excluding those splits.

Split candidates are also filtered by base APK version: a split is ignored when its parsed version does not match the base APK version.

### Downgrade preparation

When the observed downgrade path is active, `mv.e()` checks the preference `in_place_apk_downgrades`.

If in-place downgrade is not enabled, the package is not bundled, the app is installed, the data directory exists, and the required capability condition is satisfied, `mv.e()` creates an `AppDowngradeTask` backup context:

- source data directory is archived to `<package>.downgrade.sba` in Swift Backup cache;
- external data, expansion, and media directories are renamed to `.bkp` companions when present;
- the package is uninstalled for the active user through Shizuku (`pm uninstall --user ...`) when it is not bundled.

Only after this preparation succeeds does the normal APK restore path continue with the downgrade backup context.

### Post-downgrade recovery

`mv.b()` is the post-downgrade recovery path.

Observed behavior:

- check whether the app is installed after the downgrade attempt;
- if installed, restore the preserved DATA archive with `RootFidelity`;
- restore preserved external/expansion/media companions when applicable;
- delete the preserved downgrade archive after successful recovery;
- if recovery fails or the app is no longer installed, preserve the downgrade archive and report the corresponding failure state.

Therefore the downgrade safety boundary is explicit:

~~~text
Current installed app
  ↓
prepare downgrade backup
  ├─ DATA → `<package>.downgrade.sba`
  └─ EXTDATA / EXPANSION / MEDIA → `.bkp` companions
  ↓
uninstall current package
  ↓
attempt older APK restore
  ↓
check installed state
  ├─ installed → restore preserved data/media state
  └─ not installed / recovery failure → preserve downgrade artifacts
~~~

### Secondary-user downgrade workaround

If the normal APK restore result remains unsuccessful and the observed secondary-user condition is active, `mv.f()` enters a secondary-user workaround:

- query `pm path <package>`;
- locate the installed base APK;
- enumerate base/split APKs;
- require `base.apk`;
- construct the downgrade/install retry through the existing helper path.

The complete final decision matrix for every Android-version/user combination is still not runtime-verified.

### Evidence status

**VERIFIED STATICALLY:**
- `fd4` / `ad4` request model;
- `zm5.w()` input validation;
- `InstallerSourceProxy` PackageInstaller session policy;
- installer-source verification;
- source-preserving `com.android.vending` path;
- shell installer fallback;
- split failure exclusion/retry;
- downgrade backup preparation and post-downgrade recovery;
- secondary-user workaround entry conditions.

**UNKNOWN / UNVERIFIED:**
- complete runtime behavior for all PackageInstaller status codes;
- exact Android-version behavior of `requireUserAction(2)` and package-source policy;
- all secondary-user downgrade edge cases;
- runtime verification with actual downgraded SwiftBackup archives and APK sets.
## Checkpoint 12 — Metadata Lifecycle, Delete, and Cloud Sync Consistency

### Local metadata read/write contract

`hk.u()` reads the local metadata file only when the metadata path exists; `cu.b()` parses the versioned metadata and falls back to legacy parsing when the versioned parse fails. The versioned format is prefixed with `v1:::` and contains the signed-in user identifier plus serialized `LocalMetadata`.

`cu.d()` rejects:
- metadata larger than 102400 bytes;
- known Titanium Backup metadata;
- incompatible metadata version;
- empty metadata identity;
- metadata belonging to a different signed-in user.

`cu.f()` is the concrete write boundary. It serializes the metadata as `v1:<user-id>:::<encoded LocalMetadata>` and writes it through `q63.K(...)`.

### Local backup lifecycle

`AppBackupTask` mutates `LocalMetadata` incrementally after successful artifact operations:
- APK → `updateApkDetails(...)`;
- split APKs → `updateSplitsDetails(...)`;
- shared libraries → `updateSharedLibsDetails(...)`;
- EXTDATA → `updateExtDataDetails(...)`;
- EXPANSION → `updateExpansionDetails(...)`.

Special-data/permission state is collected into the backup payload, then transient metadata fields are cleared before the final metadata save. When the backup is updating an existing backup, `dateBackupUpdated` is refreshed.

Final local persistence is explicit:

~~~text
artifact operation
  ↓
LocalMetadata mutation
  ↓
special-data finalization
  ↓
dateBackupUpdated (existing-backup update)
  ↓
cu.f()
  ↓
metadata file
~~~

Therefore a failed intermediate artifact operation does not automatically imply that all metadata changes are committed; the inspected code commits the final metadata at the explicit save boundary.

### Cloud metadata lifecycle

`AppUploadTask` starts from `LocalMetadata` and `CloudMetadata`, then merges local state into the cloud representation before upload:
- installer package;
- key version;
- date backup;
- note;
- protected state;
- date backup updated.

`CloudMetadata.prepareForFirebaseUpload()` is called before the cloud detail update through `cf3.c(cloudDetailNode, cloudMetadata)`.

Cloud metadata is only uploaded to the database when `CloudMetadata.hasBackups()` is true. If it has no backups, the inspected path logs that it will not upload the database node.

### Cloud backup index reconstruction

`AppCloudBackups.fetchForPackage(packageName)` reads the package's cloud node, parses each child as `CloudMetadata`, validates `CloudMetadata.isValidCloudDetails()`, wraps valid entries as `AppCloudBackup`, validates the wrapper, then sorts by `dateBackedUpOrUpdated` descending.

This means the cloud backup list is reconstructed from persisted cloud detail nodes rather than treated as an authoritative local cache.

Invalid cloud metadata is omitted from the reconstructed list.

### Cloud multiple-backup cleanup

After a successful/eligible upload, `AppUploadTask` fetches the cloud backup list and separates:
- protected backups → never selected for normal-backup cleanup;
- normal backups → candidates for retention policy.

`MultipleBackupStrategy.Representation.getMaxNumOfBackups()` determines the normal-backup retention count. Older normal backups beyond that count are passed to `AppBackupDeleteHelper` with cloud location.

The cleanup therefore operates on backup IDs selected from the persisted cloud index, while protected backups remain outside the normal retention deletion set.

### Delete consistency

`AppBackupDeleteHelper` handles local and cloud deletion independently but aggregates their success state.

Local deletion:
- selects requested backup parts;
- deletes each selected artifact for eligible local backups;
- checks remaining local backups for the package;
- if none remain, deletes the package backup directory.

Cloud deletion:
- resolves current cloud backups through `AppCloudBackups.fetchForPackage()` when selecting by retention/protection rules;
- passes selected `AppCloudBackup` records into the cloud deletion task;
- records database lookup errors separately from deletion results.

Therefore the package's local backup directory is removed only after the local artifact list is empty, while cloud backup records are managed through their cloud backup IDs.

### Protection / note consistency

Local protection and note updates mutate `LocalMetadata` and immediately persist through `cu.f()`.

Cloud protection and note updates mutate `CloudMetadata` and immediately call `cf3.c(re3.a(appId, backupId), metadata)`.

The two paths are therefore intentionally separate persistence boundaries; changing a local note/protection flag does not by itself prove a cloud update, and vice versa.

### Restore/delete/sync invariant

The reconstructed lifecycle is:

~~~text
Local backup artifact
  ↕
LocalMetadata file
  ↓ cloud upload
CloudMetadata detail node
  ↓ reconstruction
AppCloudBackup / AppCloudBackups
  ↓ retention/delete
Cloud backup deletion
~~~

Restore reads the selected backup metadata/artifact but the inspected restore path still does not establish a symmetric metadata rewrite after successful restore.

Delete removes artifacts and cloud records through task boundaries; it does not rely on merely deleting an in-memory `AppCloudBackups` entry.

### Evidence status

**VERIFIED STATICALLY:**
- local metadata versioned read/write contract;
- local metadata identity/version validation;
- incremental LocalMetadata updates during backup;
- explicit final local metadata save;
- CloudMetadata merge/upload boundary;
- cloud backup index reconstruction from persisted nodes;
- protected-vs-normal retention selection;
- local package-directory cleanup after all local backups are removed;
- local/cloud note and protection persistence boundaries.

**UNKNOWN / UNVERIFIED:**
- atomicity across artifact write + metadata save;
- exact cloud deletion transaction semantics inside the provider task;
- whether every failed upload/delete path leaves a stale cloud node or is reconciled later;
- runtime recovery behavior after process death between artifact and metadata commits.
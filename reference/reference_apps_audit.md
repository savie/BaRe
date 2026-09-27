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
## Checkpoint 13 — Restore Result, State Reconciliation, and Failure Aggregation

### Per-app restore result is an aggregate, not a single boolean

The inspected `xw` restore path uses `uw` as the per-app result accumulator. It separates outcomes into distinct fields:

- `a` → skipped/failed AppPart messages;
- `b` → generic restore failure messages;
- `c` → invalid/empty base APK or related hard failure messages;
- `d` → skipped AppPart because the part is unavailable/unsupported;
- `e` → warnings/data-state messages;
- `f` → critical/unexpected errors;
- `g` → no-APK / no-base-APK condition;
- `h` → explicit task-level/unexpected error text.

`uw.f()` returns true when the per-app accumulator contains a restore-failure/error category in the observed fields.

### APK downgrade failure is not always terminal

The restore manager explicitly handles a downgrade failure as a non-terminal condition when the app remains installed:

~~~text
APK downgrade/install attempt
  ↓
failure
  ↓
check installed state
  ├─ installed → record warning + continue DATA restore
  └─ not installed → propagate APK restore failure
~~~

The inspected message is `APK downgrade failed, but app is installed; continuing data restore` and the result records that APK restore was skipped because the installed version is newer than the backup.

This is a concrete example where `APK restore failed` does not equal `Apps restore task failed`.

### Part failures remain isolated

DATA, EXTDATA, EXPANSION, MEDIA, and APK operations write their own result/error state into `uw`. Extraction helpers can classify conditions such as:
- insufficient space;
- missing/invalid archive;
- wrong password;
- data corruption;
- missing APK;
- unexpected error;
- warning.

These results are later aggregated into the task-level `sv` structure rather than immediately collapsing the whole Apps restore operation.

### Restore manager task-level aggregation

`c40` constructs an `sv` result for the Apps restore flow:
- `sv.a` contains per-app `uw` results;
- `sv.b` contains download/cloud-transfer result records.

After all restore operations and post-restore tasks complete, `c40` checks `sv.a()`.

If errors exist, `sv` is attached to `b40.b` as the task result/error summary. If no restore/download errors exist, the normal post-restore package-state path continues without attaching that summary.

`b40` then renders separate categories for:
- skipped insufficient-space items;
- skipped local/cloud parts;
- download errors;
- failed restores;
- no APK;
- wrong password;
- data corruption;
- unexpected errors;
- warnings;
- critical errors.

### Task completion versus per-app failure

The observed `c40` flow sets the restore manager task state to `COMPLETE` after the post-restore phase even when `b40` contains an error summary.

Therefore the Reference distinguishes at least two states:

~~~text
Task lifecycle state = COMPLETE
        ≠
Per-app restore result = error/warning/skipped
~~~

This is important for Apps2: task completion must not be modeled as a boolean synonym for every selected app being restored successfully.

### Post-restore state reconciliation

After restore processing, the Reference performs post-restore work before final completion:
- permission/special-data restore through `xw.q(...)` when enabled;
- package-state refresh/check;
- local app repository reload through `dv.i(kz4.g, true, ...)` for local operation;
- per-app event publication through `w13.q(c40.class, packageName)` for single-app operation;
- cleanup of cloud cache after cloud restore when applicable.

These are state reconciliation/invalidation steps, not backup metadata rewrites.

### Restore metadata boundary remains asymmetric

Inspection of the complete `xw` source shows `LocalMetadata` and `CloudMetadata` are read during restore for passwords, installer identity, sizes, permissions, and special-data payloads. The restore flow does not call the local metadata writer `cu.f()` or establish a symmetric `CloudMetadata` persistence update after successful restore.

Therefore the current evidence is:

- restore **reads** backup metadata extensively;
- restore **updates** package/device/task state;
- restore **refreshes** local app repository/event state;
- restore **does not evidence** a backup-record metadata rewrite.

### Evidence status

**VERIFIED STATICALLY:**
- per-app restore accumulator structure;
- downgrade failure continuation when package remains installed;
- per-part error/warning isolation;
- task-level aggregation through `sv` / `b40`;
- post-restore package/repository/event refresh;
- task completion can coexist with per-app restore errors.

**UNKNOWN / UNVERIFIED:**
- exact external UI interpretation of every `b40.l()` state;
- persistence/recovery if process dies after package mutation but before post-restore reconciliation;
- whether any background sync later reconciles restore-induced package state into backup metadata.
## Checkpoint 14 — Delete Edge Cases / Cloud Metadata Ordering / Cancellation Boundary

### Local delete selection and completion

`AppBackupDeleteHelper (ik)` first resolves eligible local backups from the current local backup list. For `ly7`, it can limit selection to the latest backup and/or exclude protected backups. It then deletes only the requested `AppPart` artifacts.

Observed parts are `APP`, `DATA`, `EXTDATA`, `MEDIA`, and `EXPANSION`; the delete helper aggregates the boolean result of each selected artifact deletion.

After deletion it re-reads the package local backup list. Only when no local backups remain does it remove the package backup directory.

Therefore package-directory removal is a postcondition of an empty local backup set, not an unconditional first step.

### Cloud delete is metadata-first

`xh2.c()` is the concrete cloud implementation behind `id1`.

For each selected `AppCloudBackup`, the flow is:

~~~text
CloudMetadata current state
  ↓
copy metadata
  ↓
remove selected part details
  ↓
hasBackups() ?
  ├─ YES → persist reduced CloudMetadata
  └─ NO  → remove cloud metadata node
  ↓
collect selected file links
  ↓
delete cloud files
~~~

Selected metadata fields are removed for APP, DATA, EXTDATA, MEDIA, and EXPANSION. If no backup parts remain, special-data details are also removed and the cloud metadata reference is deleted with `cf3.c(node, null)`.

If some backup parts remain, the reduced `CloudMetadata` is written back before the corresponding cloud files are deleted.

### Important partial-failure consequence

The static ordering means cloud metadata can be committed before file deletion finishes.

`xh2.a()` retries the cloud file-id deletion path. The inspected implementation retries up to 10 attempts and sleeps 30 seconds between later attempts. Connectivity is rechecked through `qb1.c().a(false)` before continuing.

If the final file deletion still fails, the task records an exception in `jq6.b` and returns failure at the task boundary. The previously persisted reduced metadata is not automatically rolled back by the inspected `xh2` path.

This creates a concrete recovery/consistency invariant for Apps2:

> cloud metadata deletion/update and physical cloud-file deletion are separate failure boundaries.

Potential result states therefore include:
- metadata updated + files deleted;
- metadata updated + some/all files not deleted;
- metadata node removed + file deletion incomplete;
- all requested files deleted after retries.

The inspected source does not establish an automatic orphan-file reconciliation after the failure case.

### Protected backup handling

Retention/delete selection excludes protected backups when `ly7.a` is active. The same selection rule is applied before the cloud `id1` task is constructed.

Thus protected status is a selection constraint, not a post-delete repair mechanism.

### Task cancellation boundary

`no2.b()` transitions the generic task object:

~~~text
WAITING → RUNNING → COMPLETE
                     or
                     CANCEL_COMPLETE
~~~

`no2.b()` decides the final state from `this.d.isCancelled()` after `g()` returns. The inspected `xh2` cloud-delete implementation does not expose a separate transactional rollback path for cancellation.

Cancellation and process death therefore remain distinct from successful delete completion; exact persistence behavior when cancellation/process death occurs between cloud metadata persistence and file deletion is not established.

### Local metadata consistency remains unresolved

The inspected local delete path operates on `hk` artifact handles and checks the remaining local backup set after deletion. It does not, in the inspected `ik`/`hk` path, explicitly call `cu.f()` to rewrite `LocalMetadata` after removing selected parts.

Therefore the evidence currently supports that local artifact existence and local metadata persistence are separate concerns, but it does not yet prove whether the lower-level `q63` deletion implementation updates or removes metadata as a side effect.

That lower-level coupling remains an audit item rather than an assumption.

### Evidence status

**VERIFIED STATICALLY:**
- local delete selection rules;
- protected/latest filtering;
- package-directory cleanup condition;
- concrete cloud delete implementation;
- cloud metadata mutation before file deletion;
- cloud file-link deletion retry up to 10 attempts with 30-second waits;
- cloud metadata removal when no backup parts remain;
- task final-state distinction COMPLETE vs CANCEL_COMPLETE.

**UNKNOWN / UNVERIFIED:**
- automatic local metadata reconciliation inside lower-level `q63` deletion;
- rollback after cloud metadata commit followed by file-delete failure;
- post-failure orphan cloud-file reconciliation;
- process-death behavior during the metadata/file deletion gap.
## Checkpoint 15 — Lower-level Local Delete / Metadata Coupling

### `q63` is a generic file abstraction, not a metadata reconciler

Inspection of `defpackage/q63.java` shows its delete operations are filesystem-level:
- `f()` deletes a file or directory using the available Java/root mechanism;
- `g()` performs an atomic-delete/trash flow and ultimately removes the target;
- `h()` calls `f()` defensively and returns whether the path no longer exists;
- `i()` uses `rm -rf` through the shell/root path and returns whether the path no longer exists.

No `LocalMetadata` mutation or `cu.f()` call exists inside these `q63` deletion methods.

### Backup record layout explains the observed coupling

`hk` maps a backup record to a backup directory and separate files:
- `<backupId>.app`;
- `<backupId>.xml`;
- DATA / EXTDATA / MEDIA / EXPANSION and related artifact paths.

`hk.v()` is the metadata path and `hk.u()` reads it through `cu.b()`.
`hk.e()` is the backup directory root used to construct the `.app` and `.xml` files.

`hk.E()` determines whether the backup still has meaningful local backup state by checking the metadata path plus the presence of one or more backup-part artifacts.

### Partial local delete does not rewrite LocalMetadata

`AppBackupDeleteHelper` calls lower-level `q63` deletion methods on selected artifact paths. Those methods do not rewrite the `.xml` metadata.

Therefore a partial local delete can leave:

~~~text
backup directory
├── <backupId>.xml       ← old LocalMetadata remains
├── remaining artifact   ← still present
└── deleted artifact     ← absent
~~~

This is not necessarily a bug: the metadata may intentionally remain as historical backup metadata while artifact presence is checked independently. However, the inspected code does **not** prove an automatic metadata field-clearing/rewrite after partial delete.

When the final local backup is gone, `fk.c(package,false).g()` removes the package backup directory, which also removes its remaining metadata file as part of filesystem deletion.

### Local consistency boundary

The strongest static invariant now supported is:

> Local artifact deletion and LocalMetadata persistence are separate boundaries.

`LocalMetadata` is explicitly written by `cu.f()` in backup/update/note/protection flows, but no corresponding explicit write was found in the lower-level delete path.

### Evidence status

**VERIFIED STATICALLY:**
- `q63` delete methods do not perform metadata mutation;
- local metadata is stored as `<backupId>.xml` within the backup directory;
- partial artifact deletion does not call `cu.f()`;
- final package-directory deletion removes the remaining metadata file as filesystem content;
- `hk.u()` reads metadata independently from artifact paths.

**UNKNOWN / UNVERIFIED:**
- whether any higher-level observer/event asynchronously rewrites LocalMetadata after partial local delete;
- whether UI/history deliberately interprets stale part metadata against current artifact presence;
- runtime behavior after process death during local delete.
## Checkpoint 16 — Delete Observers / History Refresh / Cancellation Semantics

### Delete UI path performs explicit refresh after helper completion

`mk2` is the detail controller for an app. Its delete callback (`kk2` case 0) performs:

~~~text
show deleting_backup
  ↓
ik.a(packageName, oy7)
  ↓
increment local generation when local backups were selected
  ↓
delay 500 ms
  ↓
refresh controller
  ↓
g00.F(packageName)
~~~

`g00.F(packageName)` is therefore an explicit app-state/cache refresh request after delete. The inspected callback does not attempt to mutate a `LocalMetadata` object itself.

### Repository observers consume the app event separately

`kz4.onAppEvent()` handles the local app repository side:
- if the app is marked `isUninstalledWithoutBackup`, remove it from repository state;
- otherwise refresh the existing `ji` and replace/update the repository entry;
- if no entry exists, query package manager and add a new app when eligible.

`ua1.onAppEvent()` performs analogous cloud-side app entry refresh/removal.

`w13.q(c40.class, packageName)` publishes the `oq` app event after the restore path, and the same event infrastructure is consumed by local/cloud repository observers.

Therefore app list/detail consistency is achieved through explicit refresh/event invalidation rather than by assuming the delete helper mutates every in-memory model.

### Backup history is reconstructed from persisted backup records

`mk2` receives `AppCloudBackup` updates and local backup records through its controller flows; cloud backup lists are reconstructed by `AppCloudBackups.fetchForPackage()`, while local backup lists are refreshed through `ji.refreshBackupDetails()` / repository refresh paths.

The delete UI path therefore has two layers of consistency:

~~~text
filesystem/cloud deletion
        ↓
delete helper result
        ↓
controller refresh / g00.F
        ↓
repository refresh/event
        ↓
detail/list/history reconstruction
~~~

No inspected path establishes an independent durable 'delete history record'. The visible backup history is derived from current persisted backup metadata/artifacts/cloud nodes.

### Cancellation semantics differ by orchestration layer

`no2.b()` is a generic task wrapper and converts a returned operation into `COMPLETE` or `CANCEL_COMPLETE` based on its cancellation flag.

`jk` (multi-app delete orchestration) checks `this.c.isCancelled()` between apps and stops processing when cancellation is observed. Its own final assignment is `this.c = COMPLETE`, so cancellation state at the `jk` sub-orchestrator level is not represented by a distinct final enum in the inspected code.

`xh2` cloud deletion does not expose a transactional rollback on cancellation. Its concrete cloud deletion loop can fail/retry independently and stores the exception in `jq6.b` at the task boundary.

### Retry semantics are layered

Cloud file deletion has two relevant retry layers:
- connectivity/action execution loop: up to 10 attempts, with 30-second waits after the first attempt;
- delete-file-id helper `xh2.a()`: catches failures from the batch file-id deletion call and recursively retries while `jh6.a < 5`, resulting in an additional bounded retry layer.

Exact provider-side idempotency of repeated delete requests is not established by the inspected source.

### Evidence status

**VERIFIED STATICALLY:**
- delete UI/controller explicitly refreshes app state after `ik.a()`;
- `g00.F(packageName)` is invoked after delete;
- local and cloud repository observers react to `oq` app events;
- backup/history views are reconstructed from current local/cloud backup state;
- generic task wrapper distinguishes COMPLETE and CANCEL_COMPLETE;
- multi-app delete checks cancellation between apps;
- cloud deletion has bounded retry layers.

**UNKNOWN / UNVERIFIED:**
- provider-side idempotency guarantees for repeated cloud deletion;
- exact persistence semantics when cancellation occurs inside `xh2` after metadata mutation;
- whether every UI surface refreshes immediately after every partial delete failure.
## Checkpoint 17 — Apps List Filter / Sort / Row-State Semantics

Audit belum masuk closing. Screenshot reference yang diberikan user konsisten dengan surface yang sudah terbukti statis: `LOCAL APPS`, jumlah app, search, filter, sort/drawer controls, row-level overflow/favorite/status, dan `Batch actions`. Screenshot hanya menjadi evidence visual user-side; perilaku di bawah tetap bersumber dari decompile.

### Filter pipeline

`AppListActivity` membuat `tt` sebagai state controller. `tt.k()` memuat persisted sync filter, memilih local/cloud repository, lalu memanggil repository load. `tt.m()` menerapkan search text terhadap current list dan mengirim state/result ke UI.

`qq.a(...)` adalah filter pipeline utama. Signature-nya menerima:
- app type `cd3`;
- miscellaneous `fe3`;
- labels `td3`;
- backup status `fd3`;
- favorites `ld3`;
- install status `qd3`;
- enabled status `id3`;
- backup-age/misc `zd3`;
- plus local/cloud context boolean.

Filter diterapkan secara berurutan terhadap setiap `ji`. Jika sebuah predicate gagal, app tidak dimasukkan ke result.

### Filter semantics yang terverifikasi

`cd3` App type: `All`, `User`, `System`. System visibility juga dipengaruhi `show_system_apps`.

`fe3` Miscellaneous: `All`, `Launchable`, `Updated`, `LabelledOrFavorites`.

`td3` Labels: `All`, `Selected`, `Labelled`, `NotLabelled`. `Selected` menggunakan persisted `selected_labels_filter`; jika selected label set kosong, filter di-reset.

`fd3` Backup status: `All`, `BackedUp`, `NotBackedUp`, berdasarkan local backup records untuk local context.

`ld3` Favorites: `All`, `Favorites`, `NotFavorites`.

`qd3` Install status: `All`, `Installed`, `NotInstalled`.

`id3` Enabled status: `All`, `Enabled`, `Disabled`.

`zd3` backup/miscellaneous: `All`, `MultipleBackups`, `ProtectedBackups`, `BackupsWithNotes`, `BackupOld`, `BackupNew`, `InstalledFromGooglePlay`, `NotInstalledFromGooglePlay`.

Untuk cloud context, `ProtectedBackups`, `BackupsWithNotes`, dan beberapa backup comparisons membaca `AppCloudBackups`/`CloudMetadata`; untuk local context, sumbernya `LocalMetadata` melalui `gm`/local backups.

`InstalledFromGooglePlay` / `NotInstalledFromGooglePlay` tidak menerima bundled apps sebagai kandidat; pemeriksaan juga menggunakan context boolean saat mengevaluasi `ji.isInstalledFromGooglePlay(...)`.

### Sync filter adalah special case

`ce3` memiliki `All`, `NotSynced`, `Synced` dan menggunakan cloud backup index. Ketika sync filter diterapkan tetapi drive/network/cloud availability tidak memenuhi syarat, Swift mereset filter sync ke `All` daripada mempertahankan filter yang tidak dapat dievaluasi.

`qq.b()` mengambil cloud backup snapshots dan membentuk `AppCloudBackups`; hasilnya kemudian dipakai untuk menentukan apakah app synced atau not synced.

### Filter persistence

Filter state disimpan melalui `SharedPreferences`, bukan hanya state UI.

Observed keys include:
- `key_filter_app_synced`;
- `selected_labels_filter`;
- `key_filter_app_backup`;
- `key_filter_favorites`;
- `key_filter_app_install`;
- `key_filter_app_enabled`;
- `key_filter_app_backup_age`.

Selected-label filter memiliki distinction temporary/applied: `selected_labels_filter_temp` dipakai selama dialog, lalu saat Apply dipindahkan menjadi `selected_labels_filter`.

### Sort pipeline

`sx` memiliki tujuh mode:
- `Name`;
- `InstallDate`;
- `UpdateDate`;
- `BackupDate`;
- `AppSize`;
- `BackupSize`;
- `DateUsed`.

Sort mode disimpan sebagai `app_sort_mode`; ascending/descending disimpan sebagai `app_sort_ascending`.

`Name` menggunakan locale-aware collation.

`AppSize` dan `BackupSize` dapat membutuhkan perhitungan/akumulasi size sebelum sorting. `iy.a(...)` melakukan pekerjaan ini off-main-thread dan melaporkan progress.

`DateUsed` menggunakan `UsageStatsManager`. Jika usage-stats permission tidak tersedia, Swift mereset sort mode ke `Name` daripada mempertahankan mode yang tidak dapat dihitung.

### Row presentation

`ws`/`tr` menunjukkan bahwa row bukan hanya package/name:
- app icon;
- package/name/title;
- last backup or last sync time;
- secondary sort-dependent information;
- labels;
- favorite state;
- selection checkbox;
- overflow/menu target;
- swipe actions.

Last backup text berbeda antara local dan cloud section: local menggunakan app backup timestamp, cloud menggunakan latest cloud backup timestamp.

Secondary row text dapat berubah mengikuti sort mode, misalnya install date, update date, app size, backup size, atau last used.

Swipe actions hanya ditampilkan jika `oy.isAvailable(ji)` memenuhi capability/action condition. Primary/secondary action pada masing-masing arah ditentukan secara dinamis.

### State implication for Apps2

Apps list bukan sekadar `List<ji>` + search. Minimum state surface yang terbukti adalah:

~~~text
repository
  ↓
ji list
  ↓
sync filter
  ↓
multi-filter predicate
  ↓
search
  ↓
sort + derived size/usage data
  ↓
row capability/action state
  ↓
list UI
~~~

Ini memperkuat bahwa Apps2 architecture belum layak dianggap frozen hanya berdasarkan shell/list rendering.

### Evidence status

**VERIFIED STATICALLY:**
- multi-dimensional filter pipeline;
- persisted filter state;
- temporary vs applied label selection;
- sync filter reset when cloud/network prerequisite is unavailable;
- seven sort modes;
- persisted sort mode/direction;
- usage-stat permission fallback;
- row-level dynamic secondary information;
- dynamic swipe action availability.

**UNKNOWN / UNVERIFIED:**
- exact visual timing/animation behavior for every filter transition;
- runtime performance of size/usage-derived sorting on large app sets;
- every action capability matrix behind `oy` collaborators;
- complete batch-action semantics.
## Checkpoint 18 — Batch Actions / Row Capability Matrix / Quick Actions

### Batch action catalog

`s10` constructs the Apps batch action list from the current `ji` selection and local/cloud section:

- `Backup` — count of installed apps;
- `Restore` — count of apps with restorable backup; when backups exist but none has a restorable APK, the subtitle becomes `no_apk_backup`;
- `Sync backups` — only exposed in local section;
- `Delete backups` — local or cloud variant according to section;
- `Export apps list`;
- `Apply labels`;
- `Enable/Disable apps` — count based on installed apps;
- `Uninstall` — only exposed in local section and count based on non-bundled installed apps.

`n10` carries action id, title/subtitle resources, count, local/cloud flag, destructive/selection flags, and action/options resources. `AppsBatchActivity` receives the item through `batch_action_item`.

### Selection is explicit and persisted through activity state

`AppsBatchActivity` uses `l20` selection adapter state. `Select all` toggles the adapter selection state; `onSaveInstanceState` persists the adapter's `fm7` selection state.

Before executing an action, the activity refuses to continue when the selected set is empty and shows the `select_some_items` message.

### Batch action execution branches

The inspected executor branches by action id:
- `Uninstall` → destructive confirmation then uninstall flow;
- `Delete backups` → `b20`, which inspects selected apps for protected local backups before showing delete flow;
- `Enable/Disable apps` → dedicated enable/disable flow;
- `Apply labels` → `n97`, with Set/Add/Clear label operations;
- `Export apps list` → export coroutine;
- backup/restore/sync → task orchestration through the Apps task stack, with local/cloud target represented separately.

`n97` disables Add/Clear labels when none of the selected apps currently has labels. Set labels remains available.

### Row action capability matrix

`oy.isAvailable(ji)` provides the concrete row action availability:

| Action | Static availability condition |
| --- | --- |
| Launch | installed + enabled + launchable |
| Enable/Disable | root/Shizuku capability + installed |
| Uninstall | installed + not bundled |
| ForceStop | root/Shizuku capability + installed + enabled |
| PlayStore | installed + enabled |
| ClearData | always available in the inspected enum path |
| AppInfo | installed |
| ShareApk | installed |

`EnableDisable` dynamically changes icon/title from Enable to Disable according to `ji.enabled`.

`oy.getTone()` marks `Uninstall` and `ClearData` as destructive; `Launch` is positive; the remaining actions use neutral tone.

### Quick-action catalog

`yc6` statically defines app quick actions in groups:

Backup:
- `ID_BACKUP_ALL_APPS`;
- `ID_BACKUP_PENDING_APPS`;
- `ID_BACKUP_UPDATED_APPS`;
- `ID_BACKUP_REDO_APPS`;
- `ID_BACKUP_SYNC_APPS`.

Restore:
- `ID_RESTORE_ALL_APPS`;
- `ID_RESTORE_MISSING_APPS`;
- `ID_RESTORE_NEW_VERSIONS_APPS`.

Optional subsystem quick actions:
- `ID_BACKUP_CALLS` / `ID_RESTORE_CALLS` when enabled;
- `ID_BACKUP_FOLDERS` / `ID_RESTORE_FOLDERS`;
- `ID_BACKUP_MESSAGES` / `ID_RESTORE_MESSAGES` when enabled.

Maintenance:
- `ID_DELETE_BACKUPS_UNINSTALLED_APPS`;
- `ID_ENABLE_DISABLE_APPS_APPS`.

`yc6.g()` reads pinned quick-action IDs from `pinned_actions`, with defaults including backup-all and restore-all.

`zc6` determines whether a quick action is backup/restore oriented, local/cloud, sync-related, and whether expansion/execution is permitted. `AppsBatchActivity` expands a quick action into the appropriate Apps task configuration before execution.

### Capability is prerequisite, not merely UI state

Quick-action and row-action availability depends on capability (`mp6.f()` / root-or-Shizuku path), install/bundled state, cloud/local section, and selected-app properties. Therefore Apps2 must not encode these as unconditional buttons.

### Evidence status

**VERIFIED STATICALLY:**
- complete batch action catalog for Apps list;
- local/cloud-specific action exposure;
- selection empty-state guard;
- protected-backup inspection before batch delete;
- label batch Set/Add/Clear semantics;
- row action availability matrix;
- dynamic Enable/Disable presentation;
- quick-action catalog and pinned-action persistence.

**UNKNOWN / UNVERIFIED:**
- exact internal task graph for every batch backup/restore option variant;
- complete `zc6` flag semantic naming because some constructor flags are obfuscated;
- runtime capability detection across Android/root/Shizuku environments;
- full overflow/swipe action placement and ordering in every row state.
## Checkpoint 19 — Labels Lifecycle / Custom Configurations / Quick Action Execution

### Labels data model

`LabelsData` contains two maps:
- `labelParamsMap`: label definitions;
- `labelledAppsMap`: package/app → label IDs.

`LabelParams` supports user-defined labels plus built-in/synthetic label IDs for filter semantics, including favorite/system/user/backup-related labels.

`LabelledApp` stores packageName, name, and labelIds.

### Labels persistence lifecycle

`lr4` is the label repository.

Load path:

~~~text
Firebase `labelsData`
  ↓
LabelsData
  ↓
lr4.l()
  ↓
in-memory repository + observable state
~~~

When network is unavailable, `lr4.b()` falls back to the local serialized cache. Local cache is stored through `q63` and `w14`.

Save/upload path:

~~~text
LabelsData mutation
  ↓
filter invalid/non-user entries
  ↓
lr4.l(labelsDataCopy)
  ↓
persist local cache
  ↓
write Firebase `labelsData` node
~~~

The inspected `bk` path performs the cleanup/filtering, updates `lr4`, schedules local persistence through `d76`, and writes the Firebase `labelsData` node through `re3.k().d("labelsData").i(...)`.

Label assignment to apps is stored as `LabelledApp` entries keyed by app identity. `lr4.k()` rebuilds/updates these entries from selected `ji` + label sets, removes entries when no labels remain, refreshes both local/cloud repository app entries, and publishes an `lr4` event.

Deleting a label removes that label ID from all affected `LabelledApp` records, updates `LabelsData`, persists the result, and refreshes affected apps.

### Label application semantics

Batch label UI has three operations:
- Set labels — replace the selected apps' label set;
- Add to existing labels — union/add labels;
- Clear labels — remove labels.

Add/Clear are disabled when none of the selected apps currently has labels. This is a UI guard; the underlying repository still treats an empty resulting label set as removal of the `LabelledApp` record.

### Custom configuration data model

`Config` contains:
- version;
- stable id;
- name;
- ordered `ConfigSettings` list;
- update date.

`ConfigSettings` contains the actual app backup/restore policy, including:
- `ApplyData`/labels;
- app parts;
- backup locations;
- sync option;
- per-app backup limits;
- archive-backup flag;
- multiple-backup strategy;
- restore permissions mode;
- restore special permissions;
- restore SSAID;
- compression level;
- cache-backup flag;
- force-redo;
- enabled state.

`ConfigSettings` validity requires a valid `ApplyData`; `ApplyData.isValid(false)` requires at least one label ID. Invalid label IDs are logged and omitted when resolved through `getLabels()`.

`Config.getValidSettings()` filters invalid settings before execution/use.

### Configuration persistence

`br1` is the configuration repository.

Load path:

~~~text
Firebase `configs`
  ↓
ConfigsData
  ↓
br1.d()
  ↓
observable in-memory config state
~~~

When cloud/network is unavailable, `br1.a()` reads the local serialized config cache.

Save/update path:

~~~text
Config mutation
  ↓
validate
  ↓
update timestamp
  ↓
ConfigsData.put()
  ↓
br1.d()
  ↓
persist/update Firebase `configs`
~~~

`br1.c(config)` rejects duplicate names (case-insensitive) when the IDs differ.

`ah` case 17 validates `ConfigsData`, updates `br1`, emits repository state, and writes the Firebase `configs` node.

### Configuration execution

`AppsConfigRunActivity` receives `extra_config_run_item` (`k30`). It refuses to continue when the selected app set is empty.

Before execution it checks `sq1.a(config, true)`. Invalid configuration produces the `invalid_config` state and aborts execution.

`n30` stores the active `k30` and selected app/task properties. For an executed config, `n30.k()` creates the Apps task result wrapper (`c40`) and attaches configuration-derived task presentation through `ey7.a(config, false)`.

The run surface then branches by operation:
- `Backup` → selected app properties → backup task orchestration;
- `Restore` → selected app properties → restore task orchestration;
- Premium/config prerequisites are checked before execution.

Configuration execution is therefore a reusable task-parameter layer above the Apps backup/restore task stack, not a separate backup implementation.

### Quick Action execution boundary

`zc6` carries action identity and execution flags. `ui0` is the expansion boundary used by the Apps batch/quick-action path.

Backup-oriented quick actions expand through `xi0.c(...)` into backup configuration/task parameters. Restore-oriented actions expand through `xi0.a(...)` into restore configuration/task parameters.

Special maintenance actions are handled directly by the Apps batch surface:
- `ID_DELETE_BACKUPS_UNINSTALLED_APPS` → delete-backup flow;
- `ID_ENABLE_DISABLE_APPS_APPS` → enable/disable flow.

`ID_BACKUP_ALL_APPS` receives special expansion flags; cloud/local and sync behavior is carried in `zc6` flags.

`yc6.g()` reads/writes pinned quick-action IDs through SharedPreferences key `pinned_actions`.

### Evidence status

**VERIFIED STATICALLY:**
- LabelsData two-map model;
- label local-cache/cloud load path;
- label local + Firebase save/upload path;
- label assignment/removal and app refresh;
- batch Set/Add/Clear label semantics;
- Config/ConfigSettings structure;
- configuration validation and valid-settings filtering;
- Config repository local/cloud lifecycle;
- duplicate-name guard;
- configuration execution enters the same Apps task stack;
- quick-action expansion into backup/restore task parameters;
- maintenance quick actions branch into dedicated flows.

**UNKNOWN / UNVERIFIED:**
- exact serialization format/version migration for LabelsData and ConfigsData beyond observed serializer boundary;
- full `zc6` boolean flag naming/semantics;
- every ConfigSettings field's exact downstream task effect;
- complete Quick Action option UI for every action variant;
- runtime behavior when cloud and local copies diverge simultaneously.
## Checkpoint 20 — Detail Surface / Backup History / Metadata and Action Cards

### Detail shell and card decomposition

`DetailActivity` uses `detail_activity.xml` with:
- app info card;
- local/device backup card;
- cloud backup card.

The app info card (`detail_card_app_info.xml`) exposes package name, app name, version information, labels, favorite state, overflow menu, and conditional mini-actions: Launch, Enable/Disable, Uninstall, or Not installed.

The backup card (`detail_card_app_backup.xml`) contains:
- title;
- loading/error/main states;
- backup tabs;
- backup date/info text;
- note view;
- part chips;
- restore button;
- overflow action menu.

The local and cloud backup cards share the same layout contract but use separate state presenters (`qj2` and `pj2`).

### Local backup history reconstruction

`lx` rebuilds local detail backup state from the current local backup records. Each backup becomes a `zj2` state containing:
- backup handle;
- APK size / split APK / shared libs;
- DATA / EXTDATA / MEDIA / EXPANSION sizes;
- encryption state and encryption labels;
- version information;
- protection state.

`qj2.a()` selects the current backup by backup ID and converts it into chip items. The chips expose:
- APK/APKs;
- DATA;
- EXTDATA;
- EXPANSION;
- MEDIA.

Absent local backup state produces `no_backup_on_device` rather than an empty generic card.

### Cloud backup history reconstruction

`lk2.onDataChange()` rebuilds cloud detail state directly from `AppCloudBackups.fromSnapshot()`.

Before presentation, it updates the app's `ji.cloudBackups` reference with the reconstructed `AppCloudBackups` object.

Each cloud backup becomes `wj2` and carries:
- APK/split/shared-lib availability and sizes;
- DATA/EXTDATA/MEDIA/EXPANSION sizes;
- encryption flags/method labels;
- total size;
- date backup/date updated presentation;
- version information;
- protection state.

If a cloud metadata entry reports `hasBackups()` false, the corresponding cloud node is removed through `re3` before presentation.

Cloud card state explicitly distinguishes:
- Loading;
- NoBackup;
- DriveNotConnected;
- NetworkError;
- BackedUp.

### Backup history is not a separate journal

Both local and cloud detail history are reconstructed from current persisted backup records/metadata. The detail UI does not load a separate immutable backup-history journal.

Therefore the selected backup tabs/chips represent the current backup records available at observation time.

### Backup details dialog

`kk`/`d11` builds the Backup Details dialog from backup metadata and derived part descriptors.

Top-level fields:
- Created;
- Updated (only when distinct from Created);
- Backup tag;
- Protected backup.

Per-part detail can include:
- APK;
- Split APKs;
- Shared libraries;
- DATA;
- EXTDATA;
- MEDIA;
- EXPANSION;
- Special data.

Per-part fields can include version, original size, backup size, compression saved, file count, folder count, and encryption state/method.

This dialog is derived from metadata/state; it does not independently query or rebuild the artifact archive.

### Detail backup-card actions

Local/cloud backup-card overflow supports, depending on state:
- Backup details;
- Protect / Unprotect;
- Update note;
- Sync (device backup context);
- Delete;
- Metadata (explicitly hidden in the inspected backup-card menu path).

Protection and note operations use the already established persistence boundaries:
- local → mutate `LocalMetadata` → `cu.f()` → `g00.F(packageName)`;
- cloud → mutate `CloudMetadata` → `cf3.c(appId, backupId, metadata)`.

Delete is guarded by confirmation and protected-state presentation. Cloud delete additionally checks cloud/account availability before allowing the operation.

### Part-chip actions

`c0()` builds per-part chip menus.

Restore is available for a selected backup and constructs the restore configuration with:
- selected app parts;
- backup identity;
- `restore_special_permissions` default true;
- `restore_ssaids` default false;
- local/cloud backup source.

Share chooses a local `hk` or cloud `AppCloudBackup` source and passes it to the share subsystem.

Sync requires a local backup for the inspected local chip path.

Delete is confirmation-gated and passes the selected local/cloud backup records and selected parts into the existing delete helper.

Encryption chip/menu state can show the encryption method used by the selected part.

### Storage card

`detail_card_app_storage.xml` provides derived storage information and backup chips for the app's current storage state. Its action menu can expose backup-to-cloud/local-cloud and delete depending on selected `AppPart`; sharing is only exposed for `APP` when the app is installed.

### Evidence status

**VERIFIED STATICALLY:**
- detail shell/card decomposition;
- separate local/cloud backup state presenters;
- local backup history reconstruction;
- cloud backup history reconstruction;
- explicit Loading/NoBackup/DriveNotConnected/NetworkError states;
- backup part chips including APP/DATA/EXTDATA/EXPANSION/MEDIA;
- backup details dialog fields and derived part details;
- detail-card protection/note/sync/delete action paths;
- restore special-permission/SSAID defaults at detail entry;
- storage card action constraints.

**UNKNOWN / UNVERIFIED:**
- exact runtime ordering/animation of card state transitions;
- whether every external cloud metadata cleanup path is eventually reconciled after transient provider failure;
- complete action visibility matrix for all premium/capability states;
- exact detail card performance characteristics with many backups.
## Checkpoint 21 — Apps Task Graph / Preconditions / Capability / 45-Class Coverage

### Apps task provider graph

`c40` is the Apps task provider (`pw6`) and is parameterized by `cz7` operation plus `dz7` result accumulator.

Relevant Apps operation types observed:
- `ky7` → Backup;
- `ry7` → Restore, with `isApkDowngradeAllowed` flag;
- `oy7` → DeleteBackups, carrying selected `AppPart`, locations, and delete type;
- `py7` → Enable/Disable apps;
- `sy7` → Uninstall.

`c40` owns the operation-specific sub-managers:
- backup → `jl` / `vl` / upload chain;
- restore → `wv` / `mq` / `xw` / post-restore chain;
- delete → `jk` / `ik`;
- uninstall → `lz`;
- enable/disable → `nq`.

After the operation-specific branch, `c40` reloads local apps (`dv.i(kz4.g, true, ...)`) unless the task is already in the relevant multi-app context, then posts `w13.q(c40.class, packageName)` for single-app operation and emits `d40` completion.

### Restore pre/post task boundary

Restore performs pre-restore device preparation before iterating selected apps. When root/Shizuku capability is available, it temporarily disables Android package verification settings used by the restore path, then performs restore work and later executes post-restore tasks.

After restore operations, the post-restore stage performs special-data/permission restoration, package/repository reconciliation, and cloud-cache cleanup where applicable. The previously audited result accumulator `sv` is attached to `b40` when non-empty.

### Cancellation propagation

`TaskActivity` cancellation confirmation calls `hy7.d()`.

`hy7.d()` marks the task notification state and broadcasts cancellation while the global `TaskService` remains running.

`TaskService` checks cancellation before final completion and emits `CANCEL_COMPLETE`; foreground-service timeout uses a separate `TIMEOUT` result path.

`c40.a()` propagates cancellation into active backup upload/download sub-managers, restore/download managers, uninstall/delete/enable-disable sub-managers. Active upload/download child tasks are explicitly transitioned to `CANCELLED` and asked to stop.

`jk` additionally checks cancellation between apps during multi-app delete.

### Task failure persistence / process-death boundary

On normal task completion, `TaskService` builds `TaskManager$ErrorSummary`. When errors exist it serializes the summary to `TaskErrors.txt` in the app cache.

`TaskActivity.onCreate()` checks this persisted file when the in-memory task provider list is empty. If a persisted error summary exists, it reconstructs the error UI instead of assuming there are no tasks.

This is concrete evidence of **error-summary persistence across process/UI loss**, but not evidence of resumable/transactional continuation of the underlying backup/restore/delete operation.

`TaskManager$ErrorSummary.isOnlySafeErrors()` is derived from all task providers' safe-error state; UI differentiates note vs error presentation.

### Preconditions

`PreconditionsActivity` explicitly handles SMS and call-log permission prerequisites for request codes `2`, `3`, or combined `589`. It is used by Messages/Calls scheduling/task flows.

The inspected Apps backup/restore path does not route through `PreconditionsActivity` for ordinary Apps operation. Apps-specific capability is checked through root/Shizuku (`mp6`) and operation-specific conditions instead.

### Capability boundary

`mp6.f()`/`mp6.g()` represent the root-or-Shizuku capability path used by Apps actions and restore/install operations.

Row actions use `oy.isAvailable(ji)`; Apps task execution additionally checks capability before operations that need privileged filesystem/package access.

`EXPANSION`, `DATA`, and other part capability requirements remain represented at the backup/restore collaborator level; exact runtime capability matrix across all Android/root/Shizuku combinations remains unverified.

### Original 45-class source inventory cross-check

The original Apps cluster contains exactly 45 source files across the nine documented clusters:

| Cluster | Count | Coverage status |
| --- | ---: | --- |
| appslist | 14 | Deep audit substantially covered; Favorites repository still needs dedicated lifecycle pass |
| appsquickactions | 1 | Catalog + expansion covered; full option UI still open |
| appinfo | 1 | Surface identified; deep behavior still needs pass |
| detail | 2 | Detail deeply covered; shortcut receiver still needs dedicated pass |
| appconfigs | 11 | Data/repository/execution substantially covered; edit/list/settings UI field effects still open |
| apptasks | 8 | Working dir/install/notification/SBA metadata boundaries covered; remaining helper serialization/command edge semantics open |
| model/app | 5 | Deep metadata/cloud/backup payload audit covered |
| settings/appbackuplimits | 2 | Data + UI behavior identified; downstream enforcement needs dedicated pass |
| settings/appvisibility | 1 | Diagnostic UI identified; visibility-source/diagnostic semantics still need dedicated pass |

Therefore the 45-class inventory is **not yet a claim of 45/45 deep behavioral coverage**. It is a coverage ledger showing where focused passes remain.

### Evidence status

**VERIFIED STATICALLY:**
- Apps operation-type graph;
- c40 sub-manager boundaries;
- cancellation propagation across Apps task children;
- TaskService completion/cancellation/timeout boundary;
- persisted TaskErrors.txt recovery path;
- Apps-specific capability boundary;
- distinction between Apps operations and generic SMS/call PreconditionsActivity;
- exact 45-source-file cluster count.

**OPEN:**
- AppInfo deep action/data path;
- ShortcutPinnedReceiver behavior;
- ConfigEdit/List/Settings downstream effects;
- AppBackupLimits enforcement into task selection;
- AppVisibilityDiagnostics data-source semantics;
- FavoriteAppsRepo persistence/lifecycle;
- remaining app task helper serialization/edge commands;
- complete quick-action/config option variant graph.
## Checkpoint 22 — Favorite Apps / AppInfo / Pinned Detail Shortcut / Config Downstream / Backup Limits / Visibility

### FavoriteAppsRepo

`v53` is the concrete FavoriteAppsRepo implementation.

Persistent local cache:
- path `files/favorites/cached_favorites`;
- serialized `FavoriteAppsRepo$FavoritesWrapper`;
- reads are rejected on main thread;
- cache entries are keyed by package name in an in-memory `LinkedHashMap`.

Remote load:
- Firebase node `favoriteApps`;
- anonymous users bypass remote and use local cache;
- signed-in non-anonymous users fetch snapshot, deserialize `FavoriteApp`, rebuild map by package name, persist the resulting list to local cache, and replace in-memory map.

Mutation:
`v53.f(ji, showToast)` toggles based on package-name presence. For non-anonymous users it writes/removes the package-specific Firebase child; for anonymous users the Firebase reference is null and the mutation is local-only. It then updates the in-memory map, publishes `w13.q(v53.class, packageName)`, refreshes related state, and optionally shows add/remove toast.

Initialization is guarded by `v53.b` and started from `g00.C()` only after a Firebase user exists.

`FavoriteApp` itself stores only packageName + name. Its `getPackageId()` derives a stable cloud child id through `g00.h(packageName)`.

### AppInfoActivity

`AppInfoActivity` receives `ji` through `ji.PARCEL_KEY`, restores it across instance state, and aborts if the parcelable is absent.

`sq` builds the displayed diagnostic information from the supplied `ji`: Name, Package, Version name/code, App location (`sourceDir`), Data location, Split APK source paths, and UID for installed apps. UID is obtained through `g00.n(packageName)`.

Presentation is built as styled text asynchronously; this screen does not mutate backup metadata or package state in the inspected path.

### ShortcutPinnedReceiver

`ShortcutPinnedReceiver` is a `BroadcastReceiver`. On receive it dispatches work off the receiver thread through `io4.j(...)`.

The worker reads `ji.PARCEL_KEY` from the pinning intent. If present it logs `Detail screen shortcut added for <app>` and calls `Const.x(context)`.

`j32` is the source that registers the receiver during the detail shortcut-pinning flow and creates the pending intent containing `ji.PARCEL_KEY`.

`detail_launched_from_shortcut=true` is attached to the resulting DetailActivity/shortcut intent path, so shortcut-launched detail has an explicit origin marker.

No separate favorite/shortcut persistence store was found in `ShortcutPinnedReceiver`; its observed responsibility is pin-result handling and shortcut refresh.

### Custom Config UI/downstream

`ConfigListActivity` is root/Shizuku-gated and premium-gated. It renders loading/content/empty states, exposes sort/help/manage-labels/app-backup-settings/settings, and starts new/edit config flows.

`ConfigEditActivity` accepts `extra_config`, creates or edits `Config`, manages an ordered `ConfigSettings` list, validates name, blocks duplicate names, and can delete the config. Settings are added/replaced through `plusSettings()` and removed through `minusSettings()`.

Invalid config name blocks normal save; if a config has no valid settings, the UI offers invalid-config handling and delete/discard behavior.

`ConfigSettingsActivity` delegates field editing to `lr1` and exposes app parts, backup locations, sync options, backup limits, multiple-backup strategy, compression, restore permission mode, restore special permissions, and restore SSAID.

`ConfigSettings.getAppParts()` defaults to APP+DATA when root capability is available, otherwise APP. `getLocations()` defaults to DEVICE. `getSyncOption()` defaults to WIFI. Restore special permissions defaults true; restore SSAID defaults false; restore permissions mode defaults Granted; compression defaults `xp1.DEFAULT`.

`v10` converts `ConfigSettings` directly into the Apps task parameter object `hz`, passing app parts, locations, sync option, cache-backup, compression, multiple-backup strategy, and backup limits.

`m30` consumes config settings during Apps restore selection, including locations and restore permissions mode/special permissions/SSAID when constructing restore configuration.

Thus ConfigSettings is not presentation-only; it is a direct task-input contract.

### AppBackupLimits enforcement

`AppBackupLimitItem` stores part + localLimitMBs + cloudLimitMBs and exposes byte conversions. A limit is valid only when its part resolves and at least one limit is > 0.

`qk0.n(part, currentSize)` is the concrete enforcement point.

Rules:
- if current storage is FAT32 and the candidate size exceeds 4 GiB, the part is skipped and recorded in local/cloud warning state;
- if the operation is in the special bypass mode (`qk0.g`), user backup limits are bypassed;
- otherwise the matching `AppBackupLimitItem` is selected by `AppPart`;
- local operation uses `localLimitBytes`, cloud operation uses `cloudLimitBytes`;
- no positive limit or size <= limit → allowed;
- size > limit → part is skipped and a warning is recorded in the corresponding local/cloud task message accumulator.

This is actual enforcement, not merely a settings display.

`qk0.a/c/b/d` call `qk0.n()` through the part-specific backup-plan eligibility properties, including DATA, EXTDATA, EXPANSION, MEDIA.

### App Visibility Diagnostics

`AppVisibilityDiagnosticsActivity` is a diagnostic tool, not the Apps list repository.

`q00` state is:
- `v00 snapshot`;
- search query;
- loading flag;
- error message.

`p00` obtains the raw package visibility snapshot from `PackageManager` through `i6.i(packageManager, ownPackageName)`.

`v00` carries raw package count, own package name, and package rows (`r00`). It derives diagnostic flags for whether the own package is present, whether `android` is visible, and whether `com.android.cts.ctsshim` is present in the raw list.

Search filters by package label or package name using case-insensitive matching. The UI can copy a raw diagnostic representation to clipboard.

The diagnostic state has explicit querying, success, empty/no-package, and query-failed presentations.

This screen therefore diagnoses Android package-visibility behavior from a raw `PackageManager` snapshot; it does not itself alter visibility configuration.

### Remaining Apps task helper coverage

`AppsWorkingDir` creates per-task working directories under `app_tasks`, selecting normal/internal/external cache or a Shizuku/ADB-accessible external cache path. It performs a one-time cleanup of stale `app_tasks` content across internal cache, app cache, user-folder cache, and external cache directories.

`SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata` serializes app-data archive metadata containing package/app id, version, cache/device-protected flags, compression level, encryption, data/de-data sizes, and archive entries.

`NotificationPolicyProxy` is a privileged helper that backs up/restores Android notification policy through the notification system service. It validates request mode/userId/packageName, caps full payload at 4 MiB and per-package payload at 512 KiB, extracts only the target package XML block, writes/reads a package payload file, and returns `SB_NOTIFICATION_POLICY:OK`, `MISSING`, or `ERROR [...]` markers.

`InstallerSourceProxy` is the previously audited PackageInstaller/source-preserving boundary and remains unchanged by this pass.

### Evidence status

**VERIFIED STATICALLY:**
- FavoriteAppsRepo local/remote lifecycle and anonymous-user behavior;
- FavoriteApp identity model;
- AppInfo data source and presentation fields;
- pinned-detail shortcut receiver behavior;
- Config UI validation/edit/delete/ordered settings behavior;
- ConfigSettings downstream task construction;
- AppBackupLimits actual enforcement;
- AppVisibilityDiagnostics raw PackageManager source and diagnostic state;
- AppsWorkingDir cleanup/path selection;
- SBA archive metadata serialization boundary;
- notification-policy privileged helper validation and payload limits.

**UNKNOWN / UNVERIFIED:**
- exact `g00.h(packageName)` stable-id algorithm;
- runtime Android package-visibility results on different target/OS configurations;
- exact shortcut refresh side effects inside `Const.x(context)`;
- exact downstream behavior of every ConfigSettings field after `hz` construction beyond inspected consumers;
- exact `i6.i()` implementation semantics beyond its observed raw-snapshot contract.

## Audit Checkpoint 23 — Source / Collaborator / Resource Reconciliation

### Scope

Reconciliation dilakukan terhadap source decompile yang tersedia, source inventory 45-class Apps, collaborator imports, dan resource tree Reference. Screenshot/UI observation tidak dipakai sebagai batas surface; screenshot hanya corroboration.

### 45-class source inventory

Exact cluster inventory tetap:

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
| **Total** | **45** |

Seluruh 45 source file tersedia pada decompile yang diaudit. Availability ini terverifikasi secara static; availability tidak berarti seluruh semantic behavior sudah dipahami.

### Collaborator inventory

45 source class tersebut mengimpor **342 unique defpackage.* collaborator names**.

Reconciliation terhadap decompile menunjukkan seluruh 342 nama collaborator tersebut memiliki source file pada reference/jadx/sources/defpackage/.

Invariant:

source file exists ≠ collaborator semantically audited.

Karena itu 342/342 availability tidak boleh dicatat sebagai 342/342 deep coverage.

Fan-out tinggi yang menjadi prioritas semantic audit berikutnya mencakup pe4, gv7, sz8, nc8, eq3, jz2, vr6, ph6, l90, fz5, zn4, nq7, el1, io4, xs1, dan ix0. Fan-out dipakai sebagai triage signal, bukan sebagai bukti behavior.

### Resource reconciliation

Reference resource tree berisi **1,580 resource files** pada reference/apktool/res/.

Direct R.* references yang diekstrak dari 45 source class menghasilkan **167 unique resource symbols**, tersebar pada:

- id: 58
- string: 58
- drawable: 17
- dimen: 9
- menu: 12
- color: 3
- font: 3
- layout: 2
- style: 2
- attr: 2
- integer: 1

Selain direct references tersebut, resource tree menunjukkan Apps-related surfaces yang lebih luas, termasuk Apps List, item/action surfaces, batch, quick actions, configs, labels, detail, backup limits, visibility diagnostics, restore-special-data, multiple-backups, task surfaces, dan menu/action resources.

Resource filename matching bukan semantic proof. Indirect resources, theme inheritance, generated/default Android resources, dan transitive UI dependencies masih harus direkonsiliasi berdasarkan source/resource references.

### Reconciled graph

Current evidence now supports this reconciliation boundary:

45 source classes
      +
167 direct resource symbols
      +
342 collaborator source boundaries
      +
Apps-related resource surfaces
      ↓
coverage ledger
      ↓
deep semantic gaps
      ↓
material collaborators
      ↓
task/data/model/UI edge audit

The reconciliation does **not** close the audit.

### Current uncovered areas

Masih terbuka:

1. semantic audit collaborator yang tersedia tetapi belum dibongkar;
2. indirect/transitive resource dependency;
3. exact g00.h(packageName) stable-id algorithm;
4. runtime Android package-visibility behavior;
5. exact Const.x(context) shortcut refresh side effects;
6. complete downstream effect of every ConfigSettings field after hz;
7. complete quick-action option/flag semantics;
8. exact task graph for every batch/config/quick-action variant;
9. remaining restore/install/data/platform capability edges;
10. process-death/recovery behavior yang belum memiliki runtime evidence.

### Audit decision

**Deep 45-class coverage: NOT COMPLETE.**

**Collaborator semantic coverage: NOT COMPLETE.**

**Resource semantic coverage: NOT COMPLETE.**

Therefore:

- Apps2 implementation remains **BELUM DIMULAI**;
- architecture freeze remains **BELUM**;
- Home → Apps cutover remains **BELUM**;
- Legacy Apps remains **TIDAK DIUBAH**.

Tidak ada kesimpulan "cukup" dari main-flow understanding.

### Next audit

Lanjut semantic audit terhadap uncovered/material collaborators, dimulai dari fan-out tinggi dan execution-boundary collaborators, lalu reconcile kembali terhadap 45-class ledger, resource surfaces, task graph, data/model graph, dan UI graph.

## Audit Checkpoint 24 — Material Collaborator Semantic Pass

### Scope

Dilanjutkan pembongkaran collaborator yang sebelumnya masuk prioritas fan-out tinggi/material. Pass ini memeriksa source implementation aktual dan seluruh pemakaian langsung dari Apps subsystem, bukan hanya nama/import.

### pe4

pe4 adalah utility/foundation class dengan banyak method generik.

Temuan yang material terhadap Apps:

- pe4.w(ar, String, boolean) adalah installer failure-message mapper.
- Input berupa PackageInstaller status + optional system message.
- Memetakan kondisi seperti:
  - INSTALL_FAILED_NO_MATCHING_ABIS;
  - INSTALL_FAILED_MISSING_SPLIT;
  - INSTALL_FAILED_UPDATE_INCOMPATIBLE;
  - INSTALL_FAILED_VERSION_DOWNGRADE;
  - INSTALL_FAILED_INSUFFICIENT_STORAGE;
  - INSTALL_FAILED_INVALID_APK;
  - blocked;
  - aborted;
  - generic failure.
- Output membawa title "APK install failed" dan explanatory message; system message asli ditambahkan bila tersedia.
- Ini menguatkan bahwa installer error presentation memiliki semantic mapping tersendiri dan bukan sekadar menampilkan raw PackageInstaller code.

pe4.F(String) hanya melempar lateinit-property failure setelah logging.

pe4.x(File) memilih XML parser berdasarkan magic header dan membuka input stream UTF-8. Ini merupakan generic XML boundary yang dipakai oleh metadata/resource consumers; bukan Apps business rule tersendiri.

### sz8

sz8 dominan merupakan UI/platform utility.

Apps-relevant findings:

- f0() memasang RecyclerView scroll listener untuk mengendalikan ExtendedFAB visibility/behavior.
- F() menyembunyikan ExtendedFAB.
- A()/z()/r()/x()/q() mengambil themed primary/secondary/error colors.
- b0() melakukan guarded progress update pada progress component.
- u(Context, Locale) dan utility lain berada pada presentation/platform boundary.

Kesimpulan: sz8 bukan Apps domain model/repository/task engine. Ia menjadi shared UI utility dependency. Apps2 tidak boleh menganggapnya sebagai domain contract; behavior yang diperlukan harus direkonstruksi pada presentation layer Apps2 sesuai evidence.

### io4

io4.b(Throwable) membangun error string dari seluruh cause chain unik, menggabungkan non-null messages.

io4.e(Context) membaca current Android night-mode state.

io4.g(q63) memastikan parent directory tersedia; jika parent gagal dibuat atau bukan directory, helper melakukan logging/error path.

io4.j(...) adalah generic try/catch execution boundary:
- menjalankan callback;
- menangkap Exception;
- membentuk diagnostic menggunakan io4.b;
- logging melalui Log.e atau vr6;
- mengembalikan null pada failure.

Ini penting sebagai error/logging boundary, tetapi bukan business policy Apps.

### zn4

zn4 adalah execution/threading helper.

Terbukti:

- c() menjalankan callback langsung jika caller bukan main thread; jika caller main thread, dispatch melalui coroutine/context helper.
- d() dispatch ke executor.
- e() post ke Android/main handler.
- f() menjadwalkan callback setelah delay.
- g() menjalankan suspend/coroutine boundary.

Implikasi: Apps source memiliki explicit thread/dispatch infrastructure. Apps2 tidak boleh menyimpulkan bahwa repository/task operation aman synchronous hanya karena caller terlihat sederhana.

### nq7

nq7 adalah string/character utility.

Apps-relevant:
- Z() melakukan substring/contains matching dengan optional case-insensitivity.
- j0() mendeteksi blank/whitespace-only character sequence.
- H0() melakukan trim whitespace.

Temuan ini mendukung bahwa beberapa search/filter/string validation behavior memakai helper standard Kotlin-like semantics, tetapi tidak membentuk domain filter contract sendiri.

### el1

el1 adalah collection utility.

Apps-relevant:
- Y0() melakukan join/string rendering dengan separator;
- z1() membentuk set dari iterable;
- n1() melakukan sorting collection dengan comparator.

Tidak ditemukan Apps business policy pada helper ini.

### fz5

fz5 terutama hash/parcel/string-builder helpers.

Apps model usage yang diperiksa konsisten dengan generated data-class hash/Parcelable support. Tidak ditemukan policy backup/restore baru pada helper ini.

### eq3

eq3 adalah string concatenation/runtime helper.

i/j/k/l hanya membentuk concatenated strings. Tidak ada Apps business rule.

### vr6

vr6 adalah logging facade.

e() membentuk diagnostic dari Throwable melalui io4.b, kemudian log error. i() meneruskan info log.

Tidak ditemukan persistence/task state mutation pada helper logging ini.

### ph6

ph6.a(Class) membuat n81 wrapper untuk class. Pemakaian pada Apps hanya dependency construction/reflection-like boundary; tidak ditemukan Apps business rule.

### xs1

xs1 adalah string/request utility.

Apps-relevant:
- i(q63, String) membentuk diagnostic path text;
- o(Headers.Builder, String, String, Request.Builder) menambahkan HTTP header lalu membangun request.

Tidak ditemukan direct Apps state mutation.

### nc8

nc8 merupakan mixed utility class yang juga memiliki security/protocol helpers.

Apps-relevant material finding:

nc8.V(Task, Task) menggabungkan dua Firebase/Google Task completion path menjadi satu Task completion source menggunakan shared cancellation state.

Ini adalah asynchronous composition primitive, bukan Apps-specific operation policy.

Crypto/protocol methods seperti t0/u0 berada di security/protobuf boundary dan tidak terbukti sebagai Apps task contract pada pemakaian langsung yang diaudit.

### gv7

gv7 adalah lazy-value holder.

- a() menunjukkan apakah value sudah initialized.
- getValue() melakukan synchronized lazy initialization sekali lalu melepaskan initializer.

Tidak ditemukan Apps-specific state mutation.

### ix0

ix0 adalah security/keyset infrastructure.

Source menunjukkan validation terhadap keyset, enabled key, primary key, key type, private/public key semantics, dan primitive construction.

Tidak ditemukan pemakaian langsung dari 45 Apps source class. Karena itu ia tidak dimasukkan sebagai Apps domain collaborator hanya berdasarkan global source presence/fan-out; hubungan Apps-specific belum terbukti.

### Materiality result

Collaborator pass ini membedakan:

Material execution/presentation infrastructure:
- pe4
- io4
- zn4
- vr6
- sz8
- nc8

Generic language/collection/string/runtime helpers:
- eq3
- nq7
- el1
- fz5
- gv7
- ph6
- xs1

Security infrastructure without direct Apps-domain evidence in this pass:
- ix0

Existence of a source file remains distinct from Apps-specific semantic dependency.

### Coverage impact

Pass ini menutup semantic inspection untuk collaborator subset yang sebelumnya belum dibongkar dan mengklasifikasikan materiality-nya.

Tidak berarti seluruh 342 collaborator semantic coverage selesai.

### Remaining gaps

Masih perlu:

1. collaborator lain yang memiliki direct Apps execution/state edges;
2. exact installer-source preservation path around InstallerSourceProxy + pe4.w;
3. async task composition/cancellation edges around nc8.V where reached by Apps tasks;
4. all remaining app-task helper boundaries;
5. transitive resource dependency;
6. remaining 45-class/resource ledger reconciliation.

### Status

Material collaborator subset: RECONSTRUCTED / VERIFIED STATICALLY.
pe4.w installer error mapping: VERIFIED STATICALLY.
io4 error/thread-adjacent utility behavior: VERIFIED STATICALLY.
zn4 dispatch semantics: VERIFIED STATICALLY.
sz8 Apps UI utility behavior: VERIFIED STATICALLY.
nc8.V task composition primitive: VERIFIED STATICALLY.
Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut ke remaining direct Apps task/helper boundaries dan transitive execution edges yang masih dapat dibuktikan dari decompile, terutama installer-source preservation, task composition/cancellation, archive/metadata helpers, lalu update coverage ledger kembali.

## Audit Checkpoint 25 — Direct Task / Privileged Helper Execution Reconciliation

### Scope

Pass ini menelusuri direct execution edges yang sebelumnya masih terbuka, dengan source truth decompile Reference: InstallerSourceProxy, notification-policy proxy, AppsWorkingDir, SBA metadata builder, serta caller/helper boundaries yang benar-benar mengaktifkan proxy tersebut.

### InstallerSourceProxy + caller chain

Rekonsiliasi menemukan caller nyata pada helper nj7.

Flow:

App install task
  ↓
nj7.a(...)
  ↓
validate Shizuku/root capability
  ↓
validate installer source == com.android.vending
  ↓
pm list packages -U --user <user> <installer>
  ↓
derive installer user id
  ↓
stage APK files under /data/local/tmp/swiftbackup-install-<nanoTime>
  ↓
build source-preserving command args
  ↓
bv.a(
  InstallerSourceProxy.class.name,
  "swiftbackup_install_proxy",
  args,
  userId
)
  ↓
parse returned lines
  ↓
require success / reject missing success
  ↓
cleanup staged directory

Material details:

- nj7.a only enters this path when mp6.g is enabled.
- It explicitly restricts the installer package to com.android.vending.
- It queries package/user information through pm list packages -U --user.
- APK sources are staged under /data/local/tmp/swiftbackup-install-<System.nanoTime()>.
- Each APK source is represented as name|path for the privileged proxy.
- The proxy is invoked with key swiftbackup_install_proxy.
- Caller treats an empty result or any result without a success signal as failure.
- On no success signal it adds Failure [Source-preserving install did not report success].
- After command execution, it issues rm -rf <staging-dir>.

### InstallerSourceProxy execution semantics

The proxy itself was inspected beyond its public result formatter.

Verified:

- Creates PackageInstaller context through hidden ActivityThread.systemMain().getSystemContext() and createPackageContext(installerPackage).
- Creates PackageInstaller session with install reason 4.
- On API 34+ sets installer package name to the supplied installer package.
- On API 33+ sets package source 2.
- On API 31+ sets require-user-action 2.
- Sums all APK source sizes and calls SessionParams.setSize.
- Streams every source into the PackageInstaller session and calls fsync.
- Commits through a locally created IntentSender and waits up to 120000 ms.
- Timeout maps to internal status 8.
- Successful PackageInstaller result is not accepted blindly: verifyInstallSource checks installerPackageName.
- On API 30+ it additionally checks both initiatingPackageName and installingPackageName.
- Expected installer/source identity is the same supplied installer package.
- Successful verified result returns bd4.PackageInstaller provenance.
- Session is closed; failed open/commit paths attempt abandonSession.

Therefore source-preserving install is a privileged installer-provenance preservation boundary, not merely an alternate APK installer.

### NotificationPolicyProxy + caller chain

Direct caller edges are present in both backup and restore task code.

Backup:

AppBackupTask
  ↓
validate package name
  ↓
resolve userId
  ↓
temporary backup payload file
  ↓
bv.a(
  NotificationPolicyProxy.class.name,
  "swiftbackup_notification_policy_proxy",
  ["backup", userId, packageName, file],
  null
)
  ↓
require SB_NOTIFICATION_POLICY:OK
  ↓
read payload file
  ↓
reject empty / > 512 KiB package payload
  ↓
persist notification-policy XML into AppSpecialDataPayload

Restore:

AppRestoreTask
  ↓
AppSpecialDataPayload.notificationPolicyXml
  ↓
validate package name + Shizuku capability
  ↓
temporary restore file
  ↓
bv.a(
  NotificationPolicyProxy.class.name,
  "swiftbackup_notification_policy_proxy",
  ["restore", userId, packageName, file],
  null
)
  ↓
require SB_NOTIFICATION_POLICY:OK
  ↓
delete temporary file

Proxy semantics:

- Full notification backup payload maximum: 4 MiB.
- Extracted per-package payload maximum: 512 KiB.
- Backup obtains raw notification service payload through hidden INotificationManager.getBackupPayload(userId).
- It requires the XML to contain a <notification-policy root.
- It extracts the ranking opening tag.
- It locates the target <package name="..."> block using XML-escaped package name.
- It reconstructs a minimal notification-policy XML containing the ranking header and only the target package block.
- Restore accepts a payload file only when size is 1..524288 bytes.
- It decodes using strict charset decoding (REPORT for malformed/unmappable input).
- It extracts the target package block again before invoking hidden applyRestore(byte[], userId).
- Output contract is SB_NOTIFICATION_POLICY:OK, MISSING, or ERROR [...].

The caller-to-proxy relation is now verified statically; this closes the previous gap that the proxy was only a standalone helper.

### AppSpecialDataPayload relation

AppSpecialDataPayload explicitly contains:

- permissionStatesCsv;
- ssaid;
- ntfAccessComponent;
- accessibilityComponent;
- notificationPolicyXml.

The restore task reads notificationPolicyXml from this model and routes it through NotificationPolicyProxy. Thus notification policy is a concrete special-data payload channel, not an isolated utility.

### AppsWorkingDir

Verified execution semantics:

- Normal working base begins at the app internal files/cache directory.
- If creation is needed and mkdirs() fails, normal path resolution returns null.
- Storage availability is inspected before selecting the working base.
- When storage helper indicates an external-cache candidate, it selects an external cache directory whose path matches the expected storage-root prefix; otherwise falls back to the user-folder cache path or internal cache.
- If Shizuku/ADB access is required, the working directory switches to external cache / user-folder path designed to be accessible by Shizuku/ADB.
- The final task directory is <selected-base>/app_tasks.
- getWorkingDir(name, size) creates/validates a child q63 working directory and returns null on creation failure.
- Cleanup traverses the internal cache path and external cache directories and invokes recursive cleanup helper where applicable.
- Cleanup is guarded by an isCleanupComplete state and catches exceptions at the public boundary.

This confirms AppsWorkingDir is a task-artifact location boundary with a privilege/accessibility constraint, not simply a cache convenience class.

### SBA metadata builder

SbaAppDataRootRequestBuilder.a(...) constructs JSON using Gson from SbaAppDataArchiveMetadata.

Verified defaults:

- kind = swiftbackup.app-data
- version = 1
- encrypted = true
- entries contains data when normal data directory exists;
- entries additionally contains data_de when device-protected data is included and available;
- dataSize/deDataSize are sourced from ji.getSizeInfo();
- packageName, appId, versionName, versionCode come from ji;
- compressionLevel is supplied from xp1.name();
- backupCache and includeDeviceProtectedData are explicitly represented.

This is a concrete archive metadata contract. It must remain part of the Apps data/model graph.

### Coverage impact

Closed in this pass:

- direct installer-source-preserving caller edge;
- installer provenance verification edge;
- notification-policy backup caller edge;
- notification-policy restore caller edge;
- AppSpecialDataPayload → notification-policy proxy edge;
- AppsWorkingDir task-artifact boundary;
- SBA archive metadata construction boundary.

Still open:

1. exact bv.a(...) command execution/transport semantics and its result/cancellation behavior;
2. exact nj7 cleanup/error behavior under partial source staging;
3. remaining direct apptasks helper edges not yet traced;
4. transitive resource dependencies;
5. complete 45-class/resource ledger reconciliation.

### Status

InstallerSourceProxy caller + proxy chain: VERIFIED STATICALLY.
NotificationPolicyProxy caller + proxy chain: VERIFIED STATICALLY.
AppSpecialDataPayload notification-policy relation: VERIFIED STATICALLY.
AppsWorkingDir task-artifact boundary: VERIFIED STATICALLY.
SBA metadata contract: VERIFIED STATICALLY.
Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut ke bv.a transport/execution boundary dan remaining direct apptasks edges, lalu reconcile hasilnya ke task graph + data/model graph + 45-class/resource coverage ledger.

## Audit Checkpoint 26 — Privileged Transport Boundary: bv / mp6 / ip6

### Scope

Execution transport yang dipakai oleh InstallerSourceProxy dan NotificationPolicyProxy ditelusuri sampai command transport boundary. Tujuan pass ini adalah menghilangkan asumsi bahwa bv.a hanya wrapper command.

### bv.a transport construction

Verified static behavior:

- mengambil ApplicationInfo.sourceDir dari SwiftApp;
- membentuk command dengan CLASSPATH ke APK source;
- menjalankan /system/bin/app_process /system/bin;
- memakai --nice-name yang berasal dari helper name;
- menjalankan target class dengan argument list;
- argument list di-join memakai shell delimiter;
- setiap path/command component di-quote oleh bv.b dengan single-quote escaping;
- jika userId/root uid diberikan, command dibungkus sebagai su <uid> -c <quoted-command>;
- execution diteruskan ke mp6.a.h(..., ip6.SU).

Dengan demikian bv.a adalah privileged app-process transport boundary yang mengeksekusi class main() dari APK sendiri dalam app_process, bukan direct Java invocation.

### mp6.h / mp6.m execution contract

Verified:

- mp6.h refuses execution on the main thread and delegates to mp6.m otherwise.
- For ip6.SU, mp6.m requires mp6.g root state; otherwise returns an empty result.
- Before execution, commands may pass through g00.x() path substitution/normalization.
- ip6.SU routes to ShellHelper.su(...).
- ip6.SHIZUKU routes to qe7.c(...) when Shizuku is available.
- fallback path uses mp6.l(...) with /system/bin/sh or su depending on root state.
- command output is normalized to a List<String>.
- a segmentation-fault result triggers shell recreation/retry through ShellUtils.fastCmd.
- interrupted/basic execution exceptions are logged and return an empty result at the low-level basic-shell boundary.

### ip6 routing

Current routing enum:

- SH
- SU
- SHIZUKU
- ANY

The proxy calls in this Apps path use SU, therefore they require root state at mp6.m boundary. This is separate from the higher-level Shizuku/root gating in callers.

### Consequence for task graph

The direct execution chain is now:

Apps task
→ task-specific helper
→ bv.a
→ app_process self-class invocation
→ mp6.h
→ mp6.m
→ ip6.SU
→ ShellHelper.su
→ target proxy main
→ stdout result contract
→ caller parses result
→ task state/error handling

This closes the previously open transport gap.

### Cancellation / failure boundary

The transport source proves:
- main-thread invocation is refused;
- low-level command exceptions can collapse to empty result;
- target proxy can return explicit failure text;
- caller must distinguish empty output from explicit success;
- segmentation-fault handling can recreate the shell and retry once through fastCmd.

Exact higher-level cancellation semantics around the caller task object are still separate and remain open where not directly visible in this chain.

### Coverage impact

Closed:

- bv command construction;
- root wrapping;
- app_process invocation boundary;
- mp6/ip6 transport routing;
- stdout normalization;
- low-level segmentation-fault recovery;
- proxy invocation path for all three current bv callers.

Remaining:

1. caller-specific cancellation semantics;
2. remaining direct apptasks helper edges;
3. transitive resource dependencies;
4. complete 45-class semantic/resource ledger reconciliation.

### Status

Privileged transport boundary: VERIFIED STATICALLY.
bv.a: VERIFIED STATICALLY.
mp6.h/m + ip6.SU routing: VERIFIED STATICALLY.
InstallerSourceProxy transport edge: VERIFIED STATICALLY.
NotificationPolicyProxy transport edge: VERIFIED STATICALLY.
Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Continue remaining direct apptasks helper edges and reconcile every verified edge back into the 45-class task/data/model/UI graph and resource coverage ledger.

## Audit Checkpoint 27 — Resource Surface Closure / Uncovered Resource Reconciliation

### Scope

Resource audit dinaikkan dari direct R.* references menjadi transitive XML resource closure dan candidate Apps surface inventory. Tujuan pass ini adalah memastikan audit tidak berhenti pada resource yang kebetulan direferensikan langsung oleh 45 source class.

### Direct source resource set

45 source class menghasilkan:

- 167 unique direct R.* resource symbols.

### Transitive resource closure

Dengan mengikuti resource references dari resource XML yang dapat dijangkau dari direct source resource set, diperoleh:

- **243 unique logical resource symbols** pada closure.

Per type:

- string: 77
- layout: 7
- id: 70
- menu: 12
- dimen: 19
- drawable: 36
- color: 6
- font: 3
- style: 10
- integer: 1
- attr: 2

Closure ini adalah static reachability graph, bukan proof bahwa seluruh runtime resource path sudah exercised.

### Candidate Apps resource surface

Resource tree juga menunjukkan **128 logical resource candidates** yang namanya/posisinya mengindikasikan Apps/task/detail/config/label/quick-action/backup/restore/visibility surface.

Dari candidate tersebut:

- 16 sudah berada di transitive closure;
- **112 belum berada di closure direct-source → XML**.

Important invariant:

unreachable from current direct resource closure ≠ unused.

Resource yang belum reachable harus diaudit terhadap:
- generated/view-binding paths;
- programmatic resource loading;
- base/shared activity/adapter classes;
- manifest/navigation/theme references;
- menu inflation;
- dynamic lookup;
- indirect class/resource references yang tidak muncul sebagai direct R.* pada 45 source class.

### Material uncovered resource families

Uncovered candidate surface mencakup, antara lain:

- app item/action layouts;
- app batch action layouts;
- app backup limits layouts;
- app visibility diagnostics layouts;
- app info layout;
- app swipe layouts;
- Apps batch/config/quick-action layouts;
- Config edit/settings/item/notice layouts;
- Detail activity/cards/chips/storage layouts;
- Label edit/list/item/color layouts;
- Quick actions dialog/item/card layouts;
- task activity/card layouts;
- restore-special-data detail layouts;
- menu Apps/config/detail/task surfaces;
- app/backup/restore/quick-action/visibility icons.

Karena screenshot hanya merepresentasikan satu interface, resource family ini tidak boleh dianggap optional.

### Reconciled resource graph

Current resource graph is now:

45 source classes
      ↓
167 direct R.* symbols
      ↓
243 logical transitive resource closure

Reference resource tree
      ↓
Apps-like candidate surface
      ↓
128 logical candidates
      ↓
16 reachable
112 uncovered
      ↓
resource audit queue

### Audit consequence

Tidak ada resource candidate yang ditandai unused hanya karena belum muncul pada direct closure.

Status 112 candidate resources saat ini:

**UNKNOWN / NEEDS RESOURCE-PATH AUDIT.**

Ini merupakan coverage gap nyata dan menjadi blocker terhadap closure audit Apps UI/resource.

### Coverage impact

Closed:
- direct resource inventory;
- transitive XML closure inventory.

Opened/confirmed:
- 112 candidate Apps-like resource surfaces requiring path audit.

Remaining:
1. resolve 112 resource surfaces through class/base/generated/navigation/menu/theme references;
2. remaining direct apptasks helper edges;
3. complete collaborator materiality reconciliation;
4. complete 45-class/resource/task/data/model/UI ledger.

### Status

Resource direct coverage: VERIFIED STATICALLY.
Resource transitive closure: VERIFIED STATICALLY.
Apps-like candidate inventory: VERIFIED STATICALLY.
Resource semantic closure: **BELUM SELESAI**.
Deep 45-class coverage: **BELUM SELESAI**.
Collaborator semantic coverage: **BELUM SELESAI**.
Apps2 implementation: **BELUM DIMULAI**.
Architecture freeze: **BELUM**.
Home cutover: **BELUM**.
Legacy Apps: **TIDAK DIUBAH**.

### Next audit

Resolve the 112 uncovered resource candidates against generated/base/shared classes, menu/navigation/theme references, and resource-loading paths; in parallel continue remaining direct apptasks edges.

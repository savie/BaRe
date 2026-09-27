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

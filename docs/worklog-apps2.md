# Worklog Apps2

## Current State

Status: PLANNED

Apps2 belum diimplementasikan.

Legacy Apps tetap tidak diubah dan tetap berada di luar scope implementation Apps2.

Branch kerja: `v1.0/rebaseline`

Baseline repository saat inisiatif ini dimulai:
`4bc7387c04ddd9aec88603e311d6923eb7385f0e`

## Current Task

Menyiapkan dan membangun subsystem Apps2 di BaRe sebagai port/rewrite bagian Apps dari Swift Reference, dengan seluruh jalur Apps baru diarahkan melalui Apps2 tanpa menjadikan implementation Apps lama sebagai dependency.

## Task Scope

Apps2 mencakup seluruh jalur Apps yang terbukti ada pada Reference, termasuk sesuai hasil discovery:

- daftar aplikasi
- tab/section Apps
- pencarian
- filter
- sort
- selection
- detail aplikasi
- backup
- restore
- backup history/version/parts
- inventory
- refresh/invalidation
- navigation
- state dan flow terkait Apps

Scope final mengikuti hasil discovery terhadap Reference. Hal yang belum terbukti dari source Reference tidak boleh ditulis sebagai fact.

## Dependencies

### Reference

Swift Reference/decompiled source menjadi sumber utama untuk merekonstruksi bagian Apps, termasuk:

- class
- package/struktur
- repository
- model
- state
- UI
- navigation
- flow
- behavior

Apps2 akan menulis ulang struktur dan jalur tersebut ke BaRe, bukan menjadikan source Reference sebagai runtime dependency.

### BaRe

BaRe menjadi environment implementation dan sumber untuk capability yang memang berbeda atau tidak tersedia identik pada Reference, termasuk bila relevan:

- root
- encryption
- storage
- backup/restore capability
- platform integration
- project-wide foundation

Setiap dependency akan diverifikasi sebelum digunakan.

### Shared

Default Apps2 adalah isolated.

Yang dapat shared tanpa membuat coupling Apps lama adalah resource/foundation yang benar-benar global, seperti strings, theme, dan foundation UI/global resource yang memang tidak membawa Apps-specific behavior.

Implementation Apps-specific dari legacy Apps tidak otomatis shared.

## Latest Checkpoint

Inisiatif Apps2 disepakati sebagai subsystem baru yang terisolasi dari legacy Apps.

Home → Apps akan menjadi entry point menuju Apps2 setelah implementation dan verification memenuhi acceptance criteria.

Legacy Apps tidak menjadi jalur implementation Apps2.

## Completed

- Menetapkan kebutuhan subsystem Apps2 terpisah dari legacy Apps.
- Menetapkan bahwa bagian Apps dari Swift Reference akan menjadi basis rewrite/port Apps2.
- Menetapkan bahwa struktur/class Apps Reference dipertahankan sedekat mungkin; jika terjadi collision dengan implementation BaRe yang existing, Apps2 menggunakan class/namespace baru seperti suffix `2` sesuai kebutuhan.
- Menetapkan bahwa shared dependency harus sangat terbatas dan tidak semua Common otomatis boleh masuk Apps2.
- Menetapkan bahwa strings dan resource/foundation yang benar-benar global dapat tetap shared.
- Menetapkan bahwa legacy Apps tidak boleh menjadi dependency Apps2 secara default.
- Membuat worklog khusus Apps2 agar lifecycle ini tidak bercampur dengan `docs/worklog.md`.

## In Progress

Belum ada implementation.

Tahap berikutnya adalah discovery dan rekonstruksi bagian Apps pada Swift Reference secara class-per-class sebelum implementation Apps2 dimulai.

## Verification

Status: PENDING

Belum ada implementation atau runtime verification Apps2.

Acceptance dan verification matrix akan ditetapkan setelah discovery Reference menghasilkan scope dan flow yang terverifikasi.

## Blocked

Tidak ada blocker teknis yang terverifikasi pada tahap planning.

## Deferred

- Perubahan Home → Apps ke Apps2.
- Implementation Apps2.
- Evaluasi final dependency backup/restore engine.
- Cutover dari legacy Apps ke Apps2.
- Penghapusan atau perubahan legacy Apps.

Semua item tersebut menunggu discovery, design/port, implementation, testing, dan verification yang sesuai.

## Known Limitations

- Struktur final Apps2 belum ditentukan seluruhnya karena discovery Reference belum dilakukan secara lengkap pada initiative ini.
- Belum ada claim parity, implementation, build, runtime, atau verification.
- Reference behavior yang belum terobservasi tetap UNKNOWN.

## Decisions

### Apps2 sebagai rewrite/port Apps Reference

Apps2 bukan patch atau refactor lanjutan dari legacy Apps.

Apps2 akan menjadi subsystem baru yang mengambil bagian Apps dari Swift Reference sebagai basis struktur, class, responsibility, flow, dan behavior, lalu menuliskannya ulang agar berjalan pada BaRe.

### Class dan struktur Reference dipertahankan

Jika Reference memiliki class yang relevan untuk Apps, class tersebut menjadi blueprint langsung untuk Apps2.

Jangan mengganti decomposition Reference dengan architecture baru hanya karena ingin membuat struktur sendiri.

Jika nama/class collision terjadi dengan BaRe atau legacy implementation, gunakan namespace/class baru seperti `*2` sesuai kebutuhan agar Apps2 tetap terisolasi.

### Shared dependency dibatasi

Jangan menggunakan legacy Apps-specific implementation hanya karena sudah tersedia.

Dependency hanya boleh masuk Apps2 setelah terbukti sesuai boundary dan tidak membawa coupling/behavior yang tidak diinginkan.

### Entry point

Target product flow:

`Home → Apps → Apps2`

Perubahan entry point belum dilakukan pada checkpoint ini.

### Legacy Apps

Legacy Apps dipertahankan sebagai implementation terpisah dan tidak diubah sebagai bagian dari initiative Apps2, kecuali terdapat authorization dan scope baru yang secara eksplisit membutuhkannya.

## Next Action

Lakukan discovery terhadap bagian Apps pada Swift Reference secara menyeluruh dan class-per-class.

Hasil discovery harus memisahkan:

- OBSERVED
- VERIFIED
- INFERENCE
- ASSUMPTION
- UNKNOWN

Setelah scope dan structure Reference cukup terpetakan, lanjutkan ke design/port Apps2 sesuai dependency boundary yang telah ditetapkan.
## Discovery Checkpoint — Reference Apps Structure

Status: ACTIVE / DISCOVERY

Sumber discovery:
- supplied SwiftBackup 5.1.0-620 decompiled source
- docs/reference_apps_shell_mapping.md
- actual BaRe source pada branch v1.0/rebaseline

Evidence boundary:
- discovery ini adalah static/decompiled-source inspection;
- runtime verification Reference belum dilakukan;
- runtime verification Apps2 belum dilakukan;
- Reference source menjadi blueprint/evidence, bukan runtime dependency.

### Reference class / responsibility map — observed

#### 1. Apps shell / list

- org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity
  - primary Apps list Activity;
  - section selection melalui KEY_SECTION;
  - local/cloud section;
  - search, filter, drawer, pull-to-refresh;
  - RecyclerView + FastScroller;
  - batch-action entry;
  - quick actions, labels, custom configurations, blacklist;
  - app-backup settings dan settings;
  - repository/view-state orchestration melalui tt, dv, dan ws.

- defpackage.ws
  - Apps list adapter/presenter;
  - app item binding;
  - section-index text;
  - toolbar subtitle/count;
  - displays Name, Install Date, Update Date, Backup Date, App Size, Backup Size, Date Used berdasarkan current sort mode.

- defpackage.tt
  - Apps list state/controller;
  - owns current section/search/filter result state;
  - loads repository;
  - restores persisted sync/filter state;
  - dispatches list updates.

- defpackage.dv
  - repository/list state base;
  - exposes list lookup, refresh/load, item update/remove, and state result handling.

- defpackage.kz4
  - local Apps repository specialization.

- defpackage.ua1
  - cloud Apps repository specialization.

#### 2. Canonical app model

- defpackage.ji
  - central Reference app model;
  - package/name/appId, version name/code;
  - source/data/de-data paths;
  - split APKs and shared libraries;
  - install/update/backup timestamps;
  - installed/bundled/enabled/launchable/favorite/cloud flags;
  - local backups, cloud backups, labels, size information, installer package;
  - restorable-backup state;
  - external/media/expansion path and existence semantics.

- defpackage.qx
  - app size model/calculation;
  - APK, split APK, shared libs, data/de-data, external data, media, expansion, cache and aggregate size;
  - can use privileged/root size sources depending on capability.

- defpackage.gm
  - local backup record pairing backup identity with LocalMetadata.

- org.swiftapps.swiftbackup.model.app.AppCloudBackup
- org.swiftapps.swiftbackup.model.app.AppCloudBackups
  - cloud backup records/container.

- org.swiftapps.swiftbackup.model.app.LocalMetadata
- org.swiftapps.swiftbackup.model.app.CloudMetadata
  - backup metadata boundary.

- org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload
  - special-data payload model exists in Reference.

#### 3. Filter / sort contract — observed

Reference filter surface defpackage.sc3 exposes these groups:
- System Apps: All / User / System.
- Labels: All / Selected / Labelled / Not Labelled.
- Backup: All / Backed Up / Not Backed Up.
- Favorites: All / Favorites / Not Favorites.
- Install status: All / Installed / Not Installed.
- Sync status: All / Not Synced / Synced.
- Enabled status: All / Enabled / Disabled.
- Backup age/state: All, Multiple Backups, Protected Backups, Backups With Notes, Backup Old, Backup New, Installed From Google Play, Not Installed From Google Play.

Sort enum defpackage.sx:
- Name
- InstallDate
- UpdateDate
- BackupDate
- AppSize
- BackupSize
- DateUsed

defpackage.iy owns persisted sort mode/ascending state and supporting calculations for App Size, Backup Size, and Date Used.

#### 4. Selection / batch / configuration

Observed Reference Activities:
- AppsBatchActivity — multi-selection/batch Apps flow, filter/search, label selection/apply path, App backup settings access.
- AppsConfigRunActivity — custom configuration execution/list path, search/list, App backup settings access.
- AppsQuickActionsActivity — Apps quick-actions surface and App backup settings/settings entry.

#### 5. Labels

Observed classes:
- LabelsActivity
- LabelEditActivity
- LabelParams
- LabelledApp
- LabelsData

Observed responsibility includes label list/selection, create/edit/delete label, assign labels to apps, selected-label filtering, and label count/app association.

#### 6. App detail / backup history / restore

- org.swiftapps.swiftbackup.appinfo.AppInfoActivity
  - receives the canonical ji app model;
  - app information entry surface.

- org.swiftapps.swiftbackup.detail.DetailActivity
  - canonical app detail/backup detail flow observed in source;
  - backup cards/chips;
  - local/cloud backup distinction;
  - protect/unprotect backup;
  - backup note;
  - sync;
  - delete;
  - metadata;
  - restore;
  - share;
  - encryption information;
  - storage actions.

- Reference app-part enum defpackage.iu contains APP, DATA, EXTDATA, EXPANSION, MEDIA.

Important observed fact:
- Reference Apps backup/restore part model includes EXPANSION in addition to APK/Data/External Data/Media.
- Exact BaRe Apps2 support mapping for EXPANSION is still UNKNOWN and must not be inferred from current BaRe implementation.

Restore action source also reads restore_special_permissions and restore_ssaids and passes the selected backup/app/parts into a restore orchestration object.

#### 7. Restore special-data / configuration surfaces

Observed Reference component:
- RestoreSpecialDataDetailsActivity
  - special restore permissions configuration;
  - notification settings/access;
  - accessibility service;
  - usage access;
  - install unknown apps;
  - display over other apps;
  - modify system settings;
  - battery optimization;
  - network modes;
  - all-files access;
  - alarms/reminders;
  - system modes;
  - Magisk.

Observed setting:
- restore_special_permissions defaults to enabled in the inspected path.
- restore_ssaids defaults to disabled in the inspected restore path.

#### 8. Backup/task infrastructure observed

Reference Apps flow is not limited to UI Activities. The decompiled source also contains:
- org.swiftapps.swiftbackup.apptasks.AppsWorkingDir
- org.swiftapps.swiftbackup.apptasks.sba.SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata
- org.swiftapps.swiftbackup.apptasks.sba.a
- org.swiftapps.swiftbackup.apptasks.install.InstallerSourceProxy
- org.swiftapps.swiftbackup.tasks.TaskService
- org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary
- org.swiftapps.swiftbackup.tasks.PreconditionsActivity
- org.swiftapps.swiftbackup.tasks.ui.TaskActivity
- notification/task support classes.

These establish that Reference backup/restore execution is task-oriented and has explicit precondition/progress/error infrastructure.

#### 9. Reference UI resource boundary — observed

Apps-related Reference resources include:
- app_list_activity.xml
- appbar_with_filters.xml
- app_item.xml
- app_info_activity.xml
- apps_batch_activity.xml
- apps_config_run_activity.xml
- apps_quick_actions_activity.xml
- app_actions_dialog.xml
- app_batch_actions_dialog.xml
- app_swipe_actions_fragment.xml
- app_swipe_preview_content.xml
- labels_activity.xml
- label_edit_activity.xml
- label_edit_apps_view.xml
- detail_card_app_backup.xml
- detail_card_app_info.xml
- detail_card_app_storage.xml
- restore_special_data_details_activity.xml
- restore_special_data_detail_item.xml
- multiple_backups_strategy_activity.xml
- app_backup_limits_activity.xml
- related Apps menus/action resources.

### Current Apps2 interpretation

FACT / OBSERVED:
- Reference Apps is a subsystem spanning list, state/repository, app model, filtering/sorting, selection/batch, labels, detail, backup/restore, metadata/history, special-data restore, and task infrastructure.
- Reference uses a central ji app model and separate local/cloud backup models.
- Reference backup part enumeration includes APP, DATA, EXTDATA, EXPANSION, MEDIA.
- Reference list supports local/cloud sections and persisted filter/sort state.

INFERENCE:
- Apps2 needs a decomposition substantially broader than the current BaRe Apps screen-only surface.
- A direct one-file rewrite is not consistent with the observed Reference decomposition.

UNKNOWN:
- Exact class-to-class mapping for all obfuscated defpackage collaborators.
- Complete backup/restore task class graph and exact execution semantics.
- Full local/cloud metadata persistence implementation mapping.
- Complete expansion backup/restore behavior.
- Exact runtime behavior for all Reference branches/modes.
- Visual/runtime parity of the decompiled Reference.

ASSUMPTION NOT AUTHORIZED:
- Reusing legacy BaRe Apps-specific classes merely because they provide similar behavior.
- Treating current BaRe A18 backup/restore implementation as the Apps2 architecture.
- Treating Reference encryption implementation as a BaRe requirement.

### Next Action

Continue Reference discovery class-by-class for the unresolved collaborators and execution graph, prioritizing:
1. ji construction/population and its local/cloud repository producers.
2. tt + dv + kz4 + ua1 state/repository graph.
3. sc3 filter application path and persisted state.
4. tr App item interaction/action graph.
5. DetailActivity backup/restore orchestration collaborators.
6. task/precondition/install/restore collaborators behind the Apps backup/restore path.
7. local/cloud metadata models and backup history/version/part representation.

Do not implement Apps2 or change Home → Apps until this discovery boundary is sufficiently mapped and recorded.
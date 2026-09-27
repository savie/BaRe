# Worklog Apps2

## Kondisi Saat Ini

Status: AKTIF / PENEMUAN

Apps2 belum diimplementasikan; penemuan Referensi sedang berlangsung.

Legacy Apps tetap tidak diubah dan tetap berada di luar scope implementasi Apps2.

Branch kerja: `v1.0/rebaseline`

Baseline repository saat inisiatif ini dimulai:
`4bc7387c04ddd9aec88603e311d6923eb7385f0e`

## Tugas Saat Ini

Menyiapkan dan membangun subsystem Apps2 di BaRe sebagai port/penulisan ulang bagian Apps dari Swift Referensi, dengan seluruh jalur Apps baru diarahkan melalui Apps2 tanpa menjadikan implementasi Apps lama sebagai dependensi.

## Cakupan Tugas

Apps2 mencakup seluruh jalur Apps yang terbukti ada pada Referensi, termasuk sesuai hasil penemuan:

- daftar aplikasi
- tab/section Apps
- pencarian
- filter
- pengurutan
- pemilihan
- detail aplikasi
- backup
- restore
- riwayat/versi/bagian cadangan
- inventaris
- penyegaran/invalidation
- navigasi
- kondisi dan alur terkait Apps

Scope final mengikuti hasil penemuan terhadap Referensi. Hal yang belum terbukti dari sumber Referensi tidak boleh ditulis sebagai fakta.

## Dependensi

### Referensi

Swift Referensi/sumber hasil dekompilasi menjadi sumber utama untuk merekonstruksi bagian Apps, termasuk:

- class
- package/struktur
- repository
- model
- kondisi
- UI
- navigasi
- alur
- perilaku

Apps2 akan menulis ulang struktur dan jalur tersebut ke BaRe, bukan menjadikan sumber Referensi sebagai runtime dependensi.

### BaRe

BaRe menjadi lingkungan implementasi dan sumber untuk kapabilitas yang memang berbeda atau tidak tersedia identik pada Referensi, termasuk bila relevan:

- root
- encryption
- storage
- cadangan/pemulihan kapabilitas
- integrasi platform
- fondasi tingkat proyek

Setiap dependensi akan diverifikasi sebelum digunakan.

### Berbagi

Default Apps2 adalah terisolasi.

Yang dapat dibagikan tanpa membuat keterikatan Apps lama adalah resumber/foundation yang benar-benar global, seperti strings, theme, dan foundation UI/global resumber yang memang tidak membawa Apps-specific perilaku.

Implementation Apps-specific dari Apps lama tidak otomatis dibagikan.

## Checkpoint Terakhir

Inisiatif Apps2 disepakati sebagai subsystem baru yang terisolasi dari Apps lama.

Home → Apps akan menjadi titik masuk menuju Apps2 setelah implementasi dan verification memenuhi kriteria penerimaan.

Legacy Apps tidak menjadi jalur implementasi Apps2.

## Selesai

- Menetapkan kebutuhan subsystem Apps2 terpisah dari Apps lama.
- Menetapkan bahwa bagian Apps dari Swift Referensi akan menjadi basis rewrite/port Apps2.
- Menetapkan bahwa struktur/class Apps Referensi dipertahankan sedekat mungkin; jika terjadi collision dengan implementasi BaRe yang existing, Apps2 menggunakan class/namespace baru seperti suffix `2` sesuai kebutuhan.
- Menetapkan bahwa dibagikan dependensi harus sangat terbatas dan tidak semua Common otomatis boleh masuk Apps2.
- Menetapkan bahwa strings dan resumber/foundation yang benar-benar global dapat tetap dibagikan.
- Menetapkan bahwa Apps lama tidak boleh menjadi dependensi Apps2 secara default.
- Membuat worklog khusus Apps2 agar lifecycle ini tidak bercampur dengan `docs/worklog.md`.

## Sedang Berjalan

Discovery dan rekonstruksi bagian Apps pada Swift Referensi sedang berlangsung secara per kelas.

Implementation Apps2 belum dimulai.

## Verifikasi

Status: MENUNGGU

Belum ada implementasi atau verifikasi runtime Apps2.

Acceptance dan verification matrix akan ditetapkan setelah penemuan Referensi menghasilkan scope dan alur yang terverifikasi.

## Terblokir

Tidak ada blocker teknis yang terverifikasi pada tahap planning.

## Ditunda

- Perubahan Home → Apps ke Apps2.
- Implementation Apps2.
- Evaluasi final dependensi cadangan/pemulihan engine.
- Cutover dari Apps lama ke Apps2.
- Penghapusan atau perubahan Apps lama.

Semua item tersebut menunggu penemuan, desain/port, implementasi, pengujian, dan verification yang sesuai.

## Keterbatasan yang Diketahui

- Struktur final Apps2 belum ditentukan seluruhnya karena penemuan Referensi belum dilakukan secara lengkap pada initiative ini.
- Belum ada claim parity, implementasi, build, runtime, atau verification.
- Referensi perilaku yang belum terobservasi tetap TIDAK DIKETAHUI.

## Keputusan

### Apps2 sebagai rewrite/port Apps Referensi

Apps2 bukan patch atau refaktaor lanjutan dari Apps lama.

Apps2 akan menjadi subsystem baru yang mengambil bagian Apps dari Swift Referensi sebagai basis struktur, class, tanggung jawab, alur, dan perilaku, lalu menuliskannya ulang agar berjalan pada BaRe.

### Class dan struktur Referensi dipertahankan

Jika Referensi memiliki class yang relevan untuk Apps, class tersebut menjadi blueprint langsung untuk Apps2.

Jangan mengganti decomposition Referensi dengan arsitektur baru hanya karena ingin membuat struktur sendiri.

Jika nama/class collision terjadi dengan BaRe atau legacy implementasi, gunakan namespace/class baru seperti `*2` sesuai kebutuhan agar Apps2 tetap terisolasi.

### Berbagi dependensi dibatasi

Jangan menggunakan Apps lama-specific implementasi hanya karena sudah tersedia.

Dependency hanya boleh masuk Apps2 setelah terbukti sesuai boundary dan tidak membawa keterikatan/perilaku yang tidak diinginkan.

### Entry point

Target product alur:

`Home → Apps → Apps2`

Perubahan titik masuk belum dilakukan pada checkpoint ini.

### Legacy Apps

Legacy Apps dipertahankan sebagai implementasi terpisah dan tidak diubah sebagai bagian dari initiative Apps2, kecuali terdapat authorization dan scope baru yang secara eksplisit membutuhkannya.

## Tindakan Berikutnya

Lakukan penemuan terhadap bagian Apps pada Swift Referensi secara menyeluruh dan per kelas.

Hasil penemuan harus memisahkan:

- TERAMATI
- TERVERIFIKASI
- INFERENSI
- ASSUMPTION
- TIDAK DIKETAHUI

Setelah scope dan struktur Referensi cukup terpetakan, lanjutkan ke desain/port Apps2 sesuai dependensi boundary yang telah ditetapkan.
## Discovery Checkpoint — Referensi Apps Structure

Status: AKTIF / PENEMUAN

Sumber penemuan:
- supplied SwiftBackup 5.1.0-620 sumber hasil dekompilasi
- docs/reference_apps_shell_mapping.md
- actual BaRe sumber pada branch v1.0/rebaseline

Evidence boundary:
- penemuan ini adalah static/decompiled-sumber inspection;
- verifikasi runtime Referensi belum dilakukan;
- verifikasi runtime Apps2 belum dilakukan;
- Referensi sumber menjadi blueprint/evidence, bukan runtime dependensi.

### Referensi class / tanggung jawab map — observed

#### 1. Apps shell / list

- org.swiftapps.swiftbackup.appslist.ui.list.AppListActivity
  - primary Apps list Activity;
  - section pemilihan melalui KEY_SECTION;
  - lokal/cloud section;
  - search, filter, drawer, pull-to-refresh;
  - RecyclerView + FastScroller;
  - batch-action entry;
  - quick actions, labels, custom configurations, blacklist;
  - app-backup settings dan settings;
  - repository/view-kondisi orchestration melalui tt, dv, dan ws.

- defpackage.ws
  - Apps list adapter/presenter;
  - app item binding;
  - section-index text;
  - toolbar subtitle/count;
  - displays Name, Install Date, Update Date, Backup Date, App Size, Backup Size, Date Used berdasarkan current pengurutan mode.

- defpackage.tt
  - Apps list kondisi/controller;
  - owns current section/search/filter result kondisi;
  - loads repository;
  - restores persisted sync/filter kondisi;
  - dispatches list updates.

- defpackage.dv
  - repository/list kondisi base;
  - exposes list lookup, refresh/load, item update/remove, and kondisi result handling.

- defpackage.kz4
  - local Apps repository specialization.

- defpackage.ua1
  - cloud Apps repository specialization.

#### 2. Canonical app model

- defpackage.ji
  - central Referensi app model;
  - package/name/appId, version name/code;
  - sumber/data/de-data paths;
  - split APKs and dibagikan libraries;
  - install/update/backup timestamps;
  - installed/bundled/enabled/launchable/favorite/cloud flags;
  - local backups, cloud backups, labels, size information, installer package;
  - restorable-backup kondisi;
  - external/media/expansion path and existence semantics.

- defpackage.qx
  - app size model/calculation;
  - APK, split APK, dibagikan libs, data/de-data, external data, media, expansion, cache and aggregate size;
  - can use privileged/root size sumbers depending on kapabilitas.

- defpackage.gm
  - local backup record pairing backup identity with LocalMetadata.

- org.swiftapps.swiftbackup.model.app.AppCloudBackup
- org.swiftapps.swiftbackup.model.app.AppCloudBackups
  - cloud backup records/container.

- org.swiftapps.swiftbackup.model.app.LocalMetadata
- org.swiftapps.swiftbackup.model.app.CloudMetadata
  - backup metadata boundary.

- org.swiftapps.swiftbackup.model.app.AppSpecialDataPayload
  - special-data payload model exists in Referensi.

#### 3. Filter / pengurutan contract — observed

Referensi filter surface defpackage.sc3 exposes these groups:
- System Apps: All / User / System.
- Labels: All / Selected / Labelled / Not Labelled.
- Backup: All / Backed Up / Not Backed Up.
- Favorites: All / Favorites / Not Favorites.
- Install status: All / Installed / Not Installed.
- Sync status: All / Not Synced / Synced.
- Enabled status: All / Enabled / Disabled.
- Backup age/kondisi: All, Multiple Backups, Protected Backups, Backups With Notes, Backup Old, Backup New, Installed From Google Play, Not Installed From Google Play.

Sort enum defpackage.sx:
- Name
- InstallDate
- UpdateDate
- BackupDate
- AppSize
- BackupSize
- DateUsed

defpackage.iy owns persisted pengurutan mode/ascending kondisi and supporting calculations for App Size, Backup Size, and Date Used.

#### 4. Selection / batch / configuration

Observed Referensi Activities:
- AppsBatchActivity — multi-pemilihan/batch Apps alur, filter/search, label pemilihan/apply path, App backup settings access.
- AppsConfigRunActivity — custom configuration execution/list path, search/list, App backup settings access.
- AppsQuickActionsActivity — Apps quick-actions surface and App backup settings/settings entry.

#### 5. Labels

Observed classes:
- LabelsActivity
- LabelEditActivity
- LabelParams
- LabelledApp
- LabelsData

Observed tanggung jawab includes label list/pemilihan, create/edit/delete label, assign labels to apps, selected-label filtering, and label count/app association.

#### 6. App detail / backup history / restore

- org.swiftapps.swiftbackup.appinfo.AppInfoActivity
  - receives the canonical ji app model;
  - app information entry surface.

- org.swiftapps.swiftbackup.detail.DetailActivity
  - canonical app detail/backup detail alur observed in sumber;
  - backup cards/chips;
  - lokal/cloud backup distinction;
  - protect/unprotect backup;
  - backup note;
  - sync;
  - delete;
  - metadata;
  - restore;
  - share;
  - encryption information;
  - storage actions.

- Referensi app-part enum defpackage.iu contains APP, DATA, EXTDATA, EXPANSION, MEDIA.

Important observed fakta:
- Referensi Apps cadangan/pemulihan part model includes EXPANSION in addition to APK/Data/External Data/Media.
- Exact BaRe Apps2 support mapping for EXPANSION is still TIDAK DIKETAHUI and must not be inferred from current BaRe implementasi.

Restore action sumber also reads restore_special_permissions and restore_ssaids and passes the selected backup/app/parts into a restore orchestration object.

#### 7. Restore special-data / configuration surfaces

Observed Referensi component:
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

#### 8. Backup/task infrastruktur observed

Referensi Apps alur is not limited to UI Activities. The sumber hasil dekompilasi also contains:
- org.swiftapps.swiftbackup.apptasks.AppsWorkingDir
- org.swiftapps.swiftbackup.apptasks.sba.SbaAppDataRootRequestBuilder$SbaAppDataArchiveMetadata
- org.swiftapps.swiftbackup.apptasks.sba.a
- org.swiftapps.swiftbackup.apptasks.install.InstallerSourceProxy
- org.swiftapps.swiftbackup.tasks.TaskService
- org.swiftapps.swiftbackup.tasks.TaskManager$ErrorSummary
- org.swiftapps.swiftbackup.tasks.PreconditionsActivity
- org.swiftapps.swiftbackup.tasks.ui.TaskActivity
- notification/task support classes.

These establish that Referensi cadangan/pemulihan execution is task-oriented and has explicit precondition/progress/error infrastruktur.

#### 9. Referensi UI resumber boundary — observed

Apps-related Referensi resumbers include:
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
- related Apps menus/action resumbers.

### Current Apps2 interpretation

FACT / TERAMATI:
- Referensi Apps is a subsystem spanning list, kondisi/repository, app model, filtering/pengurutaning, pemilihan/batch, labels, detail, cadangan/pemulihan, metadata/history, special-data restore, and task infrastruktur.
- Referensi uses a central ji app model and separate lokal/cloud backup models.
- Referensi backup part enumeration includes APP, DATA, EXTDATA, EXPANSION, MEDIA.
- Referensi list supports lokal/cloud sections and persisted filter/pengurutan kondisi.

INFERENSI:
- Apps2 needs a decomposition substantially broader than the current BaRe Apps screen-only surface.
- A direct one-file rewrite is not consistent with the observed Referensi decomposition.

TIDAK DIKETAHUI:
- Exact class-to-class mapping for all obfuscated defpackage collaborators.
- Complete cadangan/pemulihan task class graph and exact execution semantics.
- Full lokal/cloud metadata persistence implementasi mapping.
- Complete expansion cadangan/pemulihan perilaku.
- Exact runtime perilaku for all Referensi branches/modes.
- Visual/runtime parity of the decompiled Referensi.

ASUMSI TIDAK DIOTORISASI:
- Reusing legacy BaRe Apps-specific classes merely because they provide similar perilaku.
- Treating current BaRe A18 cadangan/pemulihan implementasi as the Apps2 arsitektur.
- Treating Referensi encryption implementasi as a BaRe requirement.

### Tindakan Berikutnya

Continue Referensi penemuan class-by-class for the unresolved collaborators and execution graph, prioritizing:
1. ji construction/population and its lokal/cloud repository producers.
2. tt + dv + kz4 + ua1 kondisi/repository graph.
3. sc3 filter application path and persisted kondisi.
4. tr App item interaction/action graph.
5. DetailActivity cadangan/pemulihan orchestration collaborators.
6. task/precondition/install/restore collaborators behind the Apps cadangan/pemulihan path.
7. lokal/cloud metadata models and backup history/version/part representation.

Do not implement Apps2 or change Home → Apps until this penemuan boundary is sufficiently mapped and recorded.

## Audit Checkpoint — Referensi Apps Inventory

Status: AKTIF / AUDIT PENEMUAN

Audit static/decompiled terhadap SwiftBackup 5.1.0-620 sudah dilanjutkan.

Artifact audit:
`docs/reference_apps_audit.md`

Hasil teramati yang sekarang cukup kuat:

- Apps Reference adalah subsystem multi-layer, bukan satu Activity/XML.
- Cluster source Apps yang diaudit berjumlah 45 class pada kelompok appslist, appsquickactions, appinfo, detail, appconfigs, apptasks, model/app, appbackuplimits, dan appvisibility.
- Cluster tersebut mengimpor 342 nama collaborator `defpackage.*` unik.
- App List mempunyai LOCAL/CLOUD section, search, filter, drawer, refresh, RecyclerView, FastScroller, batch action, dan repository/state boundary.
- Canonical app model adalah `defpackage.ji`.
- Filter/sort surface dan persisted state sudah teridentifikasi.
- Detail mempunyai backup history/card/chip actions untuk backup details, protect, note, sync, delete, restore, share, encryption, metadata, dan storage backup actions.
- Backup part Reference terbukti: APP, DATA, EXTDATA, EXPANSION, MEDIA.
- Restore path membaca `restore_special_permissions` dan `restore_ssaids` lalu meneruskan app/backup/parts ke restore orchestration.
- Task/precondition infrastructure Reference sudah teridentifikasi.

Audit belum 100% selesai.

Remaining priority:

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

### Clarification terhadap shell mapping lama

`docs/reference_apps_shell_mapping.md` tetap dipakai sebagai evidence geometry/component Reference.

Namun bagian yang mengarahkan penggunaan `AppsFilterScreen` Legacy tidak menjadi contract Apps2, karena keputusan Apps2 adalah isolated rewrite/port dan Legacy Apps bukan middleman.

### Engineering State

- Apps2 implementation: BELUM DIMULAI.
- Home → Apps cutover: BELUM DIUBAH.
- Legacy Apps: TIDAK DIUBAH.
- Runtime parity: UNKNOWN.
- Reference runtime verification: BELUM DILAKUKAN.


## Audit Checkpoint 2 — Model / Repository Producer Graph

Audit dilanjutkan sampai producer dan repository boundary.

Teramati:

- `ji.Companion.fromPackageInfo` → canonical model dari PackageInfo → `setFromPackageInfo` + `refreshExtras`.
- `ji.Companion.fromMetadataFile` → LocalMetadata → canonical `ji` → installation check + backup refresh.
- `ji.Companion.fromCloudBackups` → latest CloudMetadata → installed PackageInfo bila tersedia atau metadata-only fallback → cloud backups + cloud flag + backup refresh.
- `gm` membungkus backup identity + LocalMetadata.
- `AppCloudBackup` membungkus backup ID + CloudMetadata.
- `AppCloudBackups` menampung beberapa cloud backup, memilih latest, menghitung total size, dan membangun inventory dari cloud snapshot.
- LocalMetadata/CloudMetadata adalah domain metadata besar dengan field per-part, ukuran, tanggal, encryption metadata, version requirements, special-data/permission metadata, protection/note, dan package/version identity.
- `tt` adalah list-state coordinator: section/search/filter state, persisted sync filter, dan delegasi load ke repository.
- `kz4` adalah local repository specialization dan menggunakan inventory package melalui `g00`.
- `ua1` adalah cloud repository specialization dan membangun inventory dari cloud snapshot.

Implikasi Apps2:

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

Legacy Apps repository tidak otomatis boleh dipakai sebagai middleman.

Audit berikutnya tetap pada `dv` state/result contract, `g00.l` inventory reconstruction, filter application graph, app-item actions, lalu Detail/backup/restore execution graph.


## Audit Checkpoint 3 — List State / Filter / Search / Item Actions

Audit dilanjutkan ke execution boundary Apps List.

Teramati:

- `dv` adalah repository-state base dengan cache `itemId`, Loading/Success/Empty result, reload, observer, insert/update/remove, dan main-thread guard.
- `kz4` menggunakan `g00.l(showSystemApps)` untuk local inventory dan merespons package events.
- `ua1` membangun cloud inventory dari cloud snapshot dan mempunyai result states DriveNotConnected, NetworkError, Empty, Success, dan CloudError.
- `g00.m(showSystemApps)` adalah installed-package discovery langsung melalui PackageManager dengan Shizuku fallback ketika inventory kosong.
- `g00.l(showSystemApps)` adalah local inventory yang lebih berat dan menggabungkan installed package information dengan local backup metadata/directories.
- `tt.m(query,list)` menerapkan search melalui `ns0.k`, dengan search-empty state terpisah dari filtered-list state.
- Filter UI/state berada di `sc3`, sedangkan filtering engine berada di `qq.a`.
- Sync filter mempunyai path khusus `qq.b`.
- Filter selection menggunakan `nd3/od3` contract; selected labels memiliki persistent dan temporary state melalui `ud3/xd3`.
- Sort persistence dan derived size/usage data berada di `iy`.
- `ws` mengubah secondary text dan section index berdasarkan sort mode.
- `tr` adalah list-item presenter/view-holder dengan icon, title/subtitle, backup status, labels, favorite, selection, overflow, dan left/right swipe action containers.
- Swipe actions memakai `oy` action objects dan availability per app; inventory konkret `oy` masih belum selesai diaudit.
- AppListActivity mengikat shell Search/Filter/Drawer, pull-to-refresh, FastScroller, batch FAB, list state, dan empty/error/search state.

Contract Apps2 App List sekarang:

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
selection / item actions / swipe
```

Audit belum 100% selesai.

Prioritas berikutnya:

1. complete `oy` action inventory;
2. exact `qq.a` predicate semantics;
3. complete `g00.l` local backup metadata reconstruction;
4. batch selection/action graph;
5. Detail → backup/restore execution graph.

Implementation Apps2 tetap BELUM DIMULAI.


## Audit Checkpoint 4 — Item Actions / Batch Selection

Audit Apps List dilanjutkan ke concrete action dan batch selection.

Teramati:

- Reference memiliki 8 concrete item actions: Launch, EnableDisable, Uninstall, ForceStop, PlayStore, ClearData, AppInfo, ShareApk.
- Availability setiap action dihitung per app melalui `oy.isAvailable`; beberapa action memerlukan root/privileged capability, beberapa hanya memerlukan kondisi installed/enabled/launchable.
- Action membawa ID, menu item ID, title, icon, tone, dan dynamic title/icon untuk EnableDisable.
- `gm7` adalah selection base adapter: selected IDs terpisah dari visible list, toggle per item, select-all, clear-all, selected count, dan callback selection.
- `AppsBatchActivity` memakai `l20` adapter dan `r20` state holder.
- Batch menerima `batch_action_item` atau `quick_action_item`, memiliki Search/Filter/Select All, selected count, App Backup Settings, dan Settings.
- Batch filter surface dikonfigurasi berdasarkan capability request.

Dengan checkpoint ini, Apps List structural contract sudah mencakup discovery → repository state → search → filter → sort → item rendering → selection → item actions → batch entry.

High-risk boundary berikutnya adalah Detail → Backup/Restore execution graph.

Implementation Apps2 tetap BELUM DIMULAI.


## Audit Checkpoint 5 — Detail / Backup / Restore Orchestration

Audit dilanjutkan sampai boundary Detail → AppsTask.

Teramati:

- Detail backup-card mempunyai actions backup details, protect/unprotect, note, sync, delete.
- Detail backup-chip restore visibility bergantung pada `BackupRequirement.isPossible()`; non-APK restore pada observed branch juga mensyaratkan app installed.
- Restore request menggunakan selected backup identity + selected AppParts + `yu` permission mode + `restore_special_permissions` + `restore_ssaids`.
- `jz` adalah restore request model dan menolak AppParts kosong.
- `mk2` adalah Detail restore/task coordinator yang membangun restore task.
- `c40` adalah `AppsTask` dan memiliki branch restore/backup.
- Restore branch mempunyai pre-restore, per-app processing, cloud download bila diperlukan, restore work, post-restore, cleanup, progress/error/cancellation state.
- Backup branch menerima `hz` request dengan AppParts, locations, sync identity/option, cache/compression, MultipleBackupStrategy, dan backup limits.
- Backup branch memproses per-app task, archive/backup manager, cloud upload bila diminta, metadata update, dan multiple-backup cleanup.
- Cancellation secara eksplisit membatalkan active upload/download/archive-related task components.

Arsitektur Reference yang sekarang terbukti:

```
Detail UI
  ↓
Backup/Restore Request
  ↓
AppsTask
  ↓
Per-app Backup/Restore Manager
  ↓
Archive / Download / Upload / Install / Restore collaborators
  ↓
Metadata / Inventory Update
  ↓
Task Result / App Event
```

Remaining high-risk audit:

1. per-app backup manager/archive;
2. per-app restore manager/install;
3. precondition collaborators;
4. metadata commit/update;
5. cloud metadata commit/update;
6. cancellation/recovery details;
7. EXPANSION execution semantics.

Apps2 implementation tetap BELUM DIMULAI.

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


## Audit Checkpoint 6 — Per-App Archive / Cloud Artifact Boundary

Audit dilanjutkan ke per-app backup manager dan cloud artifact construction.

Teramati:

- `vl` adalah per-app backup manager pada backup branch `AppsTask`.
- `vl` membangun source/archive entry per AppPart dan meneruskan source, exclusion, compression, progress, dan archive boundary secara terpisah.
- Data/de-data source menggunakan actual app paths dengan cache/code-cache/shared-preference exclusion sesuai backup-cache state.
- Reference mempunyai handling terpisah untuk APK, split APK, shared libraries, DATA, EXTDATA, MEDIA, dan EXPANSION.
- Special-data tidak diperlakukan sebagai AppPart archive biasa pada observed branch; metadata menjadi boundary khusus.
- `mq` membangun cloud download artifacts dari CloudMetadata + selected AppParts, termasuk APK, splits, shared libs, DATA, EXTDATA, MEDIA, EXPANSION, dan special-data bila kondisi restore mengizinkan.
- Artifact cloud mempunyai remote link, local target, expected size, dan type; local artifact dapat dipakai ulang jika state/size sesuai.
- EXPANSION terbukti sampai boundary cloud artifact/source, bukan hanya enum UI.

Remaining highest-risk boundary:

- device-side restore/install/data mutation;
- post-restore verification;
- preconditions/platform capability;
- metadata commit;
- EXPANSION device-side restore semantics.

Apps2 implementation tetap BELUM DIMULAI.


## Audit Checkpoint 7 — Device Restore / Capability / Post-Restore

Audit device-side restore dilanjutkan sampai `xw` / `AppRestoreTask`.

Teramati:

- `xw` adalah main per-app restore manager pada Reference task path.
- Restore menolak restore package Shizuku ketika Shizuku sedang digunakan.
- Data-only restore memerlukan app terpasang.
- APK restore memvalidasi artifact/package state sebelum install.
- Reference menggunakan `InstallerSourceProxy` + Android `PackageInstaller.Session`, menulis APK/split, `fsync`, commit, menunggu result, memverifikasi installer source, dan abandon session pada failure.
- APK downgrade mempunyai policy berbeda untuk batch, bundled/system app, dan non-bundled app.
- Data restore memerlukan installed UID dan mempunyai archive-format dispatch.
- DATA/DE-DATA, EXPANSION, EXTDATA, dan MEDIA mempunyai restore method/boundary masing-masing.
- EXPANSION benar-benar dipulihkan ke expansion/OBB target dan mempunyai final target/capability handling.
- Permission/special-data/SSAID mempunyai restore path tersendiri.
- Post-restore mencakup package/event update, temporary artifact cleanup, progress/task result, dan conditional cloud-cache cleanup.
- Static evidence tidak membuktikan universal byte-for-byte verification untuk semua restored files; yang terbukti adalah part/task result handling dan target/package state checks.

Invariant Reference yang sekarang kuat:

`artifact available` ≠ `APK installed` ≠ `data restored` ≠ `app restore task successful`.

Remaining audit gaps sebelum Apps2 architecture freeze:

1. exact precondition/capability resolver per AppPart;
2. complete local/cloud metadata commit/update path;
3. concrete `mv` install request and downgrade workaround mapping;
4. complete archive-format matrix behind `xw.k()`;
5. runtime verification of Reference behavior.

Apps2 implementation tetap BELUM DIMULAI.


## Audit Checkpoint 8 — Part Capability / Preconditions / Metadata Boundary

Audit capability contract dan metadata boundary sudah diperdalam.

Teramati dari Reference `iu.getBackupReq()` + `sk0.isPossible()`:

- APP → NONE;
- DATA → ROOT;
- EXTDATA → ROOT_OR_SHIZUKU pada capability condition Reference;
- EXPANSION → ROOT_OR_SHIZUKU pada capability condition Reference;
- MEDIA → NONE.

Capability resolution:

- ROOT → `mp6.g`;
- ROOT_OR_SHIZUKU → `mp6.f()`;
- NONE → selalu possible.

Restore menambahkan target preconditions: data-like parts memerlukan app installed; DATA memerlukan installed UID; APK memerlukan valid base artifact + PackageInstaller path; downgrade policy dapat mengubah hasil APK restore; permission mode dapat menambah special-data work.

`PreconditionsActivity` memodelkan permission preconditions untuk request codes 2, 3, dan 589, tetapi mapping lengkap request code → AppsTask belum terbukti.

Metadata update yang terbukti berada pada backup/cloud-upload path: APK, splits, DATA, EXTDATA, MEDIA, EXPANSION, special-data, note/protection/date-updated.

Untuk restore, inspected `xw`/`c40` path **belum memberikan evidence** adanya symmetric metadata persistence commit setelah restore. Yang terbukti adalah package/app state update dan task result.

Archive dispatch terbukti memiliki format 1, 2/4/5, format 3 untuk EXPANSION path, dan format 6; `mz6` menjadi common archive/extraction boundary, tetapi `xw.k()` masih mempunyai decompilation gap.

Dengan checkpoint ini, capability model Apps2 dapat dirancang eksplisit:

`AppPart → BackupRequirement → Capability State → Target Preconditions → Part Restore`

Remaining audit gaps:

1. permission/precondition request mapping;
2. `mv` install request + downgrade workaround;
3. archive internals di balik JADX gaps;
4. complete metadata persistence implementation;
5. runtime verification.

Apps2 implementation tetap BELUM DIMULAI.


## Audit Checkpoint 9 — Rekonstruksi Awal Reference → Apps2

Audit sudah cukup matang untuk membuat peta rekonstruksi statis tanpa memulai implementation.

Artifact baru:
- docs/reference_apps_reconstruction_map.md

Peta tersebut menghubungkan Reference ke proposal Apps2 untuk:
- shell/navigation;
- list presentation;
- repository/state/model;
- search/filter/sort;
- item actions;
- selection/batch;
- detail;
- backup/restore request;
- task;
- archive/artifact;
- capability;
- EXPANSION;
- resource boundary;
- shared boundary.

Status peta: DRAFT / PROPOSAL, bukan implementation.

### Important engineering distinction

Audit Reference static sudah cukup untuk memulai reconstruction design, tetapi belum cukup untuk menyatakan Reference runtime parity atau Apps2 readiness.

Sebelum implementation, masih ada verification/design gaps:

1. final namespace/package collision check terhadap actual BaRe;
2. exact mv installer request mapping;
3. permission/precondition request mapping;
4. archive-format decompilation gaps;
5. metadata persistence details;
6. runtime verification Reference bila feasible.

Architecture freeze: BELUM.
Apps2 implementation: BELUM DIMULAI.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

## Audit Checkpoint 10 — Apps Preconditions / Installer / Metadata Clarification

Audit dilanjutkan langsung dari raw decompile Reference SwiftBackup 5.1.0-620.

### Koreksi evidence

- `PreconditionsActivity` tidak boleh dipakai sebagai Apps restore precondition contract. Request code yang terinspeksi terkait SMS/call-log permission dan dipakai oleh Messages/Calls/Quick Actions/scheduling.
- Apps restore preconditions yang relevan ditemukan langsung di `xw` + `nm6` + `iu` + `sk0`.
- Concrete installer request bukan `mv`; model request teridentifikasi sebagai `fd4` dengan item APK `ad4`.
- `mv` diposisikan sebagai AppRestoreHelper/downgrade-workaround collaborator.

### Evidence baru

- Apps restore: installed-target check, backup existence, per-part change/size check, installed UID requirement untuk DATA, blacklist suppression, dan downgrade continuation condition.
- PackageInstaller request: installer package, target package, APK name/path/length, SessionParams policy, fsync, commit, 120-second result wait, installer-source verification, dan abandon pada failure.
- LocalMetadata: persistence boundary melalui `cu`, termasuk backup save, protection update, dan note update.
- CloudMetadata: artifact detail update lalu cloud metadata upload/update pada AppUploadTask.
- Restore metadata rewrite setelah successful restore masih NOT EVIDENCED.

### Status

Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.
Reference runtime verification: BELUM.

Audit berikutnya diprioritaskan ke archive/extraction matrix dan restore execution collaborators karena masih menjadi high-risk boundary.

## Audit Checkpoint 10A — Archive Format / Extraction Boundary

Audit raw decompile dilanjutkan ke \`Packer\`, \`mz6\`, dan \`xw\` menggunakan JADX + smali karena \`xw.k()\` memiliki decompilation failure di JADX.

### Hasil

Archive detector sekarang terpetakan:

- format 1 → ZIP biasa;
- format 2 → ZIP berisi TAR;
- format 3 → raw TAR;
- format 4 → legacy 7-Zip;
- format 5 → 7-Zip dengan compressed-entry structure;
- format 6 → Swift Backup Archive (SBA).

Encryption metadata juga terdeteksi untuk ZIP, 7-Zip, dan SBA.

Restore DATA:

- format 1 → unpack → DATA/DE-DATA;
- format 2/4/5 → unpack → optional decompress → cari \`\${packageName}.tar\` → DATA/DE-DATA;
- format 3 → raw TAR extraction dengan Local/Root/Shizuku execution boundary;
- format 6 → SBA entry/password validation → \`mz6\` extraction → DATA/DE-DATA.

JADX tidak mampu mendekompilasi \`xw.k()\` secara penuh, tetapi smali berhasil memperlihatkan control flow penting sehingga gap tersebut tidak lagi diperlakukan sebagai UNKNOWN total.

### Status

Archive boundary: RECONSTRUCTED STATICALLY dengan beberapa implementation-detail gaps.

Masih UNKNOWN/UNVERIFIED:

1. seluruh edge case internal ZIP/7Z extraction;
2. password/encryption error matrix lengkap;
3. detail penuh \`Fidelity\` vs \`RootFidelity\`;
4. runtime behavior pada archive SwiftBackup 5.1.0-620 nyata;
5. post-extraction byte/content verification.

Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

## Audit Checkpoint 10B — Archive Profile / Legacy 7-Zip

Audit memperjelas dua hal:

- format 4 vs 5 dibedakan oleh struktur entry 7-Zip; format 5 dipilih bila ditemukan entry dengan suffix `compressed`;
- keduanya memakai `Packer.a()` → `nb7.a()` untuk extraction nyata.

`nb7.a()` terbukti melakukan materialisasi file: create destination, open 7-Zip, password UTF-16LE, filter entries, create directories, stream files, progress, cleanup.

Untuk TAR/SBA, `f27` dipetakan ke native profile:

- Basic → 511;
- Fidelity → 468;
- RootFidelity → 384.

Mapping numeric tersebut VERIFIED dari source, tetapi makna behavioral detail di native implementation masih UNKNOWN.

Archive subsystem sekarang cukup kuat untuk menjadi reference contract tingkat orchestration. Runtime/native edge cases masih perlu diverifikasi sebelum architecture freeze.

## Audit Checkpoint 11 — APK Install / Downgrade Boundary

Audit dilanjutkan ke `mv`, `nj7`, `zm5`, `InstallerSourceProxy`, `sd7`, dan `gq`.

### Hasil utama

Concrete install chain sekarang terbukti:

`mv` → `nj7`/`sd7` → `InstallerSourceProxy`/PackageInstaller atau shell install → result → verification.

`fd4` adalah request installer dan `ad4` adalah APK file descriptor model.

Source-preserving install aktif pada kondisi yang terinspeksi ketika `mp6.g` aktif dan installer package adalah `com.android.vending`. Hasil `SB_INSTALL:Success` menjadi bukti sukses pada jalur tersebut.

Jika source-preserving install gagal:
- package masih installed → verification failure dapat ditoleransi dan restore data dapat dilanjutkan;
- package tidak installed → fallback ke shell APK installer.

Shell installer menggunakan install session berbasis `pm install-create`, menulis APK, lalu `pm install-commit` melalui Shizuku.

Split APK failure dapat menghasilkan exclusion set dan retry tanpa split yang gagal. Split dengan version mismatch terhadap base APK juga diabaikan.

Downgrade preparation membuat backup sementara `<package>.downgrade.sba`, rename external/expansion/media menjadi `.bkp`, lalu uninstall package untuk memungkinkan downgrade ketika kondisi downgrade path aktif.

Post-downgrade recovery mencoba restore backup tersebut jika app tetap installed; archive dipertahankan bila app hilang atau recovery gagal.

### Status

APK installer/downgrade boundary: RECONSTRUCTED STATICALLY.
Runtime Android-version/user matrix: BELUM VERIFIED.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.
## Audit Checkpoint 12 — Metadata Lifecycle / Delete / Cloud Sync

Audit dilanjutkan ke `cu`, `hk`, `LocalMetadata`, `AppCloudBackups`, `AppUploadTask (c40)`, `AppBackupDeleteHelper (ik)`, serta update note/protection.

### Hasil

LocalMetadata:
- versioned format `v1:::...`;
- user identity validation;
- metadata version validation;
- max file size validation 102400 bytes;
- explicit write boundary `cu.f()`;
- artifact-level mutation lalu final metadata save.

Backup update:
- APK/splits/shared libs/EXTDATA/EXPANSION meng-update metadata setelah artifact operation;
- special-data/permission fields difinalisasi sebelum final save;
- existing-backup update memperbarui `dateBackupUpdated`.

Cloud:
- AppUploadTask merge local state ke CloudMetadata;
- `prepareForFirebaseUpload()` lalu `cf3.c(...)`;
- cloud index dibaca ulang melalui `AppCloudBackups.fetchForPackage()`;
- invalid cloud metadata tidak dimasukkan ke `AppCloudBackups`;
- list diurutkan berdasarkan `dateBackedUpOrUpdated` descending.

Retention/delete:
- protected cloud backups dikeluarkan dari normal retention deletion;
- normal backups melewati `MultipleBackupStrategy` retention count;
- selected cloud backups dikirim ke `AppBackupDeleteHelper`;
- local package directory baru dihapus setelah tidak ada local backup tersisa.

Note/protection:
- local → mutate LocalMetadata → `cu.f()`;
- cloud → mutate CloudMetadata → `cf3.c(appId, backupId, metadata)`;
- kedua persistence boundary terpisah.

### Status

Metadata lifecycle: RECONSTRUCTED STATICALLY.
Cloud index/retention: RECONSTRUCTED STATICALLY.
Delete orchestration: RECONSTRUCTED STATICALLY.
Atomicity/process-death recovery: UNKNOWN.
Cloud provider transaction semantics: UNKNOWN.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit tetap mengikuti dependency path: restore result/state reconciliation → cloud/local delete edge cases → task failure/recovery semantics → remaining Apps collaborators.
## Audit Checkpoint 13 — Restore Result / State Reconciliation / Failure Aggregation

Audit dilanjutkan ke `xw`, `uw`, `sv`, `b40`, dan orchestration `c40`.

### Hasil

`uw` menjadi per-app restore result accumulator dengan kategori terpisah untuk skipped part, restore failure, invalid APK, no-APK, warning, critical/unexpected error, dan task-level error.

APK downgrade failure tidak selalu terminal: bila app masih installed, Reference mencatat warning bahwa APK restore dilewati karena installed version lebih baru, lalu DATA restore dapat dilanjutkan.

Part restore errors tetap diisolasi dan dikumpulkan sebelum menjadi task-level summary.

`sv` mengagregasi:
- `sv.a` → per-app restore result;
- `sv.b` → download/cloud-transfer result.

`b40` menjadi error summary yang membedakan insufficient space, skipped part, download error, failed restore, no APK, wrong password, data corruption, unexpected error, warning, dan critical error.

Task state `COMPLETE` tetap dapat terjadi ketika error summary `b40` berisi per-app restore errors. Jadi task completion bukan sinonim dengan semua app berhasil direstore.

Post-restore melakukan:
- special-data/permission restore;
- package state refresh/check;
- local repository reload;
- per-app event publication;
- cloud cache cleanup untuk cloud restore.

Restore membaca LocalMetadata/CloudMetadata tetapi tidak ditemukan symmetric metadata write melalui `cu.f()` atau CloudMetadata persistence setelah restore.

### Status

Restore result aggregation: RECONSTRUCTED STATICALLY.
Failure/recovery semantics: RECONSTRUCTED STATICALLY pada orchestration level.
Post-restore state reconciliation: RECONSTRUCTED STATICALLY.
Process-death recovery: UNKNOWN.
External UI state semantics: sebagian UNKNOWN.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: delete failure semantics + task cancellation/recovery + backup record consistency after delete.
## Audit Checkpoint 14 — Delete Edge Cases / Cloud Consistency / Cancellation

### Hasil

Local delete:
- selection dapat latest-only dan exclude protected;
- hanya part yang dipilih yang dihapus;
- package directory dihapus hanya setelah tidak ada local backup tersisa;
- local metadata rewrite via `cu.f()` belum terbukti pada level `ik`/`hk`.

Cloud delete:
- `id1` diteruskan ke `xh2`;
- `xh2` membuat copy CloudMetadata;
- selected part details dihapus dari metadata;
- reduced metadata dipersist lebih dulu jika masih ada backup;
- jika tidak ada backup tersisa, metadata node dihapus;
- setelah itu file links dikumpulkan dan physical cloud files dihapus.

Physical cloud deletion memiliki retry sampai 10 kali dengan jeda 30 detik dan reconnect/access check melalui `qb1.c().a(false)`.

Temuan penting: metadata cloud dapat sudah berubah/terhapus ketika physical file deletion kemudian gagal. Tidak ditemukan rollback otomatis atau orphan-file reconciliation di path yang diperiksa.

Task state generic membedakan `COMPLETE` dan `CANCEL_COMPLETE`; cancellation/process death di antara metadata commit dan physical deletion belum terbukti recovery-nya.

### Status

Delete edge cases: RECONSTRUCTED STATICALLY.
Cloud metadata/file ordering: VERIFIED STATICALLY.
Cancellation boundary: RECONSTRUCTED STATICALLY.
Local metadata lower-level reconciliation: UNKNOWN.
Rollback/orphan recovery: UNKNOWN.
Process-death recovery: UNKNOWN.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: lower-level local `q63` delete/metadata coupling → task cancellation/retry semantics → remaining backup/history collaborators only where dependency requires.
## Audit Checkpoint 15 — Lower-level Local Delete / Metadata Coupling

### Hasil

`q63` adalah filesystem abstraction. Method `f()`, `g()`, `h()`, dan `i()` menghapus file/directory melalui Java/root/trash/shell path, tetapi tidak memanggil `cu.f()` dan tidak memutasi `LocalMetadata`.

`hk` memetakan backup record ke backup directory serta file `<backupId>.app`, `<backupId>.xml`, dan part DATA/EXTDATA/MEDIA/EXPANSION.

`hk.v()` menunjuk metadata `.xml`; `hk.u()` membaca `LocalMetadata` dari path tersebut.

Partial local delete menghapus artifact yang dipilih tetapi tidak menemukan metadata rewrite pada lower-level delete path. Karena itu metadata lama dapat tetap ada selama backup directory masih memiliki artifact/record.

Jika tidak ada backup tersisa, `fk.c(package,false).g()` menghapus package backup directory sehingga metadata `.xml` yang tersisa ikut terhapus sebagai filesystem content.

### Invariant

Local artifact deletion dan LocalMetadata persistence adalah dua boundary terpisah.

Ini tidak otomatis berarti metadata stale adalah bug; source belum membuktikan apakah higher-level observer sengaja merekonsiliasikan metadata atau history menggunakan metadata + artifact existence.

### Status

Lower-level local delete: VERIFIED STATICALLY.
LocalMetadata coupling: VERIFIED STATICALLY sebagai separate boundary.
Higher-level metadata reconciliation: UNKNOWN.
Process-death behavior: UNKNOWN.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: cancellation/retry semantics dan higher-level observers/history consistency setelah delete.
## Audit Checkpoint 16 — Delete Observer / History Refresh / Cancellation

### Hasil

Delete dari detail controller (`mk2`/`kk2`) setelah `ik.a()` melakukan refresh controller dan memanggil `g00.F(packageName)`. Delete tidak mengubah `LocalMetadata` object secara langsung.

Local repository `kz4` dan cloud repository `ua1` menerima `oq` app event dan melakukan refresh/remove/add sesuai kondisi app.

Backup/history tidak ditemukan sebagai durable delete-history record terpisah; tampilan backup direkonstruksi dari current local backup records dan `AppCloudBackups`/cloud metadata.

Sehingga konsistensi UI/state mengikuti pola:

filesystem/cloud mutation → helper → controller refresh → repository/event refresh → history/list reconstruction.

Cancellation:
- `no2` generic wrapper menghasilkan `COMPLETE` atau `CANCEL_COMPLETE`;
- `jk` multi-app delete mengecek cancellation di antara app;
- `xh2` cloud delete tidak menunjukkan transactional rollback khusus cancellation.

Retry:
- cloud deletion loop sampai 10 attempt dengan 30 detik antar-attempt;
- helper delete-file-ids memiliki retry layer tambahan dengan batas berdasarkan `jh6.a < 5`;
- provider-side idempotency belum terbukti.

### Status

Delete observer refresh: VERIFIED STATICALLY.
History reconstruction model: RECONSTRUCTED STATICALLY.
Cancellation layering: RECONSTRUCTED STATICALLY.
Retry layering: VERIFIED STATICALLY.
Provider idempotency: UNKNOWN.
Cancellation recovery after metadata mutation: UNKNOWN.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: close remaining delete/task edge gaps where evidence exists, then evaluate whether the reference audit has reached sufficient coverage for architecture freeze. Apps2 implementation remains blocked until explicit implementation plan is presented.
## Audit Checkpoint 17 — Apps List Filter / Sort / Row State

Audit belum masuk closing; surface Apps masih luas.

Evidence visual user menunjukkan `LOCAL APPS`, app count, search, filter, sort/drawer controls, row overflow/status, dan `Batch actions`. Evidence visual ini dipakai sebagai corroboration surface, sedangkan behavior tetap direkonstruksi dari decompile.

`qq.a(...)` terbukti sebagai multi-filter pipeline terhadap `ji` dengan dimensi:
- app type;
- miscellaneous;
- labels;
- backup status;
- favorites;
- install status;
- enabled status;
- backup age/miscellaneous;
- local/cloud context.

Filter detail yang terbukti mencakup User/System, Launchable/Updated/LabelledOrFavorites, Selected/Labelled/NotLabelled, BackedUp/NotBackedUp, Favorites/NotFavorites, Installed/NotInstalled, Enabled/Disabled, MultipleBackups/ProtectedBackups/BackupsWithNotes/BackupOld/BackupNew/InstalledFromGooglePlay/NotInstalledFromGooglePlay.

Sync filter `ce3` menggunakan cloud snapshot/index dan dapat reset ke `All` ketika cloud/network prerequisite tidak tersedia.

Filter persistence memakai SharedPreferences. Selected label memiliki temporary/applied state.

Sort `sx`: Name, InstallDate, UpdateDate, BackupDate, AppSize, BackupSize, DateUsed. Mode dan direction dipersist. DateUsed bergantung UsageStats permission; jika tidak tersedia sort di-reset ke Name.

Name sort menggunakan locale-aware collation. AppSize/BackupSize dapat memerlukan derived size calculation off-main-thread.

Row `ws`/`tr` memuat icon, package/name, last backup/sync, sort-dependent secondary text, labels, favorite, selection, overflow, dan dynamic swipe actions.

### Status

Apps list filter pipeline: RECONSTRUCTED STATICALLY.
Filter persistence: VERIFIED STATICALLY.
Sort pipeline: RECONSTRUCTED STATICALLY.
Row presentation/state: RECONSTRUCTED STATICALLY.
Batch action semantics: BELUM SELESAI.
Action capability matrix: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: batch actions + row swipe/overflow action capability matrix, lalu labels/config/quick-actions dependency path.
## Audit Checkpoint 18 — Batch Actions / Row Capability / Quick Actions

`s10` membentuk batch action berdasarkan selection `ji` dan local/cloud section:
- Backup;
- Restore;
- Sync backups (local section);
- Delete backups (local/cloud);
- Export apps list;
- Apply labels;
- Enable/Disable apps;
- Uninstall (local section, non-bundled installed apps).

`n10` membawa action identity, title/subtitle, count, section flag, dan option/action resource metadata.

`AppsBatchActivity` memakai `l20` sebagai selection adapter. Select-all mengubah selection; state selection disimpan lewat `onSaveInstanceState`. Action tidak dieksekusi jika selection kosong.

Delete backup batch memeriksa selected local backups untuk protected backup sebelum dialog/flow. Apply labels memakai `n97` dengan Set/Add/Clear; Add/Clear disabled jika tidak ada selected app yang memiliki labels.

`oy.isAvailable(ji)` menghasilkan capability matrix:
- Launch: installed + enabled + launchable;
- Enable/Disable: root/Shizuku + installed;
- Uninstall: installed + not bundled;
- ForceStop: root/Shizuku + installed + enabled;
- PlayStore: installed + enabled;
- ClearData: always available pada enum path yang diperiksa;
- AppInfo: installed;
- ShareApk: installed.

Enable/Disable icon/title berubah berdasarkan `ji.enabled`. Uninstall dan ClearData bertone destructive.

`yc6` quick-action catalog:
- backup all/pending/updated/redo/sync;
- restore all/missing/new versions;
- optional calls, folders, messages backup/restore;
- delete backups of uninstalled apps;
- enable/disable apps.

`pinned_actions` disimpan di SharedPreferences dengan default yang mencakup backup-all dan restore-all.

`zc6` membawa flag untuk backup/restore, sync, local/cloud, dan expansion/execution behavior; sebagian semantic naming tetap obfuscated.

### Status

Batch action catalog: VERIFIED STATICALLY.
Batch selection/state: RECONSTRUCTED STATICALLY.
Row capability matrix: VERIFIED STATICALLY.
Quick-action catalog: VERIFIED STATICALLY.
Quick-action flag semantics: PARTIAL / OBFUSCATED.
Overflow/swipe exact placement: UNKNOWN.
Full task graph per batch variant: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: labels data lifecycle + custom configurations + quick-action execution graph, then reassess remaining Apps surface before any closing decision.
## Audit Checkpoint 19 — Labels / Custom Configurations / Quick Action Execution

Labels:
- `LabelsData` = label definitions + labelled-app map;
- `LabelParams` mendukung user labels dan built-in/synthetic label IDs;
- `LabelledApp` menyimpan package/name/labelIds;
- load cloud `labelsData` → `lr4`, fallback ke local serialized cache saat offline;
- save melakukan cleanup/filter, update in-memory state, persist local cache, lalu write Firebase `labelsData`;
- delete label menghapus ID dari affected `LabelledApp`, persist, dan refresh affected apps;
- batch Set/Add/Clear memiliki semantic berbeda.

Custom configurations:
- `Config` = version/id/name/ordered `ConfigSettings`/update date;
- `ConfigSettings` memuat app parts, locations, sync option, backup limits, archive, multiple-backup strategy, restore permission settings, compression/cache/force-redo/enabled, dan ApplyData/labels;
- `Config.getValidSettings()` memfilter invalid settings;
- `br1` menjadi config repository dengan cloud/local cache lifecycle;
- duplicate config name ditolak jika ID berbeda;
- save/update memvalidasi, update timestamp, mutate ConfigsData, update repository, dan write Firebase `configs`;
- `AppsConfigRunActivity` memvalidasi config lalu masuk ke Apps backup/restore task stack;
- configuration bukan backup engine terpisah, melainkan reusable task-parameter layer.

Quick Actions:
- `zc6` membawa action ID + execution flags;
- `ui0` menjadi expansion boundary ke backup/restore task parameters;
- maintenance actions delete-uninstalled-backups dan enable/disable masuk dedicated flow;
- pinned action IDs persist di `pinned_actions`.

### Status

Labels lifecycle: VERIFIED STATICALLY.
Label assignment/removal: RECONSTRUCTED STATICALLY.
Custom config lifecycle: RECONSTRUCTED STATICALLY.
Config persistence: VERIFIED STATICALLY.
Config execution boundary: RECONSTRUCTED STATICALLY.
Quick-action expansion boundary: RECONSTRUCTED STATICALLY.
Full quick-action option variants: BELUM SELESAI.
Exact ConfigSettings downstream effect per field: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: detail surface + backup history + metadata/action cards, then remaining Apps task/precondition/capability collaborators. Do not close audit yet.
## Audit Checkpoint 20 — Detail / Backup History / Action Cards

Detail shell:
- `detail_activity.xml` = app info + local/device backup card + cloud backup card;
- `detail_card_app_info` = package/name/version/labels/favorite + conditional Launch/Enable/Disable/Uninstall/Not installed actions;
- `detail_card_app_backup` = Loading/Error/Main + tabs + date/info + note + part chips + Restore + overflow.

Local detail state direkonstruksi oleh `lx` menjadi `zj2` dari current local backup records. Part state mencakup APK/splits/shared libs/DATA/EXTDATA/EXPANSION/MEDIA, encryption, version, protection.

Cloud detail state direkonstruksi oleh `lk2` dari `AppCloudBackups.fromSnapshot()` menjadi `wj2`; `ji.cloudBackups` diperbarui dengan reconstructed cloud index.

Cloud detail state membedakan Loading, NoBackup, DriveNotConnected, NetworkError, dan BackedUp.

Detail history bukan journal terpisah; local/cloud history berasal dari current backup records/metadata.

Backup Details dialog (`kk`/`d11`) menampilkan Created, Updated jika berbeda, Backup tag, Protected, lalu detail per-part: APK, Split APKs, Shared libraries, DATA, EXTDATA, MEDIA, EXPANSION, Special data; dapat menampilkan version, original size, backup size, compression saved, files/folders, encryption.

Backup-card actions: details, protect/unprotect, update note, sync, delete; metadata menu item hidden pada inspected path.

Part-chip actions: restore, share, sync, delete, encryption info sesuai part/source. Restore detail entry memakai `restore_special_permissions=true` dan `restore_ssaids=false` defaults.

Storage card memiliki backup/delete/share constraints berdasarkan selected `AppPart` dan install state.

### Status

Detail surface: RECONSTRUCTED STATICALLY.
Local backup history: RECONSTRUCTED STATICALLY.
Cloud backup history: RECONSTRUCTED STATICALLY.
Backup details dialog: VERIFIED STATICALLY.
Detail action cards: RECONSTRUCTED STATICALLY.
Exact premium/capability visibility matrix: BELUM SELESAI.
Runtime transition/performance: UNVERIFIED.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: remaining Apps task/precondition/capability collaborators + exact batch/config/quick-action task graph. After that inventory the uncovered source classes against the original 45-class Apps subsystem map before deciding whether audit can close.
## Audit Checkpoint 21 — Apps Task Graph / Preconditions / Capability / 45-Class Ledger

`c40` adalah Apps task provider. Operation types yang relevan:
- `ky7` Backup;
- `ry7` Restore + `isApkDowngradeAllowed`;
- `oy7` DeleteBackups + selected parts/locations/delete type;
- `py7` Enable/Disable;
- `sy7` Uninstall.

Sub-manager boundary:
- Backup → `jl` / `vl` / upload chain;
- Restore → `wv` / `mq` / `xw` / post-restore;
- Delete → `jk` / `ik`;
- Uninstall → `lz`;
- Enable/Disable → `nq`.

Setelah operation branch, `c40` melakukan local app reload/event reconciliation dan emits `d40` completion.

Cancellation: TaskActivity → `hy7.d()` → TaskService cancellation state. `c40.a()` propagates cancellation to active backup upload/download/restore/delete/uninstall/enable-disable child managers. Multi-app delete (`jk`) juga mengecek cancellation antar-app.

TaskService membedakan COMPLETE/CANCEL_COMPLETE/TIMEOUT. Jika task selesai dengan errors, `TaskManager$ErrorSummary` diserialisasi ke `TaskErrors.txt`. `TaskActivity` dapat membaca file ini setelah process/UI loss ketika in-memory task list kosong. Ini membuktikan persistence error summary, bukan resumable transaction.

`PreconditionsActivity` request codes 2/3/589 menangani SMS/call-log permissions. Apps backup/restore biasa tidak melalui activity tersebut; Apps memakai root/Shizuku capability dan operation-specific prerequisites.

Capability utama Apps: `mp6.f()/g()` root-or-Shizuku. Row action capability melalui `oy.isAvailable(ji)`.

### 45-class source coverage ledger

Original source cluster count tetap 45:
- appslist 14;
- appsquickactions 1;
- appinfo 1;
- detail 2;
- appconfigs 11;
- apptasks 8;
- model/app 5;
- settings/appbackuplimits 2;
- settings/appvisibility 1.

Ledger saat ini belum berarti 45/45 deep coverage.

Focused remaining passes:
- FavoriteAppsRepo lifecycle;
- AppInfo deep behavior;
- ShortcutPinnedReceiver;
- ConfigEdit/List/Settings downstream effects;
- AppBackupLimits downstream enforcement;
- AppVisibilityDiagnostics source semantics;
- remaining apptasks helper serialization/edge commands;
- full quick-action/config option variants.

### Status

Apps task graph: VERIFIED STATICALLY.
Cancellation propagation: VERIFIED STATICALLY.
Task error persistence: VERIFIED STATICALLY.
Generic PreconditionsActivity boundary: RECONSTRUCTED STATICALLY.
Apps capability boundary: VERIFIED STATICALLY.
45-class inventory: VERIFIED STATICALLY.
Deep 45-class coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: remaining 45-class ledger gaps, starting FavoriteAppsRepo + AppInfo + ShortcutPinnedReceiver, then Config UI/downstream, AppBackupLimits enforcement, AppVisibilityDiagnostics, and final apptasks helper edges.
## Audit Checkpoint 22 — Remaining Reference Surfaces

FavoriteAppsRepo (`v53`):
- local cache `files/favorites/cached_favorites`;
- main-thread read rejected;
- anonymous users local-only;
- signed-in non-anonymous users fetch Firebase `favoriteApps`, rebuild map by package, persist local cache;
- toggle writes/removes Firebase child when remote is available, otherwise local-only;
- publishes app event and optional toast;
- init guarded and started after user exists.

AppInfo:
- receives `ji.PARCEL_KEY`;
- displays name/package/version/sourceDir/dataDir/split APK paths;
- displays UID for installed apps via `g00.n()`;
- no mutation observed.

ShortcutPinnedReceiver:
- offloads receive handling;
- reads `ji.PARCEL_KEY`;
- logs shortcut-added detail event;
- calls `Const.x(context)`;
- j32 creates/ registers this pin flow and detail shortcut carries `detail_launched_from_shortcut=true`;
- no dedicated persistence store observed.

Config UI/downstream:
- ConfigList root/Shizuku + premium gated;
- ConfigEdit creates/edits/deletes config, validates name, prevents duplicate names, maintains ordered ConfigSettings;
- ConfigSettingsActivity exposes parts/locations/sync/limits/strategy/compression/restore options;
- ConfigSettings defaults: APP+DATA with root else APP; DEVICE; WIFI; restore special permissions true; SSAID false; permissions Granted; compression DEFAULT;
- `v10` maps ConfigSettings to `hz` task input;
- `m30` consumes locations and restore permission/special permission/SSAID in restore selection.

AppBackupLimits:
- AppBackupLimitItem validates part + positive limit;
- qk0.n() is actual enforcement;
- FAT32 > 4GiB is skipped with warning;
- special bypass mode skips user limit enforcement;
- local/cloud operation uses corresponding limit;
- over-limit part is skipped and recorded in local/cloud task message accumulator;
- DATA/EXTDATA/EXPANSION/MEDIA eligibility properties route through this check.

AppVisibilityDiagnostics:
- raw source = PackageManager via `i6.i(packageManager, ownPackageName)`;
- state tracks snapshot/search/loading/error;
- snapshot tracks raw count, own package, package rows and diagnostic flags for own package/android/cts shim;
- search matches package label/name case-insensitively;
- UI supports querying, success, empty, failure and copy raw diagnostics;
- diagnostic only, no visibility mutation.

Remaining apptasks:
- AppsWorkingDir app_tasks path/cleanup and Shizuku-accessible directory selection;
- SBA app-data archive metadata serialization;
- NotificationPolicyProxy privileged notification backup/restore, 4MiB full payload and 512KiB per-package payload limits;
- InstallerSourceProxy already audited.

### Status

FavoriteAppsRepo: VERIFIED STATICALLY.
AppInfo: VERIFIED STATICALLY.
ShortcutPinnedReceiver: VERIFIED STATICALLY.
Config UI/downstream: RECONSTRUCTED STATICALLY.
AppBackupLimits enforcement: VERIFIED STATICALLY.
AppVisibilityDiagnostics: VERIFIED STATICALLY.
AppsWorkingDir/SBA/NotificationPolicy: VERIFIED STATICALLY.
Deep 45-class coverage: STILL NOT CLAIMED COMPLETE.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

Next audit: perform source-inventory reconciliation against all 45 classes and all known Apps resource surfaces, then inspect any remaining uncovered collaborators that materially affect behavior. Do not close or freeze architecture merely because the main flows are understood.

## Audit Checkpoint 23 — Reconciliation 45 Class + Resource + Collaborator

### Audit action

Dilakukan reconciliation source inventory terhadap seluruh 45 source class Apps, seluruh collaborator import yang teridentifikasi dari 45 class, dan resource tree Reference. Screenshot tidak dijadikan batas audit.

### Hasil

**45 source class: VERIFIED AVAILABLE.**

Cluster:

- appslist: 14
- appsquickactions: 1
- appinfo: 1
- detail: 2
- appconfigs: 11
- apptasks: 8
- model/app: 5
- settings/appbackuplimits: 2
- settings/appvisibility: 1
- total: 45

**342 unique defpackage.* collaborator names: VERIFIED INVENTORIED.**

Reconciliation terhadap decompile menunjukkan seluruh 342 collaborator memiliki source file tersedia. Namun semantic coverage tetap belum complete. Exists tidak disamakan dengan audited.

**Reference resource tree: 1,580 files.**

Direct R.* references dari 45 source class menghasilkan **167 unique resource symbols**:

- id 58
- string 58
- drawable 17
- dimen 9
- menu 12
- color 3
- font 3
- layout 2
- style 2
- attr 2
- integer 1

Apps-related resource surfaces teridentifikasi jauh melampaui screenshot, mencakup Apps List/item/action, batch, quick actions, configs, labels, detail, backup limits, visibility diagnostics, restore-special-data, multiple-backups, task surfaces, dan menu/action surfaces.

### Coverage ledger

45 source classes                 VERIFIED AVAILABLE
342 collaborator source files     VERIFIED AVAILABLE
167 direct resource symbols      VERIFIED INVENTORIED
1,580 Reference resource files   VERIFIED INVENTORIED

45-class deep semantic coverage  NOT COMPLETE
collaborator semantic coverage   NOT COMPLETE
resource semantic coverage       NOT COMPLETE

Availability/inventory tidak dianggap sebagai deep audit.

### Status

Source inventory reconciliation: **VERIFIED STATICALLY**.
Collaborator availability reconciliation: **VERIFIED STATICALLY**.
Direct resource reconciliation: **VERIFIED STATICALLY**.
Apps resource surface inventory: **RECONSTRUCTED STATICALLY**.
Deep 45-class coverage: **BELUM SELESAI**.
Collaborator semantic coverage: **BELUM SELESAI**.
Resource semantic coverage: **BELUM SELESAI**.
Apps2 implementation: **BELUM DIMULAI**.
Architecture freeze: **BELUM**.
Home cutover: **BELUM**.
Legacy Apps: **TIDAK DIUBAH**.

### Next audit

Lanjut bongkar semantic behavior collaborator yang masih uncovered/material, dengan prioritas fan-out tinggi dan execution boundaries. Setelah setiap audit pass, update reference/reference_apps_audit.md untuk evidence/finding dan docs/worklog-apps2.md untuk continuity/status/next action.

Audit tidak ditutup hanya karena main flow sudah dipahami.

## Audit Checkpoint 24 — Material Collaborator Semantic Pass

Dilanjutkan semantic audit terhadap collaborator prioritas yang sebelumnya baru berstatus available/inventoried.

### Findings

- pe4.w(...) terverifikasi sebagai installer failure-message mapper, termasuk ABI mismatch, missing split, signature conflict, downgrade, storage, invalid APK, blocked, aborted, dan generic PackageInstaller failures.
- pe4.x(...) adalah XML parser/file-input boundary.
- sz8 terverifikasi sebagai shared UI/platform utility; Apps-relevant behavior mencakup ExtendedFAB/RecyclerView interaction, progress guard, dan themed colors.
- io4.b/e/g/j terverifikasi sebagai error-chain formatting, night-mode read, parent-directory preparation, dan generic exception/logging boundary.
- zn4.c/d/e/f/g terverifikasi sebagai thread/executor/main-handler/delay/coroutine dispatch utilities.
- nq7, el1, fz5, eq3, gv7, ph6, xs1 diklasifikasikan sebagai generic string/collection/hash/lazy/reflection/request helpers; tidak ditemukan Apps business policy baru pada pass ini.
- vr6 terverifikasi sebagai logging facade.
- nc8.V(...) terverifikasi sebagai asynchronous Task composition primitive dengan shared cancellation state.
- ix0 terverifikasi sebagai security/keyset infrastructure, tetapi direct Apps-domain use tidak terbukti pada pass ini.

### Materiality

Material execution/presentation infrastructure:
pe4, io4, zn4, vr6, sz8, nc8.

Generic helpers:
eq3, nq7, el1, fz5, gv7, ph6, xs1.

Security infrastructure without direct Apps-domain evidence in this pass:
ix0.

### Coverage ledger delta

Material collaborator subset: RECONSTRUCTED / VERIFIED STATICALLY.
Installer error mapping: VERIFIED STATICALLY.
Async/thread utility boundaries: VERIFIED STATICALLY.
Full collaborator semantic coverage: BELUM SELESAI.

### Status

45-class deep semantic coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut ke direct Apps task/helper execution boundaries yang masih tersisa: installer-source preservation, Task composition/cancellation edges, archive/metadata helpers, dan transitive resource dependencies yang masih dapat dibuktikan dari decompile. Setelah pass selesai, update audit dan worklog lagi.

## Audit Checkpoint 25 — Direct Task / Privileged Helper Execution Reconciliation

Pass ini menutup beberapa execution edge yang sebelumnya masih terbuka.

### Installer source-preserving path

Caller nyata ditemukan pada nj7.a.

Flow terverifikasi:

App install task → nj7.a → installer validation → pm list packages -U --user → staging /data/local/tmp/swiftbackup-install-<nanoTime> → swiftbackup_install_proxy → InstallerSourceProxy → PackageInstaller → result verification → cleanup.

Temuan penting:

- source-preserving path dibatasi ke installer com.android.vending;
- APK source dipassing sebagai name|path;
- caller mensyaratkan success signal;
- jika success signal tidak ada, caller menambahkan Failure [Source-preserving install did not report success];
- staging directory dibersihkan setelah execution.

InstallerSourceProxy terverifikasi:
- PackageInstaller session;
- install reason 4;
- API 34+ installerPackageName;
- API 33+ packageSource 2;
- API 31+ requireUserAction 2;
- total size;
- fsync;
- commit + IntentSender;
- timeout 120000 ms;
- installerPackageName verification;
- API 30+ initiating/installing package verification;
- abandonSession pada failure path.

### Notification policy path

Backup dan restore caller ditemukan.

Backup:

AppBackupTask → package/user validation → temp file → swiftbackup_notification_policy_proxy(backup, userId, package, file) → OK → read file → AppSpecialDataPayload.

Restore:

AppRestoreTask → AppSpecialDataPayload.notificationPolicyXml → validation → temp file → swiftbackup_notification_policy_proxy(restore, userId, package, file) → OK → cleanup.

Proxy limits/contracts:
- full payload max 4 MiB;
- per-package payload max 512 KiB;
- strict charset decoding;
- target package XML extraction;
- hidden notification service getBackupPayload/applyRestore;
- output OK/MISSING/ERROR.

### AppSpecialDataPayload

Notification policy is an explicit field of AppSpecialDataPayload alongside permissions, SSAID, notification access, and accessibility state.

### AppsWorkingDir

Working directory is a real task-artifact boundary:
- normal base: internal files/cache with external-cache/user-folder fallback;
- Shizuku/ADB mode uses externally accessible path;
- task directory: app_tasks;
- getWorkingDir validates/creates child;
- cleanup covers cache locations and catches public-boundary exceptions.

### SBA metadata

SBA app-data metadata is Gson serialized and includes:
kind, version, packageName, appId, versionName, versionCode, backupCache, includeDeviceProtectedData, compressionLevel, encrypted, dataSize, deDataSize, entries.

Defaults observed:
kind swiftbackup.app-data, version 1, encrypted true.

Entries are data and optionally data_de.

### Coverage ledger delta

Installer source-preserving caller/proxy: VERIFIED STATICALLY.
Notification policy caller/proxy: VERIFIED STATICALLY.
Special-data model relation: VERIFIED STATICALLY.
Working-dir boundary: VERIFIED STATICALLY.
SBA metadata boundary: VERIFIED STATICALLY.

### Status

Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Audit bv.a(...) transport/execution semantics and remaining direct apptasks edges, then reconcile task/data/model/resource coverage again.

## Audit Checkpoint 26 — Privileged Transport Boundary: bv / mp6 / ip6

Transport layer yang dipakai proxy privileged sudah dibongkar sampai execution backend.

### Verified

bv.a:
- mengambil APK sourceDir;
- membentuk CLASSPATH + app_process command;
- menjalankan target class main;
- meng-escape argument;
- optional su uid wrapping;
- meneruskan command ke mp6.a.h(..., SU).

mp6/ip6:
- execution ditolak pada main thread;
- SU path membutuhkan root state;
- SU diarahkan ke ShellHelper.su;
- SHIZUKU memiliki routing terpisah melalui qe7;
- fallback shell menggunakan /system/bin/sh atau su;
- output dinormalisasi menjadi List<String>;
- segmentation fault memicu shell recreation/retry;
- low-level interruption/basic execution failure menghasilkan empty result.

### Reconciled execution graph

Apps task
→ task helper
→ bv.a
→ app_process self-class
→ mp6.h
→ mp6.m
→ ip6.SU
→ ShellHelper.su
→ proxy main
→ stdout result
→ caller result parser
→ task state/error handling

Dengan ini bv.a tidak lagi menjadi UNKNOWN/opaque wrapper.

### Coverage ledger delta

Privileged transport: VERIFIED STATICALLY.
Proxy invocation transport: VERIFIED STATICALLY.
Root/SU routing: VERIFIED STATICALLY.
Low-level shell recovery: VERIFIED STATICALLY.

### Status

45-class deep semantic coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut remaining direct apptasks helper edges dan reconciliation penuh kembali terhadap task/data/model/UI graph serta resource ledger.

## Audit Checkpoint 27 — Resource Surface Closure / Uncovered Resource Reconciliation

Resource audit diperluas dari direct R.* refs menjadi transitive XML closure.

### Hasil

45 source class:
- 167 direct R.* symbols.

Transitive XML closure:
- **243 unique logical resource symbols**.

Per type:
- string 77
- layout 7
- id 70
- menu 12
- dimen 19
- drawable 36
- color 6
- font 3
- style 10
- integer 1
- attr 2

Reference resource tree juga menghasilkan **128 Apps-like logical resource candidates** berdasarkan naming/surface classification.

Reconciliation:
- 16 candidate sudah reachable dari direct source → XML closure;
- **112 candidate belum reachable**.

112 tersebut TIDAK dianggap unused. Statusnya **UNKNOWN / NEEDS RESOURCE-PATH AUDIT** karena bisa berada pada generated/base/shared class, menu/navigation/theme path, dynamic lookup, atau indirect resource path.

### Resource audit queue

Surface yang masih harus dibongkar mencakup:
- app item/action/batch;
- backup limits;
- visibility diagnostics;
- app info/swipe;
- Apps batch/config/quick actions;
- config edit/settings/item/notice;
- detail/card/chip/storage;
- labels;
- quick actions;
- task;
- restore special data;
- menu Apps/config/detail/task;
- related icon/drawable surfaces.

### Status

Resource direct coverage: **VERIFIED STATICALLY**.
Resource transitive closure: **VERIFIED STATICALLY**.
Apps-like candidate inventory: **VERIFIED STATICALLY**.
Resource semantic closure: **BELUM SELESAI**.
Deep 45-class coverage: **BELUM SELESAI**.
Collaborator semantic coverage: **BELUM SELESAI**.
Apps2 implementation: **BELUM DIMULAI**.
Architecture freeze: **BELUM**.
Home cutover: **BELUM**.
Legacy Apps: **TIDAK DIUBAH**.

### Next audit

Audit path untuk 112 uncovered resource candidates melalui generated/base/shared classes, menu/navigation/theme references, dynamic loading, lalu lanjut remaining direct apptasks edges.

## Audit Checkpoint 28 — AppSpecialDataPayload Persistence / Security Boundary

AppSpecialDataPayload dibongkar sampai persistence contract.

### Verified

Payload fields:
- permissionStatesCsv
- ssaid
- ntfAccessComponent
- accessibilityComponent
- notificationPolicyXml

Persistence:
- version v1;
- separator :::;
- user-bound payload;
- Gson serialization;
- native Zstd compression;
- Base64 encoding;
- maximum file size 1 MiB;
- logged-in user required;
- user mismatch rejected;
- unsupported version rejected;
- decompression/deserialization failure handled as read failure.

Write:
- empty payload removes/clears target;
- non-empty payload ditulis ke temporary path;
- replacement dilakukan setelah write sukses;
- temporary path dibersihkan saat failure.

### Reconciled model/data graph

special-data sources
→ AppSpecialDataPayload
→ versioned user-bound envelope
→ compressed/base64 on-disk payload
→ read/validate/decompress/deserialize
→ notificationPolicyXml
→ privileged notification restore.

### Coverage ledger delta

AppSpecialDataPayload persistence: VERIFIED STATICALLY.
Special-data user binding: VERIFIED STATICALLY.
Notification policy persistence edge: VERIFIED STATICALLY.

### Status

45-class deep semantic coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut producer/consumer edges untuk permission state, SSAID, notification access, dan accessibility special-data, lalu reconcile model/data graph.

## Audit Checkpoint 29 — AppSpecialDataPayload Producer / Consumer Closure

Producer/consumer edges untuk permission state, SSAID, notification access, dan accessibility sudah dibongkar dari decompile.

### permissionStatesCsv

Backup:
- membaca requestedPermissions + requestedPermissionsFlags;
- menggunakan av permission/state mapping;
- privileged path menambahkan supported special-permission states;
- serialisasi menjadi comma-separated id:token entries;
- dipindahkan ke AppSpecialDataPayload;
- LocalMetadata permissionIdsCsv + permissionStatesCsv kemudian di-clear.

Restore:
- AppSpecialDataPayload menjadi sumber pertama;
- fallback CloudMetadata/LocalMetadata;
- parse id:token;
- restore permission choices;
- denied runtime states direstore bila restore mode mengizinkannya;
- jika state snapshot tidak tersedia, fallback menggunakan permissionIdsCsv + current package permission discovery.

### ntfAccessComponent

Producer:
- yo5 map;
- cl builds package → notification component map from shell-backed notification-access state.

Consumer:
- xw.q;
- AppSpecialDataPayload first, then CloudMetadata/LocalMetadata fallback;
- SHIZUKU reads current state;
- missing component is added through privileged command.

### accessibilityComponent

Producer:
- o6 map;
- el builds package → accessibility component map from shell-backed accessibility-service state.

Consumer:
- xw.q;
- payload first, metadata fallback;
- SHIZUKU reads current state;
- missing component is added through privileged command.

### ssaid

Producer:
- mk7/ok7 reads current-user settings_ssaid.xml under root capability;
- validates package + SSAID;
- stores valid value in kk7 map;
- backup selects target package value.

Consumer:
- restore SSAID flag required;
- root capability required;
- payload first, metadata fallback;
- missing value logs "restoreSsaid: No saved ssaid";
- mk7.b / ok7.b writes matched package entry back to settings_ssaid.xml.

### Unified graph

Android package/system state
→ special-data producers
→ AppSpecialDataPayload
→ versioned user-bound special-data file
→ local/cloud artifact
→ AppSpecialDataPayload.read
→ xw restore consumers
→ permission / SSAID / notification access / accessibility / notification policy.

### Metadata reconciliation

LocalMetadata still contains legacy/direct special fields but backup clears them after payload write.

CloudMetadata contains legacy fields plus specialDataLink/specialDataSize. Firebase upload calls prepareForFirebaseUpload(), clearing the legacy permission/special fields while the separate special-data artifact is represented by specialDataLink/specialDataSize.

Restore retains fallback reads from LocalMetadata/CloudMetadata for compatibility when payload fields are absent.

### Coverage ledger delta

permission state: VERIFIED STATICALLY.
notification access: VERIFIED STATICALLY.
accessibility: VERIFIED STATICALLY.
SSAID: VERIFIED STATICALLY.
Unified special-data model/data graph: VERIFIED STATICALLY.
Cloud special-data artifact metadata relation: VERIFIED STATICALLY.

### Status

45-class deep semantic coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Resource semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut remaining metadata/AppPart producer-consumer edges, special-data artifact cloud lifecycle, dan resource-path audit untuk 112 uncovered Apps-like candidates.

## Audit Checkpoint 30 — Metadata / AppPart Producer-Consumer Reconciliation

Metadata/data graph diperluas setelah special-data closure.

### Verified

AppPart → LocalMetadata:
- APP → updateApkDetails
- split APKs → updateSplitsDetails
- shared libraries → updateSharedLibsDetails
- EXTDATA → updateExtDataDetails
- EXPANSION → updateExpansionDetails
- DATA/MEDIA → corresponding metadata update paths.

Backup lifecycle:
artifact writer
→ LocalMetadata mutation
→ special-data finalization
→ dateBackupUpdated update when applicable
→ metadata save.

Cloud:
AppCloudBackup
→ CloudMetadata
→ prepareForFirebaseUpload()
→ legacy special fields cleared.

Separate special-data artifact:
AppSpecialDataPayload
→ cloud upload
→ specialDataLink/specialDataSize
→ CloudMetadata manifest update.

Restore request:
jz
→ canonical app + AppPart list + permission mode + special-permission flag + SSAID flag + local/cloud identity
→ AppsTask restore orchestration.

### Reconciled graph

Config/UI AppPart
→ AppsTask
→ part-specific artifact producer/consumer
→ artifact
→ LocalMetadata / CloudMetadata
→ backup identity
→ restore resolver
→ AppPart restore
→ post-restore special-data/permission/SSAID.

### Remaining

- DATA/DE-DATA exact writer/reader;
- MEDIA exact writer/reader;
- EXPANSION exact writer/reader;
- split/shared-library restore consumers;
- cloud special-data artifact failure lifecycle;
- metadata migration/version compatibility;
- 112 uncovered resource candidates.

### Status

AppPart metadata routing: VERIFIED STATICALLY.
LocalMetadata transition: VERIFIED STATICALLY.
CloudMetadata manifest relation: VERIFIED STATICALLY.
AppCloudBackup identity relation: VERIFIED STATICALLY.
45-class deep coverage: BELUM SELESAI.
Collaborator coverage: BELUM SELESAI.
Resource coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Exact DATA/DE-DATA, MEDIA, EXPANSION, split/shared-library metadata producer-consumer edges, cloud special-data failure lifecycle, dan resource-path closure.


## Worklog Checkpoint 31 — Exact DATA/DE-DATA, MEDIA, EXPANSION, Split/Shared-Library Consumers + Cloud Special-Data Lifecycle

Pass ini menutup sebagian besar gap metadata yang disebut pada Checkpoint 30 dengan source evidence langsung dari decompile reference Apps.

### 1. DATA / DE-DATA exact producer-consumer

#### Producer

Backup task `vl` memetakan AppPart DATA ke `yl`.

`yl.c(...)` membentuk archive entries dari dua directory yang berbeda:

- `data` → `ji.getDataDir()`;
- `data_de` → `ji.getDeDataDir()`, hanya bila opsi device-protected data aktif dan directory tersedia.

Kedua entry membawa filter cache/code_cache/lib/shared-prefs tertentu. Jadi DE-DATA bukan field metadata terpisah; ia merupakan entry kedua di dalam App Data artifact.

#### LocalMetadata

`LocalMetadata.updateDataDetails(...)` menyimpan:

- dataSizeMirrored;
- dataBackupSize;
- encryption state/method/password hash;
- dataBackupDate;
- required Swift Backup version fields.

Tidak ada `deDataBackupSize` field terpisah di LocalMetadata yang terisi oleh AppPart DATA path.

#### Consumer

Cloud restore metadata dibuat menjadi download descriptor oleh `mq`:

- DATA → `dataLink`, `dataSize`;
- EXT DATA → `extDataLink`, `extDataSize`;
- MEDIA → `mediaLink`, `mediaSize`;
- EXPANSION → `expLink`, `expSize`.

Saat restore archive format, `xw` memproses App Data sebagai satu artifact:

1. wajib ada entry `data`;
2. extract `data` ke parent directory dari `ji.getDataDir()`;
3. bila archive mempunyai `data_de`, extract entry tersebut ke parent directory dari `ji.getDeDataDir()`;
4. masing-masing extraction memiliki progress/result state sendiri;
5. setelah sukses, log `Restored Data` dan `Restored DE Data`.

Kesimpulan: DATA dan DE-DATA mempunyai satu artifact/metadata contract, dengan dua logical archive entries dan dua restore targets.

Status: VERIFIED STATICALLY.

### 2. MEDIA exact producer-consumer

Producer:

- AppPart MEDIA → `bm`;
- `LocalMetadata.updateMediaDetails(sizeMirrored, backupSize, encrypted, method, passwordHash, backupDate)`.

Cloud manifest:

- `CloudMetadata.updateMediaDetails(link, size, sizeMirrored, encrypted, method, passwordHash, backupDate)`.

Cloud restore resolver:

- `mq` membaca `mediaLink/mediaSize` dan membentuk download descriptor type MEDIA;
- restore path menggunakan `ji.getMediaDir()` sebagai target;
- `xw` memiliki explicit MEDIA restore path dan log `Unpacking Media` / `Restored Media`.

Status: VERIFIED STATICALLY.

### 3. EXPANSION exact producer-consumer

Producer:

- AppPart EXPANSION → `am`;
- `LocalMetadata.updateExpansionDetails(sizeMirrored, backupSize, backupDate)`.

Cloud manifest:

- `CloudMetadata.updateExpansionDetails(link, size, sizeMirrored, backupDate)`.

Cloud restore resolver:

- `mq` membaca `expLink/expSize` dan membentuk download descriptor type EXPANSION;
- restore path menggunakan expansion target derived from `ji.getExpansionDir()`;
- `xw` mempunyai explicit EXPANSION restore path dan log `Restored Expansion`.

Status: VERIFIED STATICALLY.

### 4. Split APK / Shared Library metadata consumers

Producer:

- split APK → `LocalMetadata.updateSplitsDetails(backupSize, sizeMirrored)`;
- shared libraries → `LocalMetadata.updateSharedLibsDetails(backupSize, sizeMirrored)`.

Cloud manifest:

- split APK → `CloudMetadata.updateSplitsDetails(link, size, sizeMirrored)`;
- shared libraries → `CloudMetadata.updateSharedLibsDetails(link, size, sizeMirrored)`.

Restore selection:

- `mq` creates separate download descriptors for:
  - split APKs (`splitsLink/splitsSize`);
  - shared libraries (`sharedLibsLink/sharedLibsSize`).

App restore consumes split metadata together with APK install validation/version checks. Shared-library restore has an explicit `xw` path that unpacks/decompresses the shared-library artifact and installs the resulting libraries.

Status:
- split metadata producer → cloud descriptor: VERIFIED STATICALLY;
- shared-library metadata producer → cloud descriptor: VERIFIED STATICALLY;
- shared-library restore consumer: VERIFIED STATICALLY;
- split restore path: VERIFIED STATICALLY at APK restore/validation integration level; exact lower-level split extraction helper remains implementation-detail coverage, not a model-graph blocker.

### 5. Cloud special-data artifact upload lifecycle

Upload descriptor construction is explicit in `a00`:

- SpecialData is rf8 type 8;
- descriptor exists only when `hk.B().j()` is true;
- upload uses the same `a00.b(...)` path as other cloud artifacts;
- `a00.b` returns `zf8`;
- only when `zf8.a()` is true does the caller invoke `CloudMetadata.updateSpecialDataDetails(link, size)`.

Therefore the metadata link is success-gated by the artifact upload result. A failed special-data upload does not directly write a new link.

Cloud metadata finalization then calls `prepareForFirebaseUpload()`, which clears legacy special-data fields but preserves `specialDataLink/specialDataSize`.

Important failure-path nuance:

- when no SpecialData upload descriptor exists (`mz.h == null`), the cloud metadata finalization explicitly calls `removeSpecialDataDetails()`;
- when a descriptor exists but upload fails, the update method is not called in that upload pass. For an existing cloud metadata object, this means the previous `specialDataLink/specialDataSize` is not automatically cleared by that failure branch. This is an observed state transition from the source, not an assumption about backend behavior.

Status:
- upload descriptor → result → manifest update: VERIFIED STATICALLY;
- explicit failure behavior in caller: VERIFIED STATICALLY;
- backend transactional semantics after metadata write: UNKNOWN / OUTSIDE STATIC DECOMPILE EVIDENCE.

### 6. Cloud special-data artifact delete lifecycle

`xh2` handles cloud deletion.

Observed sequence:

1. resolve selected cloud backup metadata;
2. create a mutable CloudMetadata copy;
3. remove metadata details for selected artifact types;
4. if no backups remain, remove special-data metadata too;
5. if backups remain, persist the reduced CloudMetadata;
6. if no backups remain, remove the cloud metadata reference;
7. build cloud file-id deletion list from the original metadata links;
8. when no backups remain, include `specialDataLink` in the deletion list;
9. execute delete with retry logic;
10. deletion retries can reach 10 attempts; failure is surfaced as an error.

Important coupling:

- SpecialData is not an independently selectable AppPart in this deletion path;
- its metadata is cleared when the remaining artifact set becomes empty;
- its physical cloud file link is queued for deletion only in that no-backups-remain path.

Status:
- metadata delete transition: VERIFIED STATICALLY;
- specialDataLink physical deletion condition: VERIFIED STATICALLY;
- retry/error handling: VERIFIED STATICALLY;
- remote backend atomicity between metadata mutation and physical file deletion: UNKNOWN.

### 7. Reconciled metadata/data graph

```text
AppPart
  │
  ├─ DATA
  │   └─ yl → data + optional data_de archive entries
  ├─ MEDIA
  │   └─ bm
  ├─ EXPANSION
  │   └─ am
  ├─ SPLITS
  │   └─ dm
  └─ SHARED LIBS
      └─ cm
        ↓
artifact upload
        ↓
LocalMetadata update*
        ↓
CloudMetadata update* only after successful upload
        ↓
AppCloudBackup / CloudMetadata
        ↓
mq download descriptors
        ↓
AppRestoreTask / xw
        ↓
part-specific restore target

SpecialData:
AppSpecialDataPayload
        ↓
SpecialData rf8 type 8
        ↓
cloud upload
        ↓
success-gated specialDataLink/specialDataSize
        ↓
CloudMetadata manifest
        ↓
mq special-data download descriptor
        ↓
AppRestoreTask special-data consumers
```

`LocalMetadata` and `CloudMetadata` therefore have distinct but connected roles:

- LocalMetadata = local artifact result/backup state;
- CloudMetadata = remote manifest/index;
- AppCloudBackup = cloud backup identity + metadata source for restore;
- AppSpecialDataPayload = special-data content model;
- `specialDataLink/specialDataSize` = remote artifact locator/size, not payload contents.

### 8. Resource-path audit status

The previously identified 112 uncovered Apps-like resource candidates remain **UNKNOWN / NEEDS RESOURCE-PATH AUDIT**.

This checkpoint does not promote those candidates to verified usage merely because metadata/task coverage expanded. No unsupported "unused" conclusion is made.

### Status

DATA/DE-DATA producer/consumer: VERIFIED STATICALLY.
MEDIA producer/consumer: VERIFIED STATICALLY.
EXPANSION producer/consumer: VERIFIED STATICALLY.
Split metadata/cloud descriptor: VERIFIED STATICALLY.
Shared-library metadata/restore consumer: VERIFIED STATICALLY.
Cloud special-data upload success gate: VERIFIED STATICALLY.
Cloud special-data delete lifecycle: VERIFIED STATICALLY.
Cloud backend transactional/atomic semantics: UNKNOWN.
Resource semantic closure: BELUM SELESAI.
Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjut metadata migration/version compatibility, exact split extraction helper coverage, dan resource-path closure untuk 112 uncovered Apps-like candidates. Setelah itu lakukan reconciliation penuh terhadap 45-class/task/data/model/UI ledger sebelum architecture freeze.

## Worklog Checkpoint 32 — Metadata Version Compatibility + Exact Split Restore Coverage

Pass ini membongkar compatibility contract metadata dan mempersempit gap split-restore berdasarkan source/model evidence langsung.

### 1. CloudMetadata version-compatibility contract

CloudMetadata menyimpan version requirements pada dua level:

- global minSBVersionCodeRequired;
- per-AppPart *SBVersionCodeRequired + *SBVersionNameRequired.

getSBVersionCodesRequired() menggabungkan global requirement dengan requirement APP/DATA/EXTDATA/MEDIA/EXPANSION/SPLITS/SHARED-LIBS.

Pada setiap update*Details(...) untuk artifact cloud, source menetapkan:

- required version code = 580;
- required version name = LocalMetadata.SB_VERSION_NAME_REQUIRED.

prepareForFirebaseUpload() kemudian:

- menetapkan minSBVersionCodeRequired = 580 bila metadata masih mempunyai backup;
- menghapus legacy special-data fields;
- menghapus seluruh per-part SB-version requirement lama melalui clearLegacyPerPartSBVersionFields().

Ini menunjukkan adanya compatibility normalization saat metadata dipersiapkan untuk Firebase: per-part historical requirements dipadatkan menjadi minimum global requirement.

### 2. Restore-side version gate

Restore path xw mengambil LocalMetadata.getSBVersionCodesRequired() dan, bila menggunakan cloud metadata, CloudMetadata.getSBVersionCodesRequired() melalui mq/restore orchestration.

Nilai tersebut diteruskan ke nm6.a(...) sebagai compatibility predicate sebelum melanjutkan restore/install flow.

Jadi SB-version fields bukan sekadar metadata display; mereka ikut menjadi gate pada restore execution.

Status: VERIFIED STATICALLY.

### 3. Migration semantics — batas bukti

Source yang diaudit menunjukkan:

- default construction of LocalMetadata;
- per-part version stamping;
- Firebase normalization;
- restore compatibility check;
- removal/clearing of obsolete per-part fields.

Namun tidak ditemukan pada inspected source sebuah migration engine yang melakukan schema-by-schema transformation dari metadata version lama ke schema baru.

Karena itu:

- metadata compatibility gate: VERIFIED STATICALLY;
- metadata normalization at upload: VERIFIED STATICALLY;
- explicit historical schema migration mechanism: UNKNOWN / NOT FOUND IN INSPECTED SOURCE.

Tidak disimpulkan bahwa tidak ada migration mechanism di luar source yang telah diaudit.

### 4. Exact split restore coverage

Restore-side source memperlihatkan split state ikut divalidasi sebelum APK restore:

- installed package version/versionName/versionCode dibandingkan dengan backup;
- current split source presence diperiksa;
- backup split metadata (splitsBackupSize local atau splitsSize cloud) menjadi bagian restore sizing/selection;
- APK restore selection mempertimbangkan keberadaan split APK dan shared libraries.

Cloud resolver mq membentuk explicit download descriptor:

- splitsLink;
- type SPLITS;
- splitsSize;
- cloud artifact source.

AppRestoreTask kemudian menggunakan hasil descriptor tersebut dalam APK restore flow.

Lower-level extraction/install implementation untuk split artifact tidak dipisahkan menjadi satu helper named "split restore"; source menunjukkan split handling terintegrasi dengan APK restore/install path. Karena itu split model/data graph sudah tertutup, tetapi helper-level semantic decomposition tetap dicatat sebagai implementation-detail coverage.

Status:
- split metadata producer → cloud descriptor: VERIFIED STATICALLY;
- split descriptor → restore orchestration: VERIFIED STATICALLY;
- split state/version integration in APK restore: VERIFIED STATICALLY;
- dedicated split extraction helper identity: UNKNOWN / implementation-detail only.

### 5. DATA format compatibility

App Data restore memiliki explicit archive format discriminator i40.a.

Observed supported restore branches:

- format 1 → i(...);
- formats 2/4/5 → k(...);
- format 6 → j(...);
- other formats → explicit Backup format not handled failure.

For format 6, the archive is required to contain data; optional data_de is handled separately and restored into the DE-data target.

This is a concrete artifact-format compatibility gate, distinct from Swift Backup application-version compatibility.

Status: VERIFIED STATICALLY.

### 6. Resource-path status

The 112 previously identified Apps-like resource candidates remain open.

This checkpoint does not promote them to reachable or unused merely because metadata/version coverage improved.

Current status remains:

UNKNOWN / NEEDS RESOURCE-PATH AUDIT

Next resource pass must trace candidates through:

- generated/shared/base classes;
- menu/navigation/theme references;
- dynamic resource lookup;
- indirect XML inflation/reference chains.

### Status

Metadata SB-version compatibility gate: VERIFIED STATICALLY.
CloudMetadata Firebase version normalization: VERIFIED STATICALLY.
Explicit historical metadata schema migration engine: UNKNOWN / NOT FOUND IN INSPECTED SOURCE.
Split metadata → cloud descriptor → restore: VERIFIED STATICALLY.
Split dedicated helper identity: UNKNOWN / implementation-detail only.
DATA archive format compatibility: VERIFIED STATICALLY.
Resource semantic closure: BELUM SELESAI.
112 uncovered Apps-like candidates: UNKNOWN / NEEDS RESOURCE-PATH AUDIT.
Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Fokus berikutnya adalah resource-path closure 112 candidates dengan evidence dari generated/shared/base classes, XML/menu/theme/dynamic lookup; setelah itu lakukan final 45-class/task/data/model/UI reconciliation. Architecture freeze tetap ditahan sampai reconciliation tersebut memiliki evidence yang cukup.

## Worklog Checkpoint 33 — Resource Path Closure via Full Decompiled Source / Generated Collaborator Boundaries

Pass ini menjalankan resource-path audit terhadap **seluruh source decompile** yang tersedia, bukan hanya 45 source class Apps. Tujuannya menguji invariant pada Checkpoint 27 bahwa resource yang tidak muncul pada direct 45-class closure tidak otomatis unused.

### 1. Evidence boundary

Decompiled reference yang tersedia berisi:

- 12,611 Java source files;
- 1,508 resource files.

Static scan terhadap seluruh Java source menunjukkan banyak Apps-like resource yang memang direferensikan di luar 45-class inventory. Ini membuktikan bahwa direct 45-class → R.* closure bukan boundary semantic untuk seluruh Apps UI/resource graph.

### 2. Resource candidates resolved through collaborator/base/generated boundaries

Representative direct resource edges yang sekarang terverifikasi:

- app item/action:
  - app_item → l20 / f30 / ws;
  - app_action_item_advanced → wi;
  - app_action_item_normal → wi;
  - app_actions_dialog → xi;
  - app_batch_actions_dialog → t10;
  - app_batch_actions_dialog_item → r10;
- Apps batch/config/quick actions:
  - apps_batch_activity → ak;
  - apps_config_actions_dialog → j30;
  - apps_config_actions_dialog_item → i30;
  - apps_config_run_activity → fj;
  - apps_quick_actions_activity → dk;
  - apps_quick_actions_fragment → y30;
- config:
  - config_edit_activity → ek;
  - config_edit_item → pq1;
  - config_item → yq1;
  - config_settings_activity → ek;
- detail:
  - detail_activity → ak;
  - detail_card_custom_tab → gm1;
  - detail_chip → tj2;
- labels:
  - label_adapter_item → ur4;
  - label_color_item → ql1 / pb7;
  - label_edit_activity → xq4;
- quick actions:
  - quick_action_item → dd6;
  - quick_action_more_item → dd6;
  - quick_actions_dialog → id6;
  - quick_actions_dialog_item → gd6;
- restore-special-data:
  - restore_special_data_details_activity → hs4;
  - restore_special_data_detail_item → wm6;
- task:
  - task_activity → TaskActivity;
  - task_card → iz7;
- Apps/config/detail/task menus:
  - menu_apps → AppListActivity;
  - menu_apps_batch_activity → AppsBatchActivity;
  - menu_apps_config_run_activity → AppsConfigRunActivity;
  - menu_apps_dash → AppsQuickActionsActivity;
  - menu_config_edit → ConfigEditActivity;
  - menu_config_list → ConfigListActivity;
  - menu_config_settings → ConfigSettingsActivity;
  - menu_detail_* → DetailActivity;
  - menu_task_activity → TaskActivity.

These are concrete class/resource edges in the decompiled source and therefore are stronger evidence than filename-only matching.

### 3. Important interpretation

The scan resolves a significant class-boundary gap:

45-class direct closure
        ↓
does NOT equal
        ↓
full decompiled Apps resource path

Several resource consumers live in:

- generated/decompiled binding-style collaborators;
- obfuscated defpackage classes;
- concrete Activities outside the original 45-source inventory;
- shared/base UI collaborators.

Therefore those candidates must not be classified as unused merely because they were absent from the original 45 direct-source graph.

### 4. Remaining uncovered resource candidates

The full-source scan does **not** yet prove semantic closure for all 112 candidates.

There remain resource candidates with no direct Java R.* edge found by this scan, including examples such as:

- app_backup_limits_edittext;
- app_backup_limits_item;
- app_swipe_preview_content;
- app_visibility_diagnostics_activity;
- appbar / appbar_with_filters;
- config_notice_view / config_settings_view;
- delete_app_backups_dialog_switch_item;
- detail_card_app_backup / detail_card_app_info / detail_card_app_storage;
- folder_* card/detail/restore layouts;
- home_appbar;
- label_edit_apps_view / label_edit_color_view;
- multiple_backups_strategy_item;
- quick_action_card;
- task_activity_top;
- selected Apps-related drawable/scrim candidates.

These remain **UNKNOWN / NEEDS XML, generated-binding, include, theme, navigation, or dynamic-loading audit**. The absence of an R.* edge in full Java source is not treated as proof of unused.

### 5. Resource graph update

Current evidence now supports:

45 Apps source classes
        ↓
167 direct R.* symbols
        ↓
243 transitive XML logical closure

plus:

full decompiled Java source
        ↓
additional collaborator/base/generated resource edges
        ↓
previously uncovered Apps-like candidates partially resolved

The original 112 count remains an **audit queue count**, not a count of proven-unused resources.

### Status

Resource direct coverage: VERIFIED STATICALLY.
Resource transitive XML closure: VERIFIED STATICALLY.
Full-source collaborator resource-path evidence: VERIFIED STATICALLY for inspected edges.
Previously uncovered candidate resolution: PARTIAL / VERIFIED FOR INSPECTED EDGES.
All-112 resource semantic closure: BELUM SELESAI.
Remaining no-direct-edge candidates: UNKNOWN / NEEDS XML/generated/theme/navigation/dynamic audit.
Deep 45-class coverage: BELUM SELESAI.
Collaborator semantic coverage: BELUM SELESAI.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM.
Home cutover: BELUM.
Legacy Apps: TIDAK DIUBAH.

### Next audit

Lanjutkan remaining no-direct-edge resource candidates melalui XML include/reference graph, generated binding patterns, manifest/navigation/theme references, dan dynamic resource loading. Setelah resource queue cukup tertutup, lakukan final 45-class/task/data/model/UI reconciliation sebelum architecture freeze.


## Audit Checkpoint 34 — XML Include Graph + Binding/Manifest Closure

### Evidence
- Full decompiled XML tree inspected for remaining no-direct-edge resource candidates.
- Parent/include graph traced for app/config/detail/folder/home/label/quick-action/task surfaces.
- Decompiled binding-style collaborators inspected (ek, oq1, ak, fj, xq4) plus concrete FolderDetailActivity and TaskActivity.
- Manifest/smali boundary checked for AppVisibilityDiagnosticsActivity.
- Selected drawable/scrim candidates traced through XML references.

### Verified
- XML include/reference reachability: VERIFIED STATICALLY for inspected candidates.
- Binding/decompiled collaborator reachability: VERIFIED STATICALLY for inspected candidates.
- app_visibility_diagnostics_activity Activity/manifest reachability: VERIFIED STATICALLY.
- Selected drawable/scrim XML reachability: VERIFIED STATICALLY.

### Boundary
The 112-count resource queue remains an audit queue, not a proven-unused count. No direct Java R.* edge is insufficient to classify a resource as unused. Manifest/smali Activity evidence proves runtime surface but not exact layout inflation unless that edge is observed.

### Status
- All-112 resource semantic closure: BELUM SELESAI.
- Remaining uninspected resource candidates: UNKNOWN.
- Deep 45-class coverage: BELUM SELESAI.
- Collaborator semantic coverage: BELUM SELESAI.
- Apps2 implementation: BELUM DIMULAI.
- Architecture freeze: BELUM.
- Home cutover: BELUM.
- Legacy Apps: TIDAK DIUBAH.

### Next
Finish the remaining resource candidates, then execute the final 45-class/task/data/model/UI reconciliation ledger before architecture freeze.


## Audit Checkpoint 35 — Remaining Candidate Resource Parent/Include Closure

### Evidence
Full decompiled XML resource tree inspected against the remaining candidate list from Checkpoint 34.

### Verified
- Parent/include paths for the inspected candidate layouts: VERIFIED STATICALLY.
- Internal XML resource dependencies for the inspected candidates: VERIFIED STATICALLY.
- appbar has broad concrete layout consumers across Apps/detail/config/folder/settings surfaces.
- quick_action_card, home_appbar, folder/detail cards, task_activity_top, config views, and app backup/swipe candidates all have concrete XML parent/reference paths.

### Boundary
The historical 112 candidate count is not yet recomputed as a formal inventory. Therefore it must not be reported as a current unresolved count. Final inventory reconciliation is still required to classify every original candidate as reachable, transitively reachable, runtime-only, dynamically resolved, genuinely unreferenced, or UNKNOWN.

### Status
- Resource parent/include closure for inspected candidates: VERIFIED STATICALLY.
- Formal all-candidate inventory reconciliation: BELUM SELESAI.
- Final 45-class/task/data/model/UI reconciliation: BELUM SELESAI.
- Apps2 implementation: BELUM DIMULAI.
- Architecture freeze: BELUM.
- Home cutover: BELUM.
- Legacy Apps: TIDAK DIUBAH.

### Next
Build the formal candidate inventory reconciliation, then proceed to the final producer-consumer ledger.


## Worklog Checkpoint 36 — Formal Resource Inventory + Producer-Consumer Ledger

### Evidence
- 25 remaining candidate resources from Checkpoints 34–35 were formalized.
- XML parent/include/reference, binding/decompiled collaborator, and manifest/smali evidence were retained.
- New formal ledger: `reference/apps2_resource_and_reconciliation_ledger.md`.
- 45 source classes reconciled at cluster level.
- Core producer-consumer graph recorded for model, parts, metadata, special-data, restore, task, and UI boundaries.

### Important boundary
The historical 112 candidate count is not treated as a current unresolved count because the complete original candidate-name list is not explicitly available in the committed audit text. Missing names are not invented.

### Status
- Formal inspected resource inventory: VERIFIED STATICALLY.
- Producer-consumer ledger: VERIFIED STATICALLY at observed graph level.
- 45-class cluster reconciliation: VERIFIED STATICALLY at cluster level.
- Deep collaborator closure: BELUM SELESAI.
- Runtime verification: BELUM ADA.
- Apps2 implementation: BELUM DIMULAI.
- Architecture freeze: BELUM / NOT AUTHORIZED.
- Home cutover: BELUM / NOT AUTHORIZED.
- Legacy Apps: TIDAK DIUBAH.

### Next
Close consequential unresolved collaborator/execution boundaries, then review the ledger against the 45-class source inventory before architecture freeze.


## Worklog Checkpoint 37 — Filter State + EXPANSION Restore Closure

### Evidence
- Inspected `sx`, `iy`, `sc3`, `sr`, `wx` and relevant `xw` restore paths.
- Verified sort persistence, comparator execution, DateUsed capability handling, and EXPANSION restore target/capability/archive branches.

### Verified
- Sort enum and persisted state: VERIFIED STATICALLY.
- Persisted state to sorting execution: VERIFIED STATICALLY.
- DateUsed capability/error fallback: VERIFIED STATICALLY.
- EXPANSION capability/metadata/target/archive handling: VERIFIED STATICALLY.

### Remaining
- Exact full filter predicate collaborator decomposition.
- Low-level split extraction helper identity.
- Historical metadata migration engine.
- Cloud backend transaction/atomicity semantics.
- Runtime verification.

### Status
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM / NOT AUTHORIZED.
Home cutover: BELUM / NOT AUTHORIZED.
Legacy Apps: TIDAK DIUBAH.

### Next
Audit split restore low-level execution and metadata migration boundary, then review the final ledger against all 45 classes.


## Worklog Checkpoint 38 — Split Restore + Metadata Version Boundary

### Evidence
- `defpackage/mq.java`
- `defpackage/xw.java`
- `defpackage/mv.java`
- `defpackage/zg.java`
- `org.swiftapps.swiftbackup.model.app.LocalMetadata`
- `org.swiftapps.swiftbackup.model.app.CloudMetadata`

### Verified
- Cloud split descriptor `splitsLink/splitsSize → fo2(type=2) → hk.C()` VERIFIED STATICALLY.
- `xw → yw → mv.c/f` split restore path VERIFIED STATICALLY.
- `mv.c` split extraction ke `workingDir/splits` dan `mv.g` base-version filtering VERIFIED STATICALLY.
- split install fallback/retry/error handling VERIFIED STATICALLY.
- Local/Cloud metadata version stamping dan normalization VERIFIED STATICALLY.
- Explicit historical schema migration engine NOT FOUND IN INSPECTED SOURCE; tetap UNKNOWN, bukan disimpulkan tidak ada.

### Boundary
- Runtime Reference/Apps2 belum dijalankan.
- Cloud backend transaction/atomicity tetap UNKNOWN.
- Deep closure seluruh 342 collaborator belum selesai.

### Status
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM / NOT AUTHORIZED.
Home cutover: BELUM / NOT AUTHORIZED.
Legacy Apps: TIDAK DIUBAH.

### Next
Review ledger terhadap seluruh 45 source class dan bersihkan stale UNKNOWN yang sudah tertutup oleh evidence Checkpoint 37–38.


## Worklog Checkpoint 39 — Exact 45-Class Inventory Reconciliation

### Evidence
Full decompiled source tree checked against the nine audit clusters.

### Verified
- Exact inventory = 45/45.
- appslist 14 + appsquickactions 1 + appinfo 1 + detail 2 + appconfigs 11 + apptasks 8 + model/app 5 + appbackuplimits 2 + appvisibility 1 = 45.
- `apptasks` is the concrete `org.swiftapps.swiftbackup.apptasks` subtree; this resolves the apparent mismatch with the separate generic `tasks` package.
- Cluster-level producer/consumer reconciliation is complete at the currently inspected evidence boundary.

### Remaining
- Exact full filter predicate decomposition.
- Historical metadata migration engine remains UNKNOWN / NOT FOUND IN INSPECTED SOURCE.
- Cloud backend transaction/atomicity remains UNKNOWN.
- Runtime visual/branch verification remains UNVERIFIED.
- Deep reconstruction of all 342 imported collaborators remains incomplete.

### Status
45-class inventory: VERIFIED STATICALLY.
45-class cluster reconciliation: VERIFIED STATICALLY.
Apps2 implementation: BELUM DIMULAI.
Architecture freeze: BELUM / NOT AUTHORIZED.
Home cutover: BELUM / NOT AUTHORIZED.
Legacy Apps: TIDAK DIUBAH.


## Worklog Checkpoint 40 — Architecture Baseline Gate

### Result
The audit evidence is sufficient for a **static architecture baseline**, but not sufficient for architecture freeze or runtime parity claims.

### Non-blocking unknowns
- Exact full filter predicate collaborator decomposition.
- Remaining deep semantics among imported `defpackage.*` collaborators.
- Runtime visual/branch behavior.

### Blocked / excluded from freeze
- Historical metadata schema migration engine.
- Cloud backend transaction/atomicity.
- Runtime verification.

### Authorization boundary
- Static architecture baseline: AUTHORIZED.
- Architecture freeze: NOT AUTHORIZED.
- Apps2 implementation: NOT AUTHORIZED YET.
- Home cutover: NOT AUTHORIZED.
- Legacy Apps: UNCHANGED.

### Next
Record the static Apps2 architecture baseline from verified evidence, keeping all UNKNOWN boundaries explicit.


## Worklog Checkpoint 40 — Architecture Baseline Gate

Hasil gate: evidence static cukup untuk menyusun static Apps2 architecture baseline, tetapi belum cukup untuk architecture freeze atau runtime parity.

### Non-blocking unknowns
- exact full filter predicate collaborator decomposition;
- deep semantics sebagian imported `defpackage.*` collaborators;
- runtime visual/branch behavior.

### Tetap diblokir dari freeze
- historical metadata schema migration engine;
- cloud backend transaction/atomicity;
- runtime verification.

### Authorization boundary
- Static architecture baseline: AUTHORIZED.
- Architecture freeze: NOT AUTHORIZED.
- Apps2 implementation: NOT AUTHORIZED YET.
- Home cutover: NOT AUTHORIZED.
- Legacy Apps: UNCHANGED.

### Next
Record static Apps2 architecture baseline dengan seluruh UNKNOWN boundary tetap eksplisit.

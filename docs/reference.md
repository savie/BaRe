# BaRe Reference — Swift Backup FE / Workflow Audit

*Project*: BaRe  
*Jenis* dokumen: *Reference / Discovery Artifact*  
*Status* dokumen: `current`  
*Authority* dokumen: *reference evidence* untuk Swift Backup; tidak menjadi *authority* atas *product decision*, *architecture decision*, *implementation*, atau *runtime* BaRe  
*Governance*: `Varnexis-Workspace/GOVERNANCE`  
*Authority governance*: `Varnexis-Workspace/GOVERNANCE/AUTHORITY.md`  
*Authority* implementasi project: *repository* BaRe, termasuk *source*, *tests*, dan konfigurasi spesifik project  
*Authority runtime*: *runtime evidence* untuk *deployment*, *execution*, *logs*, *metrics*, dan *behavior* aktual  
*Reference artifact*: Swift Backup `5.1.0 (620)`  
*Package*: `org.swiftapps.swiftbackup`  
*Audit date*: 2026-09-18  
*Audit level*: *Static APK + visual evidence + public product documentation + FE/state/transition modeling + targeted capability reconciliation*  
*Runtime verification of the reference APK*: NOT PERFORMED  
*Purpose*: menjadi *evidence baseline* untuk *discovery capability* dan desain FE BaRe; bukan *implementation source*.

---

## 0. Authority, status, dan aturan penggunaan

Dokumen ini mengikuti *boundary repository* yang telah ditetapkan pada `README.md`. *Governance* lintas-project berasal dari Varnexis-Workspace; *technical truth* untuk implementasi, *testing*, dan konfigurasi BaRe berada di *repository* BaRe; *runtime truth* berasal dari *evidence runtime*. Dokumen ini hanya berwenang untuk mencatat dan memodelkan *evidence* yang berasal dari *reference artifact* beserta implikasinya sebagai *derived reference*, bukan untuk menetapkan keputusan BaRe secara diam-diam.

*Precedence* sumber  
Jika terdapat sumber yang berbeda atau bertentangan, jangan melakukan *silently merge*. Pertahankan sumber, status *evidence*, dan konfliknya hingga *authority* yang tepat menyelesaikannya.

| Kelas sumber|Fungsi|Authority|
| ---|---|---|
| Varnexis-Workspace Governance|governance, authority, lifecycle, boundary|Canonical governance|
| BaRe  README.md  +  docs/product.md  +  docs/architecture.md  +  docs/capability_matrix.md|product dan technical truth BaRe|Canonical project documentation|
| BaRe source/tests/project config|implementation dan test truth|Project repository authority|
| Runtime evidence BaRe|deployment, execution, logs, metrics, behavior|Runtime authority|
| Swift Backup APK/decompiled artifact|static reference evidence|Reference evidence only|
| Screenshot/reference images|visual reference evidence|Reference evidence only|
| Public SwiftApps/Google Play/APKMirror documentation|published product/workflow evidence|Reference evidence only|
| Model/audit interpretation|derived engineering interpretation|Non-canonical; tidak boleh menggantikan source evidence|

*Status claim*  
Gunakan istilah-istilah berikut secara disiplin:

* **FACT / OBSERVED / VERIFIED** — hanya bila *evidence* mendukung status tersebut.
* **INFERRED / DERIVED** — hasil penalaran dari *evidence*; bukan observasi langsung.
* **PROPOSAL** — usulan untuk BaRe; bukan keputusan.
* **DECISION / REQUIREMENT** — hanya bila telah ditetapkan oleh *authority* yang sesuai.
* **UNKNOWN / UNVERIFIED / BLOCKED** — *evidence* atau *prerequisite* belum cukup.
* `RUNTIME_VERIFIED` tidak boleh digunakan untuk *reference* APK pada audit ini karena APK *reference* belum dieksekusi dan diuji.

*Boundary* BaRe  
Isi yang berbunyi “BaRe should/must” di dalam dokumen ini harus dibaca sebagai *reference-derived implication*, kecuali secara eksplisit ditandai sebagai `DECISION` atau `REQUIREMENT` yang berasal dari dokumen *canonical* BaRe. Dokumen ini tidak boleh secara diam-diam mengubah *product scope*, *architecture*, *capability contract*, atau *implementation status*.

---

## 1. Status dan authority

Dokumen ini merupakan *reference/discovery artifact*, bukan *canonical implementation specification* dari Swift Backup.  
BaRe tetap bersifat *greenfield* dan *independent*. *Reference* digunakan untuk:
* *capability discovery*;
* *behavioral/workflow reference*;
* *UI/UX evidence*;
* *terminology reference*;
* *compatibility investigation*;
* *state/transition discovery*.

*Reference* tidak digunakan untuk:
* menyalin *source code proprietary*;
* mengekstrak *implementation proprietary*;
* memodifikasi/*repack*/*patch* APK *reference*;
* melakukan *bypass* pada *licensing/security*;
* menganggap keberadaan *class*/*string* sebagai bukti *runtime success*.

**Prinsip utama:**  
*Feature parity* tidak berarti *implementation parity*.

*Evidence rule*  
Setiap observasi di dalam dokumen ini dibedakan sebagai:

| Status|Makna|
| ---|---|
| OBSERVED_STATIC|ditemukan langsung dari artifact APK: class, package, state model, string, framework/component reference, atau native/resource indicator|
| OBSERVED_VISUAL|terlihat langsung pada screenshot/reference image yang tersedia|
| DOCUMENTED_PUBLIC|dinyatakan pada dokumentasi publik SwiftApps/Google Play/APKMirror|
| INFERRED|kesimpulan engineering dari beberapa evidence; bukan observasi langsung|
| UNKNOWN|evidence belum cukup|
| RUNTIME_VERIFIED|hanya boleh dipakai jika reference APK benar-benar dieksekusi dan behavior diuji; audit ini  tidak  memakai status ini|

*Rule*: inspeksi APK statis, *screenshot*, atau *public documentation* tidak secara otomatis menjadi *runtime verification*.

---

## 2. Audit artifact

### 2.1 APK yang diaudit

File project:  
`5.1.0 (620).apk`

*Observed artifact facts*:
* *package*: `org.swiftapps.swiftbackup`;
* *version*: `5.1.0 (620)`;
* *APK archive entries*: 1708;
* *DEX*: `classes.dex` dan `classes2.dex`;
* *native libraries* tersedia untuk `arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`;
* *SHA-256 artifact* yang diaudit:  
  `d04267dd0431c0b58d5ff04766696affd5c9ebd59c8b428c54f6ee6f1928621d`.

### 2.2 *Visual evidence* yang tersedia

*Screenshot/reference images* yang digunakan:
* Swift Backup Home;
* Swift Backup Scheduled backups — *empty/first-use state*;
* Swift Backup Cloud sync — *disconnected state*;
* Swift Backup Account;
* Swift Backup Settings;
* *BaRe current APK/install evidence*, hanya untuk *current-state comparison*, bukan *reference behavior*.

### 2.3 *Public evidence* yang digunakan

* *Google Play listing* dan *v5.1.0 release notes*.
* SwiftApps FAQ.
* Dokumentasi SwiftApps Configs.
* SwiftApps Common Issues.
* *SwiftApps product page*.
* *APKMirror release metadata/screenshots/changelog*.

*Public documentation* digunakan untuk memperkuat *workflow/capability* yang tidak dapat dibuktikan hanya dari *screenshot* atau *class inventory*.

---

## 3. Hasil audit level sebelumnya yang dipertahankan

Audit sebelumnya menemukan *evidence* statis untuk *domain* berikut:

| Domain|Reference evidence|Status audit|
| ---|---|---|
| Apps|AppBackup* ,  AppRestore* ,  AppListActivity ,  AppsBatchActivity ,  AppInfoActivity|OBSERVED_STATIC|
| APK|APK reader/import/share classes, split/APKS metadata|OBSERVED_STATIC|
| App data|backup/restore task/manager/helper classes|OBSERVED_STATIC|
| Folders|FoldersDashActivity ,  FolderDetailActivity ,  FolderEditActivity ,  FolderPickerActivity ,  FoldersBatchActivity|OBSERVED_STATIC|
| Messages|MessagesDashActivity ,  MessagesBackupsActivity ,  MessagesBackupRestoreActivity , conversations/chat activities|OBSERVED_STATIC|
| Call Logs|CallsDashActivity ,  CallsBackupsActivity ,  CallsBackupRestoreActivity|OBSERVED_STATIC|
| Wi-Fi|WifiActivity ,  WifiHelper ,  WifiItem , Wi-Fi system/config references|OBSERVED_STATIC|
| Wallpapers|WallsDashActivity ,  WallsManageActivity ,  WallApplyActivity|OBSERVED_STATIC|
| Scheduling|ScheduleService ,  ScheduleItem ,  ScheduleVM$State , schedule selectors/FAB|OBSERVED_STATIC|
| Storage|StorageInfoLocal ,  StorageSwitchActivity , storage helper/state references|OBSERVED_STATIC|
| Cloud|provider connect activities,  CloudOperationsImpl , cloud diagnostics/orphan flows|OBSERVED_STATIC|
| Security|encryption/password strategy, archive/compression/native crypto references|OBSERVED_STATIC|
| Management|labels, favorites, blacklist, app configs, backup limits, multiple-backup strategy|OBSERVED_STATIC|
| Diagnostics|cloud diagnostics, app visibility diagnostics, SwiftLogger/SLog, task/precondition screens|OBSERVED_STATIC|
| Import/Export|APK/APKS import/share, settings export/import, cloud setup export/import|OBSERVED_STATIC  +  DOCUMENTED_PUBLIC|

**Kesimpulan dari level sebelumnya tetap berlaku:**  
*Matrix capability* membuktikan *presence of reference indicators*, bukan *parity feasibility* dan bukan *runtime verification*.  
Audit saat ini meningkatkan resolusi dari *feature list* menjadi *screen* → *state* → *action* → *transition* → *component* → *capability dependency* → *verification state*.

---

## 3.1 Root permission / privilege workflow — Swift Backup reference audit

Audit ini menambahkan resolusi khusus terhadap pola **Root permission grant** yang ditemukan pada artifact Swift Backup `5.1.0 (620)`. Bagian ini tetap **reference evidence only** dan tidak menjadi implementation specification BaRe.

### Static evidence

Decompiled source menunjukkan Swift menyediakan satu confirmation flow untuk menyiapkan permission/capability set melalui **Root access atau Shizuku**.

Reference UI menggunakan:
- dialog title: `root_grant_permissions_dialog_title`;
- dialog message prefix: `root_grant_permissions_dialog_msg_prefix`;
- action: **Grant permissions**;
- action pembatalan: **Cancel**.

Isi dialog secara konseptual mencantumkan:
- Storage;
- SMS;
- Call logs;
- Contacts;
- Notifications bila API mendukung;
- Installed apps bila capability tersebut relevan.

Evidence utama berasal dari `defpackage/mf.java`.

### Mechanism boundary observed in reference

Implementasi reference tidak memperlakukan seluruh item di atas sebagai satu jenis Android permission.

Static evidence pada `defpackage/dz5.java` menunjukkan:
- runtime permissions diproses sebagai permission strings melalui helper grant;
- **All Files Access** pada Android R+ ditangani melalui AppOps `android:manage_external_storage`;
- status **MANAGE_EXTERNAL_STORAGE** diverifikasi melalui `Environment.isExternalStorageManager()`;
- **POST_NOTIFICATIONS** memiliki version-specific handling;
- **Installed apps** memiliki jalur khusus dan tidak diperlakukan sama dengan runtime permission biasa.

Static evidence juga menunjukkan Swift memiliki jalur **Shizuku** untuk operasi grant, selain root-based flow.

### Reference-derived engineering implication

```text
USER CHOOSES ROOT / PRIVILEGED ACCESS
          ↓
CONFIRM PERMISSION SET
          ↓
GRANT THROUGH AVAILABLE PRIVILEGED MECHANISM
          ├── runtime permission grant
          ├── special-access / AppOps
          └── capability-specific access
          ↓
VERIFY ACTUAL STATE
          ↓
CONTINUE ONLY WHEN REQUIRED CAPABILITY IS AVAILABLE
```

**Important boundary:** satu confirmation dialog **tidak berarti** semua item mempunyai mekanisme grant yang sama. Reference evidence justru menunjukkan adanya beberapa mechanism boundary yang harus direkonsiliasi terhadap actual capability.

Reference juga menunjukkan privilege path dapat melibatkan **Root atau Shizuku**. Ini adalah evidence mengenai reference workflow, bukan bukti bahwa BaRe harus mengimplementasikan Shizuku.

### Evidence status

| Item | Status |
|---|---|
| One-step Root/Shizuku permission confirmation UX | OBSERVED_STATIC |
| Permission/capability list in confirmation dialog | OBSERVED_STATIC |
| Runtime permission grant path | OBSERVED_STATIC |
| MANAGE_EXTERNAL_STORAGE via AppOps | OBSERVED_STATIC |
| Installed-apps special handling | OBSERVED_STATIC |
| Shizuku privilege path | OBSERVED_STATIC |
| Reference APK runtime success | UNKNOWN / NOT PERFORMED |

**Boundary:** hasil audit ini dipakai sebagai reference pattern untuk memahami workflow dan capability boundaries. BaRe tetap menggunakan implementation dan verification evidence miliknya sendiri.

---
## 4. UI architecture reference

### 4.1 *Framework/component evidence*

*Static APK evidence* menunjukkan bahwa *reference* menggunakan *Android View/Fragment-oriented UI stack*, bukan Jetpack Compose sebagai *primary UI framework*.  
*Observed framework/component references* mencakup:

* `androidx.fragment.app.FragmentContainerView`;
* `androidx.recyclerview.widget.RecyclerView`;
* `LinearLayoutManager`, `GridLayoutManager`, `StaggeredGridLayoutManager`;
* `androidx.appcompat.widget.Toolbar`;
* `androidx.appcompat.widget.SearchView`;
* `androidx.appcompat.widget.SwitchCompat`;
* `androidx.preference.Preference*` family;
* `androidx.constraintlayout.widget.ConstraintLayout`;
* `androidx.viewpager.widget.ViewPager`;
* Material `MaterialToolbar`;
* Material `BottomNavigationView`;
* Material `TabLayout`;
* `MaterialButton` / `MaterialButtonToggleGroup` / `MaterialSplitButton`;
* `MaterialCardView`;
* `Chip`;
* `FloatingActionButton` / `ExtendedFloatingActionButton`;
* `TextInputLayout` / `TextInputEditText`;
* *custom Swift components* seperti `SwiftListItemCardView`, `SwiftSegmentedCardGroup`, `SwiftBackupMaterialSwitch`, `ProviderChipGroup`, `QuickRecyclerView`, `MAppBarLayout`.

*Interpretation*: BaRe tidak perlu menyalin *toolkit* Swift. Yang perlu diambil adalah *interaction model* dan *evidence* mengenai *component responsibility*.

---

## 5. Global shell: navigation model

### 5.1 *Primary navigation observed visually*

*Screenshot* Home/Cloud/Schedule/Account menunjukkan empat *primary destinations* di *bottom navigation*:
* `Home`
* `Cloud sync`
* `Schedules`
* `Account`  
  `OBSERVED_VISUAL`.

*Top area* pada *screenshot* memperlihatkan:
* *profile/account avatar*;
* *application title* `SWIFTBACKUP`;
* *search action*.  
  `OBSERVED_VISUAL`.

### 5.2 Global navigation model

```text
                         ┌──────────────┐
                         │     HOME     │
                         └──────┬───────┘
                                │
             ┌──────────────────┼──────────────────┐
             │                  │                  │
             ▼                  ▼                  ▼
          APPS/FOLDERS      MESSAGES/CALLS     WIFI/WALLS
             │                  │                  │
             └──────────────┬───┴──────────────────┘
                            ▼
                       TASK / RESULT
BOTTOM NAV:
Home ↔ Cloud sync ↔ Schedules ↔ Account
```

Cloud, Schedules, dan Account juga merupakan *direct primary destinations*. *Domain screens* lainnya merupakan *secondary/deep navigation*.

### 5.3 Global shell states

| State|Evidence|Action|Transition|Verification|
| ---|---|---|---|---|
| Primary screen active|bottom navigation screenshot|tap nav item|active destination changes|OBSERVED_VISUAL|
| Search available|search icon screenshot +  HomeSearchActivity|tap search|open search surface|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| Secondary screen|activity inventory|open domain/detail|push/deep navigation|OBSERVED_STATIC  /  INFERRED|
| Back navigation|Android Activity/Fragment stack + toolbar references|back|return to previous screen|INFERRED|
| Modal/dialog interaction|Material dialog/framework evidence|confirm/cancel|stay, mutate, or return|OBSERVED_STATIC|

---

## 6. Screen → state → action → transition ledger

Bagian ini merupakan *core reference* untuk FE BaRe.

### S00 — First Run / Intro

*Evidence*: `IntroActivity`, `IntroBenefitCardView`, `IntroPermissionCardView`, `IntroRootPermissionCoordinator$State`, `IntroStorageSetupCoordinator$Failure`, `IntroVM$SignInStatus`, `IntroVM$FirstRunRestoreStatus`.

*States*
* *first-run not initialized*;
* *sign-in state*;
* *storage setup state*;
* *root/privilege permission state*;
* *setup failure*;
* *first-run restore state*.

Status: `OBSERVED_STATIC`.

*Actions*
* *continue/setup*;
* *grant storage/access*;
* *handle root permission*;
* *sign in / anonymous path*;
* *recover setup failure*;
* *proceed to Home*.

Beberapa label tombol yang pasti statusnya masih `UNKNOWN` dari *evidence* saat ini.

*Transition model*
```text
FIRST_RUN
  → AUTH/ACCOUNT STATE
  → STORAGE SETUP
  → PRIVILEGE CHECK
  → INITIALIZATION
  → HOME
```

*Failure path*:
```text
SETUP
  → FAILURE
  → USER ACTION / RETRY
  → SETUP
```

*Verification*: `OBSERVED_STATIC`; cakupan *visual state* yang pasti masih `UNKNOWN`.

### S01 — Home

*Visual structure observed*  
*Screenshot* Home menunjukkan:
* *avatar/account entry*;
* *title* `SWIFTBACKUP`;
* *search action*;
* *internal storage card* dengan informasi *total/free/used*;
* *root status card*;
* *domain shortcut chips*: Apps, Messages, Call Logs, Folders, Wallpapers, WiFi;
* *Apps quick actions*;
* *Messages quick actions*;
* *Call Logs quick actions*;
* *Folders quick actions*;
* *bottom navigation*.

Status: `OBSERVED_VISUAL`.

*Static capability dependencies*
* *storage state*: `StorageInfoLocal` / *storage helpers*;
* *root state*: *root helper/service classes*;
* *apps*: *app discovery/task classes*;
* *messages*: *message task/backup classes*;
* *calls*: *call task/backup classes*;
* *folders*: *folder task/state classes*;
* *wallpapers*: *wallpaper task/classes*;
* *Wi-Fi*: *Wi-Fi helper/task/state classes*;
* *cloud metadata* dapat memengaruhi *restore/upload quick actions*.

Status: `OBSERVED_STATIC`.

*States*

| State|Evidence state|
| ---|---|
| storage available with metrics|OBSERVED_VISUAL|
| root granted|OBSERVED_VISUAL|
| root unavailable/blocked|OBSERVED_STATIC  via privilege/error classes; exact Home rendering  UNKNOWN|
| quick action available|OBSERVED_VISUAL|
| quick action blocked by capability|OBSERVED_STATIC  /  INFERRED|
| loading/error/empty domain data|static evidence exists for several domains; exact Home composition  UNKNOWN|

*Actions and transitions*

| Action|Transition|Capability dependency|Verification|
| ---|---|---|---|
| tap Apps|Home → Apps|app discovery|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| tap Messages|Home → Messages|SMS/MMS provider|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| tap Call Logs|Home → Call Logs|CallLog provider|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| tap Folders|Home → Folders|folder discovery|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| tap Wallpapers|Home → Wallpapers|WallpaperManager/data|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| tap WiFi|Home → WiFi|Wi-Fi capability resolver|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| storage card action|Home → Storage switch/details|storage provider|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| Backup all apps|Home → app backup task|app discovery + backup engine + repository|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| Restore all apps from device|Home → restore task|backup inventory + package install/restore|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| Restore all apps from cloud|Home → cloud restore task|cloud + backup inventory + restore|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| Backup/restore messages|Home → message task|message provider|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| Backup/restore call logs|Home → call task|CallLog provider|OBSERVED_VISUAL  +  OBSERVED_STATIC|
| Backup/restore folders|Home → folder task|folder provider + repository|OBSERVED_VISUAL  +  OBSERVED_STATIC|

*Important FE rule*: ketersediaan tombol *quick action* harus diturunkan dari *actual capability state*, bukan sekadar dari keberadaan elemen UI.

### S02 — Apps list

*Static evidence*  
`AppListActivity`; `AppListItemLayout`; `AppItemContentLayout`; `AppRowLabelsView`; `AppSwipeActionRevealLayout`; `AppFilterHelper`; `AppSortHelper`; `FavoriteAppsRepo`; `LabelsActivity` / `LabelEditActivity`; `AppsBatchActivity`; `AppsConfigRunActivity`; `AppsQuickActionsActivity`; `AppInfoActivity`.  
Status: `OBSERVED_STATIC`.

*Public workflow evidence*  
FAQ resmi menyatakan bahwa layar Apps mendukung bagian *local/cloud*, *batch actions*, aksi per-aplikasi, penghapusan *backup*, *labels*, dan alur *configuration*.  
Status: `DOCUMENTED_PUBLIC`.

*Components*  
*top app bar*; *section/local-cloud selector*; *list/grid/recycler*; *app item card/row*; *app icon + package metadata*; *backup status/date/size*; *labels*; *favorite/filter/sort controls*; *per-item overflow/action menu*; *batch action control*; *bottom action surface where applicable*.

*States*
```text
LOADING
  → LOADED
  → FILTERED/SORTED
  → ITEM_SELECTED
  → BATCH_MODE
LOADED
  → EMPTY
  → ERROR
ITEM
  → DETAIL
  → ITEM_ACTION_MENU
  → BACKUP_CONFIG
  → RESTORE_CONFIG
```
`LOADING`, `EMPTY`, `ERROR` adalah *generic lifecycle states* yang didukung oleh bukti implementasi, namun komposisi visual pastinya belum sepenuhnya teramati; tandai `INFERRED` jika bukti visualnya tidak ada.

*Actions / transitions*

| Action|Transition|Dependency|Verification|
| ---|---|---|---|
| switch Local/Cloud|Apps(local) ↔ Apps(cloud)|repository + cloud state|DOCUMENTED_PUBLIC|
| tap app|Apps → App detail|package/app metadata|OBSERVED_STATIC|
| open overflow|App → action menu|app item state|OBSERVED_STATIC|
| set labels|App → Labels|labels repository|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| favorites/filter/sort|list → filtered/sorted list|local app metadata|OBSERVED_STATIC|
| batch actions|list → batch mode|selected items|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| backup|app/config → backup task|APK/data/parts capability|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| restore|app/config → restore task|backup artifact + install/data capability|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|
| open custom config|Apps → Configs|labels/config repository|DOCUMENTED_PUBLIC  +  OBSERVED_STATIC|

### S03 — App detail

*Evidence*: `AppInfoActivity`, `DetailActivity`, `DetailModels$DeviceBackupStates`, `DetailModels$CloudBackupStates`.

*State model*
```text
NO_BACKUP
LOCAL_BACKUP_AVAILABLE
CLOUD_BACKUP_AVAILABLELOCAL_AND_CLOUD_AVAILABLE
BACKUP_IN_PROGRESS
RESTORE_IN_PROGRESS
BACKUP_FAILED
RESTORE_FAILED
```
Nama-nama *state enum* yang pasti di atas merupakan *reference model*, bukan seluruh *enum evidence* langsung. Model *state device/cloud backup* di bawahnya adalah `OBSERVED_STATIC`; pemetaan ke label UX sebagian merupakan `INFERRED`.

*Components*  
*app header/icon/name/package*; *device backup card*; *cloud backup card*; *backup metadata*; *action/overflow menus*; *restore/install controls*; *status/diagnostic area*.

*Actions*  
*inspect backup*; *backup*; *restore*; *delete backup*; *inspect details*; *switch local/cloud context*; *configure app parts*.

*Critical dependency*  
App detail tidak boleh menampilkan *path* sukses `Restore` yang generik tanpa memeriksa *package identity*, *artifact integrity*, *installation constraints*, dan *privilege* yang dibutuhkan.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`; *runtime behavior* `UNKNOWN`.

### S04 — App backup/restore configuration

*Evidence*  
*Static strings/data* menunjukkan *app parts*:  
APK/base APK; *split APKs*; *app data*; *external data*; *expansion/OBB*; *media*; *archive/compression*; *protected backup*; *multiple-backup strategy*; lokasi *backup local/cloud*.  
FAQ resmi mendokumentasikan persyaratan eksplisit untuk bagian-bagian ini.

*State*
```text
CONFIG_DEFAULTS
→ PARTS_SELECTED
→ DESTINATION_SELECTED
→ STRATEGY_SELECTED
→ VALIDATED
→ READY
```
*Failure/limitation states*:  
`CAPABILITY_UNAVAILABLE`, `PERMISSION_REQUIRED`, `PRIVILEGE_REQUIRED`, `VERSION_LIMITED`, `STORAGE_INSUFFICIENT`, `INVALID_CONFIGURATION`.

*Components*  
*checkbox/switch rows*; *segmented/card groups*; *provider/location selector*; *password/security strategy*; *compression controls*; *multiple-backup strategy*; *validation messages*; *save/run action*.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`; tata letak layar yang pasti `UNKNOWN`.

### S05 — App batch actions

*Evidence*: `AppsBatchActivity` dan *string* terkait *batch*.

*States*  
*selection mode*; *action picker*; *confirmation*; *executing*; *partial result*; *completed*; *failed*.

*Actions*  
*select/unselect apps*; *choose backup/restore/delete/config action*; *execute*; *cancel*.

*Dependency*  
*Batch capability* merupakan *aggregate capability*: setiap item yang dipilih mungkin memiliki eligibilitas *backup/restore* yang berbeda. Oleh karena itu, FE harus memodelkan hasil per-item, bukan satu boolean global.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S06 — Labels / Favorites / Blacklist / Management

*Evidence*  
`LabelsActivity`; `LabelEditActivity`; `FavoriteApp` / `FavoriteAppsRepo`; `BlacklistActivity`; *app visibility diagnostics*; referensi *management/settings*.

*State/action model*
```text
MANAGEMENT
→ LIST
→ CREATE/EDIT
→ APPLY TO APPS
→ FILTER/SELECT
→ USED BY CONFIG/SCHEDULE
```
*Dependencies*: *app inventory*; *persistent metadata*; *configuration engine*; *schedule engine*.

*Verification*: `OBSERVED_STATIC`; tata letak visual yang pasti `UNKNOWN`.

### S07 — Custom app configurations

*Evidence*: `ConfigListActivity`, `ConfigEditActivity`, `ConfigSettingsActivity`, `AppsConfigRunActivity`, *config data classes*.  
Dokumentasi Configs resmi mengonfirmasi: membuat *labels*; menetapkan *labels* ke aplikasi; membuat *config*; mendefinisikan pengaturan *backup/restore* per-label; mengeksekusi melalui *batch actions*; melampirkan *configs* ke *schedules*; konfigurasi pertama yang cocok akan menang jika beberapa *labels* cocok.  
Status: `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC`.

*Transition*
```text
APPS
→ LABELS
→ CONFIG LIST
→ CONFIG EDIT
→ SAVE
→ RUN NOW / SCHEDULE
→ TASK
→ RESULT
```
Ini merupakan *reference* yang penting untuk BaRe karena mendemonstrasikan bahwa *configuration* adalah sebuah *domain object*, bukan sekadar preferensi UI.

### S08 — Folders dashboard

*Evidence*  
`FoldersDashActivity`; `FolderDashItem`; `FolderItem`; `FolderState`; model `FolderBackup` *base/incremental*; `FolderDetailActivity`; `FolderEditActivity`; `FolderPickerActivity`; `FoldersBatchActivity`.

*States*  
`FolderDetailStates` secara langsung memisahkan: `FolderInfoState`; `DeviceBackupState`; `CloudBackupState`.  
Model hasil *backup* secara eksplisit berisi: `Success`; `Failure`; `NoChange`.  
Ini merupakan *evidence state* `OBSERVED_STATIC` yang kuat.

*Workflow*
```text
FOLDERS DASHBOARD
→ PICK/EDIT FOLDER
→ FOLDER DETAIL
→ BACKUP CONFIG
→ BACKUP TASK
→ RESULT
FOLDER DETAIL
→ DEVICE/CLOUD BACKUP
→ RESTORE PRECHECK
→ RESTORE
→ POST-RESTORE RESULT
```
*Components*  
*folder list card*; *source path*; *backup status*; *device backup card*; *cloud backup card*; *picker*; *batch actions*; *edit/duplicate/exclude controls*; *progress/result*.

*Verification*: `OBSERVED_STATIC`; *release notes* publik v5.1.0 secara eksplisit mendokumentasikan *folder backup/restore* untuk *device* dan *cloud storage*: `DOCUMENTED_PUBLIC`.

### S09 — Messages

*Evidence*  
`MessagesDashActivity`; `MessagesBackupsActivity`; `MessagesBackupRestoreActivity`; `ConversationsActivity`; `ChatActivity`; model/*task/receiver* SMS/MMS.

*State model*
```text
MESSAGES DASH
→ BACKUP LIST
→ SELECT BACKUP
→ RESTORE
→ RESULT
MESSAGES DASH
→ CONVERSATIONS
→ CHAT DETAIL
```
*Capability dependencies*: *provider* SMS/MMS; batasan *permissions/default-role*; *artifact backup*; *authority restore*; kebijakan versi Android.  
FAQ/*issues* resmi mengonfirmasi batasan *platform* dan bahwa pesan yang di-*restore* mungkin memerlukan penanganan *post-restore* di aplikasi *messaging*.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`; *runtime* `UNKNOWN`.

### S10 — Call Logs

*Evidence*  
`CallsDashActivity`; `CallsBackupsActivity`; `CallsBackupRestoreActivity`; API/model/*task* CallLog.

*Workflow*
```text
CALL LOG DASH
→ BACKUP HISTORY
→ SELECT BACKUP
→ RESTORE
→ RESULT
```
*States* mencakup *path no-data/failed/success* di dalam *task/static evidence*, namun *visual states* yang pasti belum sepenuhnya teramati.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S11 — Wi-Fi

*Evidence*  
`WifiActivity`; `WifiHelper`; `WifiItem`; `WifiAccessSnapshot`; referensi `WifiConfigStoreData`; *Wi-Fi scheduling*; *state privilege/error* seperti `BlockedWifiPrivilegedAccess`, `FailedWifiDeviceRead`, dan `Empty(isWifiEnabled=...)`.

*States*  
`WIFI_ENABLED`, `WIFI_DISABLED`, `ACCESS_AVAILABLE`, `PRIVILEGE_REQUIRED`, `DEVICE_READ_FAILED`, `EMPTY`, `RESTORE_REQUIRES_USER_ACTION`.

*Action/transition model*
```text
WIFI DASH
→ LIST SAVED NETWORKS
→ NETWORK DETAIL
→ BACKUP
→ RESTORE
```
*Platform-specific fallback* sangat penting: dokumentasi *issues* resmi menyatakan bahwa pada Android 10, *batch restore* tidak tersedia dan alur pemilihan Wi-Fi yang dimediasi pengguna digunakan sebagai gantinya; *batch restore* Android 11+ membutuhkan *root* menurut dokumentasi publik saat ini.  
Oleh karena itu FE harus merepresentasikan: `AUTOMATIC_RESTORE`, `USER_MEDIATED_RESTORE`, `PRIVILEGED_RESTORE`, `UNAVAILABLE`, bukan hanya satu aksi `Restore` yang generik.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S12 — Wallpapers

*Evidence*  
`WallsDashActivity`; `WallsManageActivity`; `WallApplyActivity`; `WallpaperManager`; *string task backup/restore* wallpaper.

*State/action*
```text
WALLPAPER DASH
→ BACKUP
→ LOCAL/CLOUD BACKUP STATE
→ MANAGE
→ APPLY/RESTORE
→ RESULT
```
Dimensi *state* potensial yang diidentifikasi dari *requirements/reference*:  
*wallpaper supported/not supported*; *static/live*; *home/lock scope*; *backup available/not available*; *apply failed/success*.  
Cakupan layar demi layar yang pasti masih `UNKNOWN`.

*Verification*: `OBSERVED_STATIC`.

### S13 — Schedules

*Visual evidence*  
*Screenshot* yang disediakan menunjukkan *first-use/empty schedule state*:  
ikon jam besar; judul `Scheduled backups`; teks penjelasan; CTA `Turn on schedule`; *bottom nav* dengan Schedules aktif.  
Status: `OBSERVED_VISUAL`.

*Static evidence*  
`ScheduleService`; `ScheduleItem`; `ScheduleVM$State`; `ScheduleLabelsSelectActivity`; `ScheduleFolderSelectActivity`; `ScheduleFabMenuView`; *state* `ScheduleLastRunDetails`; tipe *schedule* untuk Apps, App Config, Labels, Folders, Messages, Call Logs, Wallpapers, Wi-Fi.

*Explicit last-run states observed*  
`NeverRun`; `Started`; `BlockedLowBattery`; `BlockedNotCharging`; `BlockedWifiPrivilegedAccess`; `FailedWifiDeviceRead`; `SkippedUploadCloudNotConnected`; `SkippedUploadNetworkError`; `SkippedUploadSyncOptionsError`.  
Ini merupakan *reference* bernilai tinggi untuk BaRe karena layar *schedule* memiliki *state machine* yang lebih kaya daripada sekadar `enabled/disabled`.

*Workflow*
```text
SCHEDULES
→ EMPTY / LIST
→ CREATE
→ SELECT TYPE
→ SELECT SCOPE
→ SELECT CONDITIONS
→ SAVE
→ ENABLE
→ RUN NOW / WAIT FOR TRIGGER
→ LAST RUN STATE
→ RESULT / DIAGNOSTIC
```
*Components*  
*empty-state hero*; *schedule cards/list rows*; *enabled switch/state*; *FAB/menu*; *time/condition controls*; *labels/folder selectors*; *last-run status*; *run-now action*; *diagnostic/error surface*.

*Verification*: `OBSERVED_VISUAL` + `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S14 — Cloud sync

*Visual evidence*  
*Screenshot* menunjukkan *disconnected state*:  
ikon *cloud* dengan perlakuan *disabled/disconnected*; judul `Cloud account not connected`; penjelasan; CTA `Connect a cloud account`; Cloud sync dipilih di *bottom navigation*.  
Status: `OBSERVED_VISUAL`.

*Static evidence*  
Aktivitas *sign-in provider* yang teramati:  
Google/GMS; *path browser no-GMS*; Dropbox; OneDrive; Box; pCloud; Mega; Filen; TeraBox; Yandex; aktivitas koneksi *cloud* generik; *diagnostics cloud*; *orphan cleaner*.

*States*  
`NOT_CONNECTED`, `CONNECTING`, `CONNECTED`, `AUTH_REQUIRED`, `AUTH_FAILED`, `NETWORK_ERROR`, `PROVIDER_ERROR`, `SYNCING`, `SYNC_SUCCESS`, `SYNC_PARTIAL`, `SYNC_FAILED`, `DIAGNOSTICS`.  
Beberapa merupakan *evidence state/result* langsung, yang lainnya adalah *model states* tingkat *workflow*. Tandai `INFERRED` jika tidak diwakili secara langsung oleh *named state class*.

*Transitions*
```text
CLOUD SYNC
→ NOT CONNECTED
→ CONNECT PROVIDER
→ AUTH
→ CONNECTED
→ LIST/SYNC
→ TRANSFER
→ RESULT
```
*Cloud diagnostics/orphan cleanup* adalah *maintenance workflows* yang terpisah, bukan sekadar dialog *error*.

*Component implications*  
*provider cards/list*; *connection state indicator*; *connect button*; *remote repository metadata*; *upload/download/sync actions*; *transfer progress*; *diagnostic entry*; *orphan cleanup*.

*Verification*: `OBSERVED_VISUAL` + `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S15 — Storage switch / local repository

*Evidence*  
`StorageSwitchActivity`, `StorageInfoLocal`, *class helper storage* dan FAQ resmi mendukung pergantian *storage* lokal antara *internal storage* dan tujuan *removable/USB* yang didukung.

*State*
```text
CURRENT_STORAGE
→ TARGET_SELECTED
→ ACCESS_REQUESTED
→ ACCESS_GRANTED
→ MOVE/COPY
→ VALIDATE
→ SWITCHED
```
*Failure*: `ACCESS_DENIED`, `INSUFFICIENT_SPACE`, `INVALID_STORAGE`, `TRANSFER_FAILED`, `RECOVERY_REQUIRED`.

*FE rule*  
Lokasi *storage* merupakan *system dependency* dengan *state authorization* dan *capacity*. Ini bukan sekadar *string preference* yang statis.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S16 — Account

*Visual evidence*  
*Screenshot* Account menunjukkan:  
kartu identitas akun; identitas perangkat; CTA premium; aksi *sign-out*; Settings; SwiftLogger; Language; Help center; Contact; Rate; Share Swift Backup; About; *bottom navigation*.  
Status: `OBSERVED_VISUAL`.

*Static/public dependencies*  
*account models/credential helpers*; *billing/premium*; *locale*; SwiftLogger/SLog; aktivitas *help/contact/about*; *settings*.

*States*  
`ANONYMOUS`, `SIGNED_IN`, `PREMIUM`, `NON_PREMIUM`, `ACCOUNT_ERROR`, `SIGNED_OUT`.  
FAQ publik saat ini secara eksplisit mendokumentasikan *anonymous/offline local backup* dan perilaku *cloud/premium* yang bergantung pada akun.

*Verification*: `OBSERVED_VISUAL` + `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC`.

### S17 — Settings

*Visual evidence*  
*Screenshot* Settings dikelompokkan ke dalam bagian:  
*Appearance and language*; *Backup content*; *Storage and security*; *Notifications*; *Advanced tools*; *Help and info*.  
Baris yang teramati meliputi:  
App theme; Dynamic colors; AMOLED black backgrounds; Language; App backups; Messages backups; Call logs backups; Folder backups; Storage for local backups; Cloud backups; Encryption password strategy; Manage space; Manage notifications; Play notification sounds; Swift Labs; SwiftLogger; Restart app; Help center; Contact; About.  
Status: `OBSERVED_VISUAL`.

*Static evidence*  
*Class* aktivitas/detail Settings, *framework preference*, *class backup strategy*, *password strategy*, *multiple backup strategy*, *storage*, *diagnostics*, dan alur *reset/manage-space* tersedia.

*State/action model*
```text
SETTINGS
→ CATEGORY
→ DETAIL
→ READ CURRENT VALUE
→ EDIT
→ VALIDATE
→ SAVE
→ EFFECTIVE STATE
```
Untuk *toggles*: `OFF ↔ ON`  
Untuk *settings* yang dibatasi: `SUPPORTED`, `LIMITED`, `REQUIRES_PRIVILEGE`, `INVALID`.

*Verification*: `OBSERVED_VISUAL` + `OBSERVED_STATIC`.

### S18 — Import / Export

*Evidence*  
`ApkImportActivity` / `ApkImportUiState`; *class* metadata APK/APKS; ekspor/impor *settings* didokumentasikan di FAQ; ekspor/impor *cloud setup* didokumentasikan di FAQ; berbagi APK diumumkan di v5.1.0.

*Workflow*
```text
IMPORT/EXPORT
→ PICK SOURCE/DESTINATION
→ PARSE
→ VALIDATE
→ PREVIEW
→ CONFIRM
→ EXECUTE
→ VERIFY
→ RESULT
```
*Important security state*  
Ekspor *cloud setup* mungkin berisi kredensial *plaintext* tergantung pada *timing/konfigurasi*. FAQ resmi secara eksplisit memperingatkan hal ini.  
Oleh karena itu FE BaRe harus mengekspos *sensitivity* dan *validation state* alih-alih memperlakukan ekspor sebagai operasi file generik yang tidak berbahaya.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S19 — Search

*Evidence*  
`HomeSearchActivity`, `SearchView` Android, *string* terkait pencarian, dan *release notes* v5.1.0.

*Model*
```text
SEARCH IDLE
→ QUERY ENTERED
→ SEARCHING
→ RESULTS
→ EMPTY RESULTS
→ OPEN RESULT
```
*Evidence target pencarian* mencakup data aplikasi dan *home-related*; semantik *full-index* yang pasti masih `UNKNOWN`.

*Verification*: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

### S20 — Tasks / progress / preconditions

*Evidence*  
`TaskService`; `TaskActivity`; `TaskManager`; `TaskStatus`; `PreconditionsActivity`; *receiver task/cancel* notifikasi; *ledger runtime foreground data-sync*.

*State model*
```text
PRECONDITION CHECK
→ READY
→ RUNNING
→ PAUSED/BLOCKED
→ SUCCESS
→ PARTIAL
→ FAILED
→ CANCELLED
```
*String/model reference* juga menunjukkan kondisi *blocked/skipped* yang spesifik.

*FE rule*  
UI *task* harus mengekspos mengapa sebuah operasi diblokir/dilewati/gagal. *Spinner* generik tidak cukup untuk perangkat lunak *backup/restore*.

*Verification*: `OBSERVED_STATIC`.

### S21 — Diagnostics / logs
*Evidence*  
`SLogActivity`; referensi `SwiftLogger`; *diagnostics cloud*; *diagnostics app visibility*; *string diagnostik restore/backup*; pemeriksaan *storage/transfer*.

*State model*
```text
DIAGNOSTIC IDLE
→ COLLECTING
→ FINDINGS
→ ACTIONABLE ISSUE
→ RESOLVED / RETRY / EXPORT LOGS
```
*Diagnostics* merupakan *first-class workflow*, bukan sekadar layar *error*.

*Verification*: `OBSERVED_STATIC`; UX yang pasti `UNKNOWN`.

---

## 7. Cross-screen workflow maps

### 7.1 App backup

```text
HOME / APPS
   ↓
 DISCOVER APPS
   ↓
 FILTER / SELECT
   ↓
 CONFIGURE PARTS
   ↓
 RESOLVE CAPABILITY
   ↓
 VALIDATE DESTINATION
   ↓
 PRECONDITIONS
   ↓
 BACKUP TASK
   ↓
 ARCHIVE / COMPRESS / ENCRYPT
   ↓
 COMMIT
   ↓
 PERSIST METADATA
   ↓
 VERIFY
   ↓
 RESULT
```
*Evidence* UI *reference* mendukung perjalanan seleksi/konfigurasi/hasil dari sisi pengguna. Arsitektur BaRe harus mengimplementasikan *domain pipeline* secara independen sebagaimana didefinisikan oleh dokumen *product/architecture*.

### 7.2 App restore

```text
APPS
   ↓
 SELECT BACKUP
   ↓
 INSPECT
   ↓
 SELECT PARTS / OPTIONS
   ↓
 VALIDATE PACKAGE + ARTIFACT + TARGET
   ↓
 RESOLVE INSTALL/DATA CAPABILITY
   ↓
 PRECONDITIONS
   ↓
 RESTORE / INSTALL
   ↓
 POST-RESTORE VALIDATION
   ↓
 RESULT
```
Distingsi FE yang kritis:
```text
FILE COPIED
≠
APP RESTORED
≠
APP VERIFIED
```

### 7.3 Folder backup/restore

```text
FOLDERS
  ↓
SELECT/EDIT SOURCE
  ↓
CHOOSE DESTINATION
  ↓
SCAN
  ↓
BASE / INCREMENTAL DECISION
  ↓
BACKUP
  ↓
VALIDATE CHAIN
  ↓
RESULT
```
Restore:
```text
SELECT FOLDER BACKUP
→ PRECHECK
→ TARGET SELECT
→ VALIDATE
→ RESTORE
→ VERIFY
```

### 7.4 Messages / Call Logs

```text
DOMAIN DASH
→ BACKUP LIST
→ SELECT BACKUP
→ RESTORE CONFIG
→ PLATFORM/ROLE/PERMISSION CHECK
→ RESTORE
→ POST-RESTORE CHECK
→ RESULT
```
FE harus dapat membedakan batasan *permission/role* dari ketiadaan data.

### 7.5 Wi-Fi

```text
WIFI
→ DISCOVER CURRENT STATE
→ LIST BACKUPS
→ SELECT NETWORK/BACKUP
→ RESOLVE RESTORE METHOD
    ├─ AUTOMATIC
    ├─ USER-MEDIATED
    └─ PRIVILEGED
→ EXECUTE
→ VERIFY
```

### 7.6 Scheduled backup

```text
SCHEDULES
→ CREATE/EDIT
→ SELECT DOMAIN
→ SELECT DATA/SCOPE
→ CONDITIONS
→ SAVE
→ ENABLE
→ TRIGGER
→ PRECONDITION CHECK
→ RUN
→ LAST RUN STATE
→ RESULT
```
Sebuah *schedule* dapat dikonfigurasi dengan berhasil namun kemudian diblokir oleh baterai, pengisian daya, *privilege* Wi-Fi, koneksi *cloud*, jaringan, atau *precondition* lainnya.

### 7.7 Cloud sync

```text
CLOUD SYNC
→ CONNECT PROVIDER
→ AUTH
→ VERIFY CONNECTION
→ DISCOVER REMOTE REPOSITORY
→ SYNC
→ TRANSFER
→ VERIFY
→ RESULT
```
Kegagalan spesifik dari *provider* tidak boleh bocor ke dalam *core backup domain model*.

---

## 8. Component reference inventory

### 8.1 Shell components

| Component|Evidence|BaRe implication|
| ---|---|---|
| Top app bar|MaterialToolbar ,  MAppBarLayout , screenshot|shared shell component|
| Bottom navigation|BottomNavigationView , screenshots|primary navigation component|
| Search|SearchView ,  HomeSearchActivity , screenshot icon|global search entry|
| Avatar/account entry|screenshot + account activities|account surface|
| Cards|MaterialCardView ,  SwiftListItemCardView , screenshots|reusable section/item surface|
| Chips|Chip ,  ProviderChipGroup , screenshot|capability/domain shortcuts/filter/provider selection|
| Segmented controls|TabLayout ,  SwiftSegmentedCardGroup , Material toggle group|local/cloud or mode selection|
| Switches|SwitchCompat ,  SwiftBackupMaterialSwitch|settings/schedule state|
| Recycler/list|RecyclerView , custom layout managers|primary list pattern|
| FAB|FloatingActionButton ,  ScheduleFabMenuView|creation/batch/action entry|
| Dialogs|Android/Material dialog classes|confirmation, error, selection|
| Preferences|AndroidX Preference family|settings detail|
| Progress|Android  ProgressBar  + task infrastructure|long-running operations|
| Text input|TextInputLayout ,  TextInputEditText|credentials/configuration/search|

### 8.2 Component state rule

Komponen yang dapat digunakan kembali harus mendukung *state* secara eksplisit ketika *underlying capability*-nya bersifat *stateful*.  
Contoh:
```text
ActionButton
├─ AVAILABLE
├─ DISABLED
├─ REQUIRES_PERMISSION
├─ REQUIRES_PRIVILEGE
├─ RUNNING
├─ BLOCKED
└─ FAILED
```
Jangan mendesain tombol hanya sebagai `onClick -> execute` untuk fitur *backup/restore* yang membutuhkan *privilege*.

---

## 9. Capability dependency model for FE

Komponen UI → *capability dependency* harus eksplisit.

| FE surface|Minimum capability dependency|
| ---|---|
| Home storage card|storage discovery + readable storage metrics|
| Home root status|root/privilege capability detection|
| Apps shortcut|app discovery|
| Messages shortcut|SMS/MMS capability state|
| Call Logs shortcut|CallLog capability state|
| Folders shortcut|folder/storage access|
| Wi-Fi shortcut|Wi-Fi capability resolver|
| Wallpaper shortcut|wallpaper API/access|
| Backup apps action|app discovery + selected app-part capability + repository|
| Restore apps action|backup artifact + package install + restore capability|
| Backup folders action|folder scan + repository|
| Restore folders action|archive validation + filesystem target|
| Schedule creation|scheduler + domain config + permission/background policy|
| Schedule run now|scheduler/task service + domain capability|
| Cloud connect|provider adapter + auth|
| Cloud sync|provider connection + repository + transfer engine|
| Settings storage|storage provider|
| Encryption settings|key/password strategy + archive engine|
| Diagnostics|operation/event/log data|
| Import APK/APKS|parser + validation + package/install path|
| Search|indexed/discoverable data source|

*FE dependency rule*  
UI harus meminta *capability state* dari *application/domain layers*.
```text
UI
 ↓ request
Application / Use Case
 ↓ resolve
Capability Contract
 ↓
Provider / Android runtime
 ↓
CapabilityResult
 ↓
UI state
```
UI tidak boleh menebak *privilege* dari pengaturan visual, ikon, atau konfigurasi yang diingat.

---

## 10. Verification-state model for BaRe FE

Audit *reference* menetapkan bahwa Swift itu sendiri memodelkan lebih banyak *state* daripada boolean fitur sederhana. BaRe harus mempertahankan distingsi tersebut.

Keluarga *state* kanonik yang direkomendasikan untuk FE:  
`AVAILABLE`, `UNAVAILABLE`, `LIMITED`, `BLOCKED`, `PERMISSION_REQUIRED`, `PRIVILEGE_REQUIRED`, `USER_ACTION_REQUIRED`, `LOADING`, `RUNNING`, `SUCCESS`, `PARTIAL_SUCCESS`, `FAILED`, `SKIPPED`, `CANCELLED`, `UNKNOWN`.

Untuk operasi yang telah selesai, pertahankan *verification state* yang terpisah:
```text
EXECUTED
↓
RESULT_RECORDED
↓
VERIFIED
```
Oleh karena itu: `SUCCESS ≠ VERIFIED`.  
Hal ini mengikuti *project governance* dan diperkuat oleh *evidence reference* yang menunjukkan *state* eksplisit seperti `Success`, `Failure`, `NoChange`, `Started`, `Blocked*`, `Skipped*`, dan *state* diagnostik.

---

## 11. Reference-derived FE design rules

**Rule R-FE-01 — Home is a capability dashboard, not just a menu**  
*Screenshot* Home menggabungkan status sistem/*storage*, status *privilege*, *domain shortcuts*, dan *quick actions*. Oleh karena itu, BaRe harus memperlakukan Home sebagai *current-state dashboard*.

**Rule R-FE-02 — Action availability is state-driven**  
Aksi yang terlihat tidak mengimplikasikan bahwa *capability*-nya dapat dieksekusi.  
Contoh: `Wi-Fi restore visible ≠ Wi-Fi restore executable`. UI harus menyelesaikan *actual capability state*.

**Rule R-FE-03 — Empty state is a real state**  
*Screenshot Schedules* mendemonstrasikan *dedicated first-use empty state* dengan teks penjelasan dan CTA. *Empty* tidak sama dengan *error*.

**Rule R-FE-04 — Disconnected is a real state**  
*Screenshot Cloud* mendemonstrasikan *disconnected state* dengan penjelasan dan aksi *connect* yang eksplisit. Jangan merepresentasikan *cloud* sebagai daftar kosong.

**Rule R-FE-05 — Account state changes capability**  
Semantik *cloud/premium/account* adalah bagian dari perilaku produk. FE harus membedakan operasi *anonymous/local* dari *capability* yang bergantung pada akun tanpa berpura-pura bahwa autentikasi sama dengan verifikasi *capability*.

**Rule R-FE-06 — Settings are grouped by domain responsibility**  
Layar *settings reference* mengelompokkan *appearance*, *backup content*, *storage/security*, *notifications*, *advanced tools*, dan *help/info*. BaRe harus mengelompokkan *settings* berdasarkan tanggung jawabnya, bukan menjadi satu daftar yang tidak terbatas.

**Rule R-FE-07 — Batch is a first-class interaction mode**  
Apps dan *folders* memiliki *dedicated batch activities*. Seleksi *batch* harus mendukung *state* hasil per-item dan hasil agregat.

**Rule R-FE-08 — Configuration is a domain object**  
*App configs* dan *schedules* dapat mereferensikan *labels/configurations*. Oleh karena itu, *configuration* harus dimodelkan secara independen dari *state* UI lokal per layar.

**Rule R-FE-09 — Diagnostics is part of the user journey**  
Aktivitas *task/precondition/diagnostic* dan *state skipped/blocked* yang eksplisit menunjukkan bahwa *recovery/explanation* adalah bagian dari alur produk yang normal.

**Rule R-FE-10 — Local/cloud are repository contexts, not separate product domains**  
Semantik *backup/restore* yang sama muncul di lokasi *device/cloud*. BaRe harus menjaga semantik *domain backup* tetap independen dari implementasi *repository*.

**Rule R-FE-11 — Privilege is a dependency, not the domain model**  
Perilaku *reference* menunjukkan distingsi seperti *root/Shizuku/ADB* terkait ketersediaan *capability*. BaRe harus menjaga *execution mode* tetap di balik batas *capability/provider*.

**Rule R-FE-12 — Do not copy the reference's implementation structure**  
Struktur *class/package* statis adalah *evidence* tentang batas tanggung jawab, bukan instruksi untuk mereproduksi arsitektur kode yang sama.

---

## 12. Current BaRe FE comparison

*Commit* `v1.0/rebaseline` saat ini yang teramati sebelum perubahan dokumentasi ini:  
`1705452dc77482dd5573d023d091491ec4864319`

Sumber UI saat ini:  
`app/src/main/java/com/savie/bare/MainActivity.kt`

SHA sumber saat ini yang teramati dari *repository*:  
`b3e244d252958b401e8e5d5ac5c5f45036d7e757`

File saat ini berisi *enum screen*:  
Home; Apps; Folders; Messages; Call Logs; Wi-Fi; Wallpapers; Schedules; Storage; Cloud; Management; Diagnostics; Account; Settings; Import/Export; Search.  
Implementasi saat ini secara eksplisit merupakan *product shell/placeholder*. Ini tidak mengklaim perilaku *backend capability*.

*Gap matrix*

| Area|Swift reference evidence|Current BaRe|Status|
| ---|---|---|---|
| Primary shell|Home/Cloud/Schedules/Account|primary navigation exists|DEFINED|
| Domain entry points|strong|broad placeholder surfaces|DEFINED / UNIMPLEMENTED|
| Home dashboard|storage/root/quick actions/domain cards|generic quick actions + area cards|PARTIAL|
| Apps|list/batch/detail/config/labels|placeholder|GAP|
| Folders|dashboard/detail/edit/picker/batch|placeholder|GAP|
| Messages|dashboard/backups/restore/conversations|placeholder|GAP|
| Call Logs|dashboard/backups/restore|placeholder|GAP|
| Wi-Fi|stateful capability + fallback|placeholder|GAP|
| Wallpapers|dashboard/manage/apply|placeholder|GAP|
| Schedules|empty/list/create/conditions/last-run|placeholder|GAP|
| Cloud|disconnected/connect/provider/sync/diagnostics|placeholder|GAP|
| Account|account/settings/log/help/about|partial shell|PARTIAL|
| Settings|grouped categories/detail controls|placeholder|GAP|
| Search|dedicated search surface|placeholder|GAP|
| Task/progress|explicit task infrastructure in reference|not yet implemented|GAP|
| Diagnostics|first-class diagnostic workflows|placeholder|GAP|
| Capability state|explicit runtime dependency needed|not yet implemented|GAP|

Hal ini mengonfirmasi kekhawatiran *engineering* sebelumnya: jangan menumbuhkan *capability* nyata secara langsung di dalam `MainActivity.kt`.

---

## 13. Target FE boundary derived from evidence

Audit *reference* mendukung arsitektur berorientasi fitur, namun bukan pemecahan file yang sembarangan.

Batas logis yang direkomendasikan:
```text
app/
 └── src/main/java/com/savie/bare/
     ├── MainActivity.kt
     ├── navigation/
     │   ├── Screen.kt
     │   └── BaReNavigation.kt
     ├── ui/
     │   ├── shell/
     │   ├── components/
     │   ├── state/
     │   └── theme/
     ├── feature/
     │   ├── home/
     │   ├── apps/
     │   ├── folders/
     │   ├── messages/
     │   ├── calllogs/
     │   ├── wifi/
     │   ├── wallpapers/
     │   ├── schedules/
     │   ├── cloud/
     │   ├── storage/
     │   ├── account/
     │   ├── settings/
     │   ├── management/
     │   ├── diagnostics/
     │   ├── search/
     │   └── importexport/
     └── ...
```Ini adalah proposal, bukan keputusan implementasi saat ini.  
Batas tersebut harus mengikuti tanggung jawab yang sebenarnya:
```text
Feature UI
   ↓
UI State / ViewModel
   ↓
Use Case / Application Contract
   ↓
Domain Capability
   ↓
Capability Provider
   ↓
Android / Storage / Network / Privileged Runtime
```
Jangan membuat satu file per baris UI. Jangan membuat *mega-service* generik. Pecah hanya jika terdapat batas tanggung jawab yang nyata.

---

## 14. What is evidence vs inference

*Direct evidence*
* Swift memiliki *bottom navigation* empat item yang terlihat di *screenshot* yang disediakan.
* Swift Home berisi *storage*, status *root*, *domain chips*, dan bagian *quick action*.
* Swift Cloud memiliki *disconnected state* khusus dengan CTA *connect* yang eksplisit.
* Swift Schedules memiliki *empty state* khusus dengan CTA *enable* yang eksplisit.
* Swift Account memiliki *surface* akun/premium/*settings*/*log*/*help*/*about*.
* Swift Settings dikelompokkan ke dalam kategori *domain*.
* APK berisi *Activity/class* khusus untuk Apps, Folders, Messages, Calls, Wi-Fi, Wallpapers, Schedules, Cloud, Settings, Diagnostics, Import/Export, dll.
* APK berisi *state/data models* eksplisit untuk beberapa *workflow*.
* Dokumentasi publik mengonfirmasi *workflow backup/restore/config/schedule/cloud* yang spesifik.

*Strong inference*
* Setiap *surface primary/domain* didukung oleh batas *application/capability* alih-alih hanya UI statis.
* *Quick actions* ditujukan untuk mengeksekusi *workflow task*.
* Ketersediaan *capability* harus memengaruhi *state* aksi.
* *Workflow batch* membutuhkan penanganan hasil agregat dan per-item.
* Status *last-run schedule* adalah *state* operasional, bukan teks dekoratif.

*Unknown without runtime inspection*
* *timing animation/transition* yang pasti;
* salinan dialog yang pasti untuk setiap kegagalan;
* *loading skeletons* yang pasti;
* semantik *back-stack* layar-ke-layar yang pasti untuk setiap *deep link*;
* perilaku spesifik OEM yang pasti;
* karakteristik performa aktual;
* keberhasilan *runtime* aktual dari setiap *capability backup/restore* pada perangkat tertentu;
* implementasi internal yang pasti dari kode *reference proprietary*.

---

## 15. Verification matrix

| Evidence area|Current audit state|Why|
| ---|---|---|
| APK identity/version|OBSERVED_STATIC|package/version strings + artifact|
| Capability inventory|OBSERVED_STATIC|class/string/model inventory|
| UI framework inventory|OBSERVED_STATIC|AndroidX/Material/custom view references|
| Home visual|OBSERVED_VISUAL|provided screenshot|
| Cloud disconnected visual|OBSERVED_VISUAL|provided screenshot|
| Schedules empty visual|OBSERVED_VISUAL|provided screenshot|
| Account visual|OBSERVED_VISUAL|provided screenshot|
| Settings visual|OBSERVED_VISUAL|provided screenshot|
| v5.1.0 feature release notes|DOCUMENTED_PUBLIC|Google Play/APKMirror|
| App parts requirements|DOCUMENTED_PUBLIC|SwiftApps FAQ|
| Config workflow|DOCUMENTED_PUBLIC|SwiftApps Configs|
| Failure/known limitations|DOCUMENTED_PUBLIC|SwiftApps Issues/FAQ|
| Reference runtime behavior|UNKNOWN|APK not executed in this audit|
| Reference device/OEM matrix|UNKNOWN|no runtime matrix available|
| BaRe FE parity|NOT IMPLEMENTED|current source is placeholder shell|

Penting: Dokumen ini sendiri diverifikasi sebagai *documentation artifact* hanya setelah di-*commit* dan *commit*-nya dapat diinspeksi. Hal ini tidak meningkatkan perilaku *runtime reference* menjadi `VERIFIED`.

---

## 16. Acceptance model for using this reference in BaRe

Fitur FE BaRe dapat berpindah dari *reference discovery* ke implementasi hanya jika rantai berikut ada:
```text
REFERENCE EVIDENCE
       ↓
 PRODUCT INTENT
       ↓
 BARE REQUIREMENT
       ↓
 CAPABILITY CONTRACT
       ↓
 FE STATE MODEL
       ↓
 ACTION / TRANSITION MODEL
       ↓
 IMPLEMENTATION
       ↓
 RUNTIME TEST
       ↓
 VERIFICATION EVIDENCE
```
*Evidence reference* saja bukan merupakan *evidence* penerimaan.  
Untuk setiap layar BaRe yang diimplementasikan, kontrak FE minimum harus dapat menjawab:
* Tujuan layar?
* Kondisi masuk?
* *States* yang tersedia?
* *Empty state*?
* *Loading state*?
* *State permission/privilege*?
* *State error*?
* *State success*?
* *State partial*?
* Aksi?
* Target transisi untuk setiap aksi?
* *Capability dependency*?
* Apa yang terjadi ketika *capability* tidak tersedia?
* *Evidence* apa yang memverifikasi perilaku tersebut?

---

## 17. FE verification record template

Gunakan templat berikut ketika sebuah *surface* FE yang diturunkan dari *reference* mulai diimplementasikan di BaRe:

* **FE Verification ID:**
* **Screen:**
* **Journey:**
* **Reference Evidence:**
* **BaRe Requirement:**
* **Capability Contract:**
* **Initial State:**
* **Preconditions:**
* **Action:**
* **Expected Transition:**
* **Expected UI State:**
* **Capability Dependency:**
* **Failure/Blocked State:**
* **Recovery Action:**
* **Actual Behavior:**
* **Runtime Evidence:**
* **Test Build:**
* **Device/OEM:**
* **Android Version/API:**
* **Execution Mode:**
* **Result:** PASS / FAIL / BLOCKED / UNKNOWN
* **Verification State:** TESTED / VERIFIED
* **Timestamp:**
* **Notes:**

---

## 18. Audit conclusion

Audit Swift saat ini telah ditingkatkan satu level dari *capability inventory* menjadi *interaction/state model*.  
Yang paling penting untuk BaRe bukan menyalin tampilan Swift, melainkan mengambil *evidence* berikut:
```text
SCREEN
  ↓
STATE
  ↓
ACTION
  ↓
TRANSITION
  ↓
COMPONENT
  ↓
CAPABILITY DEPENDENCY
  ↓
VERIFICATION STATE
```
*Reference* memperlihatkan bahwa aplikasi *backup* yang matang bukan sekadar kumpulan tombol `Backup` / `Restore`. UI terus berinteraksi dengan:  
*storage state*; *privilege state*; *repository state*; *account state*; *configuration state*; *task state*; *permission/policy state*; *failure/recovery state*; *verification state*.  
Oleh karena itu, FE BaRe harus dibangun sebagai *stateful capability client*, bukan *static feature menu*.

**Final engineering rule**  
**JANGAN:**  
Swift screen → copy screen → add buttons → claim capability  

**HARUS:**  
Evidence  
→ *state model*  
→ *action contract*  
→ *transition contract*  
→ *capability dependency*  
→ *independent BaRe design*  
→ *implementation*  
→ *runtime test*  
→ *verification*  

*Shell* BaRe saat ini telah menyediakan *surface* untuk *discovery*, namun belum boleh dianggap sebagai *parity* atau implementasi *capability*. Audit ini menjadi *reference baseline* untuk pekerjaan FE berikutnya.

---

## 19. Targeted audit reconciliation — 2026-09-18

Bagian ini mencatat delta hasil *targeted audit* terbaru terhadap isi `reference.md` sebelumnya. Tujuannya bukan membuat dokumen audit kedua, melainkan memastikan *capability* yang baru ditemukan/terkonfirmasi tidak hilang dari *reference baseline*.

### 19.1 Reconciliation result

*Source*: *targeted static audit* terhadap `SwiftBackup-5.1.0-620-decompiled.zip`, difokuskan pada indikator *package/class/resource/navigation/capability* bersinyal tinggi. ZIP tidak dibaca file-per-file.  
*Reference runtime*: tetap `NOT PERFORMED`.  
*Klasifikasi*: seluruh item di bawah tetap `OBSERVED_STATIC` kecuali bila dinyatakan lain.

### 19.2 Capability deltas yang sekarang dipastikan masuk baseline

| Domain|Reconciled capability|Evidence indicator|Status|
| ---|---|---|---|
| Apps|Multiple backup versions/history|MultipleBackupsActivity , multiple-backup models/strings|OBSERVED_STATIC|
| Apps|Protected backups / retention protection|protected-backup strings/state|OBSERVED_STATIC|
| Apps|Backup notes|backup-note metadata/strings|OBSERVED_STATIC|
| Apps|Favorites|FavoriteApp ,  FavoriteAppsRepo|OBSERVED_STATIC|
| Apps|Blacklist|BlacklistActivity , blacklist data/state|OBSERVED_STATIC|
| Apps|Hide/exclude app behavior|blacklist/hide/exclusion state|OBSERVED_STATIC|
| Apps|APK-only backup/restore policy|blacklist/app-part policy indicators|OBSERVED_STATIC|
| Apps|Custom configurations|config list/edit/settings/run classes|OBSERVED_STATIC|
| Apps|Quick actions|AppsQuickActionsActivity , Home quick-action references|OBSERVED_STATIC|
| Apps|App-specific configuration strategy|config data/settings/run flow|OBSERVED_STATIC|
| APK|APK import|ApkImportActivity , import UI state|OBSERVED_STATIC|
| APK|APK/APKS metadata handling|APK/APKS metadata classes|OBSERVED_STATIC|
| APK|Installation fallback flow|root/Shizuku/system-installer indicators|OBSERVED_STATIC|
| Folders|Folder batch operations|FoldersBatchActivity|OBSERVED_STATIC|
| Folders|Manifest/file-entry model|Manifest ,  ManifestInfo ,  FileEntry  indicators|OBSERVED_STATIC|
| Folders|Incremental/base backup model|IncrementalBackup ,  BaseBackup|OBSERVED_STATIC|
| Folders|Chain validation|ChainValidationResult|OBSERVED_STATIC|
| Messages|MMS/RCS-specific handling|message models/strings/flows|OBSERVED_STATIC|
| Wi-Fi|Authentication before sensitive Wi-Fi access|biometric/device-credential indicators|OBSERVED_STATIC|
| Wi-Fi|Enterprise Wi-Fi data handling|enterprise Wi-Fi field indicators|OBSERVED_STATIC|
| Schedules|Label-based schedule selection|ScheduleLabelsSelectActivity|OBSERVED_STATIC|
| Schedules|Folder-based schedule selection|ScheduleFolderSelectActivity|OBSERVED_STATIC|
| Schedules|Detailed last-run error/skipped states|ScheduleLastRunDetails  + blocked/skipped states|OBSERVED_STATIC|
| Cloud|Cloud orphan cleanup|CloudOrphanCleanerActivity|OBSERVED_STATIC|
| Cloud|Provider diagnostic transfer tests|cloud diagnostic state/test indicators|OBSERVED_STATIC|
| Cloud|Multi-provider/server protocol abstraction|cloud client/protocol/model packages|OBSERVED_STATIC|
| Cloud|Additional provider indicators|Filen/TeraBox/Yandex and generic protocol references|OBSERVED_STATIC|
| Security|Compression levels|compression configuration/method indicators|OBSERVED_STATIC|
| Security|Password/encryption strategy|PasswordStrategyActivity ,  UserPasswordActivity|OBSERVED_STATIC|
| Security|Biometric/device authentication|authentication flow indicators|OBSERVED_STATIC|
| Storage|Storage space management|ManageSpaceActivity|OBSERVED_STATIC|
| Diagnostics|App visibility diagnostics|AppVisibilityDiagnosticsActivity|OBSERVED_STATIC|
| Diagnostics|Structured logging|SwiftLogger ,  SLogActivity|OBSERVED_STATIC|
| Search|Dedicated home search|HomeSearchActivity|OBSERVED_STATIC|
| Android integration|Launcher shortcuts|ShortcutsActivity ,  ShortcutPinnedReceiver|OBSERVED_STATIC|
| Background execution|Boot/alarm/task receivers|BootReceiver ,  AlarmReceiver , task service indicators|OBSERVED_STATIC|

### 19.3 Detail *capability* yang harus tetap eksplisit

**Apps**  
*Domain* Apps dikonfirmasi mengandung lebih dari sekadar *Backup/Restore* dasar. Model *reference* harus mempertahankan setidaknya:
```text
APP
 ├── APK
 ├── Split APK
 ├── App Data
 ├── External Data
 ├── Expansion/OBB
 ├── Media
 ├── Cache
 ├── Multiple Backups
 ├── Protected Backups
 ├── Backup Notes
 ├── Favorites
 ├── Labels
 ├── Blacklist
 ├── Custom Configurations
 └── Quick Actions
```
Ini hanyalah observasi *reference*. Kelayakan implementasi BaRe tetap terpisah.

**Folders**  
*Folder backup* adalah subsistem *backup* terstruktur, bukan sekadar *recursive copy* generik. *Evidence* statis mencakup metadata *folder*, model *manifest/file-entry*, model *backup base/incremental*, statistik/hasil *backup*, dan konsep *chain-validation*.  
Oleh karena itu, BaRe harus mempertahankan arah *manifest/incremental/validation* yang sudah ada alih-alih mengurangi *folder backup* menjadi aksi *archive* sederhana.

**Cloud**  
*Cloud* harus dimodelkan sebagai infrastruktur *provider* ditambah *workflow repository/sync*. Audit *targeted* terbaru juga mengonfirmasi *dedicated cloud diagnostics* dan *workflow orphan-cleanup*. Hal ini tidak boleh diringkas menjadi satu *state* `CloudConnected = true/false`.

**Security**  
*Compression* dan *encryption* adalah masalah yang terpisah. *Compression* memiliki beberapa indikator konfigurasi/level; *encryption* memiliki *state password/key/authentication*. BaRe harus menjaga batas *archive/compression* dan *crypto* tetap terpisah.

**Diagnostics**  
*Diagnostics* bukan hanya halaman *failure*. *Evidence* statis mendukung *dedicated cloud diagnostics*, *app-visibility diagnostics*, *logging*, *transfer checks*, dan *state* hasil yang dapat ditindaklanjuti.

### 19.4 Rekonsiliasi *Premium / entitlement*

Audit *targeted* mengonfirmasi *surface Premium/billing* yang berdedikasi dan pengelompokan *capability reference* seputar:  
*cloud backups*; *scheduled backups*; *backup history/protection*; *labels*; *custom configurations*.  
*Evidence* mencakup `PremiumActivity`, infrastruktur terkait *billing*, dan *string* fitur Premium.  
Interpretasi penting untuk BaRe: *Premium gating* di dalam *reference* adalah perilaku *product/entitlement* yang teramati. Keputusan produk BaRe untuk membuat *capability* yang dituju menjadi gratis tidak boleh diimplementasikan dengan cara melakukan *bypass* atau memodifikasi lisensi Swift. BaRe tetap sebagai aplikasi yang independen.  
Status: `OBSERVED_STATIC` untuk indikator *entitlement reference*; perilaku *entitlement runtime*: `UNKNOWN`.

### 19.5 Rekonsiliasi navigasi

Audit *targeted* memperkuat model navigasi yang sudah ada:  
*Primary destinations reference* Swift: Home ↔ Cloud sync ↔ Schedules ↔ Account.  
Apps/Folders/Messages/Calls/Wi-Fi/Wallpapers dan *domain* lainnya adalah *surface deep/secondary* yang dapat diakses dari Home atau alur terkait.  
Untuk BaRe, empat *primary tabs* yang dipilih sebelumnya tetap menjadi keputusan produk BaRe, bukan klaim navigasi Swift 1:1:  
BaRe: Home ↔ Apps ↔ Schedules ↔ Account.  
Distingsi ini sekarang dipertahankan secara eksplisit di dalam dokumen *reference* agar pekerjaan implementasi di masa depan tidak secara tidak sengaja memperlakukan tab Cloud Sync Swift sebagai kebutuhan navigasi BaRe yang belum terselesaikan.

### 19.6 Rekonsiliasi *onboarding*

Audit *targeted* mengonfirmasi infrastruktur *first-run reference* seputar:  
presentasi *intro/benefit*; *state account/sign-in*; *setup storage*; *state privilege/permission*; *recovery setup failure*; *state first-run restore*.  
Hal ini mendukung arah *onboarding* BaRe:
```text
WELCOME
  ↓
ACCOUNT / LOCAL SETUP
  ↓
ACCESS / CAPABILITY SETUP
  ↓
BARE MAIN SHELL
```
Pembagian pasti `Root` vs `Non-root` untuk BaRe adalah keputusan desain BaRe dan tidak boleh direpresentasikan sebagai layar Swift yang teramati kecuali dibuktikan secara terpisah.

### 19.7 Rekonsiliasi *state-machine*

Audit terbaru memperkuat bahwa *workflow reference* membutuhkan *state* eksplisit di luar `available/unavailable`:  
`AVAILABLE`, `UNAVAILABLE`, `LIMITED`, `BLOCKED`, `PERMISSION_REQUIRED`, `PRIVILEGE_REQUIRED`, `USER_ACTION_REQUIRED`, `LOADING`, `READY`, `RUNNING`, `PAUSED/BLOCKED`, `SUCCESS`, `NO_CHANGE`, `PARTIAL`, `FAILED`, `SKIPPED`, `CANCELLED`.

Untuk penyelesaian *backup/restore*:
```text
EXECUTED
→ RESULT_RECORDED
→ POST-CONDITION CHECK
→ VERIFIED
```
Audit *reference* itu sendiri masih belum menyediakan verifikasi *runtime*. Oleh karena itu, *state-state* ini merupakan *evidence reference/state-model*, bukan bukti bahwa setiap transisi berhasil pada perangkat Android saat ini.

### 19.8 Rekonsiliasi terhadap *capability matrix* yang ada

Tidak ada *capability* yang dihapus karena audit ini. Deltanya bersifat aditif/memperhalus.  
Area-area berikut secara spesifik diperkuat:  
Apps → *backup/restore/app parts/management/configuration*;  
Folders → *incremental + manifest + validation*;  
Messages → *SMS/MMS/RCS*;  
Call Logs → *dedicated backup/restore*;  
Wi-Fi → *constrained privilege-aware restore*;  
Wallpapers → *backup/manage/apply*;  
Schedules → *domain selectors + prerequisite/last-run states*;  
Cloud → *provider abstraction + diagnostics + orphan management*;  
Storage → *location + capacity + management*;  
Security → *encryption + compression + authentication*;  
Diagnostics → *structured operational troubleshooting*;  
Import/Export → *APK/APKS and settings/cloud setup flows*.  
Tidak ada *capability runtime* yang dipromosikan dari `OBSERVED_STATIC` ke `RUNTIME_VERIFIED` oleh rekonsiliasi ini.

### 19.9 Dampak pada *requirements* BaRe

Rekonsiliasi mengubah *surface requirement* yang diturunkan dari *reference*, bukan status implementasi.  
Sebelum mengimplementasikan area *capability* yang baru direkonsiliasi, rantai berikutnya tetap:
```text
REFERENCE OBSERVATION
      ↓
BARE PRODUCT REQUIREMENT
      ↓
FE STATE / TRANSITION CONTRACT
      ↓
CAPABILITY CONTRACT
      ↓
FE IMPLEMENTATION
      ↓
RUNTIME TEST
      ↓
VERIFICATION EVIDENCE
```
Secara khusus, BaRe tidak boleh:  
menambahkan *class proprietary* khusus Swift;  
mereproduksi implementasi Swift;  
melakukan *bypass* lisensi Swift;  
mengklaim *capability root* hanya karena *reference* berisi *path root*;  
mengklaim *parity runtime* dari *evidence* statis;  
mengklaim keberhasilan *backup/restore* tanpa verifikasi pasca-operasi.

### 19.10 Status rekonsiliasi

```text
TARGETED AUDIT
        ↓
        PASS
        ↓
REFERENCE RECONCILIATION
        ↓
        RECORDED IN THIS DOCUMENT
        ↓
REFERENCE RUNTIME VERIFICATION
        ↓
        NOT PERFORMED
```
*Baseline reference* sekarang secara eksplisit telah direkonsiliasi dengan audit *targeted* terbaru. Audit statis lebih lanjut seharusnya hanya menargetkan item `UNKNOWN` yang belum terselesaikan atau pertanyaan baru yang material; audit ini tidak boleh mengulang pemindaian *full-tree* yang sama.

---

## 20. Source register

*Project / local evidence*
* `5.1.0 (620).apk` — APK *reference* yang diaudit dalam dokumen ini.
* `SwiftBackup-5.1.0-620-decompiled.zip` — *artifact reference* yang di-*decompile* digunakan untuk rekonsiliasi statis *targeted*.
* *Screenshot* Swift Backup yang disediakan — *visual evidence*.
* `14Doc_tapikayaknyalebihdari14.md` — audit *static capability/feasibility* sebelumnya dan *baseline requirement*.
* `FULL_LIFECYCLE_SYSTEM_ENGINEER_MASTER_v2.md` — aturan *governance/verification*.
* BaRe `v1.0/rebaseline` — *shell* FE saat ini digunakan untuk perbandingan celah.

*Public evidence*
* SwiftApps: https://www.swiftapps.org/* SwiftApps FAQ: https://www.swiftapps.org/faq
* SwiftApps Configs: https://www.swiftapps.org/configs
* SwiftApps Issues: https://www.swiftapps.org/issues
* Google Play: https://play.google.com/store/apps/details?id=org.swiftapps.swiftbackup
* APKMirror Swift Backup 5.1.0: https://www.apkmirror.com/apk/swiftapps-org/swift-backup/swift-backup-5-1-0-release/

*Public sources* hanya digunakan untuk mengorelasikan *workflow* yang terlihat di produk dan batasan *capability* yang dipublikasikan. Mereka tidak menggantikan *evidence* statis/*runtime*.

---

## 21. Current audit status

* **Audit:** RECONCILED FOR CURRENT EVIDENCE SCOPE
* **Static depth:** HIGH + TARGETED RECONCILIATION
* **Visual depth:** MEDIUM/HIGH for supplied screens
* **Public documentation depth:** HIGH for documented workflows
* **Runtime reference verification:** NOT STARTED
* **BaRe FE implementation:** CURRENT SHELL IMPLEMENTED; capability backend/runtime remains UNVERIFIED
* **Reference reconciliation:** RECORDED IN SECTION 19
* **Next use:** turunkan kontrak/model *state* FE BaRe dari *reference* yang telah direkonsiliasi ini, kemudian implementasikan hanya setelah kontrak *capability* dan jalur verifikasi didefinisikan.


---

## 22. Targeted audit — Swift Backup local identity / account continuity (2026-09-19)

Bagian ini mencatat hasil targeted static audit terhadap `SwiftBackup-5.1.0-620-decompiled.zip` yang difokuskan pada pertanyaan baru: bagaimana reference mempertahankan namespace/account lokal dan apa yang dapat dijadikan acuan desain continuity BaRe.

**Scope boundary:** bagian ini masih berada pada domain **Account / Identity / continuity**, bukan Apps restore implementation. Reference runtime tetap `NOT PERFORMED`.

### 22.1 Temuan identifier pada UI vs storage

`Swift Backup` menampilkan nilai seperti:

```text
DEVICE
24069PC21G
```

Pada perangkat uji, `24069PC21G` juga muncul pada property:

```text
ro.product.vendor_dlkm.model = 24069PC21G
```

Karena nilainya berbentuk model/product identifier, nilai tersebut **tidak boleh diperlakukan sebagai unique Device ID**. Status: `OBSERVED` untuk property/model correlation; status sebagai Swift Device ID internal: `UNKNOWN`.

Folder account yang diamati:

```text
SwiftBackup/accounts/79b59739d9f9eb13/
```

Nilai `79b59739d9f9eb13` tidak sama dengan `Settings.Secure.ANDROID_ID` pada perangkat uji. Status: `OBSERVED`.

### 22.2 Temuan mekanisme local/account namespace

Static decompiled evidence menunjukkan pola berikut pada reference:

```text
LOCAL / anonymous user identity
        ↓
local UID
        ↓
MD5(local UID)
        ↓
ambil 1/2 panjang hash
        ↓
16 karakter hex
        ↓
account storage namespace
```

Dengan demikian bentuk:

```text
79b59739d9f9eb13
```

konsisten dengan **16-character hex derived namespace**.

Pada jalur local/anonymous, evidence statis juga menunjukkan generator identity/UID yang terkait dengan **application signing certificate identity** melalui mekanisme hashing/transformasi internal reference. Ini berarti local identity reference bersifat **deterministik terhadap application identity**, bukan evidence bahwa reference mengambil IMEI/serial/MAC sebagai canonical Device ID.

**Klasifikasi:** `OBSERVED_STATIC` untuk struktur derivasi; `INFERRED` untuk interpretasi bahwa tujuan utamanya adalah menyediakan deterministic local namespace.

### 22.3 Hal yang belum boleh disimpulkan

Audit ini **tidak** membuktikan bahwa:

```text
format / factory reset / ROM replacement
        ↓
selalu mempertahankan local identity reference
```

Audit juga tidak membuktikan bahwa `79b59739d9f9eb13` adalah:

* hardware identifier;
* Android `ANDROID_ID`;
* canonical account ID;
* unique physical-device ID.

Perilaku runtime reference untuk skenario tersebut tetap `UNKNOWN / UNVERIFIED`.

### 22.4 Reference-derived engineering implications untuk BaRe

Bagian ini adalah **reference-derived implication**, bukan `DECISION` BaRe.

Pelajaran yang relevan:

```text
Canonical BaRe Identity
        ↓
deterministic / derived storage namespace
        ↓
backup repository
```

Artinya nama folder/namespace storage **tidak harus menjadi canonical identity**. Namespace dapat diturunkan dari canonical identity sehingga:

* tidak mengekspos ID mentah;
* memiliki format stabil;
* dapat direkonstruksi ketika canonical identity berhasil dipulihkan;
* tidak bergantung langsung pada nama/model perangkat.

Model ID BaRe tetap perlu dipisahkan menjadi:

```text
BaRe ID          = logical Account identity
Device Identity  = device continuity/security context
Installation ID  = satu instalasi aplikasi
Account ID       = backend binding (jika online)
Recovery Anchor  = bukti continuity/recovery
```

Reference menunjukkan nilai tambah dari **deterministic local identity/namespace**, tetapi tidak menjadi alasan untuk menjadikan signing certificate, model device, IMEI, serial, MAC, atau hardware fingerprint sebagai canonical BaRe ID.

### 22.5 Continuity matrix untuk penelitian BaRe

Target penelitian account/identity:

```text
Fresh install
  → create/recover local identity

Restart
  → same BaRe ID

App update
  → same BaRe ID

Uninstall / reinstall
  → recover same local account namespace when continuity evidence exists

Clear app data
  → recovery path required

Factory reset
  → recovery path required

Format / ROM replacement
  → recovery/continuity evidence required

New device
  → account/recovery based identity resolution
```

**Key principle:**

> **Persistence adalah hasil dari continuity evidence, bukan asumsi bahwa satu hardware identifier selalu tersedia atau stabil.**

### 22.6 Relevance terhadap model LOCAL = ACCOUNT

Reference audit ini mendukung eksplorasi model BaRe:

```text
BARE ACCOUNT
     │
     ├── mode = LOCAL
     │      └── authoritative state: local
     │
     └── mode = ONLINE
            └── authoritative state: remote/server
```

Perubahan `LOCAL → ONLINE` idealnya menjadi **account binding/synchronization**, bukan pembuatan identity baru. Ini masih `PROPOSAL` dan belum menjadi keputusan implementasi.

### 22.7 Verification status

```text
Swift static identity mechanism
        ↓
OBSERVED_STATIC
        ↓
16-char derived account namespace
        ↓
OBSERVED_STATIC / INFERRED
        ↓
Uninstall → reinstall continuity
        ↓
NOT RUNTIME VERIFIED
        ↓
Format / ROM / factory-reset continuity
        ↓
UNKNOWN
```

Audit lebih lanjut tidak perlu mengulang full-tree decompilation. Target berikutnya cukup diarahkan ke item `UNKNOWN` yang material, terutama lifecycle persistence dan recovery behavior.

---
## 23. Targeted runtime-data audit — Swift Backup local account / installation / continuity evidence (2026-09-19)

Bagian ini mencatat audit terhadap data runtime/app-private snapshot data_org.swiftapps.swiftbackup.zip yang disediakan untuk melengkapi audit static APK pada Section 22. Snapshot ini tidak berarti reference APK dieksekusi oleh auditor; status runtime di sini berarti artifact data yang dihasilkan/tersimpan pada instalasi reference yang diamati, bukan independent reproduction oleh auditor.

### 23.1 Scope dan batasan

Artifact yang diperiksa mencakup:
* databases/swiftbackup-db;
* shared_prefs/*;
* no_backup/PersistedInstallation.*;
* files/datastore/*;
* Crashlytics session/device metadata;
* diagnostic runtime ledger.

Payload credential/token/auth yang ditemukan pada artifact tidak direkam ulang ke dokumen reference. Audit hanya mencatat struktur, identifier class, dan hubungan antar-ID yang relevan terhadap continuity.

### 23.2 Runtime snapshot menunjukkan banyak identifier dengan lifecycle berbeda

Snapshot yang sama memuat beberapa identifier yang jelas berbeda:

| Identifier / source | Observed role | Status |
| --- | --- | --- |
| firebase.installation.id | Firebase Installation ID | OBSERVED_DATA |
| crashlytics.installation.id | Crashlytics installation/session context | OBSERVED_DATA |
| existing_instance_identifier | Crashlytics existing instance identifier | OBSERVED_DATA |
| device_id_guid pada Microsoft telemetry preferences | telemetry/device-context identifier | OBSERVED_DATA |
| PersistedInstallation.* / Fid | Firebase Installation persistence record | OBSERVED_DATA |
| Crashlytics install_uuid | app installation/session diagnostic identifier | OBSERVED_DATA |
| build_model | device model (24069PC21G) | OBSERVED_DATA |
| Swift account namespace 79b59739d9f9eb13 | storage namespace observed sebelumnya | OBSERVED |
| Firebase FIREBASE_USER | persisted auth/account state | present but encrypted / OBSERVED_DATA |

Keberadaan banyak ID pada satu instalasi merupakan evidence bahwa installation identity, telemetry identity, device context, authentication identity, dan storage/account namespace tidak dapat diperlakukan sebagai satu ID tunggal berdasarkan artifact ini.

### 23.3 swiftbackup-db bukan sumber canonical identity yang terlihat

SQLite databases/swiftbackup-db yang diperiksa memiliki tabel utama:
```
SMessage
app_cached_data
android_metadata
room_master_table
sqlite_sequence
```

app_cached_data menyimpan cache metadata aplikasi:
```
pkgName
name
isInstalled
isEnabled
isLaunchable
locale
```

Tidak ditemukan pada schema yang diperiksa field yang secara eksplisit menunjukkan canonical Swift account ID atau canonical physical-device ID.

Status: OBSERVED_DATA untuk schema; kesimpulan bahwa database tersebut bukan canonical identity store adalah INFERRED, karena database/preferences/auth stores lain juga hadir.

### 23.4 Firebase persistence memberi evidence account/install separation

Snapshot memiliki:
`shared_prefs/com.google.firebase.auth.api.Store.*`
dan:
`no_backup/PersistedInstallation.*`
serta:
`files/datastore/firebaseSessions/`

Ini menunjukkan setidaknya tiga concern berbeda:
```
Firebase Auth persistence
        +
Firebase Installation persistence
        +
Firebase session state
```

Payload FIREBASE_USER dan token/auth material tidak digunakan untuk mengekstrak atau mencatat credential. Status canonical relationship terhadap Swift local backup account: UNKNOWN.

### 23.5 Firebase Installation ID bukan otomatis Swift Account ID

Artifact menunjukkan Firebase Installation ID hadir sebagai identifier tersendiri. Pada saat yang sama Swift mempunyai local/anonymous UID → derived storage namespace dari static audit Section 22.

Model yang konsisten dengan evidence:
```
Swift Local/Anonymous Account
        │
        └── local UID
              │
              └── derived backup namespace

Firebase Installation
        │
        └── FID / persisted installation state

Firebase Authentication
        │
        └── persisted user/auth state

Crash/Telemetry
        │
        ├── Crashlytics installation identifiers
        └── telemetry device GUID
```

Tidak ada evidence yang cukup untuk menyamakan seluruh node tersebut.

Status: INFERRED FROM COMBINED STATIC + DATA EVIDENCE.

### 23.6 Device model tetap bukan Device Identity

Crashlytics native/device.json memuat manufacturer = Xiaomi, product = peridot_global, model = 24069PC21G, is_emulator = false.

Nilai model tersebut konsisten dengan observasi sebelumnya terhadap ro.product.vendor_dlkm.model.

Jadi 24069PC21G harus tetap diperlakukan sebagai device/model context, bukan canonical unique Device ID.

Status: OBSERVED_DATA.

### 23.7 Runtime ledger menunjukkan operational state terpisah dari identity

Snapshot juga memiliki files/diagnostics/data_sync_fgs_runtime_ledger.json dengan satu entry TaskService berstatus COMPLETED.

Ini merupakan evidence bahwa operational task state disimpan terpisah dari identity/auth state. Artifact tersebut tidak membuktikan bahwa task result selalu berarti backup integrity/restore correctness; post-condition verification tetap merupakan concern terpisah.

Status: OBSERVED_DATA.

### 23.8 Security implication untuk artifact audit

Snapshot berisi material credential/authentication-sensitive, termasuk encrypted Firebase auth state dan installation/auth token material pada persistence file.

Untuk reference documentation:
* jangan memasukkan token mentah;
* jangan menjadikan credential material sebagai identity evidence;
* jangan menganggap kemampuan membaca artifact app-private sebagai kemampuan recovery setelah uninstall/clear-data;
* jangan menganggap keberadaan no_backup sebagai bukti bahwa data tersebut pasti survive uninstall/reinstall.

Status lifecycle continuity: UNKNOWN / UNVERIFIED.

### 23.9 Dampak terhadap model identity BaRe

Evidence sekarang mendukung model pemisahan yang lebih tegas:
```
                         BARE ACCOUNT
                              │
             ┌────────────────┴────────────────┐
             │                                 │
          LOCAL                             ONLINE
             │                                 │
      authoritative                    authoritative
         local state                    server state
             │                                 │
      ┌──────┴────────┐                 Account Binding
      │               │
Installation ID   Device Context
      │               │
      └──────┬────────┘
             │
      Recovery Anchor
             │
      Storage Namespace
```

Interpretasi:
* BaRe Account ID = logical identity;
* Installation ID = lifecycle identity satu instalasi;
* Device Context / Device Identity = context/security/continuity evidence, bukan otomatis Account ID;
* Recovery Anchor = material/proof yang memungkinkan logical identity dipulihkan;
* Storage Namespace = derived identifier untuk repository layout;
* Online Account Binding = hubungan logical account dengan backend identity/provider.

Ini tetap REFERENCE-DERIVED PROPOSAL, bukan DECISION BaRe.

### 23.10 Continuity question yang masih belum terjawab

Data snapshot belum membuktikan:
```
uninstall
    ↓
reinstall
    ↓
same Swift local UID?
same storage namespace?
same backup visibility?
```

dan juga belum membuktikan:
```
clear data
factory resetROM replacement
new device
```

Untuk menjawabnya dibutuhkan paired lifecycle evidence (before/after) atau eksperimen runtime yang terkontrol. Satu snapshot hanya membuktikan state pada satu titik waktu.

### 23.11 Audit conclusion

Dengan menggabungkan Section 22 + runtime-data snapshot:
```
STATIC APK
    ↓
local/anonymous UID mechanism
    ↓
derived 16-char storage namespace

RUNTIME DATA
    ↓
Firebase installation identity
    ↓
Firebase auth persistence
    ↓
Crash/telemetry installation/device identifiers
    ↓
operational task state
```

Kesimpulan engineering reference:

> Swift Backup tidak memberikan evidence bahwa satu universal Device ID menjadi sumber tunggal seluruh identity/continuity system.

Yang terlihat justru adalah beberapa identity domains dengan lifecycle berbeda, sementara local backup namespace memiliki mekanisme derivasi tersendiri.

Implikasi untuk BaRe: penelitian berikutnya sebaiknya fokus pada continuity/recovery protocol—bukti apa yang memungkinkan BaRe Account ID dipulihkan—bukan mencari satu hardware identifier yang dipaksa menjadi canonical identity.

### 23.12 Verification status
```
Runtime data artifact inspected
        ↓
OBSERVED_DATA
        ↓
Multiple identity domains confirmed
        ↓
OBSERVED_DATA / INFERRED
        ↓
Swift uninstall/reinstall continuity
        ↓
NOT VERIFIED BY THIS SNAPSHOT
        ↓
Factory reset / ROM / device migration
        ↓
UNKNOWN
```

Audit selanjutnya tidak perlu mengulang full-tree decompilation. Fokus evidence yang paling bernilai adalah paired lifecycle test terhadap Swift atau artifact before/after yang menunjukkan perubahan identity, namespace, dan backup visibility.

---

## 2026-09-19 — Swift Backup App-Backup Encryption Artifact Audit

### Scope

Audit tambahan terhadap artifact **Swift Backup app backup** untuk package `com.bare`, terpisah dari audit Swift Backup Account/identity sebelumnya. Artifact yang dianalisis:

- `backup_swift_com.bare.zip`
- `SwiftBackup-5.1.0-620-decompiled.zip`
- `data_org.swiftapps.swiftbackup.zip`

SHA-256 artifact utama:

- `backup_swift_com.bare.zip`: `b8b6f08aa7d7acfff0cca23aa514ee05d1039b761d4f30c1e926a573ecb946f2`
- `SwiftBackup-5.1.0-620-decompiled.zip`: `148e9b4ef265ead284cb4af060c89f44898dcb81747702ef6bef50c863f92948`

### OBSERVED_STATIC — Backup Artifact

Artifact `backup_swift_com.bare.zip` berisi:

```text
com.bare/
└── 20260919-184357-CO/
    ├── com.bare.app
    ├── com.bare.dat
    └── com.bare.xml
```

`com.bare.dat` menggunakan container dengan magic/header `SBA1`, version **2**, header size **144 bytes**, compression method **1**, dan encryption method **4** yang pada source dipetakan sebagai **AEGIS-256**.

Header artifact yang dibaca langsung menunjukkan:

- KDF method id: **1**
- KDF iterations: **3**
- key-check length: **16 bytes**
- salt length: **16 bytes**
- nonce-seed length: **16 bytes**
- MAC length: **0** untuk mode AEGIS ini
- chunk size: **1 MiB**
- memoryKiB: **16384**
- parallelism: **1**
- root/index authentication material tersedia pada header v2.

Nilai salt, nonce seed, key-check, dan material autentikasi **tidak dicatat sebagai plaintext secret di dokumentasi ini**.

### OBSERVED_STATIC — Crypto Pipeline

Source decompile menunjukkan:

- password archive tidak dipakai langsung sebagai encryption key;
- password dikonversi menjadi bytes;
- KDF yang digunakan untuk SBA adalah **Argon2id**;
- Argon2id menerima password, salt, iterations, memoryKiB, parallelism, dan output length;
- untuk AEGIS-256 output key yang digunakan adalah **32 bytes**;
- setelah key diturunkan, Swift menghitung key-check dengan domain string khusus untuk metode AEGIS-256;
- key-check dibandingkan dengan material yang tersimpan di archive;
- jika tidak cocok, reader menghasilkan error **`Invalid SBA archive key`**;
- untuk archive v2 terdapat authentication terhadap index sehingga perubahan terhadap index dapat dideteksi.

Source juga menunjukkan konstanta domain key-check:

```text
SBA1-AEGIS256-key-check-v1
SBA1-AEGIS128X2-key-check-v1
SBA2-index-mac-key-v1
SBA2-index-metadata-mac-v1
```

### OBSERVED_STATIC — Standard Password Strategy

Source `defpackage.yx5` menunjukkan dua password strategy:

- `STANDARD_PASSWORD`
- `USER_PASSWORD`

Untuk `STANDARD_PASSWORD`, source menunjukkan password material dibentuk melalui:

```text
Firebase user UID
        +
package name dengan "."
dihilangkan
        ↓
transform/hash helper
        ↓
char[] password material
        ↓
Argon2id
        ↓
archive encryption key
```

Untuk `USER_PASSWORD`, source memungkinkan password yang disimpan sebagai user password menjadi input tambahan pada material password strategy.

**Penting:** temuan ini adalah static decompile evidence. Ini tidak berarti setiap backup artifact selalu memakai strategy yang sama; strategy dapat dikonfigurasi.

### VERIFIED STATIC CONCLUSION

Yang dapat dinyatakan dari source + artifact:

1. Swift Backup app-backup artifact tidak menyimpan archive encryption key dalam plaintext.
2. Archive menggunakan KDF sebelum memperoleh encryption key.
3. KDF untuk SBA v2 adalah Argon2id dengan parameter yang disimpan di archive header.
4. AEGIS-256 digunakan sebagai encryption method pada artifact `com.bare` yang dianalisis.
5. Archive mempunyai key-check sehingga key/password yang salah dapat ditolak sebelum payload dianggap valid.
6. Archive v2 juga mempunyai integrity/authentication material untuk index.
7. Pada standard password strategy, password material diturunkan secara deterministic dari internal identity context (termasuk Firebase UID dan package context pada source yang diaudit), bukan sekadar menyimpan password plaintext di archive.

### UNKNOWN / LIMITATION

- Audit ini tidak menetapkan bahwa mekanisme Swift adalah satu-satunya cara Swift melakukan seluruh jenis backup.
- Audit ini tidak membuktikan bahwa password strategy standard selalu aktif pada semua konfigurasi.
- Audit ini tidak menjadikan hasil decompile sebagai source implementation BaRe.
- Asal-usul Firebase UID, lifecycle UID, dan seluruh lifecycle password material Swift berada di luar scope audit ini.
- Tidak ada password/secret Swift yang diekstrak atau dicatat sebagai nilai plaintext dalam reference ini.

### Boundary clarification — backup encryption vs recovery

Audit artifact pada bagian ini **khusus membahas encryption untuk app-backup artifact Swift Backup**. Evidence tersebut tidak membuktikan bahwa mekanisme yang sama digunakan untuk account/identity recovery.

#### Reference: backup encryption

Yang didukung langsung oleh evidence:

```text
Backup artifact
      │
      ├── password strategy
      │     ├── STANDARD_PASSWORD
      │     └── USER_PASSWORD
      │
      ├── password material
      │     ↓
      │   Argon2id
      │     ↓
      │   archive encryption key
      │
      └── encrypted backup archive
```

- STANDARD_PASSWORD dan USER_PASSWORD adalah **reference evidence untuk backup encryption**.
- Password archive tidak digunakan langsung sebagai encryption key.
- Password material diproses melalui KDF sebelum menjadi encryption key.
- Artifact com.bare.dat yang diaudit menggunakan AEGIS-256.
- Old-password behavior/password lifecycle perlu dibaca sebagai bagian dari backup encryption compatibility, bukan account recovery.
- Audit ini tetap OBSERVED_STATIC; reference APK tidak dijalankan untuk runtime verification.

#### BaRe: recovery package

BaRe saat ini mempunyai **recovery package sendiri** dengan lifecycle yang berbeda. Recovery package tersebut bukan implementation of the Swift Backup encryption strategy di atas.

BaRe recovery saat ini digunakan untuk identity/bootstrap continuity dan diimplementasikan melalui RecoveryPackageCodec / RecoveryArtifactRepository. Status implementation dan verification BaRe dicatat di docs/worklog.md serta source repository, bukan sebagai reference evidence di dokumen ini.

#### Explicit boundary

```text
SWIFT REFERENCE
    Backup Encryption
          │
          ├── Standard password strategy
          ├── User password strategy
          └── encrypted backup artifact


BARE CURRENT IMPLEMENTATION
    Recovery / Identity Continuity
          │
          ├── recovery payload
          ├── recovery artifact
          └── identity bootstrap / restore
```

**Important:** jangan menggunakan section reference ini sebagai bukti bahwa BaRe recovery harus mengikuti Swift Backup app-backup encryption. Sebaliknya, temuan reference ini menjadi evidence untuk memahami **backup encryption strategy** yang nantinya harus direconcile terhadap BaRe backup engine.

**Status:** REFERENCE EVIDENCE / BOUNDARY CLARIFIED.

## 24 — Apps domain capability reconciliation: Swift Backup reference vs BaRe current state

### Scope

Audit khusus **domain Apps** berdasarkan:
- docs/reference.md existing audit;
- decompiled artifact **Swift Backup 5.1.0 (620)** yang tersedia pada project;
- visual reference screenshots yang diberikan pengguna;
- source aktual BaRe branch v1.0/rebaseline.

Audit ini hanya membandingkan **capability/reference evidence**. Keberadaan class, string, layout, atau mockup tidak dianggap sebagai runtime proof.

### 24.1 Swift Backup Apps — capability evidence

Static/decompiled evidence menunjukkan bahwa Apps bukan hanya inventory installed packages. Surface Apps memiliki setidaknya concern berikut:

| Capability / workflow | Reference evidence | Status reference |
|---|---|---|
| Local apps inventory | AppListActivity, local-app menu | OBSERVED_STATIC |
| Cloud-synced apps inventory | menu_apps_switch.xml, cloud_synced_apps | OBSERVED_STATIC |
| Search apps | menu_apps.xml, search_hint_apps | OBSERVED_STATIC |
| Sort apps | filter bottom sheet, sort, ascending, descending, install/update/backup metadata | OBSERVED_STATIC |
| App-type filtering | app_type, user/system filters | OBSERVED_STATIC |
| System-app subfilters | system_apps, launchable/updated/labelled-or-favorites indicators | OBSERVED_STATIC |
| Favorites | FavoriteApp, FavoriteAppsRepo, favorites/not-favorites filters | OBSERVED_STATIC |
| Labels | LabelsActivity, LabelEditActivity, label data/model | OBSERVED_STATIC |
| On-device backup status filter | backed-up / not-backed-up state | OBSERVED_STATIC |
| Cloud-sync status filter | synced / not-synced state | OBSERVED_STATIC |
| Install-status filter | installed / not-installed | OBSERVED_STATIC |
| Enabled-status filter | enabled / disabled | OBSERVED_STATIC |
| Multiple-backup filter | apps_with_multiple_backpus | OBSERVED_STATIC |
| Protected-backup filter | apps_with_protected_backpus | OBSERVED_STATIC |
| Notes filter | backups_with_notes | OBSERVED_STATIC |
| Older/newer APK relation | installed_apps_with_older_backups, installed_apps_with_newer_backups | OBSERVED_STATIC |
| Google Play install-source filter | installed_from_google_play, not_installed_from_google_play | OBSERVED_STATIC |
| Per-app detail | AppInfoActivity, app detail layouts/models | OBSERVED_STATIC |
| Device/cloud backup state | DetailModels$DeviceBackupStates, DetailModels$CloudBackupStates | OBSERVED_STATIC |
| App backup parts | APK, split APKs, app data, external data, expansion/OBB, media, cache, shared libraries indicators | OBSERVED_STATIC |
| App backup | backup task/manager/helper classes and UI | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| App restore | restore task/manager/helper classes and UI | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| Delete local/device backups | backup delete strings/actions | OBSERVED_STATIC |
| Multiple-backup strategy | single/dated/conditional strategy resources/settings | OBSERVED_STATIC |
| Protected backup | protected backup resources/settings | OBSERVED_STATIC |
| Backup data size limits | AppBackupLimitsActivity and local/cloud limit fields | OBSERVED_STATIC |
| Encryption of app data backups | encrypt_app_data and security/config resources | OBSERVED_STATIC |
| Backup cache option | backup_cache and warning/summary | OBSERVED_STATIC |
| Batch operations | AppsBatchActivity, batch menu/layout | OBSERVED_STATIC |
| Batch search/filter/select-all | batch menu contains search, filter, select-all | OBSERVED_STATIC |
| Batch app backup settings | batch menu entry to app backup settings | OBSERVED_STATIC |
| Labels/favorites/blacklist management | dedicated activities/data/repositories | OBSERVED_STATIC |
| Blacklist behavior | BlacklistActivity, blacklist mode, hide or APK-only behavior | OBSERVED_STATIC |
| Custom app configurations | ConfigListActivity, ConfigEditActivity, ConfigSettingsActivity | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| Run configuration now | AppsConfigRunActivity | OBSERVED_STATIC |
| Schedule configuration | reference Configs can be attached to schedules | DOCUMENTED_PUBLIC |
| Quick actions | AppsQuickActionsActivity and quick-action layouts | OBSERVED_STATIC |
| App swipe actions | AppSwipeActionsActivity, swipe-action persistence | OBSERVED_STATIC |
| App visibility diagnostics | AppVisibilityDiagnosticsActivity; raw PackageManager package count/search/share | OBSERVED_STATIC |
| APK/APKS import/install | APK import layouts/strings; installer flow incl. root/Shizuku/system installer | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| Restore runtime/special data | special-data restore details include permissions/settings/access-related items | OBSERVED_STATIC |
| App SSAID restore option | restore_app_ssaids resources and reboot note | OBSERVED_STATIC |
| Missing-app restore | restore_missing_apps | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| Newer-version restore | restore_newer_versions | OBSERVED_STATIC + DOCUMENTED_PUBLIC |

### 24.1A Apps capability rebaseline — canonical working inventory

Audit rebaseline terhadap seluruh evidence Apps yang sudah tersedia menghasilkan **54 capability/workflow items** pada working inventory.

Angka ini **bukan target scope v1.0**, bukan ranking, dan bukan kewajiban bahwa seluruh item harus diimplementasikan sekarang. Angka ini adalah inventory discovery yang dipakai agar tidak ada capability reference yang hilang ketika mockup → implementation dilakukan.

Perubahan utama dari inventory sebelumnya:

- inventory sebelumnya memiliki **53 capability/workflow items**;
- review lanjutan terhadap visual reference App Detail menemukan satu action/workflow yang belum berdiri eksplisit sebagai capability row: **Clear app data**;
- hasil rebaseline menjadi **54 items**;
- **App Workspace / App Detail** tetap menjadi **APP-01** karena berfungsi sebagai workspace foundation untuk capability per-app lain;
- capability yang satu implementation slice-nya sama tetap boleh dikerjakan beririsan; ID tidak berarti satu ID = satu task;
- mockup yang sudah ada dipertahankan sebagai **FE contract/evidence**, bukan dibuat ulang.

| ID | Capability / workflow | Reference evidence | Status reference |
| --- | --- | --- | --- |
| APP-01 | App Workspace / App Detail foundation | AppInfoActivity, app detail layouts/models, Device/Cloud backup state models, user-provided detail screenshots | OBSERVED_STATIC + OBSERVED_VISUAL |
| APP-02 | Local apps inventory | AppListActivity, local-app menu | OBSERVED_STATIC |
| APP-03 | Cloud-synced apps inventory | menu_apps_switch.xml, cloud_synced_apps | OBSERVED_STATIC |
| APP-04 | Search apps | menu_apps.xml, search_hint_apps | OBSERVED_STATIC |
| APP-05 | Sort apps | filter bottom sheet, sort, ascending/descending, install/update/backup metadata; visual reference shows Name, Install date, Update date, Backup date, Backup size, Date used, and App size | OBSERVED_STATIC + OBSERVED_VISUAL |
| APP-06 | App-type filtering | app_type, user/system filters | OBSERVED_STATIC |
| APP-07 | System-app subfilters | system_apps, launchable/updated/labelled-or-favorites indicators | OBSERVED_STATIC |
| APP-08 | Favorites | FavoriteApp, FavoriteAppsRepo, favorites/not-favorites filters | OBSERVED_STATIC |
| APP-09 | Labels | LabelsActivity, LabelEditActivity, label data/model | OBSERVED_STATIC |
| APP-10 | On-device backup status filter | backed-up / not-backed-up state | OBSERVED_STATIC |
| APP-11 | Cloud-sync status filter | synced / not-synced state | OBSERVED_STATIC |
| APP-12 | Install-status filter | installed / not-installed | OBSERVED_STATIC |
| APP-13 | Enabled-status filter | enabled / disabled | OBSERVED_STATIC |
| APP-14 | Multiple-backup filter | apps_with_multiple_backpus | OBSERVED_STATIC |
| APP-15 | Protected-backup filter | apps_with_protected_backpus | OBSERVED_STATIC |
| APP-16 | Notes filter | backups_with_notes | OBSERVED_STATIC |
| APP-17 | Older/newer APK relation | installed_apps_with_older_backups, installed_apps_with_newer_backups | OBSERVED_STATIC |
| APP-18 | Google Play install-source filter | installed_from_google_play, not_installed_from_google_play | OBSERVED_STATIC |
| APP-19 | Device/cloud backup state | DetailModels$DeviceBackupStates, DetailModels$CloudBackupStates | OBSERVED_STATIC |
| APP-20 | App backup parts | APK, split APKs, app data, external data, expansion/OBB, media, cache, shared libraries indicators | OBSERVED_STATIC |
| APP-21 | App backup | backup task/manager/helper classes and UI | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| APP-22 | App restore | restore task/manager/helper classes and UI | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| APP-23 | Delete local/device backups | backup delete strings/actions | OBSERVED_STATIC |
| APP-24 | Multiple-backup strategy | single/dated/conditional strategy resources/settings | OBSERVED_STATIC |
| APP-25 | Protected backup | protected backup resources/settings | OBSERVED_STATIC |
| APP-26 | Backup data size limits | AppBackupLimitsActivity and local/cloud limit fields | OBSERVED_STATIC |
| APP-27 | Encryption of app data backups | encrypt_app_data and security/config resources | OBSERVED_STATIC |
| APP-28 | Backup cache option | backup_cache and warning/summary | OBSERVED_STATIC |
| APP-29 | Batch operations | AppsBatchActivity, batch menu/layout | OBSERVED_STATIC |
| APP-30 | Batch search/filter/select-all | batch menu contains search, filter, select-all | OBSERVED_STATIC |
| APP-31 | Batch app backup settings | batch menu entry to app backup settings | OBSERVED_STATIC |
| APP-32 | Labels/favorites/blacklist management | dedicated activities/data/repositories | OBSERVED_STATIC |
| APP-33 | Blacklist behavior | BlacklistActivity, blacklist mode, hide or APK-only behavior | OBSERVED_STATIC |
| APP-34 | Custom app configurations | ConfigListActivity, ConfigEditActivity, ConfigSettingsActivity | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| APP-35 | Run configuration now | AppsConfigRunActivity | OBSERVED_STATIC |
| APP-36 | Schedule configuration | reference Configs can be attached to schedules | DOCUMENTED_PUBLIC |
| APP-37 | Quick actions | AppsQuickActionsActivity and quick-action layouts; visual reference shows quick backup, quick restore, and other cross-app actions | OBSERVED_STATIC + OBSERVED_VISUAL |
| APP-38 | App swipe actions | AppSwipeActionsActivity, swipe-action persistence | OBSERVED_STATIC |
| APP-39 | App visibility diagnostics | AppVisibilityDiagnosticsActivity; raw PackageManager package count/search/share | OBSERVED_STATIC |
| APP-40 | APK/APKS import/install | APK import layouts/strings; installer flow incl. root/Shizuku/system installer | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| APP-41 | Restore runtime/special data | special-data restore details include permissions/settings/access-related items | OBSERVED_STATIC |
| APP-42 | App SSAID restore option | restore_app_ssaids resources and reboot note | OBSERVED_STATIC |
| APP-43 | Missing-app restore | restore_missing_apps | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| APP-44 | Newer-version restore | restore_newer_versions | OBSERVED_STATIC + DOCUMENTED_PUBLIC |
| APP-45 | Launch installed app | app action/context references and user-provided App Workspace/context screenshots | OBSERVED_VISUAL + reference-derived workflow |
| APP-46 | Enable / disable app | user-provided reference management action surface; enabled/disabled state model | OBSERVED_VISUAL + reference-derived state transition |
| APP-47 | Force stop app | user-provided reference management action surface | OBSERVED_VISUAL |
| APP-48 | Uninstall app | user-provided reference primary/context action surface | OBSERVED_VISUAL |
| APP-49 | Open Android App Info | user-provided reference context action surface | OBSERVED_VISUAL |
| APP-50 | Open Play Store | user-provided reference context action surface | OBSERVED_VISUAL |
| APP-51 | Share APK | user-provided reference backup/context action surface | OBSERVED_VISUAL |
| APP-52 | Battery optimization management | user-provided reference context action surface | OBSERVED_VISUAL |
| APP-53 | Add app to Home screen | user-provided reference context action surface | OBSERVED_VISUAL |
| APP-54 | Clear app data | user-provided Swift Backup App Detail/context screenshots showing Clear data action | OBSERVED_VISUAL + reference-derived workflow |

**Counting rule:** APP-01..APP-54 are capability/workflow inventory IDs. They are not implementation-task IDs. One implementation slice may close several IDs when the same domain model, workspace, action contract, or runtime service is shared.

**#15 rebaseline:** the previous “App detail” concept is now represented by **APP-01 App Workspace / App Detail foundation**. The old numeric position is not preserved because the rebaseline is intentionally dependency-oriented.

**Explicit boundary:** reference screenshots are visual evidence only. APP-45..APP-54 are not claims that the reference APK was runtime-tested in this audit. They record observed FE/workflow evidence and therefore remain reference evidence, not runtime verification.

### 24.1B Functional grouping — 7 groups + foundation

The 54 capability inventory is organized into **7 functional groups**, with **APP-01 as the App Workspace foundation** rather than a user-facing capability group. This grouping is the current FE/IA planning concept and is not a separate implementation phase.

```text
FOUNDATION
APP-01  App Workspace / App Detail

G1 — Discovery & Filtering
   ├── APP-02  Local apps inventory
   ├── APP-03  Cloud-synced apps inventory
   ├── APP-04  Search apps
   ├── APP-05  Sort apps
   ├── APP-06  App-type filtering
   ├── APP-07  System-app subfilters
   ├── APP-10  On-device backup status filter
   ├── APP-11  Cloud-sync status filter
   ├── APP-12  Install-status filter
   ├── APP-13  Enabled-status filter
   ├── APP-14  Multiple-backup filter
   ├── APP-15  Protected-backup filter
   ├── APP-16  Notes filter
   ├── APP-17  Older/newer APK relation
   └── APP-18  Google Play install-source filter

G2 — Action & Management
   ├── APP-08  Favorites
   ├── APP-09  Labels
   ├── APP-32  Labels/favorites/blacklist management
   ├── APP-33  Blacklist behavior
   ├── APP-37  Quick actions
   ├── APP-38  App swipe actions
   ├── APP-45  Launch installed app
   ├── APP-46  Enable / disable app
   ├── APP-47  Force stop app
   ├── APP-48  Uninstall app
   ├── APP-49  Open Android App Info
   ├── APP-50  Open Play Store
   ├── APP-51  Share APK
   ├── APP-52  Battery optimization management
   ├── APP-53  Add app to Home screen
   └── APP-54  Clear app data

G3 — Backup
   ├── APP-19  Device/cloud backup state
   ├── APP-20  App backup parts
   ├── APP-21  App backup
   ├── APP-23  Delete local/device backups
   ├── APP-24  Multiple-backup strategy
   ├── APP-25  Protected backup
   ├── APP-26  Backup data size limits
   ├── APP-27  Encryption of app data backups
   └── APP-28  Backup cache option

G4 — Restore / Install
   ├── APP-22  App restore
   ├── APP-40  APK/APKS import/install
   ├── APP-41  Restore runtime/special data
   ├── APP-42  App SSAID restore option
   ├── APP-43  Missing-app restore
   └── APP-44  Newer-version restore

G5 — Batch Operations
   ├── APP-29  Batch operations
   ├── APP-30  Batch search/filter/select-all
   └── APP-31  Batch app backup settings

G6 — Configuration
   ├── APP-34  Custom app configurations
   ├── APP-35  Run configuration now
   └── APP-36  Schedule configuration

G7 — Diagnostics
   └── APP-39  App visibility diagnostics
```

**Coverage:** Foundation APP-01 + G1 (15) + G2 (16) + G3 (9) + G4 (6) + G5 (3) + G6 (3) + G7 (1) = **54 capability IDs**.

**Quick Actions boundary:** APP-37 is an access/shortcut surface that can expose actions from G2, G3, G4, and batch workflows. It is therefore kept in G2 for primary grouping but must not be interpreted as an eighth functional domain.

**Sort / Filter boundary:** APP-05 and APP-06..APP-18 remain capability IDs; the UI may expose them together as one Apps options surface containing SORT and FILTER, as shown by the reference. This is an IA proposal/evidence mapping, not a requirement to copy the reference layout.

### 24.1C Sort and Filter reference detail

The user-provided visual reference shows a combined options surface:

```text
Apps options
├── SORT
│   ├── Name
│   ├── Install date
│   ├── Update date
│   ├── Backup date
│   ├── Backup size
│   ├── Date used
│   └── App size
│
└── FILTER
    ├── Favorites
    ├── App Labels
    ├── On-device backup
    ├── Cloud sync
    ├── Install status
    ├── Enabled status
    └── Miscellaneous
         ├── Apps with multiple backups
         ├── Apps with Protected backups
         ├── Backups with notes
         ├── Backups with older APKs
         ├── Backups with newer APKs
         ├── Installed from Google Play
         └── Not installed from Google Play
```

Reference juga menunjukkan Local apps dan Cloud synced apps sebagai context switch.

`Date used` adalah **reference-observed sort criterion**. BaRe belum memiliki evidence implementation/measurement untuk criterion tersebut, sehingga feasibility tetap **UNKNOWN / UNVERIFIED** sampai provider/data source ditentukan.

### 24.1D Quick Actions reference detail

User-provided visual reference menunjukkan Apps Quick Actions yang mengelompokkan operasi lintas-app:

```text
Quick Actions
├── Quick Backup Apps
│   ├── Backup all apps
│   ├── Backup pending apps
│   ├── Backup updated apps
│   ├── Redo existing backups
│   └── Sync latest device backups to cloud
│
├── Quick Restore Apps
│   ├── Restore all apps
│   ├── Restore missing apps
│   └── Restore new versions
│
└── Other Quick Actions
    ├── Delete backups of missing apps
    └── Enable / Disable apps
```

Status: `OBSERVED_VISUAL`.

Interpretation: Quick Actions adalah **shortcut/access layer**, bukan functional group ke-8. Capability detail tetap ditelusurkan ke G2/G3/G4 dan batch workflows.

### 24.1E App configuration scope and placement

Reference visual menunjukkan dua scope configuration yang perlu dibedakan:

```text
GLOBAL
Settings
└── App backups
    ├── General
    ├── Multiple backups
    ├── Encryption & compression
    └── App data

PER-APP
Apps
└── App Detail
    └── ⋮
        └── Settings
            └── App settings
```

Untuk BaRe saat ini ditetapkan sebagai **DECISION**:

- BaRe belum masuk fase Global Account/Settings implementation.
- Karena itu, **per-app configuration/settings sementara ditempatkan di Apps / local App Workspace scope**.
- Global configuration belum dipindahkan ke Account sebelum tab Account/global settings siap.
- Ketika Account/global settings sudah memasuki implementation phase, scope global vs per-app akan direconcile kembali.
- APP-34/35/36 tetap berada di **G6 — Configuration**; placement lokal saat ini adalah navigation/IA decision, bukan perubahan capability identity.

Status reference structure: `OBSERVED_VISUAL`.
Status BaRe placement: `DECISION`.

### 24.1F App Detail reference action coverage

User-provided visual reference juga menunjukkan App Detail/context actions yang sekarang tercakup dalam inventory:

```text
App Detail / context
├── Launch
├── Uninstall
├── App Info
├── Play Store
├── Share APK
├── Favorites
├── Set app labels
├── Add to blacklist
├── Battery optimization
├── Add to Home screen
├── Enable / Disable
├── Force stop
└── Clear data
```

`Clear data` adalah temuan baru yang menyebabkan rebaseline **53 → 54** dan dicatat sebagai **APP-54** pada G2 — Action & Management.

Status: `OBSERVED_VISUAL`; tidak berarti BaRe sudah mampu mengeksekusi action tersebut.
### 24.2 Filter model reference — detail yang perlu dipertahankan

Decompiled filter_bottom_dialog.xml memperlihatkan struktur filter yang lebih kaya daripada tiga pill pada BaRe saat ini:

    SORT
      ├── sort selector
      └── ascending / descending

    FILTER
      ├── App type
      │    └── System app filters
      ├── Favorites
      ├── App Labels
      ├── On-device backup
      ├── Cloud sync
      ├── Install status
      ├── Enabled status
      └── Miscellaneous
           ├── Apps with multiple backups
           ├── Apps with Protected backups
           ├── Backups with notes
           ├── Backups with older APKs
           ├── Backups with newer APKs
           ├── Installed from Google Play
           └── Not installed from Google Play

Reference juga memiliki:

    Local apps
    Cloud synced apps

sebagai context switch, bukan sekadar User/System filter.

Status: OBSERVED_STATIC.

### 24.3 Backup-part model reference

Evidence resource/source menunjukkan bahwa App backup configuration tidak berhenti pada APK:

    APP
    ├── Base APK
    ├── Split APKs
    ├── App data
    ├── External data
    ├── Expansion / OBB
    ├── Media
    ├── Cache [optional]
    └── Shared libraries [reference evidence]

Configuration juga berkaitan dengan:

    Backup destination
    ├── Device
    ├── Cloud
    └── Device + Cloud

    Multiple backups
    ├── Single
    ├── Dated
    └── Conditional

    Security
    ├── Encryption
    └── protected backup

    Limits
    └── local/cloud app-data size limits

Cache memiliki warning khusus karena dapat menghasilkan backup berukuran sangat besar. Status seluruh model di atas adalah reference evidence; bukan requirement BaRe.

### 24.4 Current BaRe Apps state — source actual

Pada source aktual branch v1.0/rebaseline saat audit:

**Implemented / source-backed**
- Installed app discovery menggunakan Android PackageManager.getInstalledApplications(0).
- Mapping minimal: label/name, package name, User/System classification, base APK file size.
- Sorting saat load berdasarkan nama.
- Runtime user-installed apps sudah terobservasi muncul setelah QUERY_ALL_PACKAGES ditambahkan ke manifest.
- CI #399: SUCCESS untuk perubahan permission tersebut.
- Visual screen sudah menampilkan daftar installed apps aktual.

**Mockup / UI shell only**
- All apps / User apps / System pada Apps screen masih berupa FilterPill statis; belum ada state/filter transition.
- Import APK / APKS masih routing ke IMPORT_EXPORT surface.
- Labels & Favorites masih routing ke MANAGEMENT.
- Protected backups masih routing ke MANAGEMENT.
- App detail menampilkan daftar backup parts dengan semua CheckRow bernilai aktif/static; belum ada capability detection atau backup inventory.
- Tombol Backup dan Restore pada App detail belum memiliki execution handler.
- Multiple backups, Custom configuration, dan Management masih membuka surface/mockup.
- AppConfigScreen adalah generic mockup dengan daftar: backup parts, compression, encryption, multiple backups, protection, notes, schedule.

### 24.5 Gap matrix — reference vs BaRe

| Area | Swift reference | BaRe current | Classification |
|---|---|---|---|
| Installed app discovery | Yes | Yes | PARTIAL |
| User/System classification | Yes | Yes | PARTIAL |
| Local/Cloud app context | Yes | No | GAP |
| Search | Yes | No functional implementation | GAP |
| Sort | Yes | No functional implementation | GAP |
| Rich filtering | Yes | Only static pills | GAP |
| Favorites | Yes | Field exists in mock model only | GAP |
| Labels | Yes | Navigation/mockup only | GAP |
| On-device backup state | Yes | No | GAP |
| Cloud sync state | Yes | No | GAP |
| Install status | Yes | No | GAP |
| Enabled status | Yes | No | GAP |
| Multiple/protected/notes/old-new APK filters | Yes | No | GAP |
| Play-source filter | Yes | No | GAP |
| App detail | Yes | UI mockup | PARTIAL |
| Device/cloud backup inventory | Yes | No | GAP |
| Backup parts capability | Yes | Static list only | GAP |
| Backup execution | Yes | Button no-op | GAP |
| Restore execution | Yes | Button no-op | GAP |
| Delete backup | Yes | No | GAP |
| Multiple backup strategy | Yes | Mockup only | GAP |
| Protection | Yes | Mockup only | GAP |
| App-data size limits | Yes | No | GAP |
| App-data encryption | Yes | No Apps-specific implementation | GAP |
| Cache option | Yes | Static label only | GAP |
| Batch select/actions | Yes | No | GAP |
| Blacklist | Yes | Mockup/management only | GAP |
| Custom configurations | Yes | Mockup only | GAP |
| Run config | Yes | No | GAP |
| Config → schedule | Yes | No | GAP |
| Quick actions | Yes | No | GAP |
| Swipe actions | Yes | No | GAP |
| App visibility diagnostics | Yes | No | GAP |
| APK/APKS import/install | Yes | UI entry only | GAP |
| Missing-app restore | Yes | No | GAP |
| Newer-version restore | Yes | No | GAP |
| Special-data restore | Yes | No | GAP |
| SSAID restore | Yes | No | GAP |

### 24.6 Interpretation boundary

Matrix di atas **bukan ranking**, bukan keputusan parity, dan bukan requirement final BaRe. Ini adalah **discovery gap map**:

    REFERENCE EVIDENCE
            ↓
    capability present in Swift
            ↓
    compare against actual BaRe source
            ↓
    CURRENT / PARTIAL / GAP

GAP berarti capability reference tersebut belum ditemukan sebagai implementation fungsional pada source BaRe saat audit. GAP tidak berarti capability tersebut wajib masuk scope v1.0.

### 24.7 High-value shared foundations sebelum Apps execution

Dari dependency evidence, beberapa capability Apps bergantung pada foundation yang belum sepenuhnya tersedia:

    Package inventory
          │
          ├── search / filter / sort
          ├── app metadata/state
          └── visibility diagnostics

    Backup inventory
          │
          ├── local repository
          ├── cloud repository
          ├── version/history
          ├── protection
          └── notes/tags

    Backup engine
          │
          ├── APK / split APK
          ├── app data
          ├── external data / OBB
          ├── media / cache
          └── integrity / encryption

    Operation/task model
          │
          ├── precondition/capability
          ├── progress
          ├── per-item result
          ├── partial success
          └── post-condition verification

    Management/configuration
          │
          ├── labels
          ├── favorites
          ├── blacklist
          ├── app configs
          └── schedule binding

Reference-derived conclusion:

> Apps discovery adalah fondasi inventory, tetapi **belum sama dengan Apps backup/restore capability**.

Karena BaRe saat ini baru memiliki discovery minimal, pekerjaan berikutnya sebaiknya tidak langsung menyalin seluruh surface reference. Capability perlu ditutup satu per satu berdasarkan dependency, product scope, dan verification evidence.

### 24.8 Additional reference evidence from user-provided visual screenshots

Screenshot reference yang diberikan menunjukkan beberapa surface Apps yang relevan:
- LOCAL APPS dengan jumlah app, search, filter, dan batch-action entry;
- context switch Local apps ↔ Cloud synced apps;
- per-item card menampilkan package name, app name, backup state (No backup on device pada contoh);
- filter surface yang memisahkan Sort dan Filter serta menyediakan kategori filter bertingkat;
- quick/management surface berisi Quick actions, App Labels, Custom configurations, Blacklist, App backup settings.

Status: OBSERVED_VISUAL dari reference screenshots pengguna.

### 24.9 Audit conclusion

Current BaRe Apps state:

    Package discovery
          ↓
    RUNTIME USER-OBSERVED PASS
          ↓
    UI inventory
          ↓
    PARTIAL IMPLEMENTATION
          ↓
    backup / restore / management / filter / cloud / config
          ↓
    NOT IMPLEMENTED OR MOCKUP

Jadi untuk domain Apps saja, gap reference masih material. Namun gap tersebut sekarang sudah terpetakan secara lebih granular sehingga implementasi berikutnya dapat dipilih berdasarkan dependency dan evidence, bukan berdasarkan tampilan mockup semata.

Rebaseline ini juga mengoreksi inventory capability: **53 capability/workflow items dari reconciliation sebelumnya + APP-54 Clear app data yang ditegaskan oleh visual reference = 54 capability/workflow items**. Inventory 54 item tersebut adalah working discovery inventory, bukan scope commitment.

**APP-01 App Workspace / App Detail foundation** tetap menjadi foundation utama untuk capability per-app. Mockup yang sudah dibuat dipertahankan sebagai FE contract/evidence; implementation boleh menutup beberapa capability ID sekaligus bila dependency dan implementation boundary memang sama.

**Functional IA concept saat ini:** 7 functional groups + APP-01 foundation:
1. Discovery & Filtering
2. Action & Management
3. Backup
4. Restore / Install
5. Batch Operations
6. Configuration
7. Diagnostics

Quick Actions adalah access/shortcut layer, bukan group ke-8. Sort + Filter dapat dipresentasikan dalam satu Apps options surface. Per-app configuration sementara ditempatkan di Apps/local App Workspace; global settings ditunda sampai Account/global settings siap.

**Status:** REFERENCE_RECONCILED / APPS_CAPABILITY_REBASELINED_54 / APPS_7_GROUPS_PLUS_FOUNDATION / SORT_FILTER_RECONCILED / QUICK_ACTIONS_RECONCILED / APP_CONFIGURATION_SCOPE_DECIDED_LOCAL / APPS_GAP_MATRIX_UPDATED / MOCKUP_FE_CONTRACT_PRESERVED / RUNTIME_REFERENCE_NOT_PERFORMED.

# BaRe Reference — Swift Backup FE / Workflow Audit

**Project:** BaRe  
**Jenis dokumen:** Reference / Discovery Artifact  
**Status dokumen:** `current`  
**Authority dokumen:** reference evidence untuk Swift Backup; **tidak** menjadi authority atas product decision, architecture decision, implementation, atau runtime BaRe  
**Governance:** `Varnexis-Workspace/GOVERNANCE`  
**Authority governance:** `Varnexis-Workspace/GOVERNANCE/AUTHORITY.md`  
**Authority implementasi project:** repository BaRe, termasuk source, tests, dan project-specific configuration  
**Authority runtime:** runtime evidence untuk deployment, execution, logs, metrics, dan behavior aktual  
**Reference artifact:** Swift Backup `5.1.0 (620)`  
**Package:** `org.swiftapps.swiftbackup`  
**Audit date:** 2026-09-18  
**Audit level:** Static APK + visual evidence + public product documentation + FE/state/transition modeling + targeted capability reconciliation  
**Runtime verification of the reference APK:** NOT PERFORMED  
**Purpose:** menjadi evidence baseline untuk discovery capability dan desain FE BaRe; bukan implementation source.

---

## 0. Authority, status, dan aturan penggunaan

Dokumen ini mengikuti boundary repository yang ditetapkan pada `README.md`. Governance lintas-project berasal dari Varnexis-Workspace; technical truth untuk implementasi/test/configuration BaRe berada di repository BaRe; runtime truth berasal dari evidence runtime. Dokumen ini hanya berwenang mencatat dan memodelkan evidence yang berasal dari reference artifact serta implikasinya sebagai **derived reference**, bukan menetapkan keputusan BaRe secara diam-diam.

### Precedence sumber

Jika sumber berbeda atau bertentangan, **jangan silently merge**. Pertahankan sumber, status evidence, dan konflik sampai authority yang tepat menyelesaikannya.

| Kelas sumber | Fungsi | Authority |
|---|---|---|
| Varnexis-Workspace Governance | governance, authority, lifecycle, boundary | Canonical governance |
| BaRe `README.md` + `docs/product.md` + `docs/architecture.md` + `docs/capability_matrix.md` | product dan technical truth BaRe | Canonical project documentation |
| BaRe source/tests/project config | implementation dan test truth | Project repository authority |
| Runtime evidence BaRe | deployment, execution, logs, metrics, behavior | Runtime authority |
| Swift Backup APK/decompiled artifact | static reference evidence | Reference evidence only |
| Screenshot/reference images | visual reference evidence | Reference evidence only |
| Public SwiftApps/Google Play/APKMirror documentation | published product/workflow evidence | Reference evidence only |
| Model/audit interpretation | derived engineering interpretation | Non-canonical; tidak boleh menggantikan source evidence |

### Status claim

Gunakan istilah berikut secara disiplin:

- **FACT / OBSERVED / VERIFIED** — hanya bila evidence mendukung status tersebut.
- **INFERRED / DERIVED** — hasil penalaran dari evidence; bukan observasi langsung.
- **PROPOSAL** — usulan untuk BaRe; bukan keputusan.
- **DECISION / REQUIREMENT** — hanya bila sudah ditetapkan oleh authority yang sesuai.
- **UNKNOWN / UNVERIFIED / BLOCKED** — evidence atau prerequisite belum cukup.

`RUNTIME_VERIFIED` tidak boleh digunakan untuk reference APK pada audit ini karena APK reference belum dieksekusi dan diuji.

### Boundary BaRe

Isi yang berbunyi “BaRe should/must” di dokumen ini harus dibaca sebagai **reference-derived implication** kecuali secara eksplisit ditandai sebagai `DECISION` atau `REQUIREMENT` yang berasal dari dokumen canonical BaRe. Dokumen ini tidak boleh secara diam-diam mengubah product scope, architecture, capability contract, atau implementation status.

---

## 1. Status dan authority

Dokumen ini adalah **reference/discovery artifact**, bukan canonical implementation specification Swift Backup.

BaRe tetap greenfield dan independent. Reference digunakan untuk:

- capability discovery;
- behavioral/workflow reference;
- UI/UX evidence;
- terminology reference;
- compatibility investigation;
- state/transition discovery.

Reference tidak digunakan untuk:

- menyalin source code proprietary;
- mengekstrak implementation proprietary;
- memodifikasi/repack/patched APK reference;
- bypass licensing/security;
- menganggap keberadaan class/string sebagai bukti runtime success.

Prinsip utama:

> **Feature parity tidak berarti implementation parity.**

### Evidence rule

Setiap observasi di dokumen ini dibedakan sebagai:

| Status | Makna |
|---|---|
| `OBSERVED_STATIC` | ditemukan langsung dari artifact APK: class, package, state model, string, framework/component reference, atau native/resource indicator |
| `OBSERVED_VISUAL` | terlihat langsung pada screenshot/reference image yang tersedia |
| `DOCUMENTED_PUBLIC` | dinyatakan pada dokumentasi publik SwiftApps/Google Play/APKMirror |
| `INFERRED` | kesimpulan engineering dari beberapa evidence; bukan observasi langsung |
| `UNKNOWN` | evidence belum cukup |
| `RUNTIME_VERIFIED` | hanya boleh dipakai jika reference APK benar-benar dieksekusi dan behavior diuji; audit ini **tidak** memakai status ini |

**Rule:** static APK inspection, screenshot, atau public documentation tidak otomatis menjadi runtime verification.

---

## 2. Audit artifact

### 2.1 APK yang diaudit

File project:

`5.1.0 (620).apk`

Observed artifact facts:

- package: `org.swiftapps.swiftbackup`;
- version: `5.1.0 (620)`;
- APK archive entries: 1708;
- DEX: `classes.dex` dan `classes2.dex`;
- native libraries tersedia untuk `arm64-v8a`, `armeabi-v7a`, `x86`, `x86_64`;
- SHA-256 artifact yang diaudit:
  `d04267dd0431c0b58d5ff04766696affd5c9ebd59c8b428c54f6ee6f1928621d`.

### 2.2 Visual evidence yang tersedia

Screenshot/reference images yang digunakan:

- Swift Backup Home;
- Swift Backup Scheduled backups — empty/first-use state;
- Swift Backup Cloud sync — disconnected state;
- Swift Backup Account;
- Swift Backup Settings;
- BaRe current APK/install evidence, hanya untuk current-state comparison, bukan reference behavior.

### 2.3 Public evidence yang digunakan

- Google Play listing dan v5.1.0 release notes.
- SwiftApps FAQ.
- SwiftApps Configs documentation.
- SwiftApps Common Issues.
- SwiftApps product page.
- APKMirror release metadata/screenshots/changelog.

Public documentation digunakan untuk memperkuat workflow/capability yang tidak dapat dibuktikan hanya dari screenshot atau class inventory.

---

# 3. Hasil audit level sebelumnya yang dipertahankan

Audit sebelumnya menemukan evidence static untuk domain berikut:

| Domain | Reference evidence | Status audit |
|---|---|---|
| Apps | `AppBackup*`, `AppRestore*`, `AppListActivity`, `AppsBatchActivity`, `AppInfoActivity` | `OBSERVED_STATIC` |
| APK | APK reader/import/share classes, split/APKS metadata | `OBSERVED_STATIC` |
| App data | backup/restore task/manager/helper classes | `OBSERVED_STATIC` |
| Folders | `FoldersDashActivity`, `FolderDetailActivity`, `FolderEditActivity`, `FolderPickerActivity`, `FoldersBatchActivity` | `OBSERVED_STATIC` |
| Messages | `MessagesDashActivity`, `MessagesBackupsActivity`, `MessagesBackupRestoreActivity`, conversations/chat activities | `OBSERVED_STATIC` |
| Call Logs | `CallsDashActivity`, `CallsBackupsActivity`, `CallsBackupRestoreActivity` | `OBSERVED_STATIC` |
| Wi-Fi | `WifiActivity`, `WifiHelper`, `WifiItem`, Wi-Fi system/config references | `OBSERVED_STATIC` |
| Wallpapers | `WallsDashActivity`, `WallsManageActivity`, `WallApplyActivity` | `OBSERVED_STATIC` |
| Scheduling | `ScheduleService`, `ScheduleItem`, `ScheduleVM$State`, schedule selectors/FAB | `OBSERVED_STATIC` |
| Storage | `StorageInfoLocal`, `StorageSwitchActivity`, storage helper/state references | `OBSERVED_STATIC` |
| Cloud | provider connect activities, `CloudOperationsImpl`, cloud diagnostics/orphan flows | `OBSERVED_STATIC` |
| Security | encryption/password strategy, archive/compression/native crypto references | `OBSERVED_STATIC` |
| Management | labels, favorites, blacklist, app configs, backup limits, multiple-backup strategy | `OBSERVED_STATIC` |
| Diagnostics | cloud diagnostics, app visibility diagnostics, SwiftLogger/SLog, task/precondition screens | `OBSERVED_STATIC` |
| Import/Export | APK/APKS import/share, settings export/import, cloud setup export/import | `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC` |

Kesimpulan level sebelumnya tetap berlaku:

> Matrix capability membuktikan **presence of reference indicators**, bukan parity feasibility dan bukan runtime verification.

Audit sekarang menaikkan resolusi dari **feature list** menjadi **screen → state → action → transition → component → capability dependency → verification state**.

---

# 4. UI architecture reference

## 4.1 Framework/component evidence

Static APK evidence menunjukkan reference menggunakan Android View/Fragment-oriented UI stack, bukan Jetpack Compose sebagai primary UI framework.

Observed framework/component references mencakup:

- `androidx.fragment.app.FragmentContainerView`;
- `androidx.recyclerview.widget.RecyclerView`;
- `LinearLayoutManager`, `GridLayoutManager`, `StaggeredGridLayoutManager`;
- `androidx.appcompat.widget.Toolbar`;
- `androidx.appcompat.widget.SearchView`;
- `androidx.appcompat.widget.SwitchCompat`;
- `androidx.preference.Preference*` family;
- `androidx.constraintlayout.widget.ConstraintLayout`;
- `androidx.viewpager.widget.ViewPager`;
- Material `MaterialToolbar`;
- Material `BottomNavigationView`;
- Material `TabLayout`;
- `MaterialButton` / `MaterialButtonToggleGroup` / `MaterialSplitButton`;
- `MaterialCardView`;
- `Chip`;
- `FloatingActionButton` / `ExtendedFloatingActionButton`;
- `TextInputLayout` / `TextInputEditText`;
- custom Swift components such as `SwiftListItemCardView`, `SwiftSegmentedCardGroup`, `SwiftBackupMaterialSwitch`, `ProviderChipGroup`, `QuickRecyclerView`, `MAppBarLayout`.

**Interpretation:** BaRe tidak perlu menyalin toolkit Swift. Yang perlu diambil adalah interaction model dan evidence tentang component responsibility.

---

# 5. Global shell: navigation model

## 5.1 Primary navigation observed visually

Screenshot Home/Cloud/Schedule/Account menunjukkan empat primary destinations di bottom navigation:

1. `Home`
2. `Cloud sync`
3. `Schedules`
4. `Account`

`OBSERVED_VISUAL`.

Top area pada screenshot memperlihatkan:

- profile/account avatar;
- application title `SWIFTBACKUP`;
- search action.

`OBSERVED_VISUAL`.

## 5.2 Global navigation model

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

Cloud, Schedules, dan Account juga merupakan direct primary destinations. Domain screens lainnya merupakan secondary/deep navigation.

## 5.3 Global shell states

| State | Evidence | Action | Transition | Verification |
|---|---|---|---|---|
| Primary screen active | bottom navigation screenshot | tap nav item | active destination changes | `OBSERVED_VISUAL` |
| Search available | search icon screenshot + `HomeSearchActivity` | tap search | open search surface | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| Secondary screen | activity inventory | open domain/detail | push/deep navigation | `OBSERVED_STATIC` / `INFERRED` |
| Back navigation | Android Activity/Fragment stack + toolbar references | back | return to previous screen | `INFERRED` |
| Modal/dialog interaction | Material dialog/framework evidence | confirm/cancel | stay, mutate, or return | `OBSERVED_STATIC` |

---

# 6. Screen → state → action → transition ledger

Bagian ini adalah core reference untuk FE BaRe.

## S00 — First Run / Intro

**Evidence:** `IntroActivity`, `IntroBenefitCardView`, `IntroPermissionCardView`, `IntroRootPermissionCoordinator$State`, `IntroStorageSetupCoordinator$Failure`, `IntroVM$SignInStatus`, `IntroVM$FirstRunRestoreStatus`.

### States

- first-run not initialized;
- sign-in state;
- storage setup state;
- root/privilege permission state;
- setup failure;
- first-run restore state.

Status: `OBSERVED_STATIC`.

### Actions

- continue/setup;
- grant storage/access;
- handle root permission;
- sign in / anonymous path;
- recover setup failure;
- proceed to Home.

Some exact button labels are `UNKNOWN` from current evidence.

### Transition model

```text
FIRST_RUN
  → AUTH/ACCOUNT STATE
  → STORAGE SETUP
  → PRIVILEGE CHECK
  → INITIALIZATION
  → HOME
```

Failure path:

```text
SETUP
  → FAILURE
  → USER ACTION / RETRY
  → SETUP
```

Verification: `OBSERVED_STATIC`; exact visual state coverage `UNKNOWN`.

---

## S01 — Home

### Visual structure observed

Home screenshot menunjukkan:

- avatar/account entry;
- title `SWIFTBACKUP`;
- search action;
- internal storage card dengan total/free/used information;
- root status card;
- domain shortcut chips: Apps, Messages, Call Logs, Folders, Wallpapers, WiFi;
- Apps quick actions;
- Messages quick actions;
- Call Logs quick actions;
- Folders quick actions;
- bottom navigation.

Status: `OBSERVED_VISUAL`.

### Static capability dependencies

- storage state: `StorageInfoLocal` / storage helpers;
- root state: root helper/service classes;
- apps: app discovery/task classes;
- messages: message task/backup classes;
- calls: call task/backup classes;
- folders: folder task/state classes;
- wallpapers: wallpaper task/classes;
- Wi-Fi: Wi-Fi helper/task/state classes;
- cloud metadata may affect restore/upload quick actions.

Status: `OBSERVED_STATIC`.

### States

| State | Evidence state |
|---|---|
| storage available with metrics | `OBSERVED_VISUAL` |
| root granted | `OBSERVED_VISUAL` |
| root unavailable/blocked | `OBSERVED_STATIC` via privilege/error classes; exact Home rendering `UNKNOWN` |
| quick action available | `OBSERVED_VISUAL` |
| quick action blocked by capability | `OBSERVED_STATIC` / `INFERRED` |
| loading/error/empty domain data | static evidence exists for several domains; exact Home composition `UNKNOWN` |

### Actions and transitions

| Action | Transition | Capability dependency | Verification |
|---|---|---|---|
| tap Apps | Home → Apps | app discovery | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| tap Messages | Home → Messages | SMS/MMS provider | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| tap Call Logs | Home → Call Logs | CallLog provider | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| tap Folders | Home → Folders | folder discovery | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| tap Wallpapers | Home → Wallpapers | WallpaperManager/data | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| tap WiFi | Home → WiFi | Wi-Fi capability resolver | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| storage card action | Home → Storage switch/details | storage provider | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| Backup all apps | Home → app backup task | app discovery + backup engine + repository | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| Restore all apps from device | Home → restore task | backup inventory + package install/restore | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| Restore all apps from cloud | Home → cloud restore task | cloud + backup inventory + restore | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| Backup/restore messages | Home → message task | message provider | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| Backup/restore call logs | Home → call task | CallLog provider | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |
| Backup/restore folders | Home → folder task | folder provider + repository | `OBSERVED_VISUAL` + `OBSERVED_STATIC` |

**Important FE rule:** quick action button availability must be derived from actual capability state, not merely from the existence of the UI element.

---

## S02 — Apps list

### Static evidence

- `AppListActivity`;
- `AppListItemLayout`;
- `AppItemContentLayout`;
- `AppRowLabelsView`;
- `AppSwipeActionRevealLayout`;
- `AppFilterHelper`;
- `AppSortHelper`;
- `FavoriteAppsRepo`;
- `LabelsActivity` / `LabelEditActivity`;
- `AppsBatchActivity`;
- `AppsConfigRunActivity`;
- `AppsQuickActionsActivity`;
- `AppInfoActivity`.

Status: `OBSERVED_STATIC`.

### Public workflow evidence

Official FAQ states that the Apps screen supports local/cloud sections, batch actions, per-app actions, deletion of backups, labels, and configuration flows.

Status: `DOCUMENTED_PUBLIC`.

### Components

- top app bar;
- section/local-cloud selector;
- list/grid/recycler;
- app item card/row;
- app icon + package metadata;
- backup status/date/size;
- labels;
- favorite/filter/sort controls;
- per-item overflow/action menu;
- batch action control;
- bottom action surface where applicable.

### States

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

`LOADING`, `EMPTY`, `ERROR` are generic lifecycle states supported by the implementation evidence but exact visual composition is not fully observed; mark `INFERRED` where visual evidence is absent.

### Actions / transitions

| Action | Transition | Dependency | Verification |
|---|---|---|---|
| switch Local/Cloud | Apps(local) ↔ Apps(cloud) | repository + cloud state | `DOCUMENTED_PUBLIC` |
| tap app | Apps → App detail | package/app metadata | `OBSERVED_STATIC` |
| open overflow | App → action menu | app item state | `OBSERVED_STATIC` |
| set labels | App → Labels | labels repository | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| favorites/filter/sort | list → filtered/sorted list | local app metadata | `OBSERVED_STATIC` |
| batch actions | list → batch mode | selected items | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| backup | app/config → backup task | APK/data/parts capability | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| restore | app/config → restore task | backup artifact + install/data capability | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |
| open custom config | Apps → Configs | labels/config repository | `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC` |

---

## S03 — App detail

**Evidence:** `AppInfoActivity`, `DetailActivity`, `DetailModels$DeviceBackupStates`, `DetailModels$CloudBackupStates`.

### State model

```text
NO_BACKUP
LOCAL_BACKUP_AVAILABLE
CLOUD_BACKUP_AVAILABLE
LOCAL_AND_CLOUD_AVAILABLE
BACKUP_IN_PROGRESS
RESTORE_IN_PROGRESS
BACKUP_FAILED
RESTORE_FAILED
```

The exact state enum names above are a **reference model**, not all direct enum evidence. The underlying device/cloud backup state models are `OBSERVED_STATIC`; the mapping to UX labels is partly `INFERRED`.

### Components

- app header/icon/name/package;
- device backup card;
- cloud backup card;
- backup metadata;
- action/overflow menus;
- restore/install controls;
- status/diagnostic area.

### Actions

- inspect backup;
- backup;
- restore;
- delete backup;
- inspect details;
- switch local/cloud context;
- configure app parts.

### Critical dependency

App detail must not show a generic `Restore` success path without checking package identity, artifact integrity, installation constraints, and required privilege.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`; runtime behavior `UNKNOWN`.

---

## S04 — App backup/restore configuration

### Evidence

Static strings/data indicate app parts:

- APK/base APK;
- split APKs;
- app data;
- external data;
- expansion/OBB;
- media;
- archive/compression;
- protected backup;
- multiple-backup strategy;
- backup location local/cloud.

Official FAQ documents explicit requirements for these parts.

### State

```text
CONFIG_DEFAULTS
→ PARTS_SELECTED
→ DESTINATION_SELECTED
→ STRATEGY_SELECTED
→ VALIDATED
→ READY
```

Failure/limitation states:

```text
CAPABILITY_UNAVAILABLE
PERMISSION_REQUIRED
PRIVILEGE_REQUIRED
VERSION_LIMITED
STORAGE_INSUFFICIENT
INVALID_CONFIGURATION
```

### Components

- checkbox/switch rows;
- segmented/card groups;
- provider/location selector;
- password/security strategy;
- compression controls;
- multiple-backup strategy;
- validation messages;
- save/run action.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`; exact screen layout `UNKNOWN`.

---

## S05 — App batch actions

**Evidence:** `AppsBatchActivity` and batch-related strings.

### States

- selection mode;
- action picker;
- confirmation;
- executing;
- partial result;
- completed;
- failed.

### Actions

- select/unselect apps;
- choose backup/restore/delete/config action;
- execute;
- cancel.

### Dependency

Batch capability is an aggregate capability: every selected item may have different backup/restore eligibility. FE must therefore model per-item result, not one global boolean.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S06 — Labels / Favorites / Blacklist / Management

### Evidence

- `LabelsActivity`;
- `LabelEditActivity`;
- `FavoriteApp` / `FavoriteAppsRepo`;
- `BlacklistActivity`;
- app visibility diagnostics;
- management/settings references.

### State/action model

```text
MANAGEMENT
→ LIST
→ CREATE/EDIT
→ APPLY TO APPS
→ FILTER/SELECT
→ USED BY CONFIG/SCHEDULE
```

Dependencies:

- app inventory;
- persistent metadata;
- configuration engine;
- schedule engine.

Verification: `OBSERVED_STATIC`; exact visual layout `UNKNOWN`.

---

## S07 — Custom app configurations

**Evidence:** `ConfigListActivity`, `ConfigEditActivity`, `ConfigSettingsActivity`, `AppsConfigRunActivity`, config data classes.

Official Configs documentation confirms:

1. create labels;
2. assign labels to apps;
3. create a config;
4. define per-label backup/restore settings;
5. execute via batch actions;
6. attach configs to schedules;
7. first matching configuration wins when multiple labels match.

Status: `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC`.

### Transition

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

This is an important reference for BaRe because it demonstrates that **configuration is a domain object**, not merely a UI preference.

---

## S08 — Folders dashboard

### Evidence

- `FoldersDashActivity`;
- `FolderDashItem`;
- `FolderItem`;
- `FolderState`;
- `FolderBackup` base/incremental models;
- `FolderDetailActivity`;
- `FolderEditActivity`;
- `FolderPickerActivity`;
- `FoldersBatchActivity`.

### States

`FolderDetailStates` directly separates:

- `FolderInfoState`;
- `DeviceBackupState`;
- `CloudBackupState`.

Backup result model explicitly contains:

- `Success`;
- `Failure`;
- `NoChange`.

These are strong `OBSERVED_STATIC` state evidence.

### Workflow

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

### Components

- folder list card;
- source path;
- backup status;
- device backup card;
- cloud backup card;
- picker;
- batch actions;
- edit/duplicate/exclude controls;
- progress/result.

Verification: `OBSERVED_STATIC`; v5.1.0 public release notes explicitly document folder backup/restore for device and cloud storage: `DOCUMENTED_PUBLIC`.

---

## S09 — Messages

### Evidence

- `MessagesDashActivity`;
- `MessagesBackupsActivity`;
- `MessagesBackupRestoreActivity`;
- `ConversationsActivity`;
- `ChatActivity`;
- SMS/MMS models/tasks/receivers.

### State model

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

Capability dependencies:

- SMS/MMS provider;
- permissions/default-role constraints;
- backup artifact;
- restore authority;
- Android version policy.

Official FAQ/issues confirm platform constraints and that restored messages may require post-restore handling in the messaging application.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`; runtime `UNKNOWN`.

---

## S10 — Call Logs

### Evidence

- `CallsDashActivity`;
- `CallsBackupsActivity`;
- `CallsBackupRestoreActivity`;
- CallLog APIs/models/tasks.

### Workflow

```text
CALL LOG DASH
→ BACKUP HISTORY
→ SELECT BACKUP
→ RESTORE
→ RESULT
```

States include no-data/failed/success paths in task/static evidence, but exact visual states are not fully observed.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S11 — Wi-Fi

### Evidence

- `WifiActivity`;
- `WifiHelper`;
- `WifiItem`;
- `WifiAccessSnapshot`;
- `WifiConfigStoreData` references;
- Wi-Fi scheduling;
- privilege/error states such as `BlockedWifiPrivilegedAccess`, `FailedWifiDeviceRead`, and `Empty(isWifiEnabled=...)`.

### States

```text
WIFI_ENABLED
WIFI_DISABLED
ACCESS_AVAILABLE
PRIVILEGE_REQUIRED
DEVICE_READ_FAILED
EMPTY
RESTORE_REQUIRES_USER_ACTION
```

### Action/transition model

```text
WIFI DASH
→ LIST SAVED NETWORKS
→ NETWORK DETAIL
→ BACKUP
→ RESTORE
```

Platform-specific fallback is important: official issues documentation states that on Android 10, batch restore is unavailable and a user-mediated Wi-Fi selection flow is used instead; Android 11+ batch restore requires root according to the current public documentation.

Therefore FE must represent:

```text
AUTOMATIC_RESTORE
USER_MEDIATED_RESTORE
PRIVILEGED_RESTORE
UNAVAILABLE
```

rather than one generic `Restore` action.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S12 — Wallpapers

### Evidence

- `WallsDashActivity`;
- `WallsManageActivity`;
- `WallApplyActivity`;
- `WallpaperManager`;
- wallpaper backup/restore/task strings.

### State/action

```text
WALLPAPER DASH
→ BACKUP
→ LOCAL/CLOUD BACKUP STATE
→ MANAGE
→ APPLY/RESTORE
→ RESULT
```

Potential state dimensions identified from requirements/reference:

- wallpaper supported/not supported;
- static/live;
- home/lock scope;
- backup available/not available;
- apply failed/success.

Exact screen-by-screen coverage is `UNKNOWN`.

Verification: `OBSERVED_STATIC`.

---

## S13 — Schedules

### Visual evidence

The provided screenshot shows a first-use/empty schedule state:

- large clock icon;
- title `Scheduled backups`;
- explanatory text;
- CTA `Turn on schedule`;
- bottom nav with Schedules active.

Status: `OBSERVED_VISUAL`.

### Static evidence

- `ScheduleService`;
- `ScheduleItem`;
- `ScheduleVM$State`;
- `ScheduleLabelsSelectActivity`;
- `ScheduleFolderSelectActivity`;
- `ScheduleFabMenuView`;
- `ScheduleLastRunDetails` states;
- schedule types for Apps, App Config, Labels, Folders, Messages, Call Logs, Wallpapers, Wi-Fi.

### Explicit last-run states observed

- `NeverRun`;
- `Started`;
- `BlockedLowBattery`;
- `BlockedNotCharging`;
- `BlockedWifiPrivilegedAccess`;
- `FailedWifiDeviceRead`;
- `SkippedUploadCloudNotConnected`;
- `SkippedUploadNetworkError`;
- `SkippedUploadSyncOptionsError`.

This is a high-value reference for BaRe because the schedule screen has a richer state machine than `enabled/disabled`.

### Workflow

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

### Components

- empty-state hero;
- schedule cards/list rows;
- enabled switch/state;
- FAB/menu;
- time/condition controls;
- labels/folder selectors;
- last-run status;
- run-now action;
- diagnostic/error surface.

Verification: `OBSERVED_VISUAL` + `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S14 — Cloud sync

### Visual evidence

Screenshot shows disconnected state:

- cloud icon with disabled/disconnected treatment;
- title `Cloud account not connected`;
- explanation;
- CTA `Connect a cloud account`;
- Cloud sync selected in bottom navigation.

Status: `OBSERVED_VISUAL`.

### Static evidence

Provider sign-in activities observed:

- Google/GMS;
- no-GMS browser path;
- Dropbox;
- OneDrive;
- Box;
- pCloud;
- Mega;
- Filen;
- TeraBox;
- Yandex;
- generic cloud connection activity;
- cloud diagnostics;
- orphan cleaner.

### States

```text
NOT_CONNECTED
CONNECTING
CONNECTED
AUTH_REQUIRED
AUTH_FAILED
NETWORK_ERROR
PROVIDER_ERROR
SYNCING
SYNC_SUCCESS
SYNC_PARTIAL
SYNC_FAILED
DIAGNOSTICS
```

Some are direct state/result evidence, others are workflow-level model states. Mark `INFERRED` when not directly represented by a named state class.

### Transitions

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

Cloud diagnostics/orphan cleanup are separate maintenance workflows, not just error dialogs.

### Component implications

- provider cards/list;
- connection state indicator;
- connect button;
- remote repository metadata;
- upload/download/sync actions;
- transfer progress;
- diagnostic entry;
- orphan cleanup.

Verification: `OBSERVED_VISUAL` + `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S15 — Storage switch / local repository

### Evidence

`StorageSwitchActivity`, `StorageInfoLocal`, storage helper classes and official FAQ support local storage switching between internal storage and supported removable/USB destinations.

### State

```text
CURRENT_STORAGE
→ TARGET_SELECTED
→ ACCESS_REQUESTED
→ ACCESS_GRANTED
→ MOVE/COPY
→ VALIDATE
→ SWITCHED
```

Failure:

```text
ACCESS_DENIED
INSUFFICIENT_SPACE
INVALID_STORAGE
TRANSFER_FAILED
RECOVERY_REQUIRED
```

### FE rule

Storage location is a system dependency with authorization and capacity state. It is not a static preference string.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S16 — Account

### Visual evidence

Account screenshot shows:

- account identity card;
- device identity;
- premium CTA;
- sign-out action;
- Settings;
- SwiftLogger;
- Language;
- Help center;
- Contact;
- Rate;
- Share Swift Backup;
- About;
- bottom navigation.

Status: `OBSERVED_VISUAL`.

### Static/public dependencies

- account models/credential helpers;
- billing/premium;
- locale;
- SwiftLogger/SLog;
- help/contact/about activities;
- settings.

### States

```text
ANONYMOUS
SIGNED_IN
PREMIUM
NON_PREMIUM
ACCOUNT_ERROR
SIGNED_OUT
```

Current public FAQ explicitly documents anonymous/offline local backup and account-dependent cloud/premium behavior.

Verification: `OBSERVED_VISUAL` + `DOCUMENTED_PUBLIC` + `OBSERVED_STATIC`.

---

## S17 — Settings

### Visual evidence

Settings screenshot is grouped into sections:

- Appearance and language;
- Backup content;
- Storage and security;
- Notifications;
- Advanced tools;
- Help and info.

Observed rows include:

- App theme;
- Dynamic colors;
- AMOLED black backgrounds;
- Language;
- App backups;
- Messages backups;
- Call logs backups;
- Folder backups;
- Storage for local backups;
- Cloud backups;
- Encryption password strategy;
- Manage space;
- Manage notifications;
- Play notification sounds;
- Swift Labs;
- SwiftLogger;
- Restart app;
- Help center;
- Contact;
- About.

Status: `OBSERVED_VISUAL`.

### Static evidence

Settings activity/detail classes, preference framework, backup strategy classes, password strategy, multiple backup strategy, storage, diagnostics, and reset/manage-space flows are present.

### State/action model

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

For toggles:

```text
OFF ↔ ON
```

For constrained settings:

```text
SUPPORTED
LIMITED
REQUIRES_PRIVILEGE
INVALID
```

Verification: `OBSERVED_VISUAL` + `OBSERVED_STATIC`.

---

## S18 — Import / Export

### Evidence

- `ApkImportActivity` / `ApkImportUiState`;
- APK/APKS metadata classes;
- settings export/import documented in FAQ;
- cloud setup export/import documented in FAQ;
- APK sharing announced in v5.1.0.

### Workflow

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

### Important security state

Cloud setup export may contain plaintext credentials depending on timing/configuration. Official FAQ explicitly warns about this.

Therefore BaRe FE must expose sensitivity and validation state instead of treating export as a harmless generic file operation.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S19 — Search

### Evidence

`HomeSearchActivity`, Android `SearchView`, search-related strings, and v5.1.0 release notes.

### Model

```text
SEARCH IDLE
→ QUERY ENTERED
→ SEARCHING
→ RESULTS
→ EMPTY RESULTS
→ OPEN RESULT
```

Search target evidence includes apps and home-related data; exact full-index semantics are `UNKNOWN`.

Verification: `OBSERVED_STATIC` + `DOCUMENTED_PUBLIC`.

---

## S20 — Tasks / progress / preconditions

### Evidence

- `TaskService`;
- `TaskActivity`;
- `TaskManager`;
- `TaskStatus`;
- `PreconditionsActivity`;
- notification task/cancel receiver;
- foreground data-sync runtime ledger.

### State model

```text
PRECONDITION_CHECK
→ READY
→ RUNNING
→ PAUSED/BLOCKED
→ SUCCESS
→ PARTIAL
→ FAILED
→ CANCELLED
```

Reference strings/models also show specific blocked/skipped conditions.

### FE rule

Task UI must expose **why** an operation is blocked/skipped/failed. A generic spinner is insufficient for backup/restore software.

Verification: `OBSERVED_STATIC`.

---

## S21 — Diagnostics / logs

### Evidence

- `SLogActivity`;
- `SwiftLogger` references;
- cloud diagnostics;
- app visibility diagnostics;
- restore/backup diagnostic strings;
- storage/transfer checks.

### State model

```text
DIAGNOSTIC IDLE
→ COLLECTING
→ FINDINGS
→ ACTIONABLE ISSUE
→ RESOLVED / RETRY / EXPORT LOGS
```

Diagnostics are a first-class workflow, not merely an error screen.

Verification: `OBSERVED_STATIC`; exact UX `UNKNOWN`.

---

# 7. Cross-screen workflow maps

## 7.1 App backup

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

Reference UI evidence supports the user-facing selection/configuration/result journey. BaRe architecture must independently implement the domain pipeline defined by the product/architecture documents.

---

## 7.2 App restore

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

Critical FE distinction:

```text
FILE COPIED
≠
APP RESTORED
≠
APP VERIFIED
```

---

## 7.3 Folder backup/restore

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

---

## 7.4 Messages / Call Logs

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

The FE must distinguish permission/role limitations from data absence.

---

## 7.5 Wi-Fi

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

---

## 7.6 Scheduled backup

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

A schedule can be configured successfully but later be blocked by battery, charging, Wi-Fi privilege, cloud connection, network, or another precondition.

---

## 7.7 Cloud sync

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

Provider-specific failures must not leak into the core backup domain model.

---

# 8. Component reference inventory

## 8.1 Shell components

| Component | Evidence | BaRe implication |
|---|---|---|
| Top app bar | `MaterialToolbar`, `MAppBarLayout`, screenshot | shared shell component |
| Bottom navigation | `BottomNavigationView`, screenshots | primary navigation component |
| Search | `SearchView`, `HomeSearchActivity`, screenshot icon | global search entry |
| Avatar/account entry | screenshot + account activities | account surface |
| Cards | `MaterialCardView`, `SwiftListItemCardView`, screenshots | reusable section/item surface |
| Chips | `Chip`, `ProviderChipGroup`, screenshot | capability/domain shortcuts/filter/provider selection |
| Segmented controls | `TabLayout`, `SwiftSegmentedCardGroup`, Material toggle group | local/cloud or mode selection |
| Switches | `SwitchCompat`, `SwiftBackupMaterialSwitch` | settings/schedule state |
| Recycler/list | `RecyclerView`, custom layout managers | primary list pattern |
| FAB | `FloatingActionButton`, `ScheduleFabMenuView` | creation/batch/action entry |
| Dialogs | Android/Material dialog classes | confirmation, error, selection |
| Preferences | AndroidX Preference family | settings detail |
| Progress | Android `ProgressBar` + task infrastructure | long-running operations |
| Text input | `TextInputLayout`, `TextInputEditText` | credentials/configuration/search |

## 8.2 Component state rule

Reusable components must support state explicitly when the underlying capability is stateful.

Example:

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

Do not design a button as only `onClick -> execute` for privileged backup/restore features.

---

# 9. Capability dependency model for FE

UI component → capability dependency should be explicit.

| FE surface | Minimum capability dependency |
|---|---|
| Home storage card | storage discovery + readable storage metrics |
| Home root status | root/privilege capability detection |
| Apps shortcut | app discovery |
| Messages shortcut | SMS/MMS capability state |
| Call Logs shortcut | CallLog capability state |
| Folders shortcut | folder/storage access |
| Wi-Fi shortcut | Wi-Fi capability resolver |
| Wallpaper shortcut | wallpaper API/access |
| Backup apps action | app discovery + selected app-part capability + repository |
| Restore apps action | backup artifact + package install + restore capability |
| Backup folders action | folder scan + repository |
| Restore folders action | archive validation + filesystem target |
| Schedule creation | scheduler + domain config + permission/background policy |
| Schedule run now | scheduler/task service + domain capability |
| Cloud connect | provider adapter + auth |
| Cloud sync | provider connection + repository + transfer engine |
| Settings storage | storage provider |
| Encryption settings | key/password strategy + archive engine |
| Diagnostics | operation/event/log data |
| Import APK/APKS | parser + validation + package/install path |
| Search | indexed/discoverable data source |

### FE dependency rule

The UI should request a capability state from application/domain layers.

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

UI must not infer privilege from a visual setting, icon, or remembered configuration.

---

# 10. Verification-state model for BaRe FE

Reference audit establishes that Swift itself models more states than a simple feature boolean. BaRe should preserve that distinction.

Recommended canonical FE-facing state family:

```text
AVAILABLE
UNAVAILABLE
LIMITED
BLOCKED
PERMISSION_REQUIRED
PRIVILEGE_REQUIRED
USER_ACTION_REQUIRED
LOADING
RUNNING
SUCCESS
PARTIAL_SUCCESS
FAILED
SKIPPED
CANCELLED
UNKNOWN
```

For completed operations, preserve the separate verification state:

```text
EXECUTED
↓
RESULT_RECORDED
↓
VERIFIED
```

Therefore:

```text
SUCCESS ≠ VERIFIED
```

This follows the project governance and is reinforced by reference evidence showing explicit `Success`, `Failure`, `NoChange`, `Started`, `Blocked*`, `Skipped*`, and diagnostic states.

---

# 11. Reference-derived FE design rules

## Rule R-FE-01 — Home is a capability dashboard, not just a menu

The Home screenshot combines system/storage status, privilege status, domain shortcuts, and quick actions. BaRe should therefore treat Home as a current-state dashboard.

## Rule R-FE-02 — Action availability is state-driven

A visible action does not imply that the capability is executable.

Example:

```text
Wi-Fi restore visible
≠
Wi-Fi restore executable
```

The UI must resolve actual capability state.

## Rule R-FE-03 — Empty state is a real state

Schedules screenshot demonstrates a dedicated first-use empty state with explanatory copy and a CTA. Empty is not the same as error.

## Rule R-FE-04 — Disconnected is a real state

Cloud screenshot demonstrates a disconnected state with explanation and explicit connect action. Do not represent cloud as a blank list.

## Rule R-FE-05 — Account state changes capability

Cloud/premium/account semantics are part of the product behavior. The FE must distinguish anonymous/local operation from account-dependent capability without pretending authentication equals capability verification.

## Rule R-FE-06 — Settings are grouped by domain responsibility

The reference settings screen groups appearance, backup content, storage/security, notifications, advanced tools, and help/info. BaRe should group settings by responsibility rather than one unbounded list.

## Rule R-FE-07 — Batch is a first-class interaction mode

Apps and folders have dedicated batch activities. Batch selection must support per-item result state and aggregate result.

## Rule R-FE-08 — Configuration is a domain object

App configs and schedules can reference labels/configurations. Configuration should therefore be modeled independently from screen-local UI state.

## Rule R-FE-09 — Diagnostics is part of the user journey

Task/precondition/diagnostic activities and explicit skipped/blocked states show that recovery/explanation is part of the normal product flow.

## Rule R-FE-10 — Local/cloud are repository contexts, not separate product domains

The same backup/restore semantics appear across device/cloud locations. BaRe should keep backup domain semantics independent from repository implementation.

## Rule R-FE-11 — Privilege is a dependency, not the domain model

Reference behavior shows root/Shizuku/ADB-like distinctions around capability availability. BaRe must keep execution mode behind capability/provider boundaries.

## Rule R-FE-12 — Do not copy the reference's implementation structure

Static class/package structure is evidence about responsibility boundaries, not an instruction to reproduce the same code architecture.

---

# 12. Current BaRe FE comparison

Current `v1.0/rebaseline` commit at audit time:

`136e18a617333f3554d2d13d41af6565c0e12e86`

Current UI source:

`app/src/main/java/com/savie/bare/MainActivity.kt`

Current source SHA:

`7a10b21d4289765af7d3962c2a7881741858e408`

The current file contains the screen enum:

- Home;
- Apps;
- Folders;
- Messages;
- Call Logs;
- Wi-Fi;
- Wallpapers;
- Schedules;
- Storage;
- Cloud;
- Management;
- Diagnostics;
- Account;
- Settings;
- Import/Export;
- Search.

Current implementation is explicitly a product shell/placeholder. It does not claim backend capability behavior.

### Gap matrix

| Area | Swift reference evidence | Current BaRe | Status |
|---|---|---|---|
| Primary shell | Home/Cloud/Schedules/Account | primary navigation exists | `DEFINED` |
| Domain entry points | strong | broad placeholder surfaces | `DEFINED / UNIMPLEMENTED` |
| Home dashboard | storage/root/quick actions/domain cards | generic quick actions + area cards | `PARTIAL` |
| Apps | list/batch/detail/config/labels | placeholder | `GAP` |
| Folders | dashboard/detail/edit/picker/batch | placeholder | `GAP` |
| Messages | dashboard/backups/restore/conversations | placeholder | `GAP` |
| Call Logs | dashboard/backups/restore | placeholder | `GAP` |
| Wi-Fi | stateful capability + fallback | placeholder | `GAP` |
| Wallpapers | dashboard/manage/apply | placeholder | `GAP` |
| Schedules | empty/list/create/conditions/last-run | placeholder | `GAP` |
| Cloud | disconnected/connect/provider/sync/diagnostics | placeholder | `GAP` |
| Account | account/settings/log/help/about | partial shell | `PARTIAL` |
| Settings | grouped categories/detail controls | placeholder | `GAP` |
| Search | dedicated search surface | placeholder | `GAP` |
| Task/progress | explicit task infrastructure in reference | not yet implemented | `GAP` |
| Diagnostics | first-class diagnostic workflows | placeholder | `GAP` |
| Capability state | explicit runtime dependency needed | not yet implemented | `GAP` |

This confirms the previous engineering concern: **do not grow real capabilities directly inside `MainActivity.kt`.**

---

# 13. Target FE boundary derived from evidence

The reference audit supports a feature-oriented architecture, but not arbitrary file splitting.

Recommended logical boundary:

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
```

This is a **proposal**, not an implementation decision yet.

The boundary should follow actual responsibility:

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

Do not create one file per UI row. Do not create a generic mega-service. Split when a real responsibility boundary exists.

---

# 14. What is evidence vs inference

## Direct evidence

- Swift has a four-item bottom navigation visible in provided screenshots.
- Swift Home contains storage, root status, domain chips, and quick action sections.
- Swift Cloud has a dedicated disconnected state with explicit connect CTA.
- Swift Schedules has a dedicated empty state with explicit enable CTA.
- Swift Account has account/premium/settings/log/help/about surfaces.
- Swift Settings is grouped into domain categories.
- APK contains dedicated Activity/classes for Apps, Folders, Messages, Calls, Wi-Fi, Wallpapers, Schedules, Cloud, Settings, Diagnostics, Import/Export, etc.
- APK contains explicit state/data models for several workflows.
- Public documentation confirms specific backup/restore/config/schedule/cloud workflows.

## Strong inference

- Each primary/domain surface is backed by an application/capability boundary rather than only static UI.
- Quick actions are intended to execute task workflows.
- Capability availability should affect action state.
- Batch workflows need aggregate and per-item result handling.
- Schedule last-run status is operational state, not decorative text.

## Unknown without runtime inspection

- exact animation/transition timing;
- exact dialog copy for every failure;
- exact loading skeletons;
- exact screen-to-screen back-stack semantics for every deep link;
- exact OEM-specific behavior;
- actual performance characteristics;
- actual runtime success of every backup/restore capability on a given device;
- exact internal implementation of proprietary reference code.

---

# 15. Verification matrix

| Evidence area | Current audit state | Why |
|---|---|---|
| APK identity/version | `OBSERVED_STATIC` | package/version strings + artifact |
| Capability inventory | `OBSERVED_STATIC` | class/string/model inventory |
| UI framework inventory | `OBSERVED_STATIC` | AndroidX/Material/custom view references |
| Home visual | `OBSERVED_VISUAL` | provided screenshot |
| Cloud disconnected visual | `OBSERVED_VISUAL` | provided screenshot |
| Schedules empty visual | `OBSERVED_VISUAL` | provided screenshot |
| Account visual | `OBSERVED_VISUAL` | provided screenshot |
| Settings visual | `OBSERVED_VISUAL` | provided screenshot |
| v5.1.0 feature release notes | `DOCUMENTED_PUBLIC` | Google Play/APKMirror |
| App parts requirements | `DOCUMENTED_PUBLIC` | SwiftApps FAQ |
| Config workflow | `DOCUMENTED_PUBLIC` | SwiftApps Configs |
| Failure/known limitations | `DOCUMENTED_PUBLIC` | SwiftApps Issues/FAQ |
| Reference runtime behavior | `UNKNOWN` | APK not executed in this audit |
| Reference device/OEM matrix | `UNKNOWN` | no runtime matrix available |
| BaRe FE parity | `NOT IMPLEMENTED` | current source is placeholder shell |

**Important:** This document itself is verified as a documentation artifact only after it is committed and the commit can be inspected. It does not upgrade reference runtime behavior to `VERIFIED`.

---

# 16. Acceptance model for using this reference in BaRe

A BaRe FE feature may move from reference discovery into implementation only when the following chain exists:

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

Reference evidence alone is not acceptance evidence.

For each implemented BaRe screen, the minimum FE contract should answer:

1. Screen purpose?
2. Entry conditions?
3. Available states?
4. Empty state?
5. Loading state?
6. Permission/privilege state?
7. Error state?
8. Success state?
9. Partial state?
10. Actions?
11. Transition target for each action?
12. Capability dependency?
13. What happens when capability is unavailable?
14. What evidence verifies the behavior?

---

# 17. FE verification record template

Gunakan template berikut ketika sebuah reference-derived FE surface mulai diimplementasikan di BaRe:

```text
FE Verification ID:
Screen:
Journey:
Reference Evidence:
BaRe Requirement:
Capability Contract:
Initial State:
Preconditions:
Action:
Expected Transition:
Expected UI State:
Capability Dependency:
Failure/Blocked State:
Recovery Action:
Actual Behavior:
Runtime Evidence:
Test Build:
Device/OEM:
Android Version/API:
Execution Mode:
Result: PASS / FAIL / BLOCKED / UNKNOWN
Verification State: TESTED / VERIFIED
Timestamp:
Notes:
```

---

# 18. Audit conclusion

Audit Swift sekarang sudah dinaikkan satu level dari **capability inventory** menjadi **interaction/state model**.

Yang paling penting untuk BaRe bukan menyalin tampilan Swift, tetapi mengambil evidence berikut:

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

Reference memperlihatkan bahwa backup application yang matang bukan sekadar kumpulan tombol `Backup` / `Restore`. UI terus berinteraksi dengan:

- storage state;
- privilege state;
- repository state;
- account state;
- configuration state;
- task state;
- permission/policy state;
- failure/recovery state;
- verification state.

Karena itu FE BaRe harus dibangun sebagai **stateful capability client**, bukan static feature menu.

### Final engineering rule

```text
JANGAN:
Swift screen → copy screen → add buttons → claim capability

HARUS:
Evidence
→ state model
→ action contract
→ transition contract
→ capability dependency
→ independent BaRe design
→ implementation
→ runtime test
→ verification
```

Current BaRe shell sudah menyediakan surface untuk discovery, tetapi belum boleh dianggap parity atau capability implementation. Audit ini menjadi reference baseline untuk pekerjaan FE berikutnya.

---

# 19. Targeted audit reconciliation — 2026-09-18

Bagian ini mencatat **delta hasil targeted audit terbaru** terhadap isi `reference.md` sebelumnya. Tujuannya bukan membuat dokumen audit kedua, tetapi memastikan capability yang baru ditemukan/terkonfirmasi tidak hilang dari reference baseline.

## 19.1 Reconciliation result

**Source:** targeted static audit terhadap `SwiftBackup-5.1.0-620-decompiled.zip`, difokuskan pada high-signal package/class/resource/navigation/capability indicators. ZIP tidak dibaca file-per-file.

**Reference runtime:** tetap `NOT PERFORMED`.

**Classification:** seluruh item di bawah tetap `OBSERVED_STATIC` kecuali bila dinyatakan lain.

### 19.2 Capability deltas yang sekarang dipastikan masuk baseline

| Domain | Reconciled capability | Evidence indicator | Status |
|---|---|---|---|
| Apps | Multiple backup versions/history | `MultipleBackupsActivity`, multiple-backup models/strings | `OBSERVED_STATIC` |
| Apps | Protected backups / retention protection | protected-backup strings/state | `OBSERVED_STATIC` |
| Apps | Backup notes | backup-note metadata/strings | `OBSERVED_STATIC` |
| Apps | Favorites | `FavoriteApp`, `FavoriteAppsRepo` | `OBSERVED_STATIC` |
| Apps | Blacklist | `BlacklistActivity`, blacklist data/state | `OBSERVED_STATIC` |
| Apps | Hide/exclude app behavior | blacklist/hide/exclusion state | `OBSERVED_STATIC` |
| Apps | APK-only backup/restore policy | blacklist/app-part policy indicators | `OBSERVED_STATIC` |
| Apps | Custom configurations | config list/edit/settings/run classes | `OBSERVED_STATIC` |
| Apps | Quick actions | `AppsQuickActionsActivity`, Home quick-action references | `OBSERVED_STATIC` |
| Apps | App-specific configuration strategy | config data/settings/run flow | `OBSERVED_STATIC` |
| APK | APK import | `ApkImportActivity`, import UI state | `OBSERVED_STATIC` |
| APK | APK/APKS metadata handling | APK/APKS metadata classes | `OBSERVED_STATIC` |
| APK | Installation fallback flow | root/Shizuku/system-installer indicators | `OBSERVED_STATIC` |
| Folders | Folder batch operations | `FoldersBatchActivity` | `OBSERVED_STATIC` |
| Folders | Manifest/file-entry model | `Manifest`, `ManifestInfo`, `FileEntry` indicators | `OBSERVED_STATIC` |
| Folders | Incremental/base backup model | `IncrementalBackup`, `BaseBackup` | `OBSERVED_STATIC` |
| Folders | Chain validation | `ChainValidationResult` | `OBSERVED_STATIC` |
| Messages | MMS/RCS-specific handling | message models/strings/flows | `OBSERVED_STATIC` |
| Wi-Fi | Authentication before sensitive Wi-Fi access | biometric/device-credential indicators | `OBSERVED_STATIC` |
| Wi-Fi | Enterprise Wi-Fi data handling | enterprise Wi-Fi field indicators | `OBSERVED_STATIC` |
| Schedules | Label-based schedule selection | `ScheduleLabelsSelectActivity` | `OBSERVED_STATIC` |
| Schedules | Folder-based schedule selection | `ScheduleFolderSelectActivity` | `OBSERVED_STATIC` |
| Schedules | Detailed last-run error/skipped states | `ScheduleLastRunDetails` + blocked/skipped states | `OBSERVED_STATIC` |
| Cloud | Cloud orphan cleanup | `CloudOrphanCleanerActivity` | `OBSERVED_STATIC` |
| Cloud | Provider diagnostic transfer tests | cloud diagnostic state/test indicators | `OBSERVED_STATIC` |
| Cloud | Multi-provider/server protocol abstraction | cloud client/protocol/model packages | `OBSERVED_STATIC` |
| Cloud | Additional provider indicators | Filen/TeraBox/Yandex and generic protocol references | `OBSERVED_STATIC` |
| Security | Compression levels | compression configuration/method indicators | `OBSERVED_STATIC` |
| Security | Password/encryption strategy | `PasswordStrategyActivity`, `UserPasswordActivity` | `OBSERVED_STATIC` |
| Security | Biometric/device authentication | authentication flow indicators | `OBSERVED_STATIC` |
| Storage | Storage space management | `ManageSpaceActivity` | `OBSERVED_STATIC` |
| Diagnostics | App visibility diagnostics | `AppVisibilityDiagnosticsActivity` | `OBSERVED_STATIC` |
| Diagnostics | Structured logging | `SwiftLogger`, `SLogActivity` | `OBSERVED_STATIC` |
| Search | Dedicated home search | `HomeSearchActivity` | `OBSERVED_STATIC` |
| Android integration | Launcher shortcuts | `ShortcutsActivity`, `ShortcutPinnedReceiver` | `OBSERVED_STATIC` |
| Background execution | Boot/alarm/task receivers | `BootReceiver`, `AlarmReceiver`, task service indicators | `OBSERVED_STATIC` |

### 19.3 Capability details that must remain explicit

#### Apps

The Apps domain is confirmed to contain more than basic Backup/Restore. The reference model must preserve at least:

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

These are reference observations only. BaRe implementation feasibility remains separate.

#### Folders

Folder backup is a structured backup subsystem, not merely a generic recursive copy. Static evidence includes folder metadata, manifest/file-entry models, base/incremental backup models, backup statistics/results, and chain-validation concepts.

BaRe should therefore retain the existing manifest/incremental/validation direction rather than reducing folder backup to a simple archive action.

#### Cloud

Cloud should be modeled as provider infrastructure plus repository/sync workflows. The latest targeted audit additionally confirms dedicated cloud diagnostics and orphan-cleanup workflows. These must not be collapsed into a single `CloudConnected = true/false` state.

#### Security

Compression and encryption are separate concerns. Compression has multiple configuration/level indicators; encryption has password/key/authentication state. BaRe must keep archive/compression and crypto boundaries separate.

#### Diagnostics

Diagnostics are not only a failure page. Static evidence supports dedicated cloud diagnostics, app-visibility diagnostics, logging, transfer checks, and actionable result states.

### 19.4 Premium / entitlement reconciliation

The targeted audit confirms a dedicated Premium/billing surface and reference capability grouping around:

- cloud backups;
- scheduled backups;
- backup history/protection;
- labels;
- custom configurations.

Evidence includes `PremiumActivity`, billing-related infrastructure, and Premium feature strings.

**Important BaRe interpretation:** Premium gating in the reference is an observed product/entitlement behavior. BaRe's product decision to make intended capabilities free must not be implemented by bypassing or modifying Swift licensing. BaRe remains an independent application.

Status: `OBSERVED_STATIC` for reference entitlement indicators; runtime entitlement behavior: `UNKNOWN`.

### 19.5 Navigation reconciliation

The targeted audit reinforces the existing navigation model:

```text
Swift reference primary destinations:

Home ↔ Cloud sync ↔ Schedules ↔ Account
```

Apps/Folders/Messages/Calls/Wi-Fi/Wallpapers and other domains are deep/secondary surfaces reachable from Home or related flows.

For BaRe, the previously chosen four primary tabs remain a **BaRe product decision**, not a claim of 1:1 Swift navigation:

```text
BaRe:
Home ↔ Apps ↔ Schedules ↔ Account
```

This distinction is now explicitly preserved in the reference document so future implementation work does not accidentally treat Swift's Cloud Sync tab as an unresolved BaRe navigation requirement.

### 19.6 Onboarding reconciliation

The targeted audit confirms reference first-run infrastructure around:

- intro/benefit presentation;
- account/sign-in state;
- storage setup;
- privilege/permission state;
- setup failure/recovery;
- first-run restore state.

This supports the BaRe onboarding direction:

```text
WELCOME
  ↓
ACCOUNT / LOCAL SETUP
  ↓
ACCESS / CAPABILITY SETUP
  ↓
BARE MAIN SHELL
```

The exact BaRe split of `Root` vs `Non-root` is a BaRe design decision and must not be represented as an observed Swift screen unless separately evidenced.

### 19.7 State-machine reconciliation

The latest audit reinforces that reference workflows need explicit states beyond `available/unavailable`:

```text
AVAILABLE
UNAVAILABLE
LIMITED
BLOCKED
PERMISSION_REQUIRED
PRIVILEGE_REQUIRED
USER_ACTION_REQUIRED
LOADING
READY
RUNNING
PAUSED/BLOCKED
SUCCESS
NO_CHANGE
PARTIAL
FAILED
SKIPPED
CANCELLED
```

For backup/restore completion:

```text
EXECUTED
→ RESULT_RECORDED
→ POST-CONDITION CHECK
→ VERIFIED
```

The reference audit itself still does not provide runtime verification. These states are therefore reference/state-model evidence, not proof that each transition succeeds on current Android devices.

### 19.8 Reconciliation against existing capability matrix

No existing capability is removed because of this audit. The delta is additive/refining.

The following existing areas are specifically reinforced:

- Apps → backup/restore/app parts/management/configuration;
- Folders → incremental + manifest + validation;
- Messages → SMS/MMS/RCS;
- Call Logs → dedicated backup/restore;
- Wi-Fi → constrained privilege-aware restore;
- Wallpapers → backup/manage/apply;
- Schedules → domain selectors + prerequisite/last-run states;
- Cloud → provider abstraction + diagnostics + orphan management;
- Storage → location + capacity + management;
- Security → encryption + compression + authentication;
- Diagnostics → structured operational troubleshooting;
- Import/Export → APK/APKS and settings/cloud setup flows.

No runtime capability is promoted from `OBSERVED_STATIC` to `RUNTIME_VERIFIED` by this reconciliation.

### 19.9 BaRe requirements impact

The reconciliation changes the **reference-derived requirement surface**, not the implementation status.

Before implementing any of the newly reconciled capability areas, the next chain remains:

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

Particularly, BaRe must not:

- add Swift-specific proprietary classes;
- reproduce Swift's implementation;
- bypass Swift licensing;
- claim root capability merely because the reference contains root paths;
- claim runtime parity from static evidence;
- claim backup/restore success without post-operation verification.

### 19.10 Reconciliation status

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

The reference baseline is now explicitly reconciled with the latest targeted audit. Further static audit should only target unresolved `UNKNOWN` items or materially new questions; it should not repeat the same full-tree scan.

---

# 20. Source register

## Project / local evidence

- `5.1.0 (620).apk` — reference APK audited in this document.
- `SwiftBackup-5.1.0-620-decompiled.zip` — decompiled reference artifact used for targeted static reconciliation.
- Provided Swift Backup screenshots — visual evidence.
- `14Doc_tapikayaknyalebihdari14.md` — previous static capability/feasibility audit and requirement baseline.
- `FULL_LIFECYCLE_SYSTEM_ENGINEER_MASTER_v2.md` — governance/verification rules.
- BaRe `v1.0/rebaseline` — current FE shell used for gap comparison.

## Public evidence

- SwiftApps: https://www.swiftapps.org/
- SwiftApps FAQ: https://www.swiftapps.org/faq
- SwiftApps Configs: https://www.swiftapps.org/configs
- SwiftApps Issues: https://www.swiftapps.org/issues
- Google Play: https://play.google.com/store/apps/details?id=org.swiftapps.swiftbackup
- APKMirror Swift Backup 5.1.0: https://www.apkmirror.com/apk/swiftapps-org/swift-backup/swift-backup-5-1-0-release/

Public sources were used only to corroborate product-visible workflows and published capability constraints. They do not replace static/runtime evidence.

---

# 21. Current audit status

**Audit:** RECONCILED FOR CURRENT EVIDENCE SCOPE  
**Static depth:** HIGH + TARGETED RECONCILIATION  
**Visual depth:** MEDIUM/HIGH for supplied screens  
**Public documentation depth:** HIGH for documented workflows  
**Runtime reference verification:** NOT STARTED  
**BaRe FE implementation:** CURRENT SHELL IMPLEMENTED; capability backend/runtime remains UNVERIFIED  
**Reference reconciliation:** RECORDED IN SECTION 19  
**Next use:** derive BaRe FE contracts/state models from this reconciled reference, then implement only after capability contract and verification path are defined.

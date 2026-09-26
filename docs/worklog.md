# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. History engineering yang sudah dirapikan tersedia di [`docs/worklog_history.md`](./worklog_history.md). Git commit tetap menjadi evidence perubahan repository, bukan pengganti worklog history.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current checkpoint | `42a8962370201f5ce18ae1da20e817ebe11ae062` (pre-worklog update) |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **DISCOVERY / ARCHITECTURE / BUILD** |
| Fokus | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media** |
| Reference audit | **SELESAI** |
| Runtime status | **Existing prior runtime evidence remains valid per worklog; A18 full backup capability is UNVERIFIED. Next authorized sequence: inspect/reproduce Data failure → audit current providers/engine → design unified pipeline.** |
| Root cause | **Current Data backup failure cause is UNKNOWN until source/runtime reproduction. Cloud provider/backend remains separate from the local backup-engine task.** |

## 2. YANG SUDAH TERBUKTI

### Install Date / Update Date
- Implementasi source sudah ada.
- Semantik Reference sudah diaudit dan sekarang source BaRe diselaraskan kembali ke implementasi Reference: raw `PackageInfo.firstInstallTime` / `lastUpdateTime`, serta `DateUtils.getRelativeTimeSpanString`.
- Commit `95505717...` yang menambahkan normalization custom dan eager usage enrichment dinilai tidak selaras dengan Reference dan sudah dikoreksi.
- Screenshot runtime dari build #968 tetap menunjukkan `56 years ago`; evidence tersebut dicatat sebagai runtime failure, bukan dianggap terselesaikan oleh source change baru.

**Status:** `KELAR — sesuai Reference berdasarkan keputusan user; tidak dibuka ulang tanpa evidence baru.`

### Date Used
- Implementasi menggunakan UsageStats + AppOps.
- AppOps menggunakan `noteOpNoThrow`, sesuai Reference.
- Query menggunakan interval BEST, window 30 hari, filter `lastTimeUsed` dalam 1 tahun, dan package match terhadap installed apps.
- Usage data sekarang dipisahkan dari inventory dan dimuat ketika sort `Date Used` aktif, mengikuti pola Reference.
- Privileged/root access path tetap digunakan untuk mencoba grant AppOps sebelum verifikasi ulang.

**Status:** `KELAR — sesuai Reference berdasarkan keputusan user; tidak dibuka ulang tanpa evidence baru.`

## 3. YANG BELUM TERBUKTI

Install Date, Update Date, dan Date Used **sudah KELAR** berdasarkan keputusan user. Ketiganya bukan backlog dan tidak boleh dibuka ulang hanya karena session reset atau worklog lama belum terbarui.

Open verification items mengikuti current Apps checkpoint: A7 masih menunggu CI/runtime evidence; A8 dan capability berikutnya belum menjadi pekerjaan aktif.

## 4. NEXT ACTION

### A. Install Date / Update Date
- **KELAR.** Sudah selesai dan tidak boleh dimasukkan kembali sebagai task.

### B. Date Used
- **KELAR.** Sudah selesai dan tidak boleh dimasukkan kembali sebagai task.

### C. Setelah perubahan
1. Build.
2. Install/update pada device bila diperlukan.
3. Runtime E2E hanya untuk capability yang memang berubah atau belum memiliki evidence yang cukup.
4. Cocokkan runtime dengan expected behavior.
5. Hanya setelah evidence memenuhi acceptance, tandai **VERIFIED**.

## 5. ATURAN

- Jangan audit ulang Reference tanpa evidence baru yang mengubah kontrak.
- Jangan menambah fallback/source alternatif tanpa evidence.
- Jangan menebak root cause.
- Jangan menyamakan `IMPLEMENTED`, `CI VERIFIED`, `RUNTIME TESTED`, dan `VERIFIED`.
- Jangan mengambil task lama dari history sebagai current task tanpa rekonsiliasi dengan current state.

## 6. STATUS DEFINITIONS

- **IMPLEMENTED** = source implementation terobservasi.
- **CI VERIFIED** = CI evidence untuk checkpoint tertentu terverifikasi.
- **RUNTIME TESTED** = perilaku diuji pada device/runtime.
- **VERIFIED** = evidence memenuhi acceptance/expected behavior.
- **UNRESOLVED** = capability ada tetapi hasil runtime belum benar/belum dapat dibuktikan.
- **UNKNOWN** = penyebab belum diketahui.
- **BLOCKED** = prerequisite/otorisasi/evidence yang diperlukan belum tersedia.

## 7. HISTORICAL RECORD

- History lengkap yang sudah dinormalisasi: `docs/worklog_history.md`.
- Sumber history: snapshot `docs/worklog.md` pada `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b`.
- Snapshot tersebut dipertahankan sebagai evidence; history tidak direkonstruksi dari commit message saja.
- Current state di file ini tidak boleh dianggap sebagai pengganti chronology history.
## 8. APPS REFERENCE RECONCILIATION — 2026-09-25

### 8.1 Scope dan evidence
- **REFERENCE:** Swift Backup `5.1.0 (620)` + decompiled APK + `docs/reference.md`.
- **IMPLEMENTATION:** branch `v1.0/rebaseline`, checkpoint `ba5cf753998ff4c25eea9bdc01eceaaadb321975`.
- **Runtime reference:** tidak dijalankan.
- Audit mencakup **Apps shell, Local/Cloud context, search, sort/filter, row actions, App Detail, storage/backup cards, part actions, quick actions, labels, blacklist, custom configuration, backup settings, diagnostics, batch/swipe/import/restore-related child surfaces**.

### 8.2 Temuan utama

**A. Local/Cloud Apps context — GAP nyata**
- Reference mempunyai `Local apps` dan `Cloud synced apps` sebagai **context switch inventory** (`menu_apps_switch.xml`).
- BaRe saat ini menampilkan header **LOCAL APPS** dan inventory installed/local; tidak ada switch Local ↔ Cloud pada Apps shell.
- BaRe sudah mempunyai `CloudSyncState` + `CloudSyncMetadataStore` + cloud-sync filter boundary, tetapi itu **bukan pengganti Cloud inventory/context**.
- Cloud execution/provider backend memang belum tersedia; namun **context/tab/surface-nya seharusnya sudah ada sebagai wiring FE** bila mengikuti reference IA.

**B. Apps row — GAP visual/interaction**
- Reference row memiliki metadata lebih kaya, labels, favorite indicator, overflow, swipe actions, dan optional batch checkbox.
- BaRe row saat ini memiliki icon/name/package + satu metadata line bergantung sort + overflow; belum memiliki row labels, swipe actions, dan batch-selection affordance.

**C. Filter/sort — sebagian besar sudah ada**
- Semua 7 sort criterion reference sudah tersedia di `AppsFilter.kt`: Name, Install date, Update date, Backup date, Backup size, Date used, App size.
- Filter utama reference juga sudah dimodelkan: app type, system-app subfilters, favorites, labels, on-device backup, cloud sync, install status, enabled status, multiple backups, protected, notes, older/newer APK, Google Play/non-Google Play.
- Gap kecil: active-chip removal belum mencakup **Cloud Sync**; filter tersebut tetap bergantung pada metadata provider yang tersedia.

**D. App Detail — shell ada, tetapi parity structural belum tercapai**
- Reference mempunyai **App Info + Device Backup + Cloud Backup** sebagai card terpisah.
- Reference storage surface memakai part chips + Backup CTA; backup card mempunyai loading/error, tabs, metadata/note, restore, dan action menus yang berbeda.
- BaRe mempunyai App Detail + storage chips + Device/Cloud state cards, tetapi Device/Cloud card masih placeholder/unverified dan tidak mempunyai tab/backup-version inventory yang setara reference.
- BaRe part surface saat ini hanya executable untuk subset Device backup; Cloud destination ditolak backend.

**E. App Detail action surface — banyak sudah wired, tetapi beberapa masih GAP**
- Wired/implemented: Launch, Enable/Disable, Force stop, Clear data, Uninstall, Android App Info, Play Store, Battery optimization, Add to Home, Favorites, Labels, Blacklist.
- Share APK pada App Detail masih disabled/unavailable walaupun helper share tersedia di App Backup screen.
- Reference membedakan storage-part actions, backup-version actions, dan backup-card actions; BaRe saat ini masih menggabungkan sebagian flow menjadi generic action/placeholder surface.

### 8.3 APP-01..APP-54 parity matrix

| ID | Capability | Current BaRe | Parity / gap |
|---|---|---|---|
| APP-01 | App Workspace / App Detail foundation | Implemented | **PARTIAL** — shell ada; structure/card/state belum parity |
| APP-02 | Local apps inventory | Implemented | **MATCH/PARTIAL** — local inventory ada |
| APP-03 | Cloud-synced apps inventory | Cloud metadata only | **GAP** — belum ada Cloud inventory/context |
| APP-04 | Search apps | Implemented | **MATCH** |
| APP-05 | Sort apps | Implemented | **MATCH** — 7 criterion tersedia; runtime Date Used tetap unresolved |
| APP-06 | App-type filtering | Implemented | **MATCH** |
| APP-07 | System-app subfilters | Implemented | **MATCH** |
| APP-08 | Favorites | Implemented/persisted | **MATCH/PARTIAL** — row presentation belum parity |
| APP-09 | Labels | Implemented/persisted | **MATCH/PARTIAL** — row labels/reference presentation belum parity |
| APP-10 | On-device backup status filter | Implemented | **PARTIAL** — local metadata exists, runtime coverage pending |
| APP-11 | Cloud-sync status filter | Implemented boundary | **PARTIAL/BLOCKED** — provider metadata absent by default |
| APP-12 | Install-status filter | Implemented | **MATCH** |
| APP-13 | Enabled-status filter | Implemented | **MATCH** |
| APP-14 | Multiple-backup filter | Implemented | **MATCH/PARTIAL** — inventory data is local-only |
| APP-15 | Protected-backup filter | Implemented | **PARTIAL** — metadata path exists; protected execution/UI not full parity |
| APP-16 | Notes filter | Implemented | **PARTIAL** — metadata path exists; note workflow not full parity |
| APP-17 | Older/newer APK relation | Implemented | **MATCH/PARTIAL** — local backup relation only |
| APP-18 | Google Play install-source filter | Implemented | **MATCH** within current semantic boundary |
| APP-19 | Device/cloud backup state | Device/Cloud cards exist | **PARTIAL** — state cards are placeholder/unverified |
| APP-20 | App backup parts | APK/Data/Ext data/Media UI | **PARTIAL** — split APK/OBB/shared libraries/other reference parts absent from executable part model |
| APP-21 | App backup | Device subset executable | **PARTIAL** — Cloud unsupported; Media unsupported |
| APP-22 | App restore | Restore screen exists | **GAP** — current screen is mockup/pending execution |
| APP-23 | Delete local/device backups | Delete surface exists | **GAP** — current part delete routes to unavailable |
| APP-24 | Multiple-backup strategy | Config/settings UI | **PARTIAL** — UI only/no real strategy engine |
| APP-25 | Protected backup | Metadata field exists | **GAP/PARTIAL** — user action surface still mockup |
| APP-26 | Backup data size limits | Settings row exists | **GAP** — no real limits editor/execution |
| APP-27 | Encryption of app data backups | Password-strategy screen exists | **PARTIAL** — App backup execution not integrated |
| APP-28 | Backup cache option | Persisted setting exists | **PARTIAL** — setting not tied to backup engine |
| APP-29 | Batch operations | Quick Actions surface | **GAP** — no reference-equivalent selection-mode batch activity |
| APP-30 | Batch search/filter/select-all | Quick Actions only | **GAP** — no batch selection workflow |
| APP-31 | Batch app backup settings | Settings surface | **PARTIAL** — no batch activity equivalent |
| APP-32 | Labels/favorites/blacklist management | Implemented/persisted | **PARTIAL** — basic organization exists; reference domain broader |
| APP-33 | Blacklist behavior | Hide + APK-only state boundary | **PARTIAL** — management UI does not expose full reference mode workflow |
| APP-34 | Custom app configurations | In-memory config list | **GAP** — not persistent/domain-backed like reference Configs |
| APP-35 | Run configuration now | UI action exists | **GAP** — action is mockup/pending |
| APP-36 | Schedule configuration | Schedule binding field/UI | **GAP** — no actual config-to-schedule execution |
| APP-37 | Quick actions | Full reference-like list exists | **GAP** — actions show backend-pending dialogs |
| APP-38 | App swipe actions | No implementation surface | **GAP** |
| APP-39 | App visibility diagnostics | Separate diagnostics screen exists | **PARTIAL** — separate surface, not full Apps child parity |
| APP-40 | APK/APKS import/install | No Apps implementation | **GAP** |
| APP-41 | Restore runtime/special data | Settings/restore mockup | **GAP** — no restore execution |
| APP-42 | App SSAID restore | Setting exists | **GAP** — no restore execution |
| APP-43 | Missing-app restore | Quick/restore UI exists | **GAP** — execution pending |
| APP-44 | Newer-version restore | Quick/restore UI exists | **GAP** — execution pending |
| APP-45 | Launch installed app | Implemented | **MATCH** |
| APP-46 | Enable / disable app | Implemented with action executor | **MATCH/PARTIAL** — runtime evidence separate |
| APP-47 | Force stop app | Implemented with action executor | **MATCH/PARTIAL** |
| APP-48 | Uninstall app | Implemented/system fallback | **MATCH/PARTIAL** |
| APP-49 | Open Android App Info | Implemented | **MATCH** |
| APP-50 | Open Play Store | Implemented | **MATCH** |
| APP-51 | Share APK | Helper exists; App Detail action disabled | **PARTIAL/GAP** |
| APP-52 | Battery optimization management | Implemented/root + system fallback | **MATCH/PARTIAL** |
| APP-53 | Add app to Home screen | Implemented | **MATCH/PARTIAL** |
| APP-54 | Clear app data | Implemented with confirmation | **MATCH/PARTIAL** |

### 8.4 UI mismatch list yang paling konkret

1. **Missing Local/Cloud context switch pada Apps shell.**
2. **Apps row terlalu sederhana** dibanding reference: labels/favorite badge/metadata/swipe/batch affordance belum lengkap.
3. **Batch activity/selection mode belum ada**; current Quick Actions bukan pengganti batch selection.
4. **App Detail belum memodelkan tiga action layers reference**: storage-part menu, backup-version menu, backup-card menu.
5. **Device/Cloud backup cards belum mempunyai real inventory/state** dan masih memakai placeholder/unverified text.
6. **App Detail storage total belum parity dengan reference storage model**: current formula hanya APK + Data + External data + Media; reference model juga memperhitungkan split APK/shared libraries/DE data/OBB/expansion sesuai evidence yang tersedia.
7. **Cloud backup execution belum ada**; Cloud destination pada `AppBackupBehavior` explicit `Unsupported`.
8. **Restore/delete/protected/note/limits/config-run/quick-actions masih banyak yang UI-only/mockup.**
9. **Swipe actions dan APK/APKS import/install child surfaces belum ada.**
10. **Reference filter surface sudah paling dekat**, tetapi active-chip lifecycle untuk Cloud Sync belum lengkap.

### 8.5 Verification boundary
- Matrix di atas adalah **static/source parity audit**, bukan runtime verification.
- `IMPLEMENTED` berarti source behavior terobservasi; tidak otomatis berarti runtime benar.
- Untuk action yang memiliki root/system dependency, runtime proof tetap diperlukan.
- Cloud provider/backend belum ada; `CloudSyncMetadataStore` hanya boundary persistence.

## 9. A1-A18 CONTINUITY MAP — Apps subtree

**Aturan baru audit:** setiap status PARTIAL wajib menjelaskan **partial-nya di mana**. PARTIAL tanpa gap spesifik tidak dianggap cukup sebagai audit evidence. Jika gap berupa verification, dependency, parity, persistence, atau execution, jenis gap ditulis eksplisit.

| A | Work slice | Status | Partial / Gap spesifik |
|---|---|---|---|
| A1 | Apps shell + Local context | **IMPLEMENTED / PARTIAL** | **Reference parity:** shell Local sudah ada, tetapi context switch Local ↔ Cloud pada Apps shell belum lengkap pada checkpoint audit reference. |
| A2 | Apps search | **IMPLEMENTED** | Tidak ada partial yang tercatat pada scope ini. Search yang dianggap implemented adalah Search pada Apps List. |
| A3 | Apps filter model + behavior | **IMPLEMENTED / PARTIAL** | **Metadata/dependency:** sebagian besar filter reference sudah dimodelkan, tetapi Cloud Sync filter bergantung pada metadata provider yang belum tersedia. **Verification:** runtime coverage filter belum lengkap. |
| A4 | Apps storage/App Size model | **IMPLEMENTED / PARTIAL** | **Reference parity:** local StorageStats/App Size sudah ada, tetapi model storage belum mencakup seluruh komponen reference. **Verification:** parity runtime belum lengkap. |
| A5 | Apps Local/Cloud context wiring | **IMPLEMENTED / PARTIAL** | **FE wiring ada**, tetapi **Cloud inventory/provider backend belum tersedia**. Karena itu Cloud context belum dapat dibuktikan memiliki inventory runtime yang setara reference. |
| A6 | Apps row identity/metadata/organization presentation | **PARTIAL** | **Reference parity:** row belum lengkap pada labels, favorite presentation, metadata richness, swipe actions, dan batch-selection affordance. |
| A7 | App Detail foundation/header | **IMPLEMENTED / PARTIAL** | **Foundation implemented**, tetapi **runtime verification belum selesai**. Structural/card/state parity App Detail juga belum penuh; shell/header adalah bagian yang sedang diverifikasi. |
| A8 | App Detail storage parts + total/cache presentation | **IMPLEMENTED / PARTIAL** | **Reference parity:** part model dan storage presentation belum mencakup seluruh reference parts. **Backend/execution:** sebagian destination/part belum executable. **Verification:** runtime belum lengkap. |
| A9 | App Detail app-level actions | **VERIFIED** | Shared behavior boundary terbukti E2E untuk Launch, App Info, Play Store, Enable/Disable, Force Stop, Clear Data, Add to Home, Battery Optimization, dan Uninstall. Uninstall reconciliation dan Battery Optimization consistency kemudian diuji user dan dilaporkan berfungsi/konsisten; destructive uninstall confirmation juga diverifikasi runtime pada App Detail. |
| A10 | App Detail part-level actions | **PARTIAL** | **Execution/parity gap:** baru sebagian part actions yang executable; action layer reference untuk part/backup-version/backup-card belum seluruhnya terpisah dan wired. |
| A11 | Device backup card/inventory | **PARTIAL / UNVERIFIED** | **Inventory/state gap:** card/surface ada, tetapi backup-version inventory, loading/error state, metadata, restore/action menu belum parity. **Verification:** runtime belum terbukti. |
| A12 | Cloud backup card/inventory | **PARTIAL / BLOCKED BY PROVIDER** | **Dependency blocker:** cloud provider/backend belum tersedia. Surface bisa ada, tetapi inventory/state/execution Cloud tidak dapat diverifikasi end-to-end. |
| A13 | App backup execution | **PARTIAL** | **Execution coverage:** Device backup hanya subset yang tersedia; **Cloud destination dan Media belum supported**. Karena itu execution belum full parity reference. |
| A14 | App restore execution | **GAP / MOCKUP** | **Execution gap:** restore surface ada, tetapi execution backend belum tersedia/terbukti. |
| A15 | Favorites/Labels/Blacklist organization | **IMPLEMENTED / PARTIAL** | **Domain coverage/parity:** basic persistence dan UI sudah ada, tetapi workflow/reference coverage lebih luas; row presentation dan beberapa management behavior belum full parity. |
| A16 | Quick Actions / Batch | **UI IMPLEMENTED / EXECUTION PENDING** | **Reference workflow gap:** Quick Actions UI bukan pengganti batch-selection activity. Selection mode, select-all, batch execution, dan equivalent batch flow belum lengkap. |
| A17 | Custom Config + App Backup Settings | **PARTIAL** | **Execution/persistence gap:** beberapa settings/config surfaces ada, tetapi config engine, run-now, scheduling, limits/strategy integration belum terbukti sebagai behavior nyata end-to-end. |
| A18 | Diagnostics / Swipe / Import-Install / remaining child flows | **PARTIAL / GAP** | **Coverage gap:** Diagnostics sebagian ada; Swipe Actions dan APK/APKS Import/Install belum implemented; beberapa restore/child flows masih mockup/pending. |

### 9.1 Cara membaca status

- IMPLEMENTED = source implementation terobservasi.
- IMPLEMENTED / PARTIAL = capability inti sudah ada, **tetapi kolom Partial / Gap spesifik di atas wajib dibaca sebagai bagian dari status**.
- PARTIAL / UNVERIFIED = implementation ada sebagian, tetapi evidence runtime/acceptance belum cukup.
- PARTIAL / BLOCKED = implementation/surface ada, tetapi dependency eksternal yang diperlukan belum tersedia.
- GAP / MOCKUP = surface mungkin ada, tetapi capability behavior belum implemented sebagai execution nyata.
- EXECUTION PENDING = UI/wiring ada, execution backend atau end-to-end proof belum ada.

### 9.2 Audit rule

Pada audit berikutnya jangan bertanya hanya **"A berapa statusnya?"**. Pertanyaan audit harus menjadi:

1. **Apa yang sudah implemented?**
2. **Partial-nya tepat di bagian mana?**
3. **Jenis gap-nya apa:** parity / behavior / execution / persistence / dependency / verification?
4. **Evidence apa yang sudah ada?**
5. **Apa acceptance condition untuk menutup partial tersebut?**

Dengan format ini, PARTIAL menjadi **actionable audit scope**, bukan label perkiraan.

## 10. IMPLEMENTATION UPDATE — 2026-09-25

### Local / Cloud Apps context
- **AUTHORIZED:** user memberi GO untuk menyelesaikan Local/Cloud Apps dan Share APK.
- Apps shell sekarang memiliki **sub-header tabs** `Local apps` / `Cloud synced apps`.
- Tab Local mempertahankan inventory/filter/sort yang sudah ada.
- Tab Cloud sekarang menjadi context/surface tersendiri dan tidak lagi memakai dialog context lama.
- Cloud provider/backend tetap **belum ada**; tab Cloud bukan bukti inventory cloud runtime.

### Share APK
- `AppDetailScreen` sudah memiliki Share APK pada storage-part action untuk APKs.
- `AppShareBehavior` sekarang mencoba jalur **non-root PackageManager** terlebih dahulu, lalu fallback ke **root** bila jalur non-root gagal.
- Staging + `FileProvider` + `ACTION_SEND` / `ACTION_SEND_MULTIPLE` tetap dipakai.
- **Runtime verification:** belum dilakukan pada device setelah perubahan ini.

### Verification boundary
- Static source inspection setelah perubahan: file balances valid untuk braces/parentheses/brackets.
- CI/workflow untuk commit `49ae91f...`: belum tersedia pada saat pencatatan ini.
- **Status keseluruhan:** `IMPLEMENTED / RUNTIME VERIFICATION PENDING`.

## 10.2 A9 IMPLEMENTATION UPDATE — 2026-09-25

### Shared app-level action boundary
- **AUTHORIZED:** user memberi GO untuk mengerjakan gap A9 sambil memperbarui continuity matrix A1-A18.
- AppActionBehavior sekarang juga menjadi owner untuk **Add to Home screen**.
- App Detail tidak lagi membangun ShortcutManager / ShortcutInfo langsung di UI; screen hanya memanggil AppActionBehavior.addToHomeScreen(...).
- Apps List battery-optimization path tidak lagi memanggil RootAppActionExecutor langsung dari UI. Jalur tersebut sekarang melalui AppActionBehavior.setBatteryOptimization(...), sementara fallback/system handling tetap dimiliki behavior layer.
- AppActionBehavior tetap menjadi shared action boundary untuk Launch, App Info, Play Store, Uninstall, Enable/Disable, Force Stop, Clear Data, Battery Optimization, dan Add to Home.
- AppShareBehavior tetap terpisah sebagai capability khusus Share APK; tidak diduplikasi ke AppActionBehavior.

### Static verification
- **OBSERVED:** AppsScreens.kt memiliki wiring AppActionBehavior.addToHomeScreen(...).
- **OBSERVED:** AppsFilter.kt tidak lagi memiliki direct call ke RootAppActionExecutor.setBatteryOptimizationExempt(...).
- **OBSERVED:** AppActionBehavior.kt memiliki implementation Add to Home dan tetap menjadi owner root/system fallback.
- **NOT YET VERIFIED:** compile/CI dan runtime device untuk perubahan A9 ini.

### A1-A18 matrix reconciliation
- **A1:** IMPLEMENTED / PARTIAL.
- **A2:** IMPLEMENTED.
- **A3:** IMPLEMENTED / PARTIAL.
- **A4:** IMPLEMENTED / PARTIAL.
- **A5:** IMPLEMENTED / PARTIAL — Local/Cloud context tabs sudah ada; cloud provider/inventory backend belum tersedia.
- **A6:** PARTIAL.
- **A7:** IMPLEMENTED / PARTIAL.
- **A8:** IMPLEMENTED / PARTIAL.
- **A9:** IMPLEMENTED / PARTIAL — shared behavior boundary sudah dirapikan; verification perubahan pending.
- **A10:** PARTIAL.
- **A11:** PARTIAL / UNVERIFIED.
- **A12:** PARTIAL / BLOCKED BY PROVIDER.
- **A13:** PARTIAL.
- **A14:** GAP / MOCKUP.
- **A15:** IMPLEMENTED / PARTIAL.
- **A16:** UI IMPLEMENTED / EXECUTION PENDING.
- **A17:** PARTIAL.
- **A18:** PARTIAL / GAP.
## 10.1 RUNTIME FEEDBACK — 2026-09-25

- **OBSERVED (user device screenshots):** App Detail action-menu `Share APK` was present but tapping it produced `Action unavailable`; the bottom-sheet `Share APK` action was also disabled. The Apps screen shown on-device did not show the newly implemented Local/Cloud sub-header tabs.
- **ROOT CAUSE (verified in source):** the App Detail top action `Share APK` was still hard-coded to `app_action_unavailable` even though `AppShareBehavior` existed and storage-chip Share APK was wired.
- **FIX IMPLEMENTED:** App Detail top action now calls `AppShareBehavior.shareApk(...)`, with failure surfaced as the actual reason; the action is enabled when package details are available.
- **BUILD/DEVICE:** No new APK build/runtime verification was available in this environment after the fix. The screenshots therefore remain evidence of the pre-fix installed build/runtime state.

## 10.2 APPS LOCAL/CLOUD HEADER FIX — 2026-09-25

- **OBSERVED:** previous Local/Cloud implementation was placed in `AppsScreens.kt`, while the actual runtime Apps surface is `AppsFilterScreen` hosted by `BaReApp`.
- **ROOT CAUSE:** the installed/runtime Apps header is rendered by `AppsContextHeader`; therefore the previous change could not affect the screenshoted Apps surface.
- **FIX IMPLEMENTED:** Local/Cloud state is now owned by the Apps shell, rendered as tabs directly under the Apps header/sub-header, and passed into `AppsFilterScreen`.
- **LOCAL:** existing inventory/filter flow remains active.
- **CLOUD:** opens a dedicated Cloud context surface with the existing provider-boundary status; no cloud provider/backend is falsely claimed.
- **VERIFICATION:** source structure/balance checked; APK build/device verification still pending.

## 10.3 APPS LOCAL/CLOUD COMPOSITION FIX — 2026-09-25

- **OBSERVED:** after the Local/Cloud header wiring, the Cloud branch in AppsFilterScreen used a non-local return from the Column content lambda.
- **ROOT CAUSE:** the Cloud branch composition was structurally invalid for the Compose lambda and could present as a hang/blocking state rather than a clean context surface.
- **FIX IMPLEMENTED:** replaced the early return with explicit if (CLOUD) ... else { existing Local LazyColumn } composition.
- **VERIFICATION:** source was re-read after the change; CI Android build is queued for commit b96db02e3883b97173e9dbbb8bfd651bc1f34f67. Runtime/device verification remains pending until a built APK is available.

## 10. NEXT ACTION

1. **A9:** build/CI checkpoint 84e40a....
2. Install/update APK pada device bila build tersedia.
3. E2E ulang **Battery Optimization** dari Apps List dan App Detail pada package yang sama; acceptance: semantic status + switch konsisten dan perubahan state tercermin setelah kembali dari action/system settings.
4. E2E ulang **Uninstall** dengan app test yang sudah memiliki backup; acceptance: setelah uninstall selesai dan kembali ke BaRe, App Detail tidak lagi menampilkan state/package stale atau "App not found", dan inventory kembali menampilkan state aktual.
5. Jika dua acceptance A9 terpenuhi, tutup A9 sesuai evidence lalu lanjut **A10**.
6. Install Date / Update Date / Date Used tetap **tidak dibuka ulang** tanpa evidence baru.

## 10.4 A7 APP DETAIL FOUNDATION / HEADER — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk A7.
- **INSPECTED:** actual App Detail implementation pada branch `v1.0/rebaseline` sebelum perubahan.
- **REFERENCE CHECK:** Swift Backup decompile menunjukkan Favorite pada App Detail sebagai overlay bintang kecil di pojok icon (`iv_favorite`), bukan chip/tombol teks. Area label menggunakan `rv_app_labels`; item label berbentuk compact rounded card dengan border, teks uppercase/bold, tanpa icon label di setiap item.
- **CORRECTION:** implementasi awal Favorite/Label sebagai `AssistChip` dinyatakan tidak sesuai reference dan tidak dipertahankan.
- **IMPLEMENTED:** Favorite pada App Detail sekarang ditampilkan sebagai bintang kecil yang menempel pada icon aplikasi, konsisten dengan konsep Favorite pada Apps List dan Swift Detail.
- **IMPLEMENTED:** label pada App Detail sekarang menggunakan compact rounded outlined surface, teks uppercase/bold, tanpa icon tambahan. Geometri/typography mengikuti evidence `app_label_item.xml`.
- **BOUNDARY:** BaRe saat ini menyimpan label sebagai string, bukan `LabelParams(id,name,color)` seperti Swift. Karena itu warna label premium/custom belum direkonstruksi tanpa evidence/data source yang sesuai.
- **SCOPE:** A7 foundation/header only. Device/Cloud backup cards dan storage-part restructuring tetap dipisahkan untuk A8/A11/A12.
- **COMMIT:** `90b384554cd8d768332cea4cf2113dd459d0ba4e` — `fix(apps): align detail favorite and label presentation`.
- **SOURCE VERIFICATION:** updated file dibaca ulang dari branch dan blok UI terkonfirmasi berubah sesuai reference.
- **BUILD/RUNTIME:** belum ada build baru setelah commit ini; runtime device verification belum dilakukan.

### A7 NEXT
Setelah build lolos, lanjut verifikasi visual App Detail pada device. Jangan menganggap parity label warna/custom sudah selesai sebelum data model dan behavior label BaRe dibandingkan lagi dengan reference decompile.


## 10.6 A9 E2E FEEDBACK + CORRECTION — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk memperbaiki defect A9 berdasarkan E2E device evidence.
- **E2E OBSERVED:** Launch berhasil membuka app; App Info membuka Android App Info; Play Store bekerja untuk app yang tersedia di Google Play; Enable/Disable, Force Stop, dan Clear Data bekerja; Add to Home menghasilkan shortcut nyata di Home screen.
- **E2E OBSERVED:** Uninstall benar-benar menghapus 1DM+ dari inventory (count 494 → 493), tetapi App Detail tetap memegang state/package lama dan kemudian menampilkan "App not found".
- **ROOT CAUSE SOURCE:** system uninstall mengembalikan OPENED_SYSTEM, sehingga BaRe tidak mengetahui completion langsung dari AppActionBehavior. App Detail sebelumnya tidak memiliki lifecycle reconciliation setelah kembali dari system uninstall. Root uninstall path juga tidak menutup detail setelah COMPLETED.
- **FIX IMPLEMENTED:** App Detail sekarang mengamati ON_RESUME dengan lifecycle-aware DisposableEffect; bila package yang sedang dibuka sudah tidak ter-install, detail ditutup melalui onBack(). Root uninstall COMPLETED juga langsung menutup detail.
- **E2E OBSERVED:** Battery Optimization memiliki semantic state berbeda antar-surface. Apps List menggunakan true = optimizing, sedangkan App Detail menggunakan true = exempt/not optimized. Ini membuat switch/status tampak tidak sinkron untuk package yang sama.
- **FIX IMPLEMENTED:** App Detail sekarang menggunakan semantic state yang sama dengan Apps List: batteryOptimizing = !isIgnoringBatteryOptimizations(packageName), dan status/switch/action memakai semantic tersebut. AppActionBehavior.setBatteryOptimization() tetap menggunakan exempt = !enableOptimization sebagai contract Android/root.
- **SOURCE VERIFICATION:** branch v1.0/rebaseline saat ini berada pada commit 84e40a916f53117a55511c386134fb15d77dfa18; perubahan source hanya menyentuh AppsScreens.kt untuk uninstall lifecycle reconciliation dan Battery Optimization state normalization.
- **EXTERNAL BASIS:** Android Compose guidance mendukung penggunaan DisposableEffect untuk mendaftarkan dan membersihkan LifecycleEventObserver saat composable membutuhkan observasi lifecycle. citeturn0search0turn0search10
- **NOT VERIFIED YET:** build/CI dan device E2E setelah fix belum tersedia. A9 belum boleh ditutup sebelum kedua defect diuji ulang.

## 10.5 LABEL FOUNDATION / REFERENCE-ALIGNED SHELL — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk membangun rumah capability Label, bukan hanya dialog input manual.
- **REFERENCE BASIS:** Swift Backup `LabelsActivity` memiliki 3 mode (Manage App Labels / Set App Labels / Select Labels), app-info card, selected-labels area, existing-label Flexbox label list, Apply action, Create New Label, dan LabelEditActivity dengan preview, name, color, apps using label, Save/Cancel.
- **IMPLEMENTED:** BaRe sekarang memiliki global header + sub-global header untuk Label surfaces, halaman App Labels management, halaman Set App Labels dari App Detail, existing-label selection, selected-labels area, Apply, Create New Label, dan full Label editor surface.
- **IMPLEMENTED:** label storage sekarang memiliki definition + optional color metadata, tetap backward-compatible dengan label string yang sudah ada.
- **IMPLEMENTED:** App Detail `Set App Labels` sekarang membuka selection surface, bukan dialog textbox manual.
- **BOUNDARY:** backend/wiring lanjutan seperti batch assignment, filtering, schedules, custom configurations, dan capability label lain belum dipaksakan selesai di checkpoint ini; rumah UI dan state dasar sudah disediakan.
- **SOURCE VERIFICATION:** source branch dibaca ulang setelah perubahan dan route/surface terkonfirmasi.
- **BUILD:** GitHub Actions build masih berjalan untuk rangkaian commit ini; belum boleh dinyatakan PASS sampai run terbaru selesai.

## 10.6 A7 APP DETAIL GLOBAL APPS HEADER — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk menyelesaikan seluruh scope A7 sampai selesai.
- **OBSERVED:** App Detail sebelumnya bypass Apps global shell dan hanya memakai standalone detail TopAppBar.
- **DESIGN CORRECTION:** user menegaskan bahwa GlobalHeader hanya berisi brand statis BARE + SAVE OUR DAY, dengan ukuran/typography yang konsisten. Context Apps (LOCAL APPS / CLOUD SYNCED APPS, jumlah apps, search, filter, menu) adalah AppsSubHeader yang lebih compact dan dinamis.
- **IMPLEMENTED:** shell sekarang memisahkan GlobalHeader dan AppsSubHeader; keduanya tidak lagi digabung sebagai satu AppsGlobalHeader.
- **GLOBAL HEADER RULE:** GlobalHeader tetap konsisten lintas halaman; search hanya menjadi action tambahan bila halaman tersebut memang menggunakan search pada global header. Untuk Apps, search tetap berada di AppsSubHeader.
- **APP DETAIL:** App Detail sekarang tersusun GlobalHeader → AppsSubHeader → App Detail content. Back navigation ditempatkan pada AppsSubHeader karena merupakan bagian dari navigasi/context halaman, bukan identitas global.
- **HEADER CONTINUITY:** AppsSubHeader mempertahankan Local/Cloud context, inventory count, search, filter, menu, dan state Apps saat masuk ke App Detail.
- **APP INFO:** identity/header App Detail yang sudah ada (icon, package, name, version, Favorite, labels, overflow/actions) dipertahankan; tidak direopen sebagai capability baru.
- **SCOPE BOUNDARY:** storage-part restructuring, Device/Cloud backup inventory, dan part-level action parity tetap A8/A10/A11/A12; tidak dicampur ke A7.
- **SOURCE VERIFICATION:** BaReApp.kt dan AppsScreens.kt dibaca ulang dari branch setelah perubahan.
- **BUILD/RUNTIME:** BELUM VERIFIED. Perubahan source sudah committed; build Android dan runtime device untuk struktur header yang dikoreksi masih harus diverifikasi.

## 10.7 A7 HEADER ARCHITECTURE CORRECTION — 2026-09-25

- **USER DECISION:** GlobalHeader = brand statis; AppsSubHeader = context/navigation Apps yang dinamis.
- **IMPLEMENTATION:** GlobalHeader dan AppsSubHeader sekarang merupakan dua composable terpisah dan dipakai ulang oleh Apps shell + App Detail.
- **VISUAL INTENT:** GlobalHeader mempertahankan tinggi 96dp dan typography/letter-spacing brand yang sama; AppsSubHeader tetap compact 64dp pada state normal/search.
- **SEARCH RULE:** Apps search tetap di AppsSubHeader; global search action tetap tersedia untuk non-Apps pages yang memang sudah memilikinya.
- **APP DETAIL ORDER:** GlobalHeader → AppsSubHeader → App Detail content.
- **VERIFICATION BOUNDARY:** source change sudah committed, tetapi CI/runtime belum dianggap verified sampai evidence aktual tersedia.



## 10.8 CONTINUITY CORRECTION — 2026-09-25

- **USER DECISION:** Pola halaman baru mengikuti struktur header yang sama. Untuk surface baru seperti Label, prinsipnya tetap GlobalHeader → SubHeader dinamis → content. Dialog/bottom sheet yang masih berada di halaman yang sama tidak membuat halaman/header baru.
- **GLOBAL HEADER CONTRACT:** BARE + SAVE OUR DAY adalah identitas global yang konsisten: ukuran, typography, dan spacing tidak berubah-ubah antar halaman.
- **SUBHEADER CONTRACT:** SubHeader berubah sesuai konteks halaman. Apps memakai AppsSubHeader; halaman lain dapat memiliki subheader sesuai domainnya. Search ditempatkan di level yang sesuai konteks halaman, bukan dipaksakan ke GlobalHeader.
- **COMPLETED DATE WORK:** Install Date, Update Date, dan Date Used ditandai KELAR dan dikeluarkan dari backlog aktif. Worklog lama yang menyiratkan ketiganya masih terbuka harus dianggap superseded oleh checkpoint ini.
- **LABEL:** Label foundation/reference-aligned shell sudah diimplementasikan pada source. Struktur header Label menjadi penerapan pola global/subheader di atas; capability lanjutan label tetap mengikuti boundary yang sudah dicatat.
- **A7 CURRENT:** struktur shell dipertahankan sebagai GlobalHeader → SubHeader → App Detail content, tetapi **isi SubHeader App Detail berbeda dari Apps**. Apps memakai kontrol context/count/search/filter/menu; App Detail hanya **back + nama aplikasi**.
- **SUBHEADER VISUAL CONTRACT:** slot/tinggi SubHeader tetap seragam **64dp** agar perpindahan flow tidak menghasilkan gap/lompatan visual. Yang berubah adalah isi sesuai konteks.
- **NEXT:** build dan runtime E2E ulang untuk memastikan Apps → App Detail menunjukkan GlobalHeader yang sama, tinggi SubHeader yang sama, dan Detail SubHeader hanya back + nama aplikasi. Setelah evidence memenuhi acceptance, baru tutup A7 dan lanjut A8.


## 10.9 A7 BUILD FAILURE / MATERIAL API FIX — 2026-09-25

- **OBSERVED:** GitHub Actions run #1016 untuk commit `a6181739c8d5708e078f2bdc45ab03a7184f7dc0` gagal pada `:app:compileDebugKotlin`.
- **ERROR:** `BaReApp.kt:801:5 This material API is experimental and is likely to change or to be removed in the future.`
- **ROOT CAUSE:** `GlobalHeader` memakai `TopAppBar` Material 3 experimental API tanpa opt-in pada scope composable.
- **FIX IMPLEMENTED:** menambahkan `@OptIn(ExperimentalMaterial3Api::class)` pada `GlobalHeader`; tidak mengubah struktur header atau behavior A7.
- **COMMIT FIX:** `2140ccbf517d53af5b70f353365a07966015b89b` — `fix(apps): opt in global header material api`.
- **CI STATUS:** run #1016 **FAILED**; fix commit belum memiliki hasil CI baru pada saat checkpoint ini dicatat.
- **VERIFICATION BOUNDARY:** build/runtime masih **UNVERIFIED**. Setelah fix, CI harus lulus terlebih dahulu; kemudian runtime visual A7 perlu diuji.


## 10.10 GLOBAL HEADER FOUNDATION EXTRACTION — 2026-09-25

- **USER DECISION:** Untuk sekarang cukup siapkan fondasi GlobalHeader yang reusable; refactor seluruh halaman dilakukan kemudian.
- **IMPLEMENTED:** `GlobalHeader` dipindahkan dari `BaReApp.kt` menjadi shared component `app/src/main/java/com/bare/app/GlobalHeader.kt`.
- **CONTRACT:** komponen mempertahankan identitas global `BARE / SAVE OUR DAY`, ukuran 96dp, typography dan letter-spacing yang sudah dipakai pada A7.
- **BOUNDARY:** belum semua halaman direfactor untuk memakai komponen ini. Apps/App Detail tetap menjadi consumer yang sudah ada; audit dan migrasi seluruh halaman ditunda sesuai keputusan user.
- **VERIFICATION:** source extraction committed. CI/runtime untuk commit extraction belum diverifikasi.


## 10.11 A7 APP DETAIL SUBHEADER CONTEXT CORRECTION — 2026-09-25

- **OBSERVED (user E2E):** hasil runtime setelah GlobalHeader extraction masih tidak sesuai pada App Detail karena App Detail mewarisi seluruh AppsSubHeader, termasuk search, filter, dan menu.
- **USER DECISION:** flow Apps dan App Detail harus memakai shell visual yang konsisten, tetapi SubHeader bersifat context-specific.
- **APPS:** GlobalHeader → Apps SubHeader **64dp** (back/context/count/search/filter/menu) → Apps Body.
- **APP DETAIL:** GlobalHeader → Detail SubHeader **64dp** (back + nama aplikasi saja) → App Detail Body.
- **FIX IMPLEMENTED:** menambahkan AppDetailSubHeader dengan tinggi 64dp dan divider yang sama; App Detail tidak lagi menampilkan search/filter/menu Apps pada SubHeader.
- **NAVIGATION:** callback Apps search/filter/menu tidak lagi dipassing ke App Detail karena bukan bagian dari Detail SubHeader.
- **COMMITS:** 7ba2aec13c456be11ae95e4a12fe7d93bb5279c7 dan d2a30299421398989ee4e7cd4566cd623978b2d7.
- **VERIFICATION:** source change committed; build/runtime setelah fix masih **UNVERIFIED**.


## 10.12 A7 HEADER DENSITY / SHELL SIZE CORRECTION — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk menguji ukuran shell yang lebih compact pada scope yang sudah dikerjakan: Apps List + App Detail.
- **DECISION:** GlobalHeader **80dp**; seluruh SubHeader yang terkait flow ini **56dp**.
- **APPS:** GlobalHeader 80dp → Apps SubHeader 56dp → Apps Body.
- **APP DETAIL:** GlobalHeader 80dp → Detail SubHeader 56dp → App Detail Body.
- **CONTRACT:** tinggi shell dibuat seragam antar flow agar perpindahan Apps → App Detail tidak menghasilkan gap/lompatan visual; isi SubHeader tetap context-specific.
- **SCOPE:** hanya shell yang sudah digarap sampai A7. Tidak mengubah body, bottom navigation, atau capability A8.
- **SOURCE VERIFICATION:** GlobalHeader, AppsSubHeader, dan AppDetailSubHeader dibaca ulang setelah perubahan. Bottom navigation dikembalikan ke ukuran sebelumnya setelah ditemukan perubahan tidak sengaja saat bulk replacement.
- **VERIFICATION:** source state sudah terkonfirmasi; build/runtime setelah compacting masih **UNVERIFIED**.


## 10.13 SHELL DENSITY CORRECTION — 2026-09-25

- **USER DECISION:** Bottom Navigation juga dipadatkan menjadi **56dp** untuk konsistensi density shell yang sedang diuji pada scope UI saat ini.
- **IMPLEMENTED:** NavigationBar height **64dp → 56dp**.
- **CURRENT SHELL TARGET:** GlobalHeader 80dp, AppsSubHeader 56dp, DetailSubHeader 56dp, Bottom Navigation 56dp.
- **SCOPE:** hanya ukuran shell; tidak mengubah body/capability.
- **VERIFICATION:** source committed; build/runtime belum diverifikasi.


## 10.14 GLOBAL HEADER BRAND ALIGNMENT — 2026-09-25

- **USER DECISION:** GlobalHeader tetap **80dp**, tetapi branding `BARE / SAVE OUR DAY` harus center horizontal dan center vertical.
- **IMPLEMENTED:** GlobalHeader title column horizontal alignment **Start → CenterHorizontally**; vertical arrangement tetap Center.
- **TYPOGRAPHY:** ukuran/font/letter spacing tidak diubah.
- **SCOPE:** hanya alignment GlobalHeader; AppsSubHeader, DetailSubHeader, body, dan Bottom Navigation tidak diubah.
- **VERIFICATION:** source change committed; build/runtime E2E masih **UNVERIFIED**.


## 10.15 GLOBAL HEADER BRAND VERTICAL CORRECTION — 2026-09-25

- **USER GO:** branding GlobalHeader harus tetap dalam header 80dp, center horizontal + center vertical secara visual, dengan ruang atas/bawah seimbang.
- **IMPLEMENTED:** brand column tetap centered horizontal/vertical, lalu diberi vertical offset **-10dp** untuk mengompensasi posisi visual TopAppBar yang terlalu rendah.
- **TYPOGRAPHY:** tidak diubah.
- **SCOPE:** hanya positioning branding GlobalHeader; SubHeader 56dp, Bottom Navigation 56dp, dan body tidak diubah.
- **VERIFICATION:** source committed; build/runtime E2E masih **UNVERIFIED**.


## 10.16 GLOBAL HEADER GEOMETRY FIX — 2026-09-25

- **OBSERVED (user E2E):** offset -10dp tidak menghasilkan geometri brand yang sesuai; bagian atas `BARE` menjadi terpotong/terlalu naik.
- **ROOT CAUSE:** posisi brand sebelumnya bergantung pada title slot `TopAppBar`, sehingga `Center` + offset tidak sama dengan center terhadap shell 80dp.
- **FIX:** GlobalHeader sekarang memakai fixed **80dp Box** sebagai shell; blok `BARE / SAVE OUR DAY` di-center langsung terhadap Box secara horizontal dan vertikal, tanpa offset.
- **TARGET GEOMETRY:** blok brand diperlakukan sebagai konten wrap-content di tengah shell 80dp, sehingga ruang atas/bawah mengikuti geometri aktual teks.
- **TYPOGRAPHY:** tetap sama; tidak mengubah font size atau letter spacing.
- **SEARCH ACTION:** jika digunakan, tetap berada di sisi kanan tanpa menggeser center brand.
- **VERIFICATION:** source committed; build/runtime E2E masih **UNVERIFIED**.


## 10.17 GLOBAL HEADER STATUS-BAR GEOMETRY CORRECTION — 2026-09-25

- **OBSERVED (user E2E):** fixed 80dp Box berhasil menghilangkan perilaku offset arbitrer, tetapi pada device branding masih tampak terlalu tinggi terhadap area visual header karena shell berada di edge-to-edge dan status bar ikut berada di atas shell.
- **ROOT CAUSE:** center geometris Box 80dp belum sama dengan center visual area aman setelah memperhitungkan status-bar inset.
- **FIX:** brand column tetap center horizontal/vertical pada shell 80dp, lalu diposisikan turun sebesar **setengah status-bar inset aktual**, bukan angka hardcoded.
- **TYPOGRAPHY / SHELL:** tidak diubah. GlobalHeader tetap 80dp; SubHeader 56dp; Bottom Navigation 56dp.
- **SCOPE:** hanya posisi branding GlobalHeader.
- **VERIFICATION:** source committed; build/runtime E2E masih **UNVERIFIED**.


## 10.18 APK USER-FACING STRING LANGUAGE — 2026-09-25

- **USER DECISION:** seluruh string yang tampil kepada user di APK BaRe harus menggunakan **English**. Ini adalah kontrak bahasa **APK**, dan harus dibedakan dari bahasa dokumen/worklog engineering yang tetap mengikuti Governance.
- **OBSERVED:** `app/src/main/res/values/strings.xml` memiliki satu string user-facing yang masih berbahasa Indonesia: `confirm = "Konfirmasi"`.
- **FIX IMPLEMENTED:** `confirm` diubah menjadi **`Confirm`**.
- **SOURCE SCOPE:** hanya `app/src/main/res/values/strings.xml`; tidak mengubah behavior A9, header, navigation, atau capability lain.
- **STATIC CHECK:** pencarian terhadap resource string dan literal AppsScreens untuk istilah Indonesia yang relevan tidak menemukan kandidat lain setelah perubahan ini.
- **COMMIT:** `609de75a315cbf4aefce660f8ac302df461b4937` — `fix(i18n): keep APK strings in English`.
- **CI:** run #1037 untuk commit ini **PASS**.
- **RUNTIME:** perubahan bahasa APK belum diuji pada device. A9 uninstall reconciliation dan Battery Optimization kemudian diuji user dan dilaporkan konsisten/berfungsi; confirmation UX untuk dangerous actions masih menjadi requirement baru.


## 10.19 GLOBAL REFRESH + DANGEROUS ACTION CONFIRMATION + ACTION FEEDBACK — 2026-09-25

- **USER DECISION:** pull-to-refresh saat tarik layar ke bawah harus menjadi **global/shared behavior** untuk seluruh screen yang memiliki content/state yang dapat direfresh.
- **USER DECISION:** seluruh **dangerous/destructive action** wajib menampilkan confirmation dialog **sebelum execution**, berlaku sama untuk **root maupun non-root/system execution path**.
- **USER DECISION:** success toast untuk action dihapus. Action tidak perlu toast sukses; UI harus mengandalkan reconciliation/actual state. Error/failure feedback tetap dipertahankan bila memang diperlukan.
- **ARCHITECTURE INTENT:** refresh tidak boleh diimplementasikan berulang per screen. Gunakan satu shared/global refresh capability lalu wire ke screen yang relevan.
- **ACTION FLOW CONTRACT:**
  `UI action → confirmation → AppActionBehavior → root/non-root execution → actual-state reconciliation`.
- **SCOPE BOUNDARY:** tidak membuka ulang Install Date, Update Date, atau Date Used. Tidak mengubah shell/header yang sudah ditetapkan. Tidak mengubah shared action boundary menjadi per-screen duplicate behavior.
- **STATUS:** requirement **DECIDED**; implementation **PENDING**; verification **PENDING**.
- **CURRENT CHECKPOINT:** branch `v1.0/rebaseline` pada commit `5be02159181f2bd75110e9308851a6f695c3185f`.
- **CI BASELINE:** run #1037 untuk commit `609de75a315cbf4aefce660f8ac302df461b4937` **PASS**.
- **A9 CONTINUITY:** user melaporkan Battery Optimization sudah konsisten/berfungsi dan uninstall berhasil secara fungsi, tetapi uninstall confirmation belum konsisten antara execution path. Perbedaan dialog tersebut sekarang superseded oleh requirement baru: dangerous action harus dikonfirmasi sebelum root maupun non-root execution.


## 10.20 GLOBAL REFRESH + DANGEROUS ACTION CONFIRMATION + ACTION FEEDBACK — IMPLEMENTATION — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk menjalankan requirement checkpoint 10.19.
- **GLOBAL REFRESH:** BaRe shell sekarang memakai satu `PullToRefreshBox` pada `MainShell`, bukan implementasi pull-to-refresh per-screen. Refresh menaikkan shared refresh token dan me-remount surface aktif agar load/init state yang dimiliki screen dijalankan ulang. Boundary mencakup routed screens, global search, dan main pager shell.
- **DANGEROUS ACTION CONFIRMATION:** App Detail uninstall sekarang masuk ke confirmation dialog yang sama dengan action destructive lain sebelum memanggil `AppActionBehavior.uninstallWithSystemFallback(...)`. Setelah confirmation barulah jalur root atau system/non-root execution berjalan. Apps List sudah memiliki destructive-action confirmation dan dipertahankan.
- **SUCCESS FEEDBACK:** success toast untuk shared AppActionBehavior completion di App Detail dihapus. Success toast pada Favorite/Blacklist organization action juga dihapus. Error/root-required/unavailable feedback tetap dipertahankan.
- **STATIC SOURCE VERIFICATION:** `BaReApp.kt` dan `AppsScreens.kt` setelah perubahan lolos structural delimiter/balance check. Ini bukan pengganti Kotlin compile.
- **CURRENT CI:** GitHub Actions **run #1041** untuk commit `987311da230788673e82afa8d4fa619ed93c7aa1` masih **IN_PROGRESS** saat checkpoint ini dicatat.
- **RUNTIME:** belum diverifikasi setelah implementation ini.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME PENDING`.

### 10.20 NEXT

1. Tunggu CI run #1041 sampai terminal.
2. Jika PASS, install/update APK pada device.
3. E2E pull-to-refresh pada Home, Apps, App Detail, dan routed content yang relevan; acceptance: gesture memicu reload tanpa false success state.
4. E2E uninstall dari App Detail; acceptance: confirmation muncul sebelum execution pada root maupun non-root/system path, lalu actual-state reconciliation terjadi setelah uninstall.
5. Pastikan action success tidak menampilkan success toast; failure/blocked feedback tetap jelas.
6. Jika evidence terpenuhi, baru promote status menjadi `VERIFIED` untuk scope ini.


## 10.21 BLANK SCREEN REGRESSION — ROOT CAUSE + FIX — 2026-09-25

- **OBSERVED:** device screenshot showed a completely blank app surface after the global refresh implementation.
- **ROOT CAUSE:** `return@PullToRefreshBox` had been placed outside the `if (screen != Screen.NONE)` guard, so `MainShell` returned from the refresh wrapper before reaching the normal search/pager/Scaffold content on the default `Screen.NONE` path.
- **FIX:** moved the routed-screen `return@PullToRefreshBox` inside the `if (screen != Screen.NONE)` block. Default shell execution now continues to the search/pager/Scaffold path.
- **SOURCE VERIFICATION:** inspected the current source and compared the affected control-flow region with the pre-refresh checkpoint; the unconditional return was confirmed as the regression mechanism.
- **CI:** run #1041 for the previous source completed `success`. New corrective commit `8eac15a4a775d8b76558763df436623215f53a17` is running as **run #1042**, currently `IN_PROGRESS`.
- **RUNTIME:** device/runtime re-test has not yet been performed after the fix.
- **STATUS:** `ROOT CAUSE IDENTIFIED / FIX IMPLEMENTED / CI PENDING / RUNTIME PENDING`.


## 10.22 CI #1042 FAILURE — COMPILATION ROOT CAUSE + REBUILD — 2026-09-25

- **OBSERVED:** CI run #1042 failed at `:app:compileDebugKotlin`.
- **EVIDENCE:** `BaReApp.kt:588:9` reported `'return' is prohibited here`; `BaReApp.kt:823:1` reported `Syntax error: Expecting a top level declaration`.
- **ROOT CAUSE:** previous corrective edit still left an invalid control-flow/bracing structure around `PullToRefreshBox`; the routed/search branches used a lambda return strategy that Kotlin rejected, and the resulting brace structure leaked beyond `MainShell`.
- **REMEDIATION:** rebuilt the affected `MainShell` refresh structure from the last known-good pre-refresh checkpoint (`84e40a916f53117a55511c386134fb15d77dfa18`) and reapplied global refresh using explicit `if / else if / else` branches with no lambda return. Refresh token remounts the active routed/search/main surface.
- **NEW COMMIT:** `40688d30845bd7b22cec069f3ba2967efea69794`.
- **CI:** run #1043 is currently `IN_PROGRESS`; compilation has not yet reached the APK assembly step.
- **RUNTIME:** not re-tested.
- **STATUS:** `ROOT CAUSE IDENTIFIED / REMEDIATED / CI PENDING / RUNTIME PENDING`.


## 10.23 CI #1043 FAILURE — BRACE/COMPOSABLE SCOPE ROOT CAUSE — 2026-09-25

- **OBSERVED:** CI #1043 reached `:app:compileDebugKotlin` but failed on unresolved `AppsSubHeader` / `AppsDrawerItem`, local-function modifier error, and missing `}`.
- **ROOT CAUSE:** `MainShell` was still left one brace short after the refresh-container reconstruction. Consequently subsequent top-level composables were parsed as local functions inside `MainShell`, producing cascading unresolved-reference errors.
- **VERIFICATION:** current source structural scan places `MainShell` boundary at line 820 and restores the top-level boundary before `AppsSubHeader`.
- **FIX:** commit `770687a97d6ae47d214263bfa80da7a1d154df3c` adds the missing closing brace only; no behavioral refresh logic changed in this fix.
- **CI:** run #1044 is queued for commit `770687a97d6ae47d214263bfa80da7a1d154df3c`.
- **RUNTIME:** not tested.
- **STATUS:** `ROOT CAUSE IDENTIFIED / FIX IMPLEMENTED / CI #1044 QUEUED / RUNTIME PENDING`.


## 10.24 #1004 UX FOLLOW-UP — REFRESH PRESENTATION + APP DETAIL UNINSTALL CONFIRMATION — 2026-09-25

- **USER DECISION / AUTHORIZATION:** refresh feature remains; permanent refresh icon is removed as the visual mechanism. Pull-to-refresh remains the interaction, with a thin top progress indicator during active refresh instead of the large default refresh indicator. App Detail Uninstall must use the same confirmation semantics as Apps List.
- **RUNTIME EVIDENCE:** #1004 screenshots showed Apps List has destructive-action confirmation, while App Detail's visible Uninstall button executed without a confirmation dialog. This establishes a runtime consistency gap despite prior source changes.
- **IMPLEMENTATION:** App Detail Uninstall button now sets the existing `confirmAction` state before execution. The confirmation message uses the same `confirm_uninstall_app` string as Apps List. Execution remains behind confirmation and then calls `AppActionBehavior.uninstallWithSystemFallback(...)`.
- **REFRESH UX:** `PullToRefreshBox` now uses a thin `LinearProgressIndicator` while refreshing; the large default refresh indicator is no longer shown.
- **STATIC SOURCE VERIFICATION:** `BaReApp.kt` and `AppsScreens.kt` delimiter/balance checks pass.
- **CI:** #1044 is `SUCCESS` for the preceding structural fix. #1045 is `IN_PROGRESS` for App Detail uninstall confirmation. #1046 is `IN_PROGRESS` for the final refresh indicator change.
- **RUNTIME:** not yet re-tested after these changes.
- **STATUS:** `IMPLEMENTED / STATIC CHECK PASS / CI PENDING / RUNTIME PENDING`.


## 10.25 BOTTOM NAV TRANSPARENCY FIX — 2026-09-25

- **AUTHORIZATION:** user memberi GO dengan scope tunggal: perbaiki kebocoran/opaque black area di kiri-kanan bottom navigation saat 4 tab tampil.
- **OBSERVED:** #1004/#1046 runtime screenshots menunjukkan pill bottom navigation benar, tetapi area slot di luar pill tetap menjadi area hitam/opaque sehingga content di belakang tidak terlihat.
- **ROOT CAUSE:** bottom navigation ditempatkan sebagai `Scaffold.bottomBar`, sehingga content area tidak benar-benar berada di bawah navigation surface. Background root/Scaffold mengisi slot kiri-kanan navigation.
- **FIX:** bottom navigation dipindahkan dari `Scaffold.bottomBar` menjadi overlay di dalam outer `Box`, sementara `Scaffold` sekarang membentangkan content tanpa reserved bottom-bar slot. Navigation pill tetap centered, 56dp high, 62% width, rounded, dan bottom offset dipertahankan secara visual melalui 12dp bottom padding.
- **SCOPE:** hanya bottom navigation transparency/layout. Tidak mengubah refresh behavior atau uninstall behavior.
- **STATIC SOURCE VERIFICATION:** `BaReApp.kt` delimiter/balance check PASS.
- **CI:** #1045 SUCCESS (App Detail uninstall confirmation); #1046 SUCCESS (refresh presentation); #1047 queued for bottom navigation fix.
- **RUNTIME:** pending #1047 APK/device verification.
- **STATUS:** `IMPLEMENTED / STATIC CHECK PASS / CI #1047 QUEUED / RUNTIME PENDING`.


## 10.26 #1047 RUNTIME VERIFICATION + NEXT DISCOVERY — 2026-09-25

- **RUNTIME EVIDENCE:** user confirmed #1047 is green and device result is correct: bottom navigation remains visible when shown, can still hide/show, and the opaque black side leakage is resolved; refresh remains functional without a permanent refresh icon; App Detail uninstall confirmation is working.
- **VERIFICATION:** the bottom-navigation transparency fix is now runtime-verified for the reported #1004 defect scope.
- **STATUS:** `VERIFIED FOR CURRENT BUG SCOPE`.
- **NEXT PHASE:** no new implementation is authorized by this checkpoint. Proceed with **DISCOVERY / GAP REVIEW** from current runtime rather than inventing a feature. Candidate next work should come from observed UX defects, incomplete requirements, or explicit product requirements, then be authorized separately.


## 10.27 A9 CLOSED → SEQUENCE RESUMED — 2026-09-25

- **RECONCILIATION:** worklog sebelumnya masih membawa status A9 `RUNTIME TESTED / UNRESOLVED`, tetapi subsequent runtime evidence dari user menutup dua defect A9: Battery Optimization sudah konsisten/berfungsi, dan uninstall berhasil secara fungsi dengan post-return reconciliation. #1046 juga memverifikasi confirmation dialog pada App Detail.
- **A9 STATUS:** `VERIFIED / CLOSED` untuk scope A9 app-level actions.
- **SEQUENCE DECISION (from prior session):** `A9 → A10 → A13 → A14 → A16`; **A15 tidak menjadi standalone gate**, tetapi direfactor menjadi reusable behavior/domain capability sepanjang sequence ketika dependency-nya muncul.
- **NEXT:** A10 App Detail part-level actions. Fokusnya adalah execution/parity gap pada part actions, backup-version actions, dan backup-card actions. Jangan membuka ulang A9 tanpa evidence baru.
- **A10 ACCEPTANCE START:** identify concrete part-level action surfaces from current BaRe source/reference, map each action to its intended execution boundary, then implement the reusable behavior boundary where appropriate; CI + device E2E required before closing A10.

## 10.28 A10 INSPEKSI / DEFINISI GAP ACTION — 2026-09-25

- **OTORISASI:** user memberi GO hanya sampai `A10 → inspect actual source/reference → define concrete action gaps`. **Tidak ada implementasi source pada checkpoint ini.**
- **REFERENCE YANG DIINSPEKSI:** Swift Backup 5.1.0 (620) decompile, terutama `detail/DetailActivity.java`, `menu_detail_storage_chip_actions.xml`, `menu_detail_backup_chip_actions.xml`, `menu_detail_backup_card_actions.xml`, `detail_card_app_storage.xml`, `detail_card_app_backup.xml`, dan `detail_card_custom_tab.xml`.
- **SOURCE BARE YANG DIINSPEKSI:** `AppsScreens.kt`, `AppBackupBehavior.kt`, `AppBackupStateCard`, `AppStorageChip`, `AppBackupScreen`, dan `AppBackupsScreen` pada branch `v1.0/rebaseline`.

### Gap A10 yang terkonfirmasi sebelum implementasi

1. **Action layer storage-part belum lengkap secara execution.** BaRe saat ini menyediakan Backup ke Device, Backup ke Cloud, Backup ke Device + Cloud, Share APK untuk APK, dan Delete; Delete masih diarahkan ke `onUnavailable()`. Reference memiliki batas action konseptual yang sama, tetapi Delete merupakan action nyata untuk part storage non-APK dan Share APK bersifat kondisional. **Execution backup tidak diimplementasikan di sini; execution backup berada pada A13.**
2. **Parity action APK perlu dikoreksi.** `AppStorageChip` BaRe saat ini menampilkan Delete juga untuk part APK, sedangkan reference `DetailActivity.d0()` secara eksplisit menyembunyikan Delete untuk `iu.APP`. Ini merupakan mismatch contract action yang konkret dan terpisah dari execution backup.
3. **Action layer backup-version saat ini masih mockup/unimplemented di BaRe.** `AppBackupsScreen` menampilkan Restore dan Delete yang keduanya membuka `AppMockupActionDialog`. Belum ada model inventory/version backup nyata pada surface tersebut.
4. **Reference memiliki action backup-chip yang jelas dan BaRe belum memiliki boundary executable yang setara.** `menu_detail_backup_chip_actions.xml` mendefinisikan Restore dan Delete, dengan Sync/Encryption/Share yang kondisional/tersembunyi sesuai state. BaRe belum memiliki surface action backup-version yang executable.
5. **Action layer backup-card belum ada di BaRe.** Reference `menu_detail_backup_card_actions.xml` mendefinisikan Backup Details, Protect/Unprotect, Add/Update Note, Sync yang kondisional, Delete, serta Metadata. BaRe belum memiliki model state/action yang setara.
6. **Presentation/state backup-card belum parity.** Reference `detail_card_app_backup.xml` memiliki loading, error, konten utama, tab Device/Cloud, metadata backup, note, backup-version chips, overflow menu, dan Restore CTA. `AppBackupStateCard` BaRe saat ini hanya menampilkan title, status, dan View Backups.
7. **State metadata/protection/note backup-version belum direpresentasikan pada App Detail BaRe.** Reference memperoleh state protected dan note dari metadata backup local/cloud; `AppBackupsScreen` BaRe saat ini belum memiliki model state tersebut.
8. **Action Cloud harus tetap dibatasi dependency.** Reference memiliki action backup/sync Cloud, tetapi `AppBackupBehavior` BaRe saat ini secara eksplisit menolak execution Cloud sebagai unavailable. Karena itu A10 hanya boleh mendefinisikan boundary dan visibility action tanpa membuat seolah-olah Cloud execution sudah tersedia. Execution Cloud tetap berada di luar A10 dan masih bergantung pada blocker provider/backend.

### Boundary / non-goal A10

- **IN SCOPE:** mengidentifikasi dan memodelkan tiga action layer sebelum implementasi: **storage-part actions → backup-version/chip actions → backup-card actions**; lalu menetapkan contract state/visibility dan boundary reusable behavior yang memang dibutuhkan.
- **OUT OF SCOPE pada checkpoint ini:** menulis source code, mengubah UI, execution backup, execution Cloud, backend restore, backend delete, atau implementasi A13/A14.
- **Dependency A13:** execution App backup tetap menjadi capability berikutnya setelah A10; A10 tidak boleh menyerap execution A13 hanya agar UI terlihat lengkap.
- **A15:** reusable organization behavior hanya boleh diekstrak jika action A10 benar-benar membutuhkan behavior Favorites/Labels/Blacklist; tidak ada refactor spekulatif pada checkpoint ini.

### Acceptance sebelum implementasi A10

1. Contract action untuk ketiga layer sudah eksplisit.
2. Owner setiap action sudah jelas: UI intent, reusable behavior, atau execution backend.
3. Rule visibility/availability berasal dari evidence reference, bukan asumsi.
4. Dependency dan blocker dipisahkan secara eksplisit dari A10.
5. Implementasi source baru dimulai setelah design checkpoint ini diterima.

**STATUS:** `INSPECTED / GAPS DEFINED / NO SOURCE IMPLEMENTATION`.

## 10.29 A10.1 IMPLEMENTASI — APP DETAIL BACKUP CARDS — 2026-09-25

- **BASELINE PENANDA:** pekerjaan A10.1 dimulai setelah checkpoint `87118ecf2a960d457f0d76c450a888a4044bf5d3`.
- **REFERENCE:** UI A10.1 mengikuti evidence screenshot/reference yang diberikan user dan struktur decompile Swift Backup 5.1.0 (620), khususnya `detail_card_app_backup.xml`.
- **IMPLEMENTED:** Device backup card sekarang memiliki struktur backup-card: jumlah backup, latest backup metadata/version, overflow affordance, optional note, APK/Data part chips, dan Restore CTA. Cloud backup card sekarang memiliki dedicated empty-state presentation dengan Cloud-off visual dan sync state.
- **DATA BASIS:** Device card tidak menggunakan fake backup. Inventory dibaca dari backup lokal BaRe dan metadata `AppBackupMetadata`; jika belum ada verified backup, card menampilkan empty state. Inventory inspection dijalankan pada IO dispatcher.
- **SCOPE:** A10.1 hanya membangun/rebaseline **backup-card presentation + local inventory read boundary**. Restore execution, backup-version action execution, delete/protect/note action execution, dan Cloud execution belum diimplementasikan pada checkpoint ini.
- **STRINGS:** UI text baru ditempatkan di `res/values/strings.xml`.
- **CI:** #1048/#1049 berjalan untuk perubahan AppsScreens dan inventory behavior; final post-threading commit `812fc5ec29c1632882f1df4d4c7e5a82b325a056` menambahkan IO-bound inspection. CI final untuk branch state masih pending.
- **RUNTIME:** belum diverifikasi pada device setelah A10.1.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME PENDING`.


## A10.1 UI refinement — backup empty states
- Baseline: `25307f4f6c11e89ca55b982fc023b3bf6bcb2fd7` (#1052 green).
- Reference: user-provided Swift Backup empty-state screenshot; visual structure only, BaRe-native copy/behavior.
- Device empty state: card composition aligned to cloud card height/spacing, centered header, folder empty-state icon, `No backup on device`.
- Cloud empty state: centered header, cloud-off icon, BaRe-native `Cloud service is not connected` copy, `Connect account` CTA routed to existing cloud screen.
- No backup execution, restore execution, or cloud provider capability was introduced.
- Implementation commits: `3c6aa47b02f80ab9ef04b1a9a9ecee2ac0e216db`, `9b1757afe3eaa8cb7a9f6c1de9053e81966bb307`.
- CI: #1053/#1054 pending at record time; runtime screenshot verification pending for refined layout.
- Status: IMPLEMENTED / CI PENDING / RUNTIME PENDING.


## A10.2 DISCOVERY REVISION — BACKUP ACTION + SECURITY/ENCRYPTION BOUNDARY — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk **memperbarui/revisi worklog A10.2 berdasarkan reference visual tambahan dan masukan security/encryption**. Implementasi source **belum diotorisasi** pada checkpoint ini; keputusan implementasi dilakukan setelah discovery/worklog direview.
- **REFERENCE VISUAL BARU:** user memberikan runtime screenshots untuk flow App Detail → Backup selector → Backup progress → completed backup/inventory. Screenshot menunjukkan:
  - App Detail dengan installed app identity, Launch/Uninstall, APK/Data storage chips, dan Backup CTA.
  - Backup selection sheet dengan **User app parts** (APK/Data), **Select backup locations** (Device/Cloud), dan primary **BACKUP** action.
  - Backup progress screen dengan overall APPS progress, current app, current part/size, progress indicator, dan CANCEL.
  - Completed state yang mengembalikan hasil ke **Device backups**, menampilkan backup count, timestamp/version, total size, APK/Data sizes, protected marker, dan Restore CTA.
- **REFERENCE VISUAL STATUS:** screenshot di atas dianggap cukup sebagai visual basis untuk core A10.2 backup execution flow. Screenshot tambahan untuk overflow/action menus (APK/Data chip, backup version, backup card) masih bernilai sebagai visual-detail evidence sebelum final UI implementation.
- **GLOBAL HEADER CONTRACT:** current BaRe GlobalHeader tetap menjadi global shell. Current source menetapkan GlobalHeader = 80dp, sedangkan page-specific sub-header seperti AppsSubHeader = 56dp. A10.2 wajib mempertahankan pola **GlobalHeader → 56dp sub-header → page content**; reference tidak boleh menyebabkan custom header height baru.
- **ACTION LAYERS:** A10.2 tetap dibagi menjadi: 1) **Storage-part actions** — APK/Data/External Data action surface; 2) **Backup-version/chip actions** — action terhadap satu backup version; 3) **Backup-card actions** — action terhadap backup collection/card state.
- **BACKUP EXECUTION FLOW:** reference evidence sekarang memperjelas A10.2 UX/state contract: SELECT → CONFIRM → STARTING → BACKING_UP_APK/DATA → COMMITTING_METADATA → COMPLETED/FAILED/CANCELLED → INVENTORY_REFRESH. Actual execution tidak boleh dipalsukan oleh UI; progress, current part, size, completion, dan inventory harus berasal dari real execution state.
- **CURRENT BARE EXECUTION EVIDENCE:** existing BaRe backup behavior sudah memiliki boundary untuk DEVICE/APK/DATA/EXTERNAL_DATA dan metadata commit; CLOUD/DEVICE_AND_CLOUD belum executable pada current boundary. A10.2 tidak boleh mengiklankan Cloud execution sebagai capability yang sudah working.
- **SECURITY/ENCRYPTION PRINCIPLE:** BaRe **tidak mengadopsi implementasi cryptography Swift Backup**. Reference hanya menjadi behavioral/UX reference. Security implementation harus tetap **BaRe-native** dan reuse primitive yang sudah ada jika sesuai.
- **EXISTING BARE CRYPTO/KEY MATERIAL:** discovery confirms existing BaRe primitives: RecoveryPackageCodec menggunakan PBKDF2-HMAC-SHA256 + AES-256-GCM untuk portable recovery envelope; BaReMasterKeyStore menggunakan Android Keystore + AES-GCM untuk local protection of BaRe master key; RecoveryPasswordStore menggunakan PBKDF2 verifier + Android Keystore/AES-GCM protected local recovery-password copy; EncryptionPasswordStore menyimpan password verifier/strategy, bukan user password.
- **SECURITY BOUNDARY:** **Recovery artifact encryption ≠ backup payload encryption**. Existing recovery encryption tidak boleh diasumsikan berarti APK/Data backup payload sudah encrypted. A10.2 harus eksplisit memisahkan recovery artifact, local secrets, backup payload, dan backup metadata sebelum implementasi backup encryption/protection.
- **PROTECTION SEMANTICS:** protectedBackup adalah backup retention/action-policy state dan tidak otomatis berarti cryptographic encryption. **Protected ≠ Encrypted**. Jika backup payload encryption dibutuhkan, harus memakai BaRe-native encryption boundary dan existing BaRe key/recovery architecture jika teknisnya sesuai.
- **NON-GOAL SECURITY:** no Swift Backup key format, KDF parameters, crypto envelope, storage format, atau proprietary encryption implementation disalin hanya demi parity.
- **A10.2 TODO REVISION:**
  1. Define explicit capability/action contract and state for storage-part, backup-version, and backup-card layers.
  2. Define real backup execution state machine and progress contract tanpa fake progress.
  3. Define backup-version action menu behavior dari actual version state.
  4. Define backup-card action menu behavior untuk Backup Details, Protect/Unprotect, Add/Update Note, Sync/Delete where supported.
  5. Reconcile existing AppBackupMetadata fields (protectedBackup, note) dengan executable local behavior dan persistence.
  6. Define Backup Details data contract dari verified inventory/metadata only.
  7. Define Cloud action visibility separately from Cloud execution dependency.
  8. Define BaRe-native security/encryption boundary dan tentukan apakah A10.2 membutuhkan payload encryption sekarang atau hanya explicit encryption-state contract.
  9. Lock visual shell ke GlobalHeader + 56dp sub-header dan apply reference visual evidence tanpa menyalin Swift-specific implementation.
  10. Obtain/inspect overflow-menu screenshots untuk exact menu visual parity sebelum final UI implementation, jika tersedia.
  11. Define regression/device verification matrix untuk selection, backup execution, cancellation/failure, metadata commit, inventory refresh, protection/note persistence, dan unsupported capability handling.
- **DEPENDENCIES:** backup execution capability remains tied to A13 where already defined; restore execution remains an A14 boundary; Cloud execution remains blocked by provider/backend capability. A10.2 tidak boleh menyerap implementation tersebut hanya untuk melengkapi reference UI.
- **IMPLEMENTATION GATE:** no source/UI implementation from this revision is implied by the GO. First checkpoint is **design/contract decision after A10.2 discovery**, then explicit implementation authorization.
- **STATUS:** `DISCOVERY REVISED / VISUAL BASIS UPDATED / SECURITY BOUNDARY IDENTIFIED / IMPLEMENTATION NOT STARTED`.
## A10.2 TODO REVIEW — 2026-09-25

- **USER CORRECTION ACCEPTED:** sub-header is **dynamic/page-specific**, unlike the global header. The 56dp value is the current standard height for the existing sub-header family, not a requirement that every A10.2 surface use one identical sub-header content/layout. Each screen may define its own title, subtitle, navigation affordance, actions, and visibility while respecting the existing shell/height contract where that sub-header component is used.
- **REVIEW OUTCOME:** A10.2 TODO is retained but reorganized by dependency and execution truth. Main principle: **A10.2 defines action/state/UI contracts and implements only behavior whose dependency already exists; A13 owns backup execution expansion, A14 owns restore execution, and Cloud remains capability-gated.**
- **10.2.0 — Action/Capability Contract:** REQUIRED FIRST. Define target type, action, visibility, enabled/support state, and unavailable/deferred reason. This prevents menu presence from implying execution.
- **10.2.1 — Storage-Part Actions:** REQUIRED. Correct APK Delete visibility; preserve conditional Share APK; model Device/Cloud/Device+Cloud capability from actual BaRe support. Do not implement Cloud execution here.
- **10.2.2 — Backup-Version Actions:** REQUIRED. Replace generic/mockup action assumptions with state-derived capability for a real local backup version. Restore remains an A14 execution boundary; Delete/Share/Sync/Encryption visibility must be capability-driven.
- **10.2.3 — Backup-Card Actions:** REQUIRED. Define and surface Backup Details, Protect/Unprotect, Add/Update Note, Sync, and Delete according to actual metadata/capability. Existing protectedBackup and note are reusable state foundations.
- **10.2.4 — Backup Details:** REQUIRED. Read-only details must come from verified inventory/metadata. No invented encryption/protection state.
- **10.2.5 — Protect/Unprotect + Note:** REQUIRED where local metadata persistence is already safe to implement. Protection is policy/state; it is not encryption.
- **10.2.6 — Security/Encryption Boundary:** REQUIRED AS DESIGN, NOT CRYPTO IMPLEMENTATION. Establish which existing BaRe crypto/key material can support backup protection/encryption. Explicitly keep recovery artifact encryption separate from backup payload encryption. Do not copy Swift Backup crypto format or implementation.
- **10.2.7 — Backup Selection/Progress UI Contract:** REQUIRED FOR UI PARITY, but execution engine ownership remains outside A10.2. Selection state, progress presentation, cancel/error/completed states must bind to real execution state when that execution capability is integrated.
- **10.2.8 — Dynamic Sub-header / Visual Shell:** REQUIRED. Reuse the global header + dynamic page-specific sub-header architecture. Sub-header content is screen-specific; current 56dp is the existing component height convention, not a universal content template.
- **10.2.9 — Overflow Menu Visual Reference:** OPTIONAL UNTIL SCREENSHOTS ARRIVE, but recommended before final visual lock. Decompile establishes action semantics; screenshots establish exact menu geometry/spacing/iconography.
- **10.2.10 — Verification Matrix:** REQUIRED before closing A10.2. Includes action visibility, supported/unavailable behavior, metadata persistence, backup inventory refresh, and device verification. Execution-specific verification follows the owning capability phase.
- **REMOVED AS A SEPARATE IMPLEMENTATION TASK:** a standalone backup execution state-machine implementation is not an A10.2 implementation task. A10.2 defines the UI/state contract; actual backup execution remains owned by the existing backup behavior/A13 sequence.
- **GATE:** this review produces the implementation plan; it does **not** authorize source changes yet.
- **STATUS:** `TODO REVIEWED / DEPENDENCIES CLARIFIED / DYNAMIC SUB-HEADER CONFIRMED / SECURITY BOUNDARY CONFIRMED / IMPLEMENTATION NOT AUTHORIZED`.


## A10.2 IMPLEMENTATION CHECKPOINT 1 — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk implementasi setelah TODO A10.2 direview.
- **IMPLEMENTED:** local backup action surface pada real verified inventory.
- Added BaRe-native `AppBackupActionBehavior` for:
  - Protect / Unprotect via existing `AppBackupMetadata.protectedBackup`.
  - Add / Update Note via existing `AppBackupMetadata.note`.
  - Delete local backup version, blocked when protected.
- `AppBackupInventoryBehavior` now exposes verified total backup size.
- `AppBackupsScreen` now reads real local inventory and exposes:
  - Backup Details dialog.
  - Protect / Unprotect.
  - Add / Update Note.
  - Delete with confirmation.
  - Restore shown as disabled because A14 execution is not yet available.
  - Sync shown disabled because Cloud execution is not available.
  - Dynamic page-specific sub-header using the existing 56dp sub-header convention.
  - Empty device state and cloud-not-connected state.
- Storage-part action surface updated so unsupported Cloud / Device + Cloud actions are disabled, and the old non-executable Delete action on installed storage chips is removed.
- **SECURITY:** no Swift Backup cryptographic format or implementation copied. Protection remains metadata/action-policy state, not encryption.
- **NOT IMPLEMENTED:** backup payload encryption, Cloud execution, Restore execution, Sync execution, media execution, or a new backup execution engine.
- **VERIFICATION:** source-level implementation completed. CI/runtime verification pending at this checkpoint.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME PENDING`.

## 9. A10/A13 BACKUP EXECUTION RECONCILIATION — 2026-09-25

### Evidence baru
- User runtime evidence from build **#1064** confirms the A10.2 UI build was installable, but storage-part actions still surfaced the unavailable path.
- Reference decompile `Swift Backup 5.1.0 (620)` was inspected directly from the supplied decompiled artifact.
- Reference `DetailActivity.d0(...)` wires the storage-chip action menu to `action_backup_local`, and handler `tj.onMenuItemClick(...)` invokes backup directly for the selected app part with `q05.DEVICE`.
- Reference `menu_detail_storage_chip_actions.xml` confirms the chip menu contains `Backup to Device`, `Backup to Cloud`, `Backup to Device & Cloud`, `Share APK`, and `Delete`.
- Therefore the interaction contract is: **storage part chip → Backup to Device → execute that selected part directly**. It does not open the full part-selection sheet for the chip action.
- The full backup CTA remains a separate multi-part selection surface; the supplied runtime screenshot also demonstrates that selector.

### Implementation checkpoint
- `AppBackupBehavior` is now used from `AppDetailScreen` for actual device execution.
- Tapping a storage-part chip and choosing `Backup to Device` now runs the selected part directly on `Dispatchers.IO`.
- The full Backup selector now executes the selected parts instead of showing `Action unavailable`.
- Successful execution refreshes the detail backup inventory surface.
- Existing `protectedBackup` and `note` metadata are preserved when the same app version directory is rewritten by a subsequent backup execution.
- Cloud and Device + Cloud remain capability-gated/unsupported; no cloud execution was invented.
- Restore remains A14 scope.

### Status
- **IMPLEMENTED:** direct device backup execution wiring.
- **CI:** pending for commits `d6ea6ef48cb4ff3a9aaac0b3e633b8a6b329ab78` and `6dcf3ae188b125785af8787f6a5a7a53afd204dd`.
- **RUNTIME:** not yet re-tested after this change.
- **VERIFIED:** not claimed.

### Next verification
1. CI must pass for the code checkpoint.
2. Runtime test `APK chip → Backup to Device` and confirm an actual new/updated device backup appears.
3. Runtime test `Data chip → Backup to Device`.
4. Runtime test full `Backup` selector with multiple parts.
5. Verify protected/note metadata survives re-execution of the same version.
6. Verify failure/unsupported states are surfaced without leaving the UI stuck in `BACKING UP`.

## A10/A13 RUNTIME FAILURE FOLLOW-UP — 2026-09-25

- **RUNTIME EVIDENCE:** supplied runtime screenshot shows `DATA backup failed: /system/bin/sh: no closing quote` while executing the Data backup path.
- **SCOPE:** failure is in the root-backed copy command path used by backup execution. Exact runtime root cause is **UNKNOWN** until the corrected build is exercised on device; no stronger root-cause claim is made from the screenshot alone.
- **IMPLEMENTED FIX:** `RootCapabilityProvider` now uses one shared POSIX shell single-quote helper for root command path arguments instead of the previous nested quote construction. The helper is applied to directory creation, `pm path`, directory existence checks, directory copy, size inspection, and root file reads.
- **UI CLEANUP:** removed the stale `backup_execution_pending` summary copy from the full backup selector and removed its unused string resource. The selector now reflects actual selected parts/location without claiming execution is pending.
- **DELETE CONTRACT:** no global Delete removal was reintroduced. Delete remains context-dependent: installed storage-chip Delete is not executable in the current surface; real local backup-version Delete remains available subject to protection state, matching the current BaRe capability boundary and reference context.
- **VERIFICATION:** source inspection after change confirms all targeted root command construction sites use the shared helper. CI and runtime verification are still pending.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME PENDING / VERIFICATION PENDING`.

### Next verification
1. CI build on the new code commits.
2. Runtime `APK chip → Backup to Device`.
3. Runtime `Data chip → Backup to Device` and confirm the prior shell-quote failure is gone.
4. Runtime multi-part backup.
5. Reconcile backup inventory and metadata after successful execution.
6. If Data still fails, capture the new exact root command stderr and treat root cause as UNKNOWN until reproduced with evidence.

## A10/A13 RUNTIME REVIEW + BACKUP PROCESS DIAGNOSTIC REQUIREMENT — 2026-09-25

- **AUTHORIZATION:** user memberi GO untuk merapikan TODO berdasarkan runtime evidence build **#1069** dan memperbarui worklog continuity.
- **RUNTIME EVIDENCE — APK:** backup APK berhasil pada device. Artifact terobservasi di:
  `/storage/emulated/0/BaRe/accounts/75650f43e4e54f76/backups/apps/idm.internet.download.manager.plus/30249/base.apk`
  dengan ukuran sekitar 7.12 MB pada file manager. Ini membuktikan jalur APK → Device storage menghasilkan artifact nyata.
- **RUNTIME EVIDENCE — DATA:** Data backup masih gagal pada #1069. Toast menunjukkan `DATA backup failed:`; error detail lengkap belum terekam pada screenshot terbaru. Prior shell-quote failure belum dapat dianggap terselesaikan tanpa evidence baru.
- **RUNTIME EVIDENCE — INVENTORY:** App Detail membaca backup APK dan menampilkan Device backups (1), Version 18.2, APK 7.1 MB, Data 0 B. Backup Details membaca timestamp, total size, parts, protection state, dan note. Karena Data gagal, hasil backup version saat ini hanya memiliki APK.
- **RUNTIME EVIDENCE — APPS LIST:** Apps List masih menampilkan `No backup on device` untuk 1DM+ walaupun artifact dan local backup inventory ada. Ini adalah implementation gap pada Apps List backup-status presentation/inventory lookup, bukan bukti bahwa artifact storage tidak ada.
- **RUNTIME EVIDENCE — POST-BACKUP NAVIGATION:** user melaporkan flow backup membuka surface/halaman Backup & Restore baru, bukan mempertahankan App Detail context seperti expected reference behavior. Current source juga memiliki explicit navigation path dari backup-card View Backups menuju `Screen.APP_BACKUPS`; post-execution navigation harus dibedakan dari inventory refresh dan tidak boleh membuat backup success otomatis berarti route ke halaman baru.
- **RUNTIME EVIDENCE — PART ACTIONS:** APK/Data chips pada backup-version surface belum menjadi clickable part-level action surface. Action contract masih perlu diwujudkan dari capability/state yang tersedia.
- **RUNTIME EVIDENCE — NULL PRESENTATION:** backup card/details masih menampilkan literal `null` ketika note tidak tersedia. Null optional metadata harus tidak dirender sebagai user-facing text.
- **RUNTIME EVIDENCE — PROTECTION:** user successfully exercised Protect/Unprotect and note state; screenshot menunjukkan protected marker and `Unprotect backup`. This confirms metadata-backed protection state is visible, but does not prove encryption.
- **BACKUP PROCESS GAP:** current backup execution lacks a dedicated progress/result surface with per-part status and final `DONE` state. A simple loading/toast is insufficient for the required reference flow.
- **DIAGNOSTIC GAP:** current diagnostic output is observed by user as low-detail `OPEN / OPENED / OPEN` style trace. This is not sufficient as a backup execution diagnostic. Backup diagnostics must expose structured execution steps and actual failure detail.
- **NEW BACKUP PROCESS CONTRACT:**
  1. `IDLE → PREPARING → BACKING_UP_<PART> → COMMITTING_METADATA → COMPLETED | FAILED | CANCELLED`.
  2. Each selected part (APK/Data/External Data/Media when supported) reports state: `PENDING / RUNNING / DONE / FAILED / SKIPPED`.
  3. Progress UI must bind to real execution state; no fake percentage/progress.
  4. Diagnostic log must include meaningful operation stages, target part, source/destination context where safe, byte/size information where available, and exact stderr/error reason on failure.
  5. Final result must explicitly summarize completed/failed/skipped parts and show `DONE` only when the execution reaches a terminal success state.
  6. On completion, inventory refresh occurs in the current App Detail context; navigation to a separate Backup & Restore page is not an automatic success behavior.
  7. Cancellation and partial-failure behavior must leave the UI in a recoverable terminal state rather than stuck in `BACKING UP`.
- **APPS LIST INVENTORY CONTRACT:** Apps List backup status must derive from the same verified local backup inventory source used by App Detail, rather than a hardcoded `No backup on device` state.
- **BACKUP-VERSION ACTION CONTRACT:** backup APK/Data part surfaces need capability-derived click/menu behavior. Unsupported actions remain disabled or explicitly unavailable; clickable does not imply execution exists.
- **NULL SAFETY:** optional note and metadata fields must be conditionally rendered; literal `null` is never valid user-facing copy.
- **DATA FAILURE INVESTIGATION:** next reproduction must capture the complete failure diagnostic, not only the toast prefix. Root cause remains **UNKNOWN** until reproduced with evidence.
- **CI/RUNTIME:** #1069 is reported green by user. This does not make the DATA path, Apps List inventory parity, progress diagnostics, or action parity VERIFIED.
- **STATUS:** `IMPLEMENTED PARTIAL / RUNTIME UNRESOLVED / TODO UPDATED / VERIFICATION PENDING`.

### A10/A13 #1069 TODO

1. Reproduce Data backup and capture structured/full stderr.
2. Trace root copy invocation from `AppDataBackupBehavior` through `RootCapabilityProvider`; verify command construction and runtime shell semantics.
3. Implement real backup progress/process surface with per-part state and terminal `DONE/FAILED/CANCELLED`.
4. Replace low-detail OPEN/OPENED diagnostic trace with structured backup diagnostics.
5. Preserve current App Detail context after backup; refresh inventory in-place.
6. Make Apps List backup status derive from actual local inventory.
7. Fix backup part interaction surface for APK/Data according to contextual action contract.
8. Remove literal `null` from backup card/details presentation.
9. Verify APK-only, Data-only, multi-part, failure, cancellation, and metadata commit/reload flows.
10. Re-run device verification and only promote items to VERIFIED when acceptance evidence exists.

## A10/A13 — Referensi UI Proses Backup dan Kontrak Interaksi (2026-09-25)

### Dasar evidence

Screenshot runtime/reference yang diberikan user menjadi acuan visual dan perilaku untuk alur backup. Evidence yang terlihat mencakup:

- layar proses backup terpisah saat backup sedang berjalan;
- progress keseluruhan dan progress item/app;
- status operasi seperti `Backing up APK`, `Backing up Data`;
- area diagnostic yang menampilkan urutan operasi dan hasil aktual;
- terminal state `DONE`;
- tombol `CANCEL` selama proses berjalan;
- setelah backup selesai, user tetap berada pada konteks App Detail dan inventory backup diperbarui;
- menu pada backup card;
- menu contextual pada part `Data`;
- menu contextual pada part `APK`.

### Kontrak UI yang terobservasi

**Proses backup**

- Backup tidak hanya menampilkan Toast atau indikator loading.
- Ada surface proses khusus dengan status yang dapat diamati.
- Progress harus merepresentasikan proses aktual, bukan progress palsu.
- Diagnostic harus menjelaskan operasi backup secara bermakna.
- Proses memiliki terminal state yang jelas, termasuk `DONE`.
- Saat proses masih berjalan tersedia `CANCEL`.

**Backup card**

Menu pada backup card yang terlihat pada reference:

- `Backup details`
- `Protect backup`
- `Add note`
- `Sync in cloud`
- `Delete backup`

**Backup part — Data**

Menu yang terlihat:

- `Restore`
- `Sync in cloud`
- `Encrypted`
- `Delete`

**Backup part — APK**

Menu yang terlihat:

- `Restore`
- `Sync in cloud`
- `Share APK`
- `Delete`

Menu bersifat contextual. Perbedaan action antara backup card, Data, dan APK tidak boleh digeneralisasi menjadi satu menu global.

### Revisi TODO

1. Implementasikan state dan surface proses backup yang terhubung ke execution state aktual.
2. Tampilkan status per part/app dan progress yang berasal dari data execution aktual.
3. Sediakan diagnostic terstruktur yang mencatat tahap operasi backup dan error aktual.
4. Tampilkan terminal state `DONE` setelah seluruh pekerjaan yang relevan selesai dengan hasil yang sesuai.
5. Sediakan `CANCEL` selama proses yang masih dapat dibatalkan.
6. Pertahankan konteks App Detail setelah backup selesai dan refresh inventory secara in-place.
7. Sinkronkan status backup pada Apps List dengan local backup inventory yang sama dengan App Detail.
8. Implementasikan contextual action surface untuk backup part APK dan Data sesuai capability yang benar-benar tersedia.
9. Pertahankan perbedaan menu backup card, Data, dan APK.
10. Hapus literal `null` dari presentation metadata yang optional.
11. Lanjutkan investigasi Data backup failure pada #1069 dengan diagnostic lengkap; screenshot terakhir membuktikan kegagalan Data tetapi belum cukup untuk menetapkan root cause baru.
12. Verifikasi alur APK-only, Data-only, multi-part, failure, cancel, metadata commit, inventory refresh, dan contextual actions pada device.

### Status

`REFERENCE CONFIRMED / REQUIREMENTS REFINED / IMPLEMENTATION PENDING / VERIFICATION PENDING`

Catatan: item di atas adalah kontrak yang diturunkan dari screenshot reference yang diberikan user. Action yang belum didukung oleh capability BaRe tetap harus mengikuti batas capability dan tidak boleh dianggap implemented hanya karena tersedia pada reference.

## A10/A13 — Implementasi Awal Proses Backup #1069 (2026-09-25)

### Current State

Berdasarkan evidence runtime #1069 dan UI reference yang diberikan user, implementasi proses backup diperluas tanpa memindahkan konteks App Detail ke route baru.

### Perubahan yang sudah diimplementasikan

1. `AppBackupBehavior` sekarang mengirim event progress untuk tahap persiapan, mulai/selesai tiap part, penyimpanan metadata, kegagalan, pembatalan, dan penyelesaian.
2. `AppDetailScreen` sekarang menampilkan surface proses backup di dalam konteks screen yang sama.
3. Surface proses menampilkan status per part, progress berdasarkan jumlah part yang benar-benar selesai, diagnostic terstruktur, `CANCEL` saat proses berjalan, dan `DONE` pada state terminal.
4. Pembatalan menggunakan cancellation request yang diperiksa sebelum part berikutnya. Operasi blocking yang sedang berjalan belum dapat dihentikan secara paksa; kondisi ini sengaja tidak disamarkan sebagai pembatalan instan.
5. Setelah hasil terminal, inventory App Detail direfresh. Tidak ada navigasi otomatis ke `APP_BACKUPS` sebagai konsekuensi keberhasilan backup.
6. Apps List sekarang membaca local backup inventory untuk menampilkan status backup aktual, menggantikan status statis `No backup on device`.
7. Backup part APK/Data pada App Detail sekarang membuka contextual menu. Action yang belum memiliki capability execution tetap disabled; UI tidak mengklaim action tersebut sudah berjalan.
8. Menu backup card pada App Detail sekarang berada di konteks card yang sama untuk `Backup details`, protect/unprotect, note, sync (disabled), dan delete dengan aturan protected backup.
9. Literal `null` tetap menjadi target cleanup pada seluruh surface backup yang masih ditemukan saat verifikasi berikutnya.

### Evidence yang sudah ada

- APK backup #1069 menghasilkan artifact nyata pada local storage.
- App Detail sebelumnya sudah membaca backup APK melalui local inventory.
- Data backup #1069 masih menghasilkan kegagalan runtime; implementasi diagnostic baru dimaksudkan untuk membuat error lengkap terlihat pada process surface.
- Reference menunjukkan process screen dengan progress, diagnostic, `CANCEL`, dan terminal `DONE`.
- Reference menunjukkan menu contextual berbeda untuk backup card, Data, dan APK.

### Batas verifikasi

Perubahan ini **belum VERIFIED** pada device.

Yang masih harus dibuktikan:

- Data backup berhasil pada device.
- Diagnostic menampilkan error aktual secara lengkap ketika Data gagal.
- Progress berubah berdasarkan execution aktual.
- `CANCEL` menghasilkan state terminal yang konsisten.
- Backup APK/Data/multi-part memperbarui inventory tanpa berpindah route.
- Apps List konsisten dengan App Detail.
- Contextual menu dan metadata protect/note/delete tetap berfungsi setelah perubahan.
- Tidak ada regresi compile/CI.

### Status

`IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`


## A10/A13 — Reference UI correction after CI #1080 (2026-09-25)

### Evidence

Runtime screenshots supplied by user were compared against the reference interaction contract. The visible mismatch was confirmed on the App Detail surface:

- Cloud backups card was clickable and navigated to the separate APP_BACKUPS screen.
- Connect account on the App Detail cloud card could navigate to the Cloud screen even though Cloud backup execution is not currently available.
- The reference contract treats the Cloud backup card as an inline state surface in the current App Detail context; navigation is not the card behavior.
- Cloud capability remains unavailable, so the App Detail Connect account control must remain disabled until the corresponding capability is actually implemented.

### Implementation

Commit: a22838ffb94f83a71a2420e6ed3018e4f75b8d97

Changes:

1. Removed the click/navigation behavior from AppBackupCloudStateCard.
2. Removed the onOpenBackups dependency from AppBackupCloudStateCard.
3. Changed App Detail Connect account to a disabled control instead of navigating to Screen.CLOUD.
4. Removed the unused onOpenBackups dependency from AppBackupStateCard.
5. The disabled Restore action remains a capability-gated control and does not navigate to APP_BACKUPS.

### Behavior contract

- App Detail → Cloud backups card: inline, non-navigating state card.
- App Detail → Connect account: disabled while Cloud capability is unavailable.
- App Detail → backup card Restore: disabled while Restore execution is unavailable.
- Backup completion remains in the current App Detail context and refreshes inventory in-place.

### Verification status

Source change is implemented. CI for commit a22838ffb94f83a71a2420e6ed3018e4f75b8d97 is pending; runtime re-test is pending.

Status: IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING


## A10/A13 — Contextual Delete implementation for backup parts (2026-09-25)

### Review result

The previous reference-UI correction did not yet implement part-level Delete. The backup card menu had whole-backup Delete, while APK/Data part menus still exposed Delete as disabled. External Data and Media were not surfaced as part chips even when inventory reported bytes.

Reference contract requires contextual Delete on backup parts. This is distinct from whole backup-version Delete.

### Implementation

Commits:

- 284e616b9b699eb0d8393867ba6e0b7cbb633419 — backup behavior: part deletion.
- 8e8ed2d099162c86e8ff922e6f1da49886200659 — confirmation strings.
- 321961d78cd1415099481246271648166f275b2e — contextual part-delete UI.

Implemented behavior:

1. APK Delete removes APK backup files from the selected backup version.
2. Data Delete removes the selected backup's data/ directory.
3. Ext. data Delete removes the selected backup's external-data/ directory.
4. Media Delete removes the selected backup's media/ directory when present.
5. Part Delete is available from the contextual part menu and requires confirmation.
6. Protected backup versions block part deletion, consistent with the existing protected whole-backup delete boundary.
7. Part chips are now rendered for External Data and Media when their actual inventory size is greater than zero.
8. After successful part deletion, local inventory is re-read so displayed sizes/parts update in-place.
9. Whole backup-version Delete remains a separate action on the backup-card/version menu.

### Capability boundary

- This change does not add Restore, Cloud Sync, Encryption, Share APK, or Media backup creation.
- Media deletion is supported for an existing media part even though new Media backup execution remains unsupported.
- No backup payload encryption format or Swift Backup crypto implementation was introduced.

### Verification status

Source implementation is complete. CI and device runtime verification are pending for:
- APK part Delete
- Data part Delete
- External Data part Delete
- Media part Delete when present
- protected-backup blocking
- inventory refresh after part deletion
- whole-backup Delete regression

Status: IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING


## A10/A13 — CI #1084 compile failure fix (2026-09-25)

### Evidence

CI #1084 failed during Kotlin compilation in `AppsScreens.kt` because the part-delete confirmation dialog for backup history was inserted into `AppsQuickActionsScreen` instead of `AppBackupsScreen`.

The resulting scope errors included unresolved `pendingPartDelete`, `runAction`, `actionBehavior`, `packageName`, and `versionCode`, plus the resulting non-exhaustive/ambiguous destructuring errors.

### Fix

Commit: 9d57fea8b668df088ab372c7e870204ea44f6b57

- Removed the misplaced part-delete dialog from `AppsQuickActionsScreen`.
- Scoped the dialog to `AppBackupsScreen`, where `pendingPartDelete`, `runAction`, `actionBehavior`, and `packageName` are defined.
- Kept the App Detail backup-card part-delete dialog in its existing correct scope.
- Re-read the updated source after the change and confirmed the history dialog references are inside `AppBackupsScreen`.

### Verification

CI #1084 failure is understood from the supplied compiler output. The source correction is implemented, but a new CI run is required to prove compilation.

Status: FIX IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING

## A10/A13 — Reference fidelity + Delete contract correction — 2026-09-25

### USER SAID
User memberi GO untuk implementasi dengan ketentuan: UI dan behavior harus mengikuti reference yang diberikan, dengan pengecualian header reference dipetakan menjadi BaRe sub-header setinggi **56dp**. Delete **harus tersedia** pada contextual action surface yang memang memiliki Delete pada reference; Delete tidak boleh dihilangkan hanya karena implementasi sebelumnya belum berhasil.

### DECISION / REQUIREMENT
1. Reference screenshot menjadi source of truth untuk struktur, urutan, contextual menu, label, enabled/disabled state, dan behavior backup UI yang sedang direplikasi.
2. BaRe boleh mempertahankan shell/navigation miliknya sendiri; header reference dipetakan menjadi sub-header BaRe **56dp**.
3. Contextual Delete wajib dipertahankan dan harus executable pada backup part yang sesuai.
4. Whole-backup Delete tetap berbeda dari part Delete.
5. Part Delete berlaku untuk APK, Data, Ext. data, dan Media bila part tersebut benar-benar ada pada local backup inventory.
6. Protected backup tetap memblokir Delete.
7. Cloud/Restore/Encryption/Sync/Share tetap capability-gated; tersedia pada reference tidak berarti BaRe boleh mengklaim capability yang belum implemented.
8. Perubahan harus memperbaiki behavior yang terbukti gagal pada runtime, bukan sekadar menambah menu visual.

### CURRENT EVIDENCE
- Runtime sebelumnya menunjukkan `Action failed / Unable to delete APK backup part`.
- Source saat ini sudah memiliki menu Delete untuk backup parts, tetapi implementasi deletion dan parity visual masih perlu diperbaiki.
- `BackupProcessScreen` masih memakai header 64dp; target BaRe sub-header adalah 56dp.
- Device backup card masih berbeda struktur dari reference dan perlu direkonsiliasi tanpa mencampurkan installed-app card dengan device-backup card.

### IMPLEMENTATION PLAN
1. Reconcile App Detail/device-backup UI dengan reference sambil mempertahankan BaRe sub-header 56dp.
2. Preserve contextual menus and Delete action exactly by surface/context.
3. Harden part deletion so success is based on all targeted artifacts being removed and the inventory is refreshed.
4. Remove user-facing `null` presentation if encountered in the affected backup surface.
5. Fix process sub-header height to 56dp and preserve terminal/failure context.
6. Run source/compile verification through CI and then device verification; do not claim runtime VERIFIED without new device evidence.

### STATUS
`AUTHORIZED / PRE-IMPLEMENTATION WORKLOG UPDATED / IMPLEMENTATION PENDING`

## A10/A13 — Reference fidelity + Delete implementation — 2026-09-25

### IMPLEMENTATION
- `RootCapabilityProvider` mendapat root-backed `deletePath()` dengan shell quoting yang sama untuk path storage.
- `AppBackupActionBehavior.delete()` dan `deletePart()` sekarang mencoba normal filesystem deletion lalu root-backed deletion bila artifact tidak dapat dihapus oleh app UID.
- Part Delete memvalidasi seluruh target artifact; success tidak lagi bergantung pada satu file pertama saja.
- Delete tetap contextual dan tersedia untuk APK, Data, Ext. data, dan Media bila part ada; Protected backup tetap memblokir mutation.
- Optional metadata `versionName`, `installerPackage`, dan `note` dinormalisasi agar JSON null tidak muncul sebagai literal `null` di UI.
- `BackupProcessScreen` sub-header diset **56dp** dan terminal FAILED/CANCELLED tidak lagi fallback ke `Preparing backup`.
- Device backup card pada App Detail direkonsiliasi ke struktur reference: centered `Device backups (N)`, date/version, `Updated: <relative time> (<total>)`, contextual overflow, APK/Data parts, dan Restore CTA.
- Contextual backup menus mempertahankan perbedaan surface: backup card (`Backup details`, `Protect backup`, `Add note`, `Sync in cloud`, `Delete backup`) dan part (`Restore`, `Sync in cloud`, part-specific action, `Delete`).
- Installed-app storage chip tetap berbeda dari device-backup part menu; tidak ditambahkan Delete ke installed-app chip.

### IMPLEMENTATION COMMITS
- `f96fd06b939d9fe3a12cafccdde40e3db1b1c896` — root-backed deletion capability.
- `9bcce67529f38e90508a331111b5c45544d56b10` — robust backup-part deletion.
- `6b1605c93107c37fff22d13f46ff6bd0600bf0f7` — optional metadata null normalization.
- `be5c06b4c6e9522f062d03b57337dc2230f0d2e7` — process sub-header/terminal copy.
- `e7a605a3797c7350bd7bf7745562c5f7080d7413` — reference strings.
- `62466c88f15936e451b383fecd080c85c7569b1b` — device backup card reference reconciliation.
- `84966c9414323df2e41fcc7a146d9308ab541f8e` — contextual sync label.
- `15f4138daad2f746370bde0a45e431039f16c9f0` — history sync label.

### VERIFICATION STATE
- **SOURCE:** changed source re-read from branch after implementation.
- **CI:** new CI run has not yet been observed for the latest implementation commits.
- **RUNTIME:** Delete APK/Data/Ext. data/Media has not yet been re-tested on device after the root-backed deletion change.
- **VISUAL:** source-level reconciliation is implemented against the supplied reference screenshots; device screenshot verification is still pending.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`

### NEXT VERIFICATION
1. CI build on latest branch head.
2. Runtime APK part Delete and confirm APK artifact disappears and inventory refreshes.
3. Runtime Data / Ext. data / Media Delete where parts exist.
4. Runtime whole-backup Delete and protected-backup blocking.
5. Runtime backup process success/failure and confirm 56dp sub-header plus non-empty terminal failure context.
6. Re-check Device backups card against reference screenshot and confirm no literal `null` appears.

## A10/A13 — Installed-card Delete reference correction — 2026-09-25

### USER SAID / EVIDENCE
User supplied reference screenshots confirming two distinct installed-app contexts:
- **Installed app card overflow (`⋮`)** includes `Backup to Device`, `Backup to Cloud`, `Backup to Device & Cloud`, and **`Delete`**.
- **Installed APK chip menu** includes `Backup to Device`, `Backup to Cloud`, `Backup to Device & Cloud`, and **`Share APK`**; it does **not** include Delete.

### IMPLEMENTATION
- Added **Delete** to the installed-app card overflow menu.
- Delete opens confirmation and executes installed-app backup deletion through `AppBackupActionBehavior.deleteAll()`.
- `deleteAll()` refuses deletion when any local backup version is protected.
- Existing APK chip menu remains unchanged and does **not** receive Delete; `Share APK` remains its APK-specific action.
- Device-backup card/part Delete remains separate and contextual.

### COMMITS
- `2f64da7600a2f30228582f709853aa728f9b8390` — installed-card backup deletion behavior.
- `0bbc3b4153032180c6c118a1cb6f87fc9e0e51dc` — installed-card Delete UI/action.
- `f7a091e04893132efbc14d2ce2b3ab38ad59b50a` — Delete confirmation copy.

### VERIFICATION
- Source implementation applied.
- CI pending for latest implementation.
- Device runtime verification pending for installed-card Delete, protected-backup blocking, and inventory refresh.

### STATUS
`IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`

## A13 — Installed-card Delete async fix — 2026-09-25

### OBSERVED
- CI #1096 failed at `AppsScreens.kt:1273` because installed-card Delete confirmation called `withContext(Dispatchers.IO)` directly from a non-suspend Compose click callback.
- This is a compile-time coroutine-context error; no runtime Delete verification can be inferred from this failed build.

### FIX
- Installed-card Delete now launches from the existing `backupScope` and performs `deleteAll(packageName)` inside `withContext(Dispatchers.IO)`.
- Successful deletion increments both backup and detail reload tokens so installed-card/device-backup inventory is refreshed.
- Failure remains surfaced through the existing action failure/toast path.

### VERIFICATION
- Source fix committed as `c9a392bfad2815e3d3bdeee7aefbe06b0c476855`.
- CI verification for the fix is pending.
- Runtime installed-card Delete verification is pending.
- STATUS: `FIX IMPLEMENTED / CI PENDING / RUNTIME PENDING`

## A10/A13 — Installed-part Delete contract correction — 2026-09-25

### USER SAID
Reference runtime screenshots 480800, 480801, 480802 memperjelas bahwa Delete yang benar berada pada installed-app storage-part contextual menu untuk Data / Ext. data / Media, setelah Backup to Device & Cloud. Delete pada general app overflow menu di bawah Settings harus dihapus. APK menu tetap memakai Share APK dan tidak mendapat Delete.

### DECISION / REQUIREMENT
1. General app overflow menu: hapus Delete di bawah Settings.
2. Installed APK chip menu: Backup to Device, Backup to Cloud, Backup to Device & Cloud, Share APK; tanpa Delete.
3. Installed Data chip menu: Backup to Device, Backup to Cloud, Backup to Device & Cloud, Delete.
4. Installed Ext. data chip menu: Backup to Device, Backup to Cloud, Backup to Device & Cloud, Delete.
5. Installed Media chip menu: Backup to Device, Backup to Cloud, Backup to Device & Cloud, Delete.
6. Delete behavior harus spesifik terhadap part: Data clear application data melalui root package action; Ext. data hapus /sdcard/Android/data/<package>; Media hapus /sdcard/Android/media/<package>.
7. Delete harus memakai confirmation dan actual result handling; tidak boleh hanya UI.
8. Device backup Delete dan whole-backup Delete tetap merupakan context yang berbeda.

### STATUS
AUTHORIZED / WORKLOG PRE-IMPLEMENTATION UPDATED / IMPLEMENTATION PENDING

## A10/A13 — Installed-part Delete implementation completed — 2026-09-25

### IMPLEMENTATION
- Removed general app overflow `Delete` action below Settings. The existing whole-backup deletion path is no longer exposed from that general app menu.
- Added installed Data / Ext. data / Media contextual `Delete` after `Backup to Device & Cloud`.
- Installed APK contextual menu remains `Backup to Device`, `Backup to Cloud`, `Backup to Device & Cloud`, `Share APK`; no Delete.
- Data Delete uses `pm clear <package>` through the existing root action boundary.
- Ext. data Delete removes `/sdcard/Android/data/<package>` through a root-backed, shell-quoted path operation.
- Media Delete removes `/sdcard/Android/media/<package>` through the same root-backed path operation.
- Each installed-part Delete opens its own confirmation dialog and dispatches the part-specific behavior; result is handled through the existing action result surface.
- Device backup card/part Delete behavior remains separate and unchanged by this contract correction.

### IMPLEMENTATION COMMITS
- `a31caf13e32b6edd0312536ae49a2e6ad62f5b41` — root path deletion capability.
- `fa554f1f550b3dec938894bc49f87f93d262d7f0` — installed Ext. data / Media delete behaviors.
- `b6ee44f9ecd2fd028e0d646c0827860d4c5f64c0` — installed-part delete strings.
- `fe085e09b7f79e03dfa56714f8423d1ca5b2910a` — UI placement, confirmation, dispatch, and removal of general-menu Delete.

### VERIFICATION STATE
- **SOURCE:** latest source re-read after implementation; installed APK/Data/Ext. data/Media menu distinction is represented in code.
- **CI:** pending on latest implementation commit.
- **RUNTIME:** not yet re-tested on device; behavior remains UNVERIFIED until the installed Data / Ext. data / Media flows are exercised.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`

### NEXT VERIFICATION
1. Confirm CI build passes on the latest branch head.
2. Runtime: APK menu has Share APK and no Delete.
3. Runtime: Data menu has Delete and Delete clears only app data.
4. Runtime: Ext. data menu has Delete and removes only Android/data package content.
5. Runtime: Media menu has Delete and removes only Android/media package content.
6. Runtime: general app overflow menu no longer exposes Delete.

## A13 — Perbaikan CI installed-part Delete — 2026-09-25

### OBSERVED / VERIFIED FROM CI #1100
- Build `:app:assembleDebug` gagal pada tahap `compileDebugKotlin`.
- `AppActionBehavior.kt:106` dan `RootAppActionExecutor.kt:27` memiliki literal `\n` yang masuk sebagai teks source, sehingga Kotlin membaca token tersebut sebagai syntax yang tidak valid.
- `AppsScreens.kt:1251` dan `1255` mereferensikan `delete_installed_part` dan `confirm_delete_installed_part`, tetapi kedua resource string belum tersedia pada `strings.xml`.
- Tidak ada evidence runtime dari build #1100 karena compile gagal.

### FIX IMPLEMENTED
- Memperbaiki literal `\n` menjadi newline Kotlin normal pada `AppActionBehavior.kt`.
- Memperbaiki literal `\n` menjadi newline Kotlin normal pada `RootAppActionExecutor.kt`.
- Menambahkan resource `delete_installed_part` dan `confirm_delete_installed_part` ke `strings.xml`.
- Tidak mengubah kontrak UI installed-part: APK tetap tanpa Delete; Data / Ext. data / Media tetap memiliki Delete; general app overflow tetap tanpa Delete.

### COMMITS
- `049e5ed046d1210bf93ce91ee15cb08d0d7d8978` — perbaikan syntax AppActionBehavior.
- `91f94b00cb7b07c99b4920384137a72077e4e5c8` — perbaikan syntax RootAppActionExecutor.
- `3ee3907badc342dea6ec68381536ea644a354e01` — resource string installed-part Delete.

### VERIFICATION STATE
- **SOURCE:** fix sudah diterapkan dan branch diperiksa ulang.
- **CI:** menunggu run baru setelah fix.
- **RUNTIME:** tetap UNVERIFIED sampai build berhasil dan installed Data / Ext. data / Media Delete diuji di device.
- **STATUS:** `FIX IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`

## A10/A13 — Revisi UI Device backups — 2026-09-25

### USER SAID
User mengonfirmasi CI terakhir hijau dan Delete sudah benar. User meminta **UI card Device backups** disamakan dengan card Last updated di atas: satu card backup berisi empat kotak part **APK, Data, Ext. data, Media**.

### REQUIREMENT
- Perubahan ini **UI-only** untuk struktur card Device backups.
- Jangan mengubah behavior backup/delete/restore/action yang sudah ada.
- Satu backup card menggunakan grid 2x2 seperti card part di atas:
  - APK | Data
  - Ext. data | Media
- Metadata ukuran setiap part tetap berasal dari inventory backup yang sudah ada.
- Card empty-state `No backup on device` tetap dipertahankan ketika tidak ada backup.
- Contextual menu card dan menu part tetap dipertahankan.

### STATUS
`AUTHORIZED / PRE-IMPLEMENTATION WORKLOG UPDATED / IMPLEMENTATION PENDING`

## A10/A13 — Revisi UI Device backups — IMPLEMENTED — 2026-09-25

### IMPLEMENTATION
- Card `Device backups` sekarang menampilkan empat part dalam grid 2x2 pada satu card, mengikuti struktur card `Last updated` di atas.
- Urutan visual: `APK | Data`, lalu `Ext. data | Media`.
- Icon Data direvisi ke representasi storage dan Media ke representasi media; ukuran tetap menggunakan inventory backup aktual.
- Setiap part tetap memakai contextual action surface dan Delete behavior yang sudah ada.
- Tidak ada perubahan pada execution/backup/delete/restore semantics; perubahan dibatasi pada layout card.
- Empty-state `No backup on device` tetap dipertahankan.

### COMMIT
- `e2ca3df881947624dcb2a152e55aba00b523104a` — `fix(ui): match device backup four-part card layout`

### VERIFICATION STATE
- **SOURCE:** implementation committed and source re-read on branch.
- **CI:** run triggered by latest commit; hasil final belum teramati pada saat worklog ini direvisi.
- **RUNTIME:** belum ada screenshot runtime baru setelah perubahan UI ini.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME UI VERIFICATION PENDING`

## SESSION BOOTSTRAP / RECONCILIATION — 2026-09-25

### ACTUAL STATE
- Repository: `savie/BaRe`
- Working branch: `v1.0/rebaseline`
- Reference branch: `reference`
- Branch HEAD: `42a8962370201f5ce18ae1da20e817ebe11ae062`
- HEAD commit: `docs(worklog): record device backup four-part UI implementation`
- Latest implementation commit for Device backups UI: `e2ca3df881947624dcb2a152e55aba00b523104a`
- Latest CI run observed for that implementation commit: GitHub Actions run `#1104`, conclusion `success`.
- HEAD `42a8962...` is documentation-only relative to the implementation checkpoint; no newer application-code change is observed from the branch state inspected.

### RECONCILIATION
- Source state: Device backups four-part 2x2 card implementation is present at `e2ca3df...`.
- CI state: **VERIFIED** for `e2ca3df...` by run `#1104` (`:app:assembleDebug` workflow succeeded).
- Runtime UI state: **UNVERIFIED**; no new device/runtime screenshot evidence is available for the post-`e2ca3df...` UI.
- Local working-tree state: **UNKNOWN**; no local checkout/worktree is attached to this session, so uncommitted local changes cannot be inspected.
- Device/runtime execution: **BLOCKED** in this session because no Android device/emulator session is available through the currently exposed automation capability.

### CURRENT TASK
Runtime verification of Device backups UI after the four-part card implementation.

### VERIFICATION TARGET
1. Device backup card shows APK | Data / Ext. data | Media in one 2x2 card.
2. Part sizes remain sourced from actual backup inventory.
3. Empty state remains `No backup on device`.
4. Existing contextual card/part actions remain reachable.
5. No backup/delete/restore execution semantics regress.

### NEXT ACTION
Obtain an Android runtime/device session and execute the verification target above. Do not claim runtime UI parity until direct runtime evidence is captured.

### STATUS
`IMPLEMENTED / CI VERIFIED / RUNTIME VERIFICATION BLOCKED`

## A14 — Normalisasi Global Header 6 Halaman — 2026-09-25

### USER SAID
User meminta implementasi ulang setelah koreksi scope:
- reset branch ke commit `7c3f9352d2ed9838c085eda9dd6c04df5a9d5dda`;
- pada 6 halaman hanya tambahkan **Global Header** existing `BARE / SAVE OUR DAY`;
- judul/header halaman yang sudah ada menjadi **Sub-header 56dp**;
- body, isi, action, navigation, state, persistence, dan behavior **tidak diubah**.

### RESET
Branch `v1.0/rebaseline` di-reset secara force ke:
`7c3f9352d2ed9838c085eda9dd6c04df5a9d5dda`.

Commit/header experiment sebelumnya dibuang dari branch sehingga perubahan baru dimulai dari baseline tersebut.

### IMPLEMENTATION
Enam target:
1. Backup complete / Backup process result.
2. Set App Labels.
3. App backups.
4. App Labels.
5. Custom configurations.
6. Blacklist apps.

Aturan implementasi:
```
GlobalHeader (existing)
        ↓
Existing page title/header — 56dp
        ↓
Existing body
```

Detail:
- `GlobalHeader` existing dipakai apa adanya; **tidak ada perubahan pada implementasi GlobalHeader**.
- Header khusus `LabelsGlobalHeader` yang menduplikasi identitas BARE di App Labels dihapus dan diganti dengan `GlobalHeader`.
- `LabelSubHeader` existing hanya diberi tinggi `56dp`; title, back action, create action, dan delete action tetap sama.
- Custom configurations, Blacklist apps, dan App backups mempertahankan `TopAppBar`/title/action yang sama, ditambahkan `GlobalHeader` di atasnya dan tinggi header page diset `56dp`.
- Backup process mempertahankan row header existing setinggi `56dp`, hanya menambahkan `GlobalHeader` di atasnya. Back enabled-state dan Diagnostics behavior tidak diubah.
- Body composable dan behavior tidak direstrukturisasi.

### COMMITS
- `8aecd103e8353ed4f6669abc68473d26a77b2b97` — `fix(ui): add global header to app pages`
- `f2bc3a332b0aba6220762acb12cd1873da018125` — `fix(ui): add global header to backup process`

### SOURCE VERIFICATION
Compare terhadap baseline `7c3f9352...` menunjukkan hanya:
- `AppsScreens.kt`
- `BackupProcessScreen.kt`

Tidak ada perubahan pada `GlobalHeader.kt`, database, behavior layer, backup engine, atau body data logic.

### VERIFICATION STATE
- **SOURCE:** perubahan sudah direview terhadap baseline dan scope sesuai requirement.
- **CI:** belum diverifikasi untuk implementation baru.
- **RUNTIME:** belum diverifikasi pada device setelah implementation baru.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`

## A15 — Perbaikan visual Sub-header 56dp + Quick Actions — 2026-09-25

### TEMUAN
Runtime screenshot menunjukkan implementasi sebelumnya masih salah:
- `TopAppBar` dipaksa `56dp`, tetapi minimum-height/layout internal Material3 menyebabkan title terpotong.
- Sub-header tidak memakai warna BaRe `surface`, sehingga secara visual terlihat menyatu/hitam.
- `AppsQuickActionsScreen` ternyata berada di `AppsScreens.kt` dan belum ikut dinormalisasi.

### IMPLEMENTASI
Membuat satu primitive sub-header bersama di `AppsScreens.kt`:
- `BaReSubHeader`
- tinggi tepat `56dp`;
- background `MaterialTheme.colorScheme.surface`;
- title memakai typography BaRe `titleLarge`;
- subtitle memakai `bodySmall` + `onSurfaceVariant`;
- back button/action dipertahankan;
- divider tetap ada;
- bukan `TopAppBar`, sehingga tidak terkena minimum-height Material3.

Global Header existing `GlobalHeader()` tetap tidak diubah.

Target yang dinormalisasi:
1. App detail / 1DM+
2. Backup complete
3. Set App Labels
4. App backups
5. App Labels
6. Custom configurations
7. Blacklist apps
8. Apps quick actions

Body dan behavior existing dipertahankan.

### COMMITS
- `6d0c89e8934be80000e0fcbfa1dcd01b1b0eb999`
- `ccb05277683c837084726eb5a97692b110a816b3`
- `c6d61e3e7b5d4a8eb4203214c9f929a976df7951`

### VERIFICATION
- **SOURCE:** reviewed; obsolete `LabelSubHeader` removed and target screens use `BaReSubHeader`.
- **CI:** runs #1111–#1113 are currently `in_progress`; previous runs #1109/#1110 were successful for the prior implementation.
- **RUNTIME:** pending new device verification.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`

## A16 — Koreksi visual sub-header mengikuti referensi runtime — 2026-09-25

### USER FEEDBACK
Referensi runtime menegaskan sub-header harus:
- memakai hitam/background yang sama dengan Global Header, bukan `surface` yang lebih terang;
- mempertahankan visual hierarchy yang sekelas dengan header referensi;
- title sekitar 20sp bold;
- subtitle sekitar 16sp;
- navigation/action icon sekitar 28dp;
- tidak terlihat kecil/tertekan dibanding header;
- tetap 56dp sebagai page sub-header.

### IMPLEMENTASI
- `BaReSubHeader` background diubah dari `surface` menjadi `background`.
- title dinormalisasi ke 20sp + Bold.
- subtitle dinormalisasi ke 16sp.
- back/add/delete/diagnostic icons dinormalisasi ke 28dp.
- backup process diagnostic icon ikut disamakan.

Reference image supplied by user digunakan sebagai visual source untuk koreksi ini.

### COMMITS
- `a3d504f58553bd21c2189749d9614f07cbfff20b`
- `95f487a205f1a76fa6f090bfe7abdc65e62ac57f`
- `29271f1b047f48a22fc82fcbace3ee468d57b557`

### STATUS
`IMPLEMENTED / RUNTIME VERIFICATION PENDING`

## A17 — Koreksi background Backup Process — 2026-09-26

### USER FEEDBACK
Pada halaman Backup, area di luar surface/card harus tetap menggunakan background global BaRe. Hanya surface/card yang boleh tampil sebagai bidang abu-abu.

### IMPLEMENTASI
- Root `BackupProcessScreen` sekarang eksplisit menggunakan `MaterialTheme.colorScheme.background`.
- Card/surface existing tidak diubah.
- Global Header dan sub-header tidak diubah.
- Body dan behavior backup tidak diubah.

### COMMIT
- `ef6cbc98e05040b7044cbab82f586da3446ab652`

### STATUS
`IMPLEMENTED / RUNTIME VERIFICATION PENDING`

## A17 — Koreksi background Backup Process — 2026-09-26

### USER FEEDBACK
Reference runtime menunjukkan area di luar surface/card harus tetap memakai background hitam BaRe. Hanya isi surface/card yang memakai warna surface.

### IMPLEMENTASI
- Root `BackupProcessScreen` dipastikan memakai `MaterialTheme.colorScheme.background`.
- Progress card dipastikan memakai `MaterialTheme.colorScheme.surface`.
- Diagnostics card dipastikan memakai `MaterialTheme.colorScheme.surface`.
- Tidak mengubah isi, layout body, atau behavior backup.

### VERIFICATION
Source updated pada `990e2dce949ab70785460cd51497bf6a1080eac4`.
Runtime verification masih pending.


## A18 — Unified App Backup Engine — APK / Data / Ext. data / Media — 2026-09-26

### USER DECISION / REQUIREMENT
Target capability BARE:
- Satu unified backup engine harus mampu menangani **APK, Data, Ext. data, dan Media** sebagai backup parts.
- Semantics/domain operation tetap sama lintas execution mode; perbedaan berada pada capability/provider mechanism.
- **ROOT** ditargetkan untuk full private-app access yang memang dapat diperoleh pada device.
- **NON_ROOT** tetap memakai engine yang sama tetapi hanya menghasilkan parts yang benar-benar accessible; keterbatasan harus dinyatakan sebagai `LIMITED`, `UNAVAILABLE`, `BLOCKED`, atau result `PARTIAL`, bukan dipalsukan sebagai full success.
- Provider/mechanism yang dapat dipakai tetap mengikuti architecture BaRe: `NON_ROOT`, `ADB`, `SHIZUKU`, `ROOT`, Android APIs, SAF, dan local storage sesuai capability.
- **Swift Backup 5.1.0 (620)** dipakai sebagai **functional/workflow reference** untuk audit dan pembandingan behavior. Reference implementation tidak disalin sebagai implementation BaRe.
- Archive/manifest/metadata, staging, atomic commit, integrity verification, compression, diagnostics, dan operation result mengikuti boundary architecture BaRe.
- **Encryption menggunakan implementation/security boundary BaRe sendiri**; kesamaan dengan Reference hanya pada backup semantics/flow yang memang sudah menjadi keputusan requirement.
- Backup result harus mencerminkan parts yang benar-benar berhasil, termasuk partial/failed state dan diagnostic evidence.

### ARCHITECTURE DIRECTION
Model yang disetujui untuk dilanjutkan:
```
Backup Request
  ↓
Capability Discovery / Resolution
  ↓
Backup Plan
  ↓
Part Providers
  ├─ APK
  ├─ Data / data_de
  ├─ Ext. data
  └─ Media
  ↓
Collection / Filtering / Staging
  ↓
Archive + Manifest / Metadata
  ↓
Compression
  ↓
BARE Encryption
  ↓
Integrity / Verification
  ↓
Atomic Commit
  ↓
Operation Result + Diagnostics
```

Root/non-root **bukan dua backup engine**. Engine tetap unified; provider/capability menentukan apa yang dapat dikoleksi.

### REQUIRED DISCOVERY / TODO
1. Audit current BaRe backup implementation pada source branch untuk menentukan **actual failure boundary** untuk Data, dan membandingkan jalur APK/Data/Ext. data/Media.
2. Audit Reference evidence yang relevan untuk **data collection, ext-data, media, archive/staging, result semantics**, tanpa menganggap static reference sebagai runtime proof.
3. Map current provider/mechanism BaRe:
   - NON_ROOT
   - ADB
   - SHIZUKU
   - ROOT
   terhadap setiap backup part.
4. Tentukan capability matrix aktual per part dan execution mode, termasuk dependency/permission/privilege limitation.
5. Audit archive/artifact/manifest/compression/integrity/encryption boundary yang sudah tersedia sebelum membuat implementation baru.
6. Reproduce dan capture failure Data backup pada runtime/device; jangan menyimpulkan root cause dari UI error saja.
7. Rancang **unified BackupPlan + part provider pipeline** yang kompatibel dengan architecture BaRe dan existing operation/result semantics.
8. Implementasi bertahap: APK → Data/data_de → Ext. data → Media, dengan verification per part dan tanpa mengklaim full backup sebelum seluruh required parts terbukti.
9. Tambahkan negative/partial tests untuk inaccessible Data pada NON_ROOT serta failure/corruption/interrupted-write paths.
10. Setelah backup engine stabil, lanjutkan restore menggunakan artifact contract yang sama.

### CURRENT STATUS
- Requirement/architecture direction: **DECIDED / AUTHORIZED**.
- Implementation of this new unified engine: **NOT STARTED**.
- Current backup Data failure root cause: **UNKNOWN / NEEDS REPRODUCTION + SOURCE AUDIT**.
- Runtime proof of full APK + Data + Ext. data + Media backup: **UNVERIFIED**.
- Cloud is outside this task's required local backup proof; do not conflate cloud provider availability with local backup engine correctness.

### NEXT ACTION
**Inspect → reproduce Data failure → audit current backup providers/engine → reconcile with Reference → design minimal unified pipeline.**

### VERIFICATION BOUNDARY
No claim of `WORKING`, `FULL BACKUP`, or `VERIFIED` is allowed until runtime evidence proves the corresponding parts and result semantics.

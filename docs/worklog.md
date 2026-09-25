# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. History engineering yang sudah dirapikan tersedia di [`docs/worklog_history.md`](./worklog_history.md). Git commit tetap menjadi evidence perubahan repository, bukan pengganti worklog history.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current checkpoint | `609de75a315cbf4aefce660f8ac302df461b4937` |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **VERIFY / DEBUG** |
| Fokus | **Apps reference parity — A9 shared app-level action behavior boundary** |
| Reference audit | **SELESAI** |
| Runtime status | **MIXED — A7 header architecture implemented; CI/runtime verification pending** |
| Root cause | **Cloud provider/backend tetap belum tersedia; A7 source implementation belum CI/runtime-verified** |

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
| A9 | App Detail app-level actions | **RUNTIME TESTED / UNRESOLVED** | **Shared behavior boundary terbukti E2E** untuk Launch, App Info, Play Store, Enable/Disable, Force Stop, Clear Data, Add to Home, dan Uninstall execution. **Open defects:** Battery Optimization state Apps List ↔ App Detail belum konsisten; system uninstall membutuhkan post-return state reconciliation. **Next:** build + runtime re-test dua defect tersebut. |
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
- **CI:** run #1037 untuk commit ini sedang berjalan; belum boleh dinyatakan PASS sebelum selesai.
- **RUNTIME:** perubahan bahasa APK belum diuji pada device. A9 uninstall reconciliation dan Battery Optimization juga tetap menunggu E2E retest.

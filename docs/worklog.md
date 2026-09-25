# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. History engineering yang sudah dirapikan tersedia di [`docs/worklog_history.md`](./worklog_history.md). Git commit tetap menjadi evidence perubahan repository, bukan pengganti worklog history.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current checkpoint | `c085b06f56ec728531b05fa3fe41b10468f1a3fa` |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **VERIFY / DEBUG** |
| Fokus | **Apps reference parity — A7 App Detail global header + foundation** |
| Reference audit | **SELESAI** |
| Runtime status | **MIXED — A7 global header implementation applied; build/runtime verification pending** |
| Root cause | **Cloud provider/backend tetap belum tersedia; A7 source implementation belum runtime-verified** |

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

Install Date, Update Date, dan Date Used **tidak lagi menjadi open verification item untuk continuity sesi**. User mengonfirmasi ketiganya sudah selesai; worklog tidak boleh mengembalikan ketiganya menjadi task hanya karena session reset.

Open verification items mengikuti current Apps checkpoint, terutama A7 runtime/build evidence dan capability A8-A12 yang belum dikerjakan.

## 4. NEXT ACTION

### A. Install / Update Date
- **KELAR — user-confirmed.** Jangan dibuka ulang hanya karena session reset.

### B. Date Used
- **KELAR — user-confirmed.** Jangan dibuka ulang hanya karena session reset.

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

Catatan: mapping A1-A18 di bawah dipakai sebagai **continuity index** untuk pekerjaan Apps. Ini adalah rekonsiliasi terhadap source/reference yang tersedia saat audit ini; bukan klaim bahwa wording lama dari percakapan sebelumnya masih dapat dipulihkan verbatim dari worklog history.

| A | Work slice | Current status |
|---|---|---|
| A1 | Apps shell + Local context | **IMPLEMENTED / PARTIAL** — Local Apps shell ada; Cloud context switch belum |
| A2 | Apps search | **IMPLEMENTED** |
| A3 | Apps filter model + behavior | **IMPLEMENTED / PARTIAL** — reference filter set sebagian besar ada; Cloud metadata/runtime gaps tetap ada |
| A4 | Apps storage/App Size model | **IMPLEMENTED / PARTIAL** — local StorageStats + App Size sort ada; reference component coverage belum penuh |
| A5 | Apps Local/Cloud context wiring | **GAP / NEXT IMPLEMENTATION TARGET** — Cloud metadata boundary ada, UI context belum |
| A6 | Apps row identity/metadata/organization presentation | **PARTIAL** |
| A7 | App Detail foundation/header | **IMPLEMENTED / PARTIAL** |
| A8 | App Detail storage parts + total/cache presentation | **IMPLEMENTED / PARTIAL** |
| A9 | App Detail app-level actions | **IMPLEMENTED / PARTIAL** |
| A10 | App Detail part-level actions | **PARTIAL** |
| A11 | Device backup card/inventory | **PARTIAL / UNVERIFIED** |
| A12 | Cloud backup card/inventory | **PARTIAL / BLOCKED by provider** |
| A13 | App backup execution | **PARTIAL** — Device subset works in source path; Cloud/Media unsupported |
| A14 | App restore execution | **GAP / MOCKUP** |
| A15 | Favorites/Labels/Blacklist organization | **IMPLEMENTED / PARTIAL** |
| A16 | Quick Actions / Batch | **UI IMPLEMENTED / EXECUTION PENDING** |
| A17 | Custom Config + App Backup Settings | **PARTIAL** |
| A18 | Diagnostics / Swipe / Import-Install / remaining child flows | **PARTIAL / GAP** |

### 9.1 Current implementation conclusion

- **A1-A4 bukan backlog kosong**. Source menunjukkan keempat slice tersebut sudah mempunyai implementation nyata; beberapa masih mempunyai parity/verification gap.
- **A5 adalah Local/Cloud context wiring**, bukan otomatis App Detail/A5 sebelumnya. Ini sekarang menjadi gap eksplisit hasil audit reference.
- App Detail dan seluruh anak-pinaknya sudah terpetakan sehingga implementation berikutnya tidak perlu menebak scope.

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

1. **A7:** selesaikan dan verifikasi App Detail global Apps shell/header + navigation continuity.
2. Setelah source change, **build** dan cek runtime visual App Detail pada device.
3. Cocokkan header App Detail dengan header Apps: brand, context, search, filter, menu, dan back navigation.
4. Jika A7 runtime evidence memenuhi acceptance, tandai A7 sesuai status verification yang benar.
5. Setelah A7 ditutup, lanjut ke **A8 App Detail storage parts + total/cache presentation**.
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


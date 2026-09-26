# BaRe v1.0 — Worklog

> **Role:** current continuity / synthesis checkpoint.
>
> Dokumen ini **bukan transcript dan bukan chronology lengkap**. Ia merangkum state, keputusan, evidence, unresolved item, dan next action yang berasal dari dua arsip history.
>
> **History 1:** [docs/worklog_history.md](./worklog_history.md) — chronology engineering sebelumnya.
>
> **History 2:** [docs/worklog_history_2.md](./worklog_history_2.md) — arsip worklog sebelum pembentukan continuity/synthesis baru, termasuk seluruh record A18 yang sebelumnya bercampur dengan current state.
>
> Git commit tetap menjadi evidence perubahan repository dan tidak digantikan oleh worklog.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current code checkpoint | `f548738c94c6502d4352638adc64d905bfd5d25e` |
| Lifecycle | **BUILD / RUNTIME VERIFICATION / DEBUGGING** |
| Current focus | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media + performance instrumentation + filesystem-boundary diagnosis** |
| Reference audit | **SELESAI** |
| Latest CI | **#1156 PASS** untuk artifact pipeline |
| Latest runtime | **#1156 masih menjadi runtime evidence terakhir; #1164 build gagal compile; #1165 sedang membangun fix; direct-root runtime/Data/full backup UNVERIFIED** |
| Current root-cause/status | **Old APK 138 GB measurement defect bypassed by new direct-root path; direct-root runtime behavior/performance UNKNOWN; Data filesystem boundary UNKNOWN** |

### Current evidence
### CI #1164 — DIRECT ROOT COMPILE FAILURE + FIX

- **OBSERVED:** Android Build #1164 pada commit `9e6ac0d7452395ca3400f9fbce16d4eb1f22757a` gagal di `compileDebugKotlin`.
- **ERROR 1:** `AppBackupArchiveWriter.kt:277:36 Unsupported escape sequence` pada tar path separator.
- **ERROR 2:** `AppBackupEngine.kt:100:27 Too many arguments` karena trailing lambda Kotlin terikat ke parameter terakhir `isCancelled`, sementara `isCancelled` juga diberikan sebagai named argument.
- **FIXED:** commit `f548738c94c6502d4352638adc64d905bfd5d25e` memperbaiki tar separator dan commit sebelumnya `0e93e8192571f538276e247feae8179b136fdbf9` memperbaiki binding `onProgress/isCancelled`.
- **CURRENT:** Android Build #1165 sedang berjalan pada commit `0e93e8192571f538276e247feae8179b136fdbf9`; hasil compile/runtime belum VERIFIED.
- **NOTE:** commit `f548738c...` sendiri akan memicu build berikutnya; acceptance tetap menunggu build terbaru dan runtime device.

### Current implementation / performance change

- **DECISION:** lanjut dari diagnostic menuju perbaikan pipeline, bukan sekadar memperbaiki angka progress.
- **IMPLEMENTED:** pada `AccessMethod.ROOT`, A18 sekarang tidak lagi melakukan **ROOT copy → staging → reread untuk archive**. Source ROOT diarahkan langsung ke archive pipeline melalui `toybox tar` stream.
- **IMPLEMENTED:** APK ROOT memakai source path hasil `pm path` + `stat -c %s`; Data/Ext. data/Media ROOT memakai direct directory source dan size probe `toybox du -sk`.
- **IMPLEMENTED:** archive compression di `ZipOutputStream` diturunkan ke `Deflater.BEST_SPEED` untuk mengurangi CPU overhead pada backup cepat.
- **IMPLEMENTED:** direct-root archive memiliki parser tar untuk regular files serta PAX/GNU long-path metadata yang relevan, lalu tetap menghasilkan `.bare` dengan encryption/artifact move atomic yang sama.
- **IMPLEMENTED:** cancellation check ditambahkan pada root tar streaming; partial archive tetap dibersihkan oleh archive failure path.
- **SCOPE:** perubahan ini menargetkan throughput dan I/O amplification; NON_ROOT tetap memakai staging pipeline.
- **REFERENCE EVIDENCE:** Swift Backup 5.1.0-620 menunjukkan root backup berbasis native SBA/tar/archive path, FASTEST compression, base APK 122.5 MB + splits 15.68 MB, Data 457.74 MB, dan task sekitar 3.59 s pada evidence screenshot/source yang tersedia. Ini dipakai sebagai comparison evidence, bukan implementation contract.
- **CURRENT VERIFICATION:** source-level change terobservasi pada commit `07a81ff5d5ac89d4e5cebe811386b732a9dea1b3`; GitHub Actions/combined status untuk commit ini tidak memiliki workflow run/status. Compile dan runtime **UNVERIFIED**.
- **IMPORTANT UNKNOWN:** direct-root Data memakai ROOT execution boundary yang sama secara konseptual dengan `su`; belum ada runtime evidence bahwa `/data/user/0/<package>` terlihat dari boundary tersebut. Root namespace/CE-DE/user-profile issue tetap UNKNOWN.
- **IMPORTANT UNKNOWN:** behavior untuk hardlink/special tar entries dan kompatibilitas runtime parser belum diverifikasi.
- **PROTECTED INTENT:** artifact lifecycle, encrypted `.bare` contract, Ext. data, Media, dan cancellation semantics harus tetap diregression-test setelah performance change.
## 2. HISTORICAL SYNTHESIS

### History 1 — Fondasi sampai capability progression

History 1 mencatat perjalanan engineering dari **2026-09-17 sampai 2026-09-24**, termasuk:

1. **Repository/documentation boundary**
   - BaRe ditetapkan sebagai rumah canonical technical project documentation.
   - Struktur `docs/` dan boundary terhadap Varnexis-Workspace direkonsiliasi.
   - Reference, product, architecture, capability matrix, dan worklog ditempatkan dalam boundary yang jelas.
   - Governance dan evidence classification diperjelas tanpa menaikkan status runtime secara otomatis.

2. **UX/UI foundation**
   - Dibentuk Android Compose product shell.
   - Onboarding dan empat primary tabs dikembangkan.
   - Navigation, submenu/back behavior, access-method surface, dan reference-aligned UI direkonsiliasi.
   - FE mockup dipisahkan dari claim capability backend/runtime.

3. **FE structural refinement**
   - MainActivity dipersempit menjadi entry point.
   - App state, theme, reusable components, feature screens, preview, resource, branding, dan launcher/icon behavior direstrukturisasi.
   - Build/runtime verification tetap dibedakan dari source implementation.

4. **Identity / authentication / persistence**
   - Local identity, account boundary, persistence minimum, password input, package/namespace rename, dan authentication-related flow dikembangkan serta direkonsiliasi.
   - Status implementation dan runtime evidence tetap dicatat terpisah.

5. **Backup storage / access capability**
   - Backup storage, cloud gate, external storage visibility, access method, storage capacity/header, dan home dashboard dikembangkan.
   - Runtime verification dilakukan pada beberapa checkpoint; capability tidak dianggap verified hanya karena UI tersedia.

6. **Recovery / identity / storage boundary**
   - Identity recovery semantics, storage boundary, recovery secret/key lifecycle, recovery artifact, verification harness, dan UI wiring dibahas/diimplementasikan sesuai scope yang tercatat.
   - Boundary dan evidence menjadi dasar untuk pekerjaan capability berikutnya.

7. **Apps / navigation / root capability progression**
   - Apps filtering, sorting, search, options, navigation shell, root permission UX/grant path, build failures, dan boundary audit direkam.
   - Beberapa build failures diperbaiki dan dicatat sebagai checkpoint tersendiri.

**Makna History 1:** fondasi product shell, architecture/documentation boundary, identity/storage/recovery, dan capability progression sebelum A18.

### History 2 — A18 backup engine dan runtime reconciliation

History 2 mempertahankan arsip worklog yang sebelumnya menjadi campuran antara current state dan historical record. Record A18 yang relevan berada dalam urutan engineering berikut:

1. **A18 — Unified App Backup Engine**
   - Scope: APK / Data / Ext. data / Media.
   - Execution boundary, provider behavior, encrypted artifact contract, cancellation/cleanup, dan capability boundary direkam.

2. **A18 — Source audit + Data reproduction + implementation design**
   - Source implementation dan reference evidence diaudit.
   - Data failure direproduksi.
   - Implementation sequence ditentukan tanpa menganggap reference sebagai implementation contract.

3. **A18 — Runtime gate**
   - Build/runtime gate dipakai sebelum menaikkan status implementation menjadi verified.

4. **A18 — Implementation + runtime #1138**
   - Unified backup execution boundary diterapkan.
   - ROOT copy/cancel/shell quoting dan NON_ROOT capability boundary dicatat.
   - `.bare` encrypted artifacts dan encryption path diterapkan.
   - Runtime #1138 menunjukkan APK, Ext. data, dan Media berhasil; Data gagal.
   - Artifact lifecycle defect sempat terobservasi dan kemudian menjadi regression-protected concern.

5. **A18 — Throughput instrumentation + Data diagnostics**
   - Progress bytes, total bytes, elapsed time, bytes/sec, collection phase, packaging/encryption phase, ROOT APK source-size probe, archive source-size/progress, dan Data filesystem diagnostics ditambahkan.
   - Runtime #1143 memberi evidence APK/Ext. data/Media dan artifact retention, sementara Data tetap gagal.

6. **A18 — CI #1155**
   - Compile failure pada `AppBackupEngine.kt:146:21` berasal dari non-exhaustive `when`.
   - Fix menambahkan fallback `else`.
   - Checkpoint fix: `b0a4d8cc157e38b9789b48598d834be385d16847`.

7. **A18 — Runtime #1156 + Swift evidence**
   - CI #1156 PASS.
   - APK progress menunjukkan angka total yang tidak valid.
   - Data gagal `source_not_directory`.
   - Swift evidence menunjukkan base APK 122.5 MB + splits 15.68 MB, Data 457.74 MB, task sekitar 3.59 s pada evidence yang tersedia.
   - Source decompile Swift menunjukkan native archive engine dan encryption sebagai jalur yang dapat dipisahkan; ini menjadi comparison evidence, bukan implementation requirement BaRe.

8. **A18 — GO reconciliation**
   - CI #1156 PASS dipisahkan dari runtime acceptance.
   - APK progress measurement tetap UNVERIFIED/UNKNOWN pada root cause.
   - Data filesystem root cause tetap UNKNOWN.
   - Direct-source archive dan phase-level performance accounting menjadi next investigation.
   - Protected behavior tidak boleh diubah tanpa regression evidence.

**Makna History 2:** checkpoint teknis terbaru yang membawa A18 sampai CI #1156 dan runtime evidence, tanpa menjadikan record #1155 yang lebih lama sebagai current state.

## 3. ENGINEERING TRUTH / VERIFIED BOUNDARY

### VERIFIED / OBSERVED

- Repository branch `v1.0/rebaseline` dan latest source checkpoint `07a81ff5...` teridentifikasi.
- CI #1156 artifact pipeline PASS pada checkpoint sebelumnya.
- Runtime #1156 adalah evidence device terakhir: APK functional evidence, progress/performance defect, Data `source_not_directory`.
- New direct-root archive/performance implementation exists in source.
- Latest performance commits have **no GitHub Actions workflow run/status**, sehingga compile/runtime belum dapat dinaikkan menjadi VERIFIED.
- Swift evidence tersedia sebagai comparison/reference evidence, bukan proof of BaRe behavior.

### UNVERIFIED / UNKNOWN

- Compile of the latest direct-root implementation.
- Runtime APK direct-root performance.
- Runtime Data direct-root success.
- End-to-end progress accuracy after removing staging.
- Archive correctness for all tar entry types and long-path cases on target device.
- Performance acceptance versus the user's small-backup target.
- Full A18 multi-part acceptance.
- Data filesystem namespace / CE-DE / user-profile root cause.

### Batas interpretasi

- Menghilangkan staging adalah **source-level implementation**, bukan bukti throughput runtime.
- `Deflater.BEST_SPEED` adalah optimization ## 4. CURRENT NEXT ACTION

1. **Build latest checkpoint `07a81ff5...`** dan pastikan compile berhasil; jika build belum tersedia di execution boundary, status tetap UNVERIFIED.
2. Jalankan runtime pada case kecil yang sama/semirip dengan evidence Swift: **APK + splits + Data**, dan ukur terpisah **source discovery / direct tar streaming / archive-compression / encryption / total**.
3. Verifikasi progress: **logical source bytes → processed bytes → displayed bytes**, dan pastikan tidak lagi menghasilkan total absurd seperti `138 GB` untuk source ~`138 MB`.
4. Verifikasi artifact correctness: **APK/Data archive exists, non-zero, metadata valid, previous protected artifacts retained, partial/cancel cleanup valid**.
5. Jika Data masih gagal, lakukan **read-only namespace diagnostics** pada exact root execution boundary dan bandingkan dengan execution boundary Swift; jangan mengganti path secara spekulatif.
6. Regression runtime **Ext. data + Media + APK artifact lifecycle**, lalu re-run performance measurement.
7. Jangan menaikkan A18 menjadi **VERIFIED** sebelum compile + runtime + regression + acceptance performance terbukti.
## 5. HISTORY OWNERSHIP

| Artifact | Fungsi | Boleh menjadi current state? |
|---|---|---|
| `docs/worklog.md` | **Current continuity / synthesis** | **YA** |
| `docs/worklog_history.md` | **History 1 / chronology archive** | TIDAK |
| `docs/worklog_history_2.md` | **History 2 / chronology archive** | TIDAK |
| Git commits / CI / runtime logs | Evidence | Bukan pengganti worklog |

### Aturan

- History 1 dan History 2 adalah **arsip**, bukan tempat current state.
- `worklog.md` hanya menyimpan current state + synthesis + next action.
- Historical event tidak ditambahkan ke bagian CURRENT STATE.
- Jika current state berubah, update `worklog.md`; jangan memindahkan chronology ke atas/bawah file history.
- Jika historical record perlu dikoreksi, lakukan koreksi sebagai perubahan history yang eksplisit dan preserve evidence; jangan diam-diam menulis ulang chronology.
- Status lama seperti **CI PENDING** tetap valid sebagai historical truth walaupun kemudian ada CI PASS; current state mengikuti evidence terbaru.

## 6. STATUS DEFINITIONS

- **IMPLEMENTED** = source implementation terobservasi.
- **CI VERIFIED** = CI evidence untuk checkpoint tertentu terverifikasi.
- **RUNTIME TESTED** = perilaku diuji pada device/runtime.
- **VERIFIED** = evidence memenuhi acceptance/expected behavior.
- **UNRESOLVED** = capability ada tetapi hasil runtime belum benar/belum dapat dibuktikan.
- **UNKNOWN** = penyebab belum diketahui.
- **BLOCKED** = prerequisite/otorisasi/evidence yang diperlukan belum tersedia.
- **PROTECTED BEHAVIOR** = behavior yang sudah memiliki evidence positif dan tidak boleh diubah semantic-nya tanpa regression evidence.

## 7. CURRENT CHECKPOINT

**A18 — DIRECT ROOT STREAMING / PERFORMANCE REWORK**

Current conclusion:

> **Source implementation sudah bergerak dari diagnostic-only menjadi direct-root streaming untuk menghilangkan staging I/O amplification dan memakai FASTEST-equivalent intent pada compression (`Deflater.BEST_SPEED`). Namun latest compile/runtime belum terverifikasi. Data filesystem boundary dan performance acceptance tetap UNKNOWN/UNVERIFIED.**

Latest source checkpoint: `07a81ff5d5ac89d4e5cebe811386b732a9dea1b3`.

Next engineering decision harus berasal dari build/runtime evidence aktual.

### 2026-09-26 — A18 reference reconciliation + direct-root source-size diagnostic

**Decision / boundary**

- Reference baseline untuk backup/archive behavior tetap berasal dari `docs/reference.md`.
- Targeted audit terbaru hanya dilakukan karena reference sebelumnya belum mencatat secara eksplisit mekanisme SBA root archive creation.
- Audit targeted mengonfirmasi reference membentuk `SbaArchiveEntry` dari absolute source path lalu menyerahkannya ke native `SbaArchiveNative.createArchive(...)`, dengan tar/profile, compression, encryption, dan progress sebagai boundary terpisah.
- Tidak ada keputusan untuk menyalin algoritma encryption Swift; encryption BaRe tetap berada pada boundary implementasi BaRe.
- Full-tree decompile re-audit tidak diperlukan untuk baseline yang sudah tercatat.

**Implementation checkpoint**

- Direct-root implementation tetap dipertahankan sebagai source-level direction karena menghindari full staging copy sebelum archive.
- Belum ada perubahan terhadap archive algorithm/encryption pada checkpoint ini.
- Ditambahkan diagnostic-only source-size breakdown pada `AppBackupEngine.kt`:
  - jumlah root source entries;
  - ukuran setiap entry;
  - total byte yang akan dipakai sebagai archive progress total.
- Diagnostic ini tidak mengubah source selection, archive output, encryption, atau artifact lifecycle.

**Commits**

- Reference reconciliation: `72aca21ce325b3633daddfda6ff217dd330ccc98`
- Source-size diagnostic: `0bad84b5640e5e3bca764fd81e85dc51da07d3eb`

**Verification status**

- Source change: IMPLEMENTED.
- CI: PENDING untuk checkpoint `0bad84b...`.
- Runtime: UNVERIFIED.
- Root cause angka total `7.1 GB`: UNKNOWN sampai source breakdown aktual pada device tersedia.
- A18 overall: UNRESOLVED / NOT VERIFIED.

**Next action**

1. Build checkpoint `0bad84b...`.
2. Runtime APK-only pada case yang sama.
3. Baca source breakdown yang baru; jika total source sudah salah sebelum archive, perbaiki source-size boundary. Jika source total benar tetapi progress archive salah, perbaiki progress boundary.
4. Setelah angka source/progress benar, ukur runtime duration/throughput.
5. Regression Data / Ext. data / Media dan artifact lifecycle.
6. Baru setelah baseline backup behavior stabil, reconcile Fast/Standard/other reference modes dan password strategy.


# BaRe v1.0 — Worklog

> Dokumen ini adalah **current continuity record**, bukan transcript dan bukan pengganti evidence repository/runtime. Detail historical engineering dipertahankan di [docs/worklog_history.md](./worklog_history.md). Git commit, CI, test, dan runtime evidence tetap menjadi sumber proof sesuai jenis claim.

## Current State

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| HEAD | `b05b1c2855c02a4b70f301a07f20f1c1261ddcad` — docs-only worklog reconciliation |
| Implementation checkpoint | `b0a4d8cc157e38b9789b48598d834be385d16847` |
| Lifecycle | **BUILD / RUNTIME VERIFICATION / DEBUGGING** |
| Current area | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media + performance instrumentation + filesystem-boundary diagnosis** |
| Current status | **ACTIVE / RUNTIME VERIFICATION PENDING** |
| CI | **#1156 PASS** untuk build artifact pipeline |
| Runtime APK | **PERFORMANCE / PROGRESS ACCEPTANCE FAILED** — UI menunjukkan `1.0 GB / 138 GB` untuk source sekitar `138.18 MB` berdasarkan evidence pembanding Swift |
| Runtime Data | **FAILED / ROOT CAUSE UNKNOWN** — `/data/user/0/in.mewho.meWhoLite` menghasilkan `exit=20: source_not_directory`, `source_exists=false` |
| Full backup | **UNVERIFIED** |
| Protected behavior | APK artifact lifecycle, Ext. data, dan Media yang sebelumnya terbukti berhasil tidak boleh diubah semantic-nya tanpa regression evidence |

## Current Task

**A18 — Reconcile dan verifikasi Unified App Backup Engine berdasarkan runtime #1156.**

Fokus saat ini:
1. melokalisasi defect byte-accounting/progress APK;
2. memisahkan collection, archive/compression, dan encryption timing;
3. mengevaluasi pengurangan read/write amplification pada APK tanpa mengubah artifact contract;
4. mendiagnosis filesystem boundary DATA secara read-only sebelum memilih perubahan mechanism.

## Task Scope

### In Scope
- APK byte-accounting dan progress measurement.
- APK collection → staging → archive/encryption execution path.
- Phase timing dan raw-byte evidence.
- DATA source-path / CE-DE / user-profile / ROOT-namespace diagnosis.
- Regression verification untuk behavior yang sudah terbukti.

### Out of Scope
- Perubahan semantic artifact lifecycle tanpa evidence.
- Perubahan Media / Ext. data yang tidak diperlukan untuk regression.
- Cloud provider/backend.
- Menjadikan behavior Swift sebagai implementation requirement tanpa keputusan terpisah.
- Mengklaim full backup verified sebelum seluruh target part terbukti.

## Dependencies

- Actual source pada branch `v1.0/rebaseline`.
- Root capability/provider boundary.
- APK archive writer dan encryption path.
- Runtime/device dengan root capability.
- CI build pipeline.
- Runtime evidence yang dapat mengukur raw bytes dan elapsed time per phase.
- Swift Backup 5.1.0-620 sebagai **reference evidence**, bukan implementation source.

## Latest Checkpoint

### CI #1156

**VERIFIED PASS** untuk build artifact pipeline:
- Assemble debug APK: success.
- Verify APK artifact: success.
- Verify APK signing certificate: success.
- Upload debug APK: success.

### Runtime #1156 — APK

Observed:
- UI: `Packaging APK: 1.0 GB / 138 GB (120 MB/s)`.
- Evidence Swift untuk target yang dibandingkan: base APK sekitar **122.5 MB** + 3 split APK sekitar **15.68 MB**, total sekitar **138.18 MB**.
- Angka `138 GB` diperlakukan sebagai **defect measurement**, bukan ukuran source APK.
- Acceptance performance/progress belum terpenuhi.

Current implementation evidence:
- APK masih dikoleksi ke staging.
- Archive writer kemudian membaca staging untuk packaging/encryption.
- Ini menghasilkan dua fase full-I/O yang perlu diukur sebelum optimasi.
- Source boundary byte-accounting belum terbukti benar end-to-end.

### Runtime #1156 — DATA

Observed:
- Source path: `/data/user/0/in.mewho.meWhoLite`.
- ROOT copy: `exit=20: source_not_directory`.
- `source_exists=false`.

Interpretation:
- Path tersebut tidak terlihat sebagai directory dari execution context ROOT pada runtime tersebut.
- Penyebab lebih dalam masih **UNKNOWN**.
- Belum boleh mengganti path atau copy mechanism berdasarkan tebakan.

### Reference Evidence

Swift Backup 5.1.0-620 menunjukkan:
- APK dan splits diproses sebagai artifact terpisah.
- Data diproses sebagai task terpisah.
- Backup menggunakan native SBA archive engine.
- Compression dan encryption merupakan policy/path yang perlu dipisahkan saat membandingkan performa.
- Runtime log yang diberikan menunjukkan task sekitar **3.59 s** untuk evidence tersebut.

Angka reference dipakai sebagai **comparison evidence**, bukan benchmark terkontrol.

## Completed

### Worklog Reconciliation
- Worklog current record dinormalisasi menjadi satu current checkpoint.
- Detail historical engineering tidak diulang di current worklog.
- Historical record tetap dipertahankan di `docs/worklog_history.md`.
- Status lama tidak dipromosikan menjadi verified hanya karena ada checkpoint baru.

### Previously Protected / Verified Behavior
- APK artifact lifecycle sebelumnya telah memiliki evidence keberlanjutan artifact antar part.
- Ext. data sebelumnya memiliki runtime evidence berhasil.
- Media sebelumnya memiliki runtime evidence berhasil.
- Install Date / Update Date / Date Used telah dicatat sebagai selesai berdasarkan keputusan/evidence sebelumnya dan tidak dibuka ulang tanpa evidence baru.

### A18 Instrumentation
- Progress model memiliki processed bytes, total bytes, elapsed time, dan bytes/second.
- Instrumentation collection dan packaging/encryption telah ditambahkan.
- ROOT APK copy dan archive writer memiliki progress instrumentation.
- DATA failure memiliki source-path dan filesystem diagnostics.
- CI compile issue pada #1155 telah diperbaiki dan #1156 kemudian PASS.

## Verification

| Area | Status | Evidence |
|---|---|---|
| CI #1156 build artifact | **VERIFIED PASS** | GitHub Actions artifact pipeline |
| APK artifact lifecycle | **Previously verified / protected** | Historical runtime evidence |
| Ext. data | **Previously verified / protected** | Historical runtime evidence |
| Media | **Previously verified / protected** | Historical runtime evidence |
| APK progress measurement | **UNVERIFIED / FAILED acceptance** | Runtime #1156 |
| APK performance | **UNVERIFIED / FAILED acceptance** | Runtime #1156 |
| DATA backup | **FAILED** | Runtime #1156 |
| DATA root cause | **UNKNOWN** | Current diagnostic evidence insufficient |
| Full multi-part backup | **UNVERIFIED** | Not all target parts proven together |
| Direct-source APK archive | **NOT IMPLEMENTED / PROPOSED** | Requires source inspection and design validation |

## Blocked

1. **APK progress acceptance**
   - Total byte value belum terbukti benar end-to-end.
   - Tidak boleh menyimpulkan performance improvement dari throughput UI saja.

2. **DATA root cause**
   - `source_not_directory` belum membedakan secara final antara path selection, CE/DE, user/profile, dan filesystem namespace visibility.
   - Belum ada evidence yang cukup untuk memilih mekanisme copy baru.

## Deferred

- Direct-source archive implementation sampai byte-accounting boundary dan artifact contract dipahami.
- Compression/encryption policy changes sampai timing phase dapat diukur secara terpisah.
- Full multi-part acceptance sampai APK dan DATA memiliki evidence yang memadai dan regression part lain tetap pass.

## Known Limitations

- Current APK flow masih memiliki staging I/O sebelum archive/encryption.
- Runtime progress total masih dapat menghasilkan nilai yang tidak valid.
- DATA path failure belum mempunyai root cause filesystem yang terkonfirmasi.
- Reference Swift bukan benchmark terkontrol dan tidak otomatis menjadi requirement.
- CI PASS membuktikan pipeline/artifact stage, bukan runtime feature verification.
- Full backup belum VERIFIED.

## Decisions

1. **Preserve verified semantics.**
   Behavior APK artifact lifecycle, Ext. data, dan Media tidak diubah semantic-nya tanpa regression evidence.

2. **Measurement before optimization.**
   APK performance harus diukur dengan raw bytes dan elapsed time per phase:
   `collection` → `archive/compression` → `encryption`.

3. **No speculative DATA fix.**
   DATA harus didiagnosis read-only pada boundary path/filesystem sebelum memilih perubahan mechanism.

4. **Reference boundary remains explicit.**
   Swift Backup digunakan sebagai reference/evidence untuk comparison, bukan sebagai source implementation atau automatic requirement.

5. **Historical truth remains preserved.**
   Current worklog hanya membawa state yang diperlukan untuk continuity; historical evolution tetap berada di `worklog_history.md`.

## Next Action

1. Inspeksi actual source untuk seluruh byte-accounting boundary:
   `source stat` → ROOT copy → staging size → archive input → progress model → UI formatting.
2. Identifikasi unit conversion / accumulation yang dapat menjelaskan `138 GB` vs `138.18 MB`.
3. Inspeksi archive input boundary untuk menentukan apakah direct-source archive memungkinkan tanpa mengubah artifact contract.
4. Tambahkan/pertahankan diagnostic read-only DATA untuk:
   - CE/DE path;
   - user/profile;
   - directory type/existence;
   - ROOT namespace visibility.
5. Setelah perubahan yang terotorisasi:
   **build → runtime APK → runtime DATA → regression Ext. data/Media → verify**.
6. Catat evidence baru kembali di current worklog setelah checkpoint material.

## Continuity Rule

Worklog ini harus selalu menjawab:

**CURRENT STATE → CURRENT TASK → SCOPE → DEPENDENCIES → LATEST CHECKPOINT → COMPLETED → VERIFICATION → BLOCKED → DEFERRED → LIMITATIONS → DECISIONS → NEXT ACTION**

Jangan menggunakan historical `NEXT ACTION` dari `docs/worklog_history.md` sebagai current instruction tanpa rekonsiliasi terhadap actual repository state dan evidence terbaru.

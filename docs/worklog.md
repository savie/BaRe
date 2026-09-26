## A18 — REVIEW RUNTIME #1156 + SWIFT BACKUP EVIDENCE — 2026-09-26

### OBSERVED

- CI run **#1156** untuk commit `b0a4d8cc157e38b9789b48598d834be385d16847` selesai dengan **success**:
  - `Assemble debug APK`: success;
  - `Verify APK artifact`: success;
  - `Verify APK signing certificate`: success;
  - `Upload debug APK`: success.
- Runtime build #1156 memperlihatkan progress APK yang tidak masuk akal pada UI: `Packaging APK: 1.0 GB / 138 GB (120 MB/s)` untuk target WhatsApp yang pada evidence Swift sekitar 122.5 MB base APK + 15.68 MB splits.
- Runtime Data pada `meWho? Lite` gagal dengan:
  `Data source path '/data/user/0/in.mewho.meWhoLite': Root directory copy failed (exit=20): source_not_directory`, dan `source_exists=false`.
- Evidence runtime Swift Backup 5.1.0-620 menunjukkan backup WhatsApp:
  - base APK: **122.5 MB**;
  - 3 split APKs: **15.68 MB**;
  - Data: **457.74 MB**;
  - Task selesai sekitar **3.59 s** menurut log.
- Source decompile Swift yang diperiksa menunjukkan pembuatan backup menggunakan **native SBA archive engine** (`SbaArchiveNative.createArchive`), dengan mode enkripsi terpisah. Pada jalur tanpa password, archive tetap dibuat native; default compression source terdecompile adalah `FASTEST`, sedangkan `NO_COMPRESSION` tersedia terpisah.
- Untuk APK, Swift menggunakan jalur archive `Basic`; untuk Data menggunakan `Fidelity`. Runtime log menunjukkan pemisahan APK, splits, dan Data sebagai task terpisah.

### DIAGNOSIS

1. **Progress total BaRe 138 GB adalah defect measurement, bukan ukuran APK yang valid.**
   - Source saat ini menghitung total packaging dari `sourceByteSize(staging)`.
   - Secara kontrak total tersebut seharusnya mendekati ukuran source APK/splits.
   - Evidence runtime Swift memberi sanity bound sekitar **138.18 MB** untuk base+splits, bukan 138 GB.
   - Sebelum optimasi lebih lanjut, perhitungan total harus dipisahkan dari throughput counter dan diberi diagnostic raw byte total agar sumber pembengkakan dapat dibuktikan.
2. **BaRe saat ini melakukan dua fase I/O untuk APK:** ROOT `su cat` ke staging lalu membaca staging lagi untuk ZIP + AES-GCM. Ini menambah read/write amplification dibanding jalur archive native yang menerima source path secara langsung.
3. **BaRe juga mengenkripsi artifact APK dengan AES-GCM secara default pada Standard strategy.** Source Swift yang diperiksa tidak menunjukkan encryption wajib pada jalur tanpa password; encryption dibangun sebagai jalur terpisah.
4. **Swift menggunakan native archive path**, sehingga perbandingan performa tidak boleh dianggap hanya soal “enkripsi vs tidak”. Ada tiga variabel berbeda yang harus diisolasi: staging/copy amplification, archive/compression engine, dan encryption.
5. **Data failure belum terdiagnosis sampai root cause filesystem.** `source_exists=false` hanya membuktikan path yang dipakai BaRe tidak ada pada runtime; belum membuktikan apakah `ApplicationInfo.dataDir` salah, app menggunakan CE/DE path berbeda, root namespace berbeda, atau provider root melihat filesystem namespace yang berbeda.

### STATUS

- **CI #1156:** VERIFIED PASS untuk build artifact pipeline.
- **Runtime APK:** FAILED TO MEET PERFORMANCE/PROGRESS ACCEPTANCE; ukuran progress tidak valid dan runtime sangat lambat.
- **Runtime Data:** FAILED; source directory masih UNKNOWN.
- **Swift comparison:** source evidence tersedia; belum dijadikan implementasi BaRe.
- **Behavior proven successful sebelumnya:** APK artifact lifecycle, Ext. data, dan Media tetap diperlakukan sebagai behavior yang tidak boleh diubah tanpa regression evidence.

### NEXT ACTION

- Jangan mengubah behavior part yang sudah terbukti berhasil secara semantic.
- Prioritas berikutnya adalah **memperbaiki model backup APK**: ukur source path langsung, hindari staging penuh bila provider/archive boundary dapat menerima source path, dan jadikan encryption/compression policy eksplisit agar performa dapat diukur secara adil.
- Untuk Data, tambahkan diagnosis path alternatif yang read-only (CE/DE/application info + root namespace check) sebelum memilih perubahan copy mechanism.
- Acceptance berikutnya harus menggunakan angka raw bytes + elapsed time untuk collection, archive/compression, dan encryption secara terpisah.

## A18 — GO RECONCILIATION: CI #1156 + RUNTIME EVIDENCE — 2026-09-26

### USER-PROVIDED RUNTIME EVIDENCE

- Build **#1156** sudah berhasil melewati pipeline CI; artifact APK dapat dipasang dan diuji pada device.
- Runtime APK WhatsApp memperlihatkan:
  - UI: `Packaging APK: 1.0 GB / 138 GB (120 MB/s)`;
  - evidence Swift untuk source yang sama menunjukkan base APK **122.5 MB** + 3 split APK **15.68 MB**, total sekitar **138.18 MB**;
  - angka `138 GB` dicatat sebagai **defect measurement yang belum terlokalisasi**, bukan ukuran source APK.
- Runtime Data untuk meWho? Lite memperlihatkan:
  - source path: `/data/user/0/in.mewho.meWhoLite`;
  - ROOT copy: `exit=20: source_not_directory`;
  - `source_exists=false`.
- Log Swift yang diberikan menunjukkan task backup selesai sekitar **3.59 s**, dengan APK/splits sekitar 138.18 MB dan Data sekitar 457.74 MB. Angka ini dipakai sebagai evidence pembanding, bukan sebagai benchmark terkontrol.

### REKONSILIASI TEKNIS

1. **CI #1156 PASS** sudah terverifikasi pada artifact pipeline; compile-fix #1155 tidak lagi menjadi blocker.
2. **APK performance/progress acceptance belum terpenuhi.** Belum boleh menyimpulkan optimasi berhasil karena raw byte accounting dan phase timing belum konsisten.
3. **APK architecture saat ini masih mempunyai read/write amplification:** ROOT copy ke staging kemudian archive writer membaca staging kembali untuk ZIP + AES-GCM. Ini adalah target optimasi yang sah karena tidak mengubah semantic artifact yang sudah terbukti.
4. **Progress total harus ditrace end-to-end** sebelum perubahan optimasi: pm path → source stat → ROOT copy progress → staging File.length() → sourceByteSize() → AppBackupProgress → UI format. Raw byte count dan unit conversion harus dibuktikan pada setiap boundary.
5. **Data failure belum boleh diperbaiki dengan penggantian path secara tebakan.** Evidence saat ini hanya membuktikan path ApplicationInfo.dataDir yang dipakai tidak terlihat sebagai directory dari execution context ROOT. Diagnosis berikutnya harus read-only dan membedakan CE/DE, user/profile, alternate path, serta visibility dari ROOT namespace.
6. **Behavior yang sudah terbukti berhasil tidak diubah semantic-nya:** APK artifact lifecycle, Ext. data, dan Media tetap menjadi regression-protected behavior.

### STATUS

- **CI #1156:** `VERIFIED PASS` untuk build artifact pipeline berdasarkan runtime artifact/test yang diberikan.
- **APK:** `FUNCTIONAL EVIDENCE EXISTS / PERFORMANCE ACCEPTANCE FAILED / PROGRESS MEASUREMENT UNVERIFIED`.
- **Data:** `FAILED / ROOT CAUSE UNKNOWN / DIAGNOSTIC EVIDENCE IMPROVED`.
- **Ext. data:** sebelumnya proven; tidak dibuka ulang.
- **Media:** sebelumnya proven; tidak dibuka ulang.
- **Artifact lifecycle:** sebelumnya proven; tidak dibuka ulang tanpa regression evidence.
- **Full backup:** `UNVERIFIED`.

### NEXT AUTHORIZED ACTION

- Inspeksi source aktual untuk menemukan boundary byte-accounting dan archive input.
- Rancang perubahan minimal untuk **direct-source archive** pada APK tanpa mengubah artifact contract/lifecycle yang sudah terbukti.
- Tambahkan diagnostic read-only untuk **CE/DE + user/profile + ROOT visibility** pada DATA sebelum memilih mekanisme copy baru.
- Setelah perubahan code, build → runtime APK → runtime Data → regression Ext. data/Media → verify.
- Semua timing/performance conclusion harus berbasis raw bytes + elapsed time per phase; jangan menggunakan throughput UI saja sebagai proof.

## A18 — FIX CI #1155 COMPILE ERROR — 2026-09-26

### OBSERVED

- CI run **#1155** gagal pada `app/src/main/java/com/bare/feature/apps/AppBackupEngine.kt:146:21`.
- Compiler: `'when' expression must be exhaustive. Add an 'else' branch.`
- Failure terjadi pada `when (result)` di `collectPart()`.
- Task gagal: `app:compileDebugKotlin`.
- Failure terjadi pada compile stage; belum ada evidence runtime regression dari error ini.

### ROOT CAUSE

Instrumentation menambahkan nested `when` pada DATA branch. Kotlin tidak mempertahankan exhaustiveness yang dapat dibuktikan compiler untuk inferred result type pada outer `when`, sehingga outer `when (result)` ditolak walaupun subtype yang diharapkan sudah dicantumkan.

### FIX

- Menambahkan fallback `else -> error("Unsupported backup copy result: ...")` pada outer `when (result)`.
- Success/failure subtype yang sudah ada tidak diubah.
- Tidak mengubah provider, part selection, encryption, artifact lifecycle, atau execution semantics yang sebelumnya terbukti.

### COMMIT

- `b0a4d8cc157e38b9789b48598d834be385d16847` — fix exhaustive backup copy result handling.

### VERIFICATION STATUS

- **SOURCE:** fix committed.
- **CI:** belum diverifikasi setelah fix.
- **RUNTIME:** tetap PENDING.
- **STATUS:** `FIX IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`.

### NEXT ACTION

Build ulang melalui CI. Jika compile PASS, lanjutkan runtime instrumentation/performance verification; jangan menyimpulkan performance improvement sebelum ada timing/throughput evidence.

# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. History engineering yang sudah dirapikan tersedia di [`docs/worklog_history.md`](./worklog_history.md). Git commit tetap menjadi evidence perubahan repository, bukan pengganti worklog history.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current checkpoint | `b0a4d8cc157e38b9789b48598d834be385d16847` — code checkpoint untuk CI #1156; runtime review #1156 sudah direkam di worklog |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **BUILD / RUNTIME VERIFICATION / DEBUGGING** |
| Fokus | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media + performance instrumentation + filesystem-boundary diagnosis** |
| Reference audit | **SELESAI** |
| Runtime status | **#1156: CI PASS. Runtime menunjukkan progress APK tidak valid (`1.0 GB / 138 GB` untuk source sekitar 138.18 MB berdasarkan evidence Swift), APK runtime belum memenuhi acceptance performance, Data gagal dengan `exit=20: source_not_directory` dan `source_exists=false`. Behavior APK artifact lifecycle, Ext. data, dan Media yang sudah terbukti tetap diperlakukan sebagai protected behavior. Full backup tetap UNVERIFIED.** |
| Root cause | **APK: defect measurement total masih belum terlokalisasi; architecture saat ini masih melakukan staging lalu read ulang untuk archive/encryption. Data: `/data/user/0/in.mewho.meWhoLite` tidak terlihat sebagai directory dari execution context ROOT; penyebab filesystem boundary/CE-DE/user/namespace masih UNKNOWN.** |

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


## A18 — INSTRUMENTASI THROUGHPUT + DIAGNOSTIK DATA — 2026-09-26

### USER RUNTIME EVIDENCE #1143

- APK berhasil.
- Ext. data berhasil.
- Media berhasil.
- Artifact lifecycle acceptance terobservasi: `apk.bare` tetap ada setelah operasi part lain.
- Data gagal dengan diagnostic:
  - `Root directory copy failed (exit=20): source_not_directory`.
- APK WhatsApp sekitar 138 MB teramati sangat lama pada runtime. Belum ada measurement yang membuktikan apakah bottleneck berada pada collection, packaging/encryption, atau filesystem I/O.

### INSPEKSI

Source aktual Android berada pada module `app/src/main`; perubahan instrumentation diterapkan pada module tersebut. Duplicate source di root repository yang sempat tersentuh selama rekonsiliasi path sudah dikembalikan ke content sebelumnya dan tidak menjadi target build.

Audit execution path menunjukkan dua full-I/O phase untuk APK:
1. ROOT `su cat` menyalin APK ke staging.
2. Archive writer membaca kembali staging untuk ZIP + AES-GCM ke artifact final.

I/O buffer sebelumnya menggunakan default kecil pada jalur utama tersebut.

### IMPLEMENTASI

1. `AppBackupProgress` sekarang membawa:
   - processed bytes;
   - total bytes;
   - elapsed time;
   - bytes/second.
2. Engine menambahkan phase instrumentation untuk:
   - collection;
   - packaging/encryption;
   - elapsed time per phase.
3. Runtime diagnostics UI menampilkan live throughput message tanpa memenuhi log history dengan setiap chunk.
4. ROOT APK copy:
   - callback byte progress;
   - source size probe via `stat`;
   - buffer I/O 1 MiB.
5. Archive writer:
   - callback byte progress;
   - source byte total;
   - buffer I/O 1 MiB.
6. DATA root failure:
   - error sekarang menyertakan `ApplicationInfo.dataDir`;
   - ROOT directory probe pada `source_not_directory` mengumpulkan existence, `ls -ld`, dan `stat` metadata.
7. Behavior yang sudah terbukti berhasil tidak diubah secara semantic: artifact lifecycle, encryption mode, part selection, dan provider boundary tetap dipertahankan.

### COMMITS

- `5351b97f4398e52c21cb469d5cfff26da1766d09` — progress model.
- `fa57eed054f2b9007f317d664d3aea1fb87672fe` — engine phase instrumentation + data source path.
- `98ff88d1cc9a4521dc46cd40cc4e0ba6c17ec498` — archive throughput instrumentation + 1 MiB buffer.
- `7c246fb19ba3ec8817b4278fcf66dc60d0db82a4` — ROOT APK throughput + DATA diagnostics.
- `e700d5d1e5c45d7398a03666769fb30c5f963d39` — explicit unknown progress total handling.
- `2d593e2a51ad11e9955d4047ee87a3cfc990f7ea` — live progress UI surface.
- `05dafa39406dd2acdc42882067d4439a030fa919` — runtime progress state wiring.

### VERIFICATION STATUS

- **SOURCE:** implementation sudah diterapkan pada Android module aktual.
- **CI:** run #1155 untuk checkpoint `05dafa39406dd2acdc42882067d4439a030fa919` masih `IN_PROGRESS` pada checkpoint ini.
- **RUNTIME:** instrumentation/performance implementation belum diuji ulang pada device.
- **DATA:** source path + filesystem diagnostic belum mempunyai runtime evidence baru.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`.

### ACCEPTANCE BERIKUTNYA

1. APK backup besar menampilkan live byte progress dan throughput.
2. Timing membedakan collection vs packaging/encryption.
3. APK ~138 MB menyelesaikan backup tanpa mengubah artifact lifecycle yang sudah terbukti.
4. Jika DATA kembali gagal, diagnostics harus memberikan source path + existence/type metadata.
5. Tidak ada regression pada APK, Ext. data, Media, atau artifact retention.
6. Full multi-part tetap UNVERIFIED sampai runtime membuktikan seluruh target part.

### NEXT ACTION

Tunggu CI checkpoint `05dafa39406dd2acdc42882067d4439a030fa919`. Jika CI PASS, gunakan build tersebut untuk runtime test APK besar terlebih dahulu, lalu DATA untuk menangkap diagnostic filesystem baru.

## A18 — PERBAIKAN LIFECYCLE ARTIFACT + DIAGNOSTIK ROOT — 2026-09-26

### TEMUAN ROOT CAUSE YANG TERKONFIRMASI

Audit source setelah runtime #1138 menemukan penyebab langsung artifact part sebelumnya hilang:

- `AppBackupBehavior` sebelumnya menjalankan `backupDirectory.deleteRecursively()` setiap kali backup dimulai.
- Akibatnya backup part berikutnya pada versi aplikasi yang sama menghapus artifact part yang sudah berhasil sebelumnya.
- Jalur `catch` pada `AppBackupBehavior` juga sebelumnya menghapus seluruh `backupDirectory` ketika satu backup gagal.
- Temuan ini menjelaskan perilaku runtime bahwa `apk.bare` dapat hilang setelah menjalankan backup part lain atau ketika part berikutnya gagal.
- Ini adalah **SOURCE-CONFIRMED ROOT CAUSE** untuk lifecycle deletion tersebut.

### PERBAIKAN

1. Backup directory yang sudah ada sekarang dipertahankan.
2. Metadata artifact baru digabung dengan metadata lama:
   - artifact untuk part yang sedang diganti diperbarui;
   - artifact part lain dipertahankan.
3. Jalur gagal/cancel tidak lagi menghapus seluruh version directory.
4. `AppBackupArchiveWriter` sekarang menulis ke temporary artifact terlebih dahulu dan baru mengganti artifact final setelah penulisan selesai.
   - tujuan: kegagalan packaging/encryption tidak memotong artifact final yang sebelumnya valid.
5. Diagnostik ROOT directory copy diperjelas:
   - membedakan source bukan directory;
   - menyertakan exit code;
   - menyertakan detail stderr/stdout;
   - menandai cancellation secara eksplisit.

### COMMITS

- `ad3107393558078923b024fda44035cb2e36606e` — perbaikan lifecycle version directory dan penggabungan metadata artifact.
- `ca521ccafc2786cd6416d2680b860df26ea5c5a9` — penggantian artifact archive secara transaksional.
- `7c32d255345af416e9d48c023e643bd9c36bad0b` — diagnostik copy directory ROOT.

### VERIFICATION STATUS

- **SOURCE:** perubahan sudah diinspeksi pada branch aktual.
- **CI:** run #1141, #1142, dan #1143 masih `IN_PROGRESS` pada saat checkpoint ini dicatat.
- **RUNTIME:** belum diuji ulang setelah perubahan.
- **STATUS:** `IMPLEMENTED / CI PENDING / RUNTIME VERIFICATION PENDING`.

### ACCEPTANCE YANG HARUS DIVERIFIKASI

1. Backup APK → artifact `apk.bare` tetap ada setelah backup Media/Ext. data/Data dijalankan.
2. Backup part yang gagal tidak menghapus artifact part sebelumnya.
3. Backup part yang sama dapat diperbarui tanpa menghasilkan artifact terpotong jika packaging gagal.
4. Metadata tetap mereferensikan artifact part yang masih ada.
5. Data failure berikutnya harus memberikan diagnostic ROOT yang lebih spesifik daripada `Root directory copy failed`.
6. Full multi-part backup tetap belum boleh disebut VERIFIED sampai runtime membuktikan seluruh part yang ditargetkan.

### NEXT ACTION

Setelah CI selesai, jalankan runtime verification terhadap build terbaru dengan urutan:
- APK only;
- Media only;
- Ext. data only;
- Data only;
- APK + Media;
- APK + Data + Ext. data + Media.

Khusus acceptance lifecycle, verifikasi keberadaan artifact sebelumnya setelah setiap operasi dan setelah failure.

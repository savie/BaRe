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
| Current checkpoint | `05dafa39406dd2acdc42882067d4439a030fa919` — backup throughput instrumentation + root data diagnostics checkpoint |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **BUILD / RUNTIME VERIFICATION / DEBUGGING** |
| Fokus | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media + artifact lifecycle correctness** |
| Reference audit | **SELESAI** |
| Runtime status | **#1143 runtime evidence: APK, Ext. data, dan Media berhasil; Data gagal dengan `exit=20: source_not_directory`; artifact `apk.bare` terbukti tidak lagi terhapus setelah backup part lain. APK WhatsApp ~138 MB pada runtime teramati sangat lama dan belum menghasilkan timing evidence. Full backup tetap UNVERIFIED.** |
| Root cause | **Data: boundary kegagalan tetap pada `RootCapabilityProvider.copyDirectory()`; source dilaporkan bukan directory. Instrumentasi berikutnya sekarang akan menyertakan data source path dan filesystem metadata saat failure. Penyebab lebih dalam masih UNKNOWN. Cloud provider/backend tetap terpisah dari local backup engine.** |

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

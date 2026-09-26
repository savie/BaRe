# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. History engineering yang sudah dirapikan tersedia di [`docs/worklog_history.md`](./worklog_history.md). Git commit tetap menjadi evidence perubahan repository, bukan pengganti worklog history.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current checkpoint | `7c32d255345af416e9d48c023e643bd9c36bad0b` — artifact lifecycle + root copy diagnostics checkpoint |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **BUILD / RUNTIME VERIFICATION / DEBUGGING** |
| Fokus | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media + artifact lifecycle correctness** |
| Reference audit | **SELESAI** |
| Runtime status | **#1138 runtime evidence: APK, Ext. data, dan Media berhasil menghasilkan artifact terenkripsi; Data masih gagal pada `Root directory copy failed`. Full backup tetap UNVERIFIED. Ditemukan defect lifecycle artifact: artifact part sebelumnya dapat hilang ketika backup part lain dijalankan.** |
| Root cause | **Data: boundary kegagalan terobservasi pada `RootCapabilityProvider.copyDirectory()`; penyebab lebih dalam masih UNKNOWN. Artifact sebelumnya hilang setelah backup part lain: penyebab storage/lifecycle masih UNKNOWN dan harus diaudit sebelum perubahan. Cloud provider/backend tetap terpisah dari local backup engine.** |

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

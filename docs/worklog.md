# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. Kronologi lama tetap tersedia utuh pada commit `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b`.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **VERIFY / DEBUG** |
| Fokus | **Apps — Install Date / Update Date + Date Used** |
| Reference audit | **SELESAI** |
| Runtime status | **UNRESOLVED** |
| Root cause | **UNKNOWN** |

## 2. YANG SUDAH TERBUKTI

### Install Date / Update Date
- Implementasi source sudah ada.
- Semantik Reference sudah diaudit.
- Runtime masih menunjukkan masalah timestamp/date.
- Raw runtime value belum terbukti.

**Status:** `IMPLEMENTED / RUNTIME UNRESOLVED`

### Date Used
- Implementasi menggunakan UsageStats + AppOps.
- AppOps sudah diselaraskan dengan Reference.
- Privileged/root access path sudah ditambahkan sebelum checkpoint ini.
- CI dan device runtime setelah perubahan privileged path belum terverifikasi.

**Status:** `IMPLEMENTED / VERIFICATION PENDING`

## 3. YANG BELUM TERBUKTI

| Capability | Evidence yang masih dibutuhkan | Status |
|---|---|---|
| Install Date | raw `PackageInfo.firstInstallTime` → normalization → formatter → UI | **UNKNOWN** |
| Update Date | raw `PackageInfo.lastUpdateTime` → normalization → formatter → UI | **UNKNOWN** |
| Date Used | actual AppOps result → `queryUsageStats()` result count → package match → UI | **UNKNOWN** |

## 4. NEXT ACTION

### A. Install / Update Date
1. Ambil raw `firstInstallTime` dan `lastUpdateTime`.
2. Trace nilai dari raw source sampai formatter dan UI.
3. Tentukan root cause dari evidence.
4. Lakukan fix minimal hanya jika evidence mendukung.

### B. Date Used
1. Jalankan CI untuk checkpoint/source yang relevan.
2. Uji fresh APK pada device dengan Usage Access ON.
3. Capture actual AppOps state/result.
4. Capture jumlah hasil `queryUsageStats()` dan package match.
5. Tentukan root cause sebelum mengubah query/semantics.

### C. Setelah perubahan
1. Build.
2. Install/update pada device.
3. E2E.
4. Cocokkan runtime dengan expected behavior.
5. Hanya setelah evidence memenuhi acceptance, tandai **VERIFIED**.

## 5. ATURAN

- Jangan audit ulang Reference tanpa evidence baru yang mengubah kontrak.
- Jangan menambah fallback/source alternatif tanpa evidence.
- Jangan menebak root cause.
- Jangan menyamakan `IMPLEMENTED`, `CI VERIFIED`, `RUNTIME TESTED`, dan `VERIFIED`.
- Jangan mengambil task lama dari history sebagai current task.

## 6. STATUS DEFINITIONS

- **IMPLEMENTED** = source implementation terobservasi.
- **CI VERIFIED** = CI evidence untuk checkpoint tertentu terverifikasi.
- **RUNTIME TESTED** = perilaku diuji pada device/runtime.
- **VERIFIED** = evidence memenuhi acceptance/expected behavior.
- **UNRESOLVED** = capability ada tetapi hasil runtime belum benar/belum dapat dibuktikan.
- **UNKNOWN** = penyebab belum diketahui.
- **BLOCKED** = prerequisite/otorisasi/evidence yang diperlukan belum tersedia.

## 7. HISTORICAL RECORD

Worklog sebelum dibersihkan **tidak dihapus**. Snapshot utuhnya tetap berada pada commit:

`b3ce008b2229a6dd8d99cbd3b79058b54b26f83b`

Jangan gunakan commit tersebut sebagai current checkpoint; gunakan isi dokumen ini.

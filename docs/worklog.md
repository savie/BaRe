# BaRe v1.0 — Worklog

> **Cara baca:** dokumen ini adalah **continuity checkpoint**, bukan transcript. History engineering yang sudah dirapikan tersedia di [`docs/worklog_history.md`](./worklog_history.md). Git commit tetap menjadi evidence perubahan repository, bukan pengganti worklog history.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | `savie/BaRe` |
| Branch | `v1.0/rebaseline` |
| Current checkpoint | `25e0c8991269db2ec85796b000aa7f2ae19dcf34` |
| Historical source checkpoint | `b3ce008b2229a6dd8d99cbd3b79058b54b26f83b` |
| Lifecycle | **VERIFY / DEBUG** |
| Fokus | **Apps — Install Date / Update Date + Date Used** |
| Reference audit | **SELESAI** |
| Runtime status | **UNRESOLVED** |
| Root cause | **UNKNOWN** |

## 2. YANG SUDAH TERBUKTI

### Install Date / Update Date
- Implementasi source sudah ada.
- Semantik Reference sudah diaudit dan sekarang source BaRe diselaraskan kembali ke implementasi Reference: raw `PackageInfo.firstInstallTime` / `lastUpdateTime`, serta `DateUtils.getRelativeTimeSpanString`.
- Commit `95505717...` yang menambahkan normalization custom dan eager usage enrichment dinilai tidak selaras dengan Reference dan sudah dikoreksi.
- Screenshot runtime dari build #968 tetap menunjukkan `56 years ago`; evidence tersebut dicatat sebagai runtime failure, bukan dianggap terselesaikan oleh source change baru.

**Status:** `IMPLEMENTED / RUNTIME UNRESOLVED`

### Date Used
- Implementasi menggunakan UsageStats + AppOps.
- AppOps menggunakan `noteOpNoThrow`, sesuai Reference.
- Query menggunakan interval BEST, window 30 hari, filter `lastTimeUsed` dalam 1 tahun, dan package match terhadap installed apps.
- Usage data sekarang dipisahkan dari inventory dan dimuat ketika sort `Date Used` aktif, mengikuti pola Reference.
- Privileged/root access path tetap digunakan untuk mencoba grant AppOps sebelum verifikasi ulang.

**Status:** `IMPLEMENTED / VERIFICATION PENDING`

## 3. YANG BELUM TERBUKTI

| Capability | Evidence yang masih dibutuhkan | Status |
|---|---|---|
| Install Date | raw `PackageInfo.firstInstallTime` → normalization → formatter → UI | **UNKNOWN** |
| Update Date | raw `PackageInfo.lastUpdateTime` → normalization → formatter → UI | **UNKNOWN** |
| Date Used | actual AppOps result → `queryUsageStats()` result count → package match → UI | **UNKNOWN** |

## 4. NEXT ACTION

### A. Install / Update Date
1. Build checkpoint `25e0c899...`.
2. Runtime E2E pada device.
3. Jika masih `56 years ago`, capture raw `PackageInfo` value dari checkpoint ini sebelum perubahan berikutnya.
4. Jangan menambah normalization/fallback lagi tanpa evidence.

### B. Date Used
1. Build checkpoint `25e0c899...`.
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
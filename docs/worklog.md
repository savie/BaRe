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
| Current code checkpoint | `b0a4d8cc157e38b9789b48598d834be385d16847` |
| Lifecycle | **BUILD / RUNTIME VERIFICATION / DEBUGGING** |
| Current focus | **A18 Unified App Backup Engine — APK / Data / Ext. data / Media + performance instrumentation + filesystem-boundary diagnosis** |
| Reference audit | **SELESAI** |
| Latest CI | **#1156 PASS** untuk artifact pipeline |
| Latest runtime | **APK functional evidence exists tetapi performance/progress acceptance belum terpenuhi; Data gagal dengan `exit=20: source_not_directory`; full backup UNVERIFIED** |
| Current root-cause status | **APK progress measurement UNKNOWN; Data filesystem boundary UNKNOWN** |

### Current evidence

- CI #1156 berhasil untuk assemble debug APK, artifact verification, signing certificate verification, dan artifact upload.
- Runtime APK menunjukkan `Packaging APK: 1.0 GB / 138 GB (120 MB/s)` untuk source sekitar **138.18 MB** berdasarkan evidence Swift (122.5 MB base APK + 15.68 MB splits). Angka 138 GB diperlakukan sebagai **defect measurement**, bukan ukuran source.
- Runtime Data untuk `meWho? Lite` gagal pada `/data/user/0/in.mewho.meWhoLite` dengan `exit=20: source_not_directory` dan `source_exists=false`.
- Behavior yang sudah mempunyai evidence berhasil tetap menjadi **protected behavior**: APK artifact lifecycle, Ext. data, Media, dan repeated-part artifact retention.
- Full multi-part A18 belum VERIFIED.

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

- Repository branch dan current code checkpoint teridentifikasi.
- CI #1156 artifact pipeline PASS.
- Compile blocker #1155 diperbaiki pada checkpoint `b0a4d8cc...`.
- APK artifact lifecycle sebelumnya memiliki evidence positif.
- Ext. data dan Media memiliki runtime evidence positif.
- Runtime APK #1156 menghasilkan functional evidence.
- Runtime Data #1156 menghasilkan diagnostic failure evidence.
- History 1 dan History 2 dipertahankan sebagai dua arsip terpisah.

### UNVERIFIED / UNKNOWN

- Root cause angka progress APK 138 GB.
- Raw byte accounting end-to-end.
- Phase timing collection vs packaging/compression vs encryption sebagai dasar performance acceptance.
- Direct-source archive implementation.
- Root cause filesystem Data: CE/DE, user/profile, namespace, atau boundary lain.
- Full A18 multi-part acceptance.
- Performance equivalence terhadap Swift.

### Batas interpretasi

- Swift Backup adalah **reference/evidence**, bukan source-of-truth implementation BaRe.
- `CI PASS` bukan runtime acceptance.
- Functional runtime evidence bukan performance verification.
- Runtime failure tidak otomatis membuktikan root cause.
- Source implementation tidak otomatis berarti deployed/running/correct.

## 4. CURRENT NEXT ACTION

1. Trace byte-accounting APK end-to-end:
   **source stat → ROOT copy → staging → archive input → progress model → UI formatting**.
2. Pisahkan raw bytes dan elapsed time untuk:
   **collection / archive-compression / encryption**.
3. Lakukan diagnostic Data secara **read-only** untuk:
   **CE/DE, user/profile, path existence/type, dan ROOT namespace visibility**.
4. Setelah root cause terbukti dan perubahan diotorisasi, lakukan perubahan minimal/reversible.
5. Build → runtime APK → runtime Data → regression Ext. data/Media → verify.
6. Jangan menaikkan A18 menjadi **VERIFIED** sebelum acceptance yang relevan benar-benar terbukti.

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

**A18 — CI #1156 + runtime evidence reconciliation**

Current conclusion:

> **CI #1156 PASS, tetapi A18 belum VERIFIED. APK progress/performance acceptance belum terpenuhi dan Data masih gagal dengan root cause UNKNOWN.**

Next engineering decision harus berasal dari evidence aktual, bukan dari urutan historis #1155 yang berada di arsip History 2.

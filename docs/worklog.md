# BaRe v1.0 — Worklog

> **Role:** current continuity / synthesis checkpoint.
>
> Dokumen ini **bukan transcript dan bukan chronology lengkap**. Ia merangkum state, keputusan, evidence, unresolved item, dan next action yang berasal dari history dan checkpoint engineering.
>
> Git commit tetap menjadi evidence perubahan repository dan tidak digantikan oleh worklog.

## 1. CURRENT STATE

| Item | Status |
|---|---|
| Repository | savie/BaRe |
| Branch | v1.0/rebaseline |
| Current repository HEAD | 63d3a47b4d4a59bd72e26622020b8fd04f2ffa30 |
| Lifecycle | **DESIGN / ARCHITECTURE / BUILD** |
| Current focus | **A18 — REBUILD BACKUP + RESTORE BERDASARKAN REFERENCE BEHAVIOR** |
| Latest build evidence | **CI #1181 for current rebuild is IN_PROGRESS** |
| Current implementation status | **BACKUP + RESTORE REBUILD ACTIVE / #1181 COMPILE FIX APPLIED / NEW CI PENDING / RUNTIME UNVERIFIED** |
| Reference baseline | **Dipakai sebagai behavioral/mechanism baseline untuk backup + restore** |
| Encryption boundary | **Tetap memakai mekanisme/encryption BaRe; bukan teknik encryption reference** |
| NON_ROOT | **Mengikuti mekanisme/flow yang sama; capability harus diadaptasi semaksimal mungkin** |

### CI #1169 — latest runtime evidence

**OBSERVED FROM USER-PROVIDED RUNTIME EVIDENCE:**

- Backup result: **FAILED**.
- APK: **completed**.
- Data: **failed** saat Packaging/encryption for Data.
- Error:
  - tar: idm.internet.download.manager.plus: No such file or directory
  - tar: had errors.
- Result: current BaRe backup mechanism is **not accepted as the baseline to continue patching**.

### Current decision

**DECISION — REBASE BACKUP + RESTORE TO REFERENCE MECHANISM**

Pekerjaan A18 backup/restore selanjutnya harus **dibangun ulang mengikuti mekanisme reference**, bukan meneruskan mekanisme backup yang sekarang dengan patch incremental.

Reference menjadi baseline untuk mekanisme/behavior yang memang tersedia di reference, termasuk bila reference menyediakan lebih dari satu cara untuk suatu tahap. Mekanisme yang relevan harus direkonstruksi dan diikuti secara menyeluruh, bukan dipilih hanya pada bagian yang nyaman untuk implementation saat ini.

**Explicit exception: encryption**

- Teknik encryption reference **tidak diikuti**.
- Encryption BaRe tetap dipakai sesuai boundary/keputusan BaRe.
- Jika reference **tidak mengenkripsi** suatu artifact/path/component, BaRe tidak boleh menambahkan encryption hanya karena implementation lama BaRe melakukannya.

**ROOT / NON_ROOT boundary**

- Reference hanya menyediakan evidence/mechanism untuk **ROOT**.
- ROOT menjadi baseline mekanisme reference.
- NON_ROOT tidak boleh dibuat sebagai mekanisme backup yang berbeda hanya karena reference tidak memiliki non-root implementation.
- NON_ROOT harus mempertahankan **logical mechanism/flow yang sama** lalu menyesuaikan execution boundary dengan capability Android/BaRe.
- Jika suatu capability non-root tidak langsung tersedia, cari mekanisme alternatif yang paling maksimal untuk mencapai behavior yang sama.
- Hanya setelah alternatif yang relevan benar-benar diuji dan tidak memungkinkan, capability boleh dicatat sebagai limitation/unsupported.

**Backup + restore**

Rebuild mencakup **dua arah**:

```text
BACKUP
  discover/select
  → resolve capability
  → validate source/destination
  → collect/source handling
  → archive/compress
  → BaRe encryption boundary
  → commit artifact
  → persist metadata
  → verify
  → result

RESTORE
  select backup
  → inspect package/artifact
  → validate target/capability
  → extract/read artifact
  → BaRe decryption boundary
  → restore/install/data handling
  → post-restore validation
  → verify
  → result
```

Flow di atas adalah target kerja; detail mekanisme tiap tahap harus diturunkan dari reference evidence dan actual BaRe capability, bukan diisi dengan asumsi.

## 2. CURRENT CHECKPOINT — REBUILD WIRED FOR USER VERIFICATION

**IMPLEMENTED / CODE STATE**

- ROOT backup source boundary remains reference-aligned:
  - privileged source precondition checks source existence and directory type before archive;
  - archive reads the selected absolute source path directly;
  - invalid source is rejected before packaging.
- NON_ROOT backup continues through BaRe capability adaptation:
  - APK collection uses Android-visible package sources;
  - external/media collection uses app-visible filesystem where available;
  - private app data remains a privileged capability boundary and is not falsely claimed as non-root capable.
- Backup artifact lifecycle now includes an explicit post-commit verification step:
  - artifact exists;
  - artifact size matches produced size;
  - SHA-256 matches the digest recorded for the committed artifact.
- Backup process UI is already wired to the backup engine progress stream and now exposes collection, packaging, verification, completion, and failure messages.
- Restore backend has been added:
  - metadata/package/artifact lookup;
  - artifact SHA-256 verification;
  - BaRe decryption;
  - archive extraction with path traversal protection;
  - ROOT APK/data/external-data/media restore path;
  - NON_ROOT APK handoff to Android package installer;
  - NON_ROOT external/media restore attempted through Android-visible storage boundary;
  - private data remains ROOT-only.
- Restore process UI is wired from the existing device-backup card and exposes restore execution state to the user.
- Advanced BaRe encryption password is now exposed in the backup process entry and restore process entry instead of silently sending a null password.
- NON_ROOT is explicitly retained in the rebuild; it is not being dropped merely because the reference did not provide a non-root mechanism.

**USER-VISIBLE CHECKPOINT**

The APK should now have an actual user-visible path for:

```
App detail
  ↓
Device backup
  ↓
BACKUP process screen
  ├─ current part
  ├─ collection / packaging progress
  ├─ artifact verification
  └─ result
  ↓
Device backup card
  ↓
RESTORE
  ↓
RESTORE process screen
  ├─ artifact inspection / hash verification
  ├─ extraction
  ├─ install / data / external data / media handling
  └─ result or installer handoff
```

**IMPORTANT STATUS**

- This is **IMPLEMENTED**, not yet **VERIFIED**.
- CI/build for the new commits is pending at the time of this checkpoint.
- Runtime on ROOT and NON_ROOT devices is still **UNVERIFIED**.
- Restore end-to-end is **UNVERIFIED**.
- No claim is made that every reference UI/state is identical; the current work establishes the actual wired user path that can now be exercised and compared against reference behavior.
- The next verification must use the generated APK from the new build, not infer behavior from source alone.

## 3. CURRENT CHECKPOINT — CI #1181 COMPILE FAILURE AND FIX

**OBSERVED — CI #1181**

Build reached Kotlin compilation and failed with three source errors:

1. `AppRestoreArchiveReader.kt:74`
   - restore reader referenced unavailable `archiveName()`.
   - consequence: following prefix expression also became invalid.
2. `RestoreProcessScreen.kt:138`
   - referenced `AppBackupPart.displayNameForUi()`, which is private/inaccessible from the new file.

**FIX APPLIED**

- Restore archive reader now derives the archive directory name locally from `AppBackupPart`, matching the BaRe artifact layout:
  - APK → `apk`
  - Data → `data`
  - External data → `external-data`
  - Media → `media`
- Restore process UI now uses a local `restoreDisplayName()` mapping instead of depending on a private helper in another source file.

**STATUS**

- Fix is committed at current HEAD.
- New CI has been triggered/pending.
- Previous #1181 result remains **FAILED** and is not treated as verification.
- Runtime remains **UNVERIFIED** until a build containing the fixes passes and the APK is exercised.

## 3. HISTORICAL SYNTHESIS

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

- Repository branch yang aktif adalah v1.0/rebaseline.
- Latest repository HEAD yang terobservasi adalah c039dbad9984f9f90b8f89b74707b605417f3ef5.
- User-provided CI #1169 runtime evidence menunjukkan APK backup completed tetapi Data backup gagal.
- Failure terjadi pada packaging/encryption Data dengan error tar: idm.internet.download.manager.plus: No such file or directory dan tar: had errors.
- Reference branch/evidence tersedia untuk dijadikan baseline mekanisme backup/restore.
- Encryption BaRe adalah explicit exception dari parity reference.

### UNVERIFIED / UNKNOWN

- Complete reference-to-BaRe backup mechanism mapping untuk seluruh part dan seluruh restore path.
- Exact reference behavior untuk setiap mode/variant yang relevan sebelum implementation rebuild.
- Non-root capability path untuk setiap part setelah mekanisme reference direkonstruksi.
- Runtime success backup Data setelah rebuild.
- Runtime success restore untuk APK/Data/Ext. data/Media.
- Full backup + restore acceptance.
- Performance acceptance setelah mekanisme baru selesai.
- Compatibility/edge cases pada source path, archive entry, destination, cancellation, partial artifact, metadata, dan restore target.

### SUPERSEDED DIRECTION

Mekanisme berikut **tidak lagi menjadi baseline kerja A18**:

- mempertahankan pipeline backup lama lalu menambal error Data satu per satu;
- menganggap direct-root implementation terbaru otomatis benar hanya karena menghilangkan staging;
- menjadikan mekanisme non-root yang berbeda sebagai desain default;
- mengejar parity encryption Swift/reference.

Direct-root/performance implementation yang sudah ada tetap merupakan historical implementation/evidence, tetapi **bukan alasan untuk mempertahankan arsitektur lama** apabila bertentangan dengan mekanisme reference yang sekarang diputuskan sebagai baseline.

## 4. CURRENT NEXT ACTION

### Phase B — BaRe adaptation

1. Reconcile current app-module implementation against `docs/a18_reference_reconstruction.md`.
2. Replace the current ROOT Data source handling so **source existence/type is a hard precondition before archive execution**; no archive attempt when the source boundary is invalid.
3. Keep ROOT source entries direct at the archive boundary; keep NON_ROOT staging only where capability requires it.
4. Preserve BaRe encryption as the explicit security boundary and preserve atomic artifact commit + metadata + integrity behavior.
5. Introduce the missing restore backend boundary: artifact validation → hash verification → decryption → archive validation → restore plan → capability-specific mutation → post-restore validation.
6. Do not claim restore support until the backend has a real mutation path and verification result.

### Phase C — Implementation

7. Implement the smallest coherent backup/restore slice from the reconstructed mechanism, not another isolated patch to the old pipeline.
8. ROOT and NON_ROOT must share the logical operation contract; only source/install/data execution differs by capability.
9. Build after implementation changes.

### Phase D — Runtime / regression / verification

10. Runtime ROOT backup APK + Data + Ext. data + Media.
11. Runtime NON_ROOT backup for capabilities actually available on the target.
12. Runtime restore of produced artifacts.
13. Regression cancellation, partial failure, artifact retention/cleanup, metadata/hash consistency, and protected behavior.
14. Only after correctness is proven, measure performance.
15. A18 remains **NOT VERIFIED** until the complete required evidence chain exists.

### Reference reconstruction artifact

`docs/a18_reference_reconstruction.md` — created at checkpoint `c9365498e653458a5b4708ce0de53b289dfffce4`.

### OUT OF SCOPE UNTIL CORRECTNESS BASELINE

- incremental patching of the superseded backup architecture;
- copying Swift encryption;
- declaring NON_ROOT unsupported merely because reference has no non-root path;
- performance optimization before correctness.

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

**A18 — BACKUP + RESTORE REBUILD / REFERENCE-ALIGNED MECHANISM**

Current conclusion:

> **CI #1169 membuktikan mekanisme backup BaRe saat ini masih gagal pada Data. Scope sekarang berpindah dari patch mekanisme lama menjadi rebuild backup + restore berdasarkan mekanisme reference, dengan encryption BaRe sebagai explicit exception. ROOT mengikuti reference; NON_ROOT mempertahankan logical mechanism/flow yang sama dengan capability adaptation maksimal.**

### 2026-09-26 — Decision: reference-aligned backup + restore rebuild

**Trigger / evidence**

- User-provided CI #1169 runtime evidence:
  - APK backup completed.
  - Data backup failed.
  - Failure: Packaging/encryption for Data failed: IllegalStateException.
  - tar: idm.internet.download.manager.plus: No such file or directory.
  - tar: had errors.

**Decision**

- Current backup mechanism is not continued as the implementation baseline.
- Backup + restore will be rebuilt to follow the reference mechanism/behavior.
- Reference behavior is to be followed broadly wherever it provides evidence/mechanism, including alternate mechanisms/modes that are actually present.
- Encryption is the explicit exception: retain BaRe encryption/decryption mechanism.
- If reference leaves an artifact/path/component unencrypted, BaRe must not add encryption merely because the old BaRe mechanism did so.
- ROOT uses reference as the mechanism baseline.
- NON_ROOT adapts execution capability while preserving the same logical backup/restore mechanism and flow.
- NON_ROOT must be pursued as far as technically possible before declaring a capability unsupported.

**Verification status**

- Current old backup mechanism: **UNRESOLVED / SUPERSEDED AS BASELINE**.
- New reference-aligned mechanism: **PLANNED / NOT IMPLEMENTED YET**.
- Backup Data success: **UNVERIFIED**.
- Restore end-to-end: **UNVERIFIED**.
- Full A18 acceptance: **NOT VERIFIED**.

**Immediate next work**

1. Reconstruct reference backup flow per part.
2. Reconstruct reference restore flow.
3. Map source/path/archive/compression/commit/metadata/verification mechanisms.
4. Map all reference variants rather than selecting arbitrarily.
5. Compare against current BaRe implementation and define rebuild boundaries.
6. Implement ROOT reference-aligned mechanism.
7. Adapt the same mechanism for NON_ROOT.
8. Keep BaRe encryption only at its explicit encryption boundary.
9. Build → runtime backup → runtime restore → regression → verify.



## 8. CURRENT CHECKPOINT — REFERENCE RECONSTRUCTION COMPLETE

### 2026-09-26 — A18 reference reconstruction

**OBSERVED / RECONSTRUCTED**

- Reference backup workflow is explicitly modeled as discover/select → configure parts → capability → destination validation → preconditions → backup task → archive/compress/encrypt → commit → metadata → verify → result.
- Reference restore workflow is explicitly modeled as select backup → inspect → select parts/options → validate package/artifact/target → resolve install/data capability → preconditions → restore/install → post-restore validation → result.
- Targeted archive evidence confirms reference passes selected source entries as absolute paths into its native archive boundary, with tar/profile, compression, encryption, and progress as separate boundaries.
- Canonical BaRe architecture already requires validation, atomic commit, metadata, integrity, and post-restore verification; reconstruction therefore maps to existing BaRe architecture rather than replacing it.
- Current app source has backup implementation but **no restore backend**.
- Current ROOT Data runtime failure (#1169) occurs during packaging/encryption after a tar source-path error; the new adaptation will make source precondition validation explicit before archive execution.

**DECISION**

- Reference reconstruction is now complete enough to start BaRe adaptation.
- Do not continue the superseded backup architecture by isolated error patches.
- Encryption remains the explicit BaRe-owned exception.
- ROOT follows the reference source/archive semantic; NON_ROOT keeps the same logical operation and adapts execution capability.
- Restore is a required implementation slice, not a later optional feature.

**Artifact**

- `docs/a18_reference_reconstruction.md` — commit `c9365498e653458a5b4708ce0de53b289dfffce4`.

**STATUS**

- Reference reconstruction: **COMPLETED / DOCUMENTED**.
- BaRe adaptation: **NEXT / NOT IMPLEMENTED YET**.
- Backup runtime: **UNVERIFIED**.
- Restore runtime: **UNVERIFIED**.
- A18: **NOT VERIFIED**.


## 9. CURRENT CHECKPOINT — BARE ADAPTATION STARTED

### 2026-09-26 — ROOT source precondition / direct source boundary

**IMPLEMENTED**

- ROOT directory archive sources now perform an explicit privileged precondition check before archive execution:
  - source exists;
  - source is a directory;
  - diagnostic mode/type is captured on failure;
  - source byte size must be available before archive starts.
- ROOT tar streaming now receives the **absolute source path directly** instead of changing to the parent directory and passing only the basename.
- This aligns the BaRe provider boundary more closely with the reference evidence that selected sources are handed to the archive boundary as absolute source paths.
- NON_ROOT staging behavior was not changed by this checkpoint.

**Commit**

- `2098ee32a175852bae89a93c8f3d60e617d86f07` — stream root source by absolute path.

**Verification**

- Source implementation: **OBSERVED / IMPLEMENTED**.
- Code checkpoint: `2098ee32a175852bae89a93c8f3d60e617d86f07`.
- Current repository HEAD after worklog recording: `cf6606a0f00ad7eb446f8d3f8638347559b8cf6e`.
- GitHub commit status: **PENDING**, with no completed check result exposed yet.
- Runtime: **UNVERIFIED**.
- CI #1169 Data failure is not declared fixed until the same runtime case passes the new source precondition and archive path.

**NEXT**

1. Build/compile latest checkpoint.
2. Runtime ROOT APK + Data + Ext. data + Media.
3. If Data still fails, use the new precondition diagnostics to distinguish source namespace/access failure from archive failure.
4. Then implement the missing restore backend boundary.

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


## 10. CURRENT CHECKPOINT — CI #1184 PASS / RUNTIME GATE

### 2026-09-26 — Restore compile-fix verification

**OBSERVED**

- CI #1183 failed during Kotlin compilation in `RestoreProcessScreen.kt` at line 26 because the source contained literal `\\n` text rather than actual line breaks.
- Commit `55c06fd9f47eb936b07133a68c100b186b8e25b4` normalized the affected source line breaks.
- CI #1184 for commit `55c06fd9f47eb936b07133a68c100b186b8e25b4` completed **PASS**.
- Build artifact `BaRe-v1.0-build-1184.apk` was produced by the CI run; artifact id `10900548889`.

**VERIFIED**

- `assembleDebug` build checkpoint for commit `55c06fd9f47eb936b07133a68c100b186b8e25b4`: **CI VERIFIED**.
- APK artifact exists from the successful CI run: **OBSERVED**.

**NOT VERIFIED**

- Device/runtime installation: **UNVERIFIED**.
- ROOT backup end-to-end: **UNVERIFIED**.
- ROOT restore end-to-end: **UNVERIFIED**.
- NON_ROOT backup/restore end-to-end: **UNVERIFIED**.
- Full A18 acceptance: **NOT VERIFIED**.

**SOURCE CONTRACT CHECK**

- Backup writer and restore reader currently agree on the BaRe-owned artifact envelope: BAREENC1 header, format version 1, AES/GCM, ZIP payload, standard Android Keystore mode, and advanced PBKDF2 mode.
- ROOT APK archive entries are emitted as `apk/base.apk` and `apk/split-N.apk`, matching the restore extraction boundary.
- NON_ROOT APK restore currently hands only the first extracted APK to Android Package Installer; split-APK NON_ROOT restore remains a **known verification gap** and must not be treated as complete.

**NEXT ACTION**

1. Install CI #1184 APK on an authorized test device/runtime.
2. Exercise backup for APK, Data, Ext. data, and Media.
3. Exercise restore for the same parts and verify post-restore state, not merely file extraction.
4. Specifically test split-APK restore for ROOT and NON_ROOT.
5. Record runtime evidence and close only acceptance criteria actually demonstrated.


## 11. CURRENT CHECKPOINT — #1184 RUNTIME FAILURE / HASH VERIFICATION REGRESSION

### 2026-09-26 — First runtime of CI #1184

**OBSERVED — user-provided runtime evidence**

CI #1184 APK was exercised against 1DM+ / package `idm.internet.download.manager.plus`.

Observed backup failures:

- APK: backup reached packaging (example progress: `1.9 GB / 7.1 GB (156 MB/s)`) and then failed at artifact hash verification.
- Ext. data: backup reached artifact verification and failed with `Backup artifact hash verification failed`.
- Media: backup reached artifact verification and failed with `Backup artifact hash verification failed`.
- Data: failed earlier at the new ROOT source precondition: `/data/user/0/idm.internet.download.manager.plus` → `source_exists=false`.

**ANALYSIS**

The runtime evidence separates the failure into two independent defects:

1. **Artifact hash mismatch is systematic across multiple successfully packaged parts.** This is a verification/contract defect in the artifact hash result path, not evidence that APK/Ext. data/Media source collection itself failed.
2. **ROOT Data has a distinct source namespace/path availability failure** before archive creation. This remains unresolved and requires device-specific source-path evidence; it must not be conflated with the hash defect.

**IMPLEMENTED FIX**

- `AppBackupArchiveWriter` now calculates the SHA-256 from the **committed final artifact file after move-into-place**, so the metadata/result hash is bound to the exact artifact that will be verified.
- `AppBackupEngine` now reports expected and actual SHA-256 values when verification fails, to make any remaining mismatch directly diagnosable from runtime evidence.

Commits:

- `2658a48e5dfbbde3387693a416c0c4fb184f6278` — hash committed backup artifact.
- `db0d8d712baeb868ec31e72c6e425c34d8f552cd` — expose backup artifact hash mismatch.

**VERIFICATION STATUS**

- CI #1184: **CI VERIFIED**.
- #1184 runtime backup: **FAILED / UNVERIFIED**.
- Hash fix above: **IMPLEMENTED / NOT YET CI-VERIFIED**.
- ROOT Data source resolution: **UNRESOLVED / UNKNOWN ROOT CAUSE**.
- Restore: **NOT STARTED FOR RUNTIME VERIFICATION** because backup artifact production is currently blocked.

**NEXT**

1. CI build the hash-fix checkpoint.
2. Re-run one small backup part first (APK or Media) to verify the hash contract before spending time on large APK packaging.
3. If hash passes, re-run Ext. data and Media, then APK.
4. Separately diagnose ROOT Data source visibility using the exact runtime path and privileged namespace evidence; do not weaken the precondition.
5. Only after backup artifacts are valid, proceed to restore runtime verification.


### CI follow-up observed — 2026-09-26

- Android Build #1185 for `2658a48e5dfbbde3387693a416c0c4fb184f6278` is **IN_PROGRESS**.
- Android Build #1186 for `db0d8d712baeb868ec31e72c6e425c34d8f552cd` is **IN_PROGRESS**.
- No CI PASS is claimed yet for the hash-fix checkpoint.


## A18 — Reference Archive Mechanism Alignment — 2026-09-26

### OBSERVED / VERIFIED
- Runtime #1186 passed backup artifact hash verification after the prior hash contract fix.
- Runtime evidence showed APK target size is 7.12 MB; the earlier 7.1 GB interpretation was incorrect.
- Swift Backup 5.1.0 reference audit confirms the SBA archive path uses native TAR + Zstandard compression; FASTEST maps to Zstandard level 1. Encryption is a separate path.

### DECISION / AUTHORIZATION
- Backup and restore must follow the audited Swift reference mechanism for all applicable archive, compression, source, artifact, and restore behavior.
- BaRe encryption/decryption remains the sole explicit mechanism exception.

### IMPLEMENTATION
- Added Apache Commons Compress TAR and zstd-jni dependencies.
- Added `AppReferenceTarZstdArchive` for TAR + Zstandard level 1 payload creation.
- Switched BaRe backup payload generation from ZIP/Deflater to reference-aligned TAR/Zstandard while retaining BaRe AES-GCM encryption and final artifact SHA-256 verification.
- Added BaRe archive payload format version 2 and restore dispatch for legacy ZIP payloads (v1) and reference TAR/Zstandard payloads (v2).

### VERIFICATION STATUS
- CI for the latest reference-alignment changes: IN_PROGRESS / NOT YET VERIFIED at worklog update time.
- Runtime verification of the new TAR/Zstandard build: NOT STARTED; blocked on CI artifact.

### NEXT
- Verify CI build.
- Install the resulting artifact and run APK-only backup for the 7.12 MB 1DM+ APK.
- Verify progress reports MB rather than the previous erroneous GB scale.
- Measure backup elapsed time and compare stage timing against Swift reference.
- Then verify Data / Ext. data / Media and restore using the new artifact format.

## A18 — Build correction + backup process progress UI — 2026-09-26

### OBSERVED
- CI build exposed compile blockers in the new reference TAR+Zstandard archive path:
  - `AppReferenceTarZstdArchive.kt`: TAR timestamp API expected `Date`, link-entry constructor/API mismatch, and uid/gid type mismatch.
  - `AppRestoreArchiveReader.kt`: literal escaped newline in the format-version declaration caused a Kotlin syntax error.
- The previous runtime APK progress evidence showed an incorrect `GB` scale for a small APK payload. The new root APK source path already provides byte sizes from `stat`; the process UI was not exposing the raw byte metrics separately.

### CHANGE
- Corrected TAR metadata API usage and removed the invalid link-entry helper in `AppReferenceTarZstdArchive.kt`.
- Corrected the restore reader format-version declaration syntax.
- Extended backup process state/UI with processed bytes, total bytes, elapsed time, and transfer rate.
- Process UI now renders byte progress explicitly in `MB` for normal APK-sized payloads, with elapsed time and rate, while retaining the phase message.

### CURRENT STATUS
- Implementation commits:
  - `4461b366dd8bb59847072ce7db05ee24a294b6b4` — TAR metadata type correction.
  - `25e2a1dc147ca6b15fcc4b2894ffa90751cd8c73` — restore reader syntax correction.
  - `f89f60920bad9c48242e7bb933579dde3c0f4c4e` — backup progress UI metrics.
  - `064ee667f0b96158ba1f52c0b3d4756b231cb33f` — wire progress metrics into the app detail process screen.
- Android Build #1200 for `064ee667f0b96158ba1f52c0b3d4756b231cb33f` is currently `IN_PROGRESS` at the assemble-debug step.
- Therefore build verification and runtime verification remain `UNVERIFIED` until the CI artifact is produced and installed.

### NEXT GATE
1. CI #1200 PASS.
2. Install the resulting debug APK.
3. Run APK-only backup for the 7.12 MB-class target and verify the process screen reports approximately `MB / MB`, not `GB`.
4. Verify elapsed time/rate and artifact hash verification.
5. Continue Data, Ext. data, Media, then restore.

## A18 — CI verification gate — 2026-09-26

### VERIFIED
- Android Build #1203 passed all build, APK artifact, and signing verification steps for commit `9a6d61c441ba03c07a4301014f2eccf36b30440e`.
- Artifact: `BaRe-v1.0-build-1203`, artifact id `10902252390`.
- Artifact SHA-256: `c41a25c016e17850220066b547bf24beac691de42df7c43599b74186a8328385`.

### REMAINING VERIFICATION
- Runtime installation and backup execution are not yet verified.
- Next runtime gate is APK-only backup on the 7.12 MB-class target.
- Verify process UI reports source progress in the expected MB scale, elapsed time/rate, artifact commit/hash verification, then continue Data / Ext. data / Media and restore.

## A18 — Runtime blocker correction: Android Zstd + ROOT mount namespace — 2026-09-26

### OBSERVED
- Build #1203 installed on device but backup failed before archive creation for APK / Ext. data / Media with `UnsatisfiedLinkError`: `libzstd-jni-1.5.7-4.so` was not available for Android `aarch64`.
- Data backup independently failed because ROOT `su -c` could not see `/data/user/0/idm.internet.download.manager.plus` (`source_exists=false`).
- Static Swift reference audit shows its ROOT shell path uses `su --mount-master` when available, with fallback to plain `su`.

### CHANGE
- Changed Zstandard dependency from the JVM JAR to the Android AAR variant so the Android native `arm64-v8a` library is packaged into the APK.
- Changed BaRe ROOT command execution and root TAR streaming to use `su --mount-master -c`, aligning the observed Swift ROOT namespace mechanism.
- Encryption remains BaRe-owned; no reference encryption was introduced.

### VERIFICATION STATUS
- CI verification for these two changes is pending.
- Device runtime verification remains blocked until the new artifact is installed.
- Next runtime gate: APK-only backup first; then Data / Ext. data / Media; then restore.



## A18 — #1205 RUNTIME GATE / ROOT NAMESPACE + PERFORMANCE FOLLOW-UP — 2026-09-26

### OBSERVED — CI

- Android Build #1204 untuk commit `1d523362cf72bc888efc5d625a9a2b04d9c8f21d` selesai **PASS**.
- Android Build #1205 untuk commit `b72caa61280588007db35a0455e51846925746cc` selesai **PASS**.
- #1205 mengonfirmasi perubahan `su --mount-master` terkompilasi dan artifact berhasil dibuat.

### OBSERVED — USER RUNTIME #1205

- APK backup 1DM+ **completed**.
- Ext. data backup 1DM+ **completed**.
- Media backup 1DM+ **completed**.
- Error native zstd sebelumnya tidak muncul pada evidence runtime #1205.
- Data backup masih **FAILED** pada precondition:
  - `/data/user/0/idm.internet.download.manager.plus`
  - `source_exists=false`
- Process UI memiliki dua representasi progress yang tidak konsisten:
  - canonical byte metrics: `688.0 KB / 7.12 MB`;
  - phase message: `Packaging APK: 688 MB / 7.1 GB (406 MB/s)`.
- User juga melaporkan proses APK masih lambat.

### ANALYSIS — VERIFIED FROM CURRENT SOURCE

- Perubahan #1205 hanya memindahkan `runSuCancellable()` dan `openTarStream()` ke `su --mount-master`.
- `directoryArchiveSource()`, `remoteFileSize()`, dan beberapa root file operations masih melalui `runSu()`, sementara `runSu()` pada checkpoint #1205 masih menggunakan plain `su -c`.
- Karena Data gagal tepat pada `directoryArchiveSource()`, perubahan mount-master sebelumnya memang belum mencapai precondition yang gagal.
- ROOT APK archive masih melalui jalur `toybox tar → TarArchiveInputStream → TarArchiveOutputStream`, sehingga satu file APK mengalami tar stream parse/repack sebelum Zstandard + BaRe encryption.
- Byte metrics UI sudah tersedia sebagai state terpisah; phase message tidak perlu menduplikasi angka byte/rate dan berisiko menghasilkan representasi yang tidak konsisten.

### CHANGE — AUTHORIZED BY USER “BENERIN LAGI GO”

1. Terapkan `su --mount-master` ke `runSu()` dan root file-read operations yang masih plain `su -c`, sehingga Data source precondition dan size probe berada pada namespace root yang sama dengan root archive execution.
2. Tambahkan root file stream langsung berbasis `cat` dan gunakan untuk ROOT file source, khususnya APK, sehingga tidak lagi melewati toybox TAR parse/repack untuk single-file APK.
3. Jadikan phase message hanya phase (`Packaging APK`, dll.); byte progress, elapsed, dan rate tetap berasal dari canonical `processedBytes/totalBytes/elapsedMillis/bytesPerSecond` yang ditampilkan process UI.
4. Pertahankan BaRe encryption, atomic artifact commit, SHA-256 verification, dan reference-aligned TAR + Zstandard level 1.

### IMPLEMENTATION CHECKPOINT

- `031bd231594d9ca8a1d0b9fba4a951967f34756d` — apply mount-master to root probes and file streams.
- `7f608f79a64b868ec3422a70d951f6d288708b8e` — stream root APK files directly.
- `dc5582504c1d72ca97d20e54377644ff39eaecfc` — use canonical progress metrics in backup status.
- Worklog update is recorded in this checkpoint.

### VERIFICATION STATUS

- #1205 CI: **CI VERIFIED / PASS**.
- User runtime #1205 APK: **RUNTIME TESTED / COMPLETED**, performance still unresolved.
- User runtime #1205 Ext. data: **RUNTIME TESTED / COMPLETED**.
- User runtime #1205 Media: **RUNTIME TESTED / COMPLETED**.
- User runtime #1205 Data: **FAILED / UNRESOLVED**, source namespace/precondition remains the active blocker.
- Progress scale: **OBSERVED DEFECT**, source fix implemented but runtime verification pending.
- APK performance: **UNRESOLVED**, direct file-stream optimization implemented but runtime measurement pending.
- Full A18 acceptance: **NOT VERIFIED**.

### NEXT GATE

1. CI build checkpoint setelah perubahan di atas.
2. Runtime Data-only pada 1DM+ untuk membuktikan `/data/user/0/... ` terlihat melalui mount-master.
3. Runtime APK-only untuk memastikan progress bawah tidak lagi menduplikasi angka dengan unit salah dan mengukur elapsed/rate setelah direct file stream.
4. Regression Ext. data + Media.
5. Setelah backup artifacts valid, lanjut restore runtime dan verification end-to-end.
## A18 — #1208 RUNTIME CHECKPOINT — 2026-09-26

### CURRENT CHECKPOINT

**Status:** VERIFICATION

**Current task:** Mencatat dan mereconcile evidence runtime #1208 untuk backup/restore, kemudian menentukan pekerjaan berikutnya tanpa memperluas scope secara diam-diam.

**Task scope:**
- Mencatat evidence runtime yang diberikan user.
- Mereconcile kondisi inventory backup dengan source saat ini.
- Mencatat gap yang diketahui untuk APK duplicate work, restore per-part UI, dan restore progress.
- Tidak ada implementation change yang diotorisasi pada checkpoint ini.

### USER SAID

User melaporkan hasil runtime #1208:
- Backup APK berhasil.
- Backup Data berhasil.
- Backup Ext. data berhasil.
- Backup Media berhasil.
- Backup seluruh part yang dipilih selesai 4/4.
- Backup progress tidak lagi menunjukkan defect tampilan skala GB sebelumnya.
- Proses backup masih lebih lambat dibandingkan Swift, tetapi sudah lebih normal.
- APK yang sudah memiliki backup saat ini masih diproses ulang; user menginginkan APK yang identik di-skip, sedangkan APK/version yang berubah harus di-backup ulang.
- Restore seluruh part selesai 4/4.
- UI restore per-part belum di-wiring.
- User melihat defect tampilan skala GB saat proses restore, tetapi tidak memberikan screenshot defect tersebut.
- User meminta worklog diperbaiki terlebih dahulu dan next work dilihat setelahnya.

### OBSERVED — USER-PROVIDED RUNTIME EVIDENCE

- Data progress tampil `10.94 MB / 10.94 MB`.
- APK progress tampil `656.0 KB / 7.12 MB`.
- Backup completion tampil `4/4 parts completed`.
- Backup detail menunjukkan device backup sekitar `10.5 MB`.
- Restore completion menampilkan APK, Data, Ext. data, dan Media selesai, kemudian `Restore completed: 4/4 parts`.
- Evidence tersebut menunjukkan execution/completion pada scenario yang diuji. Evidence tersebut belum membuktikan full acceptance, reliability, atau performance untuk file berukuran besar.

### TESTED / VERIFICATION STATUS

- Backup APK: RUNTIME TESTED.
- Backup Data: RUNTIME TESTED.
- Backup Ext. data: RUNTIME TESTED.
- Backup Media: RUNTIME TESTED.
- Backup seluruh part yang dipilih: RUNTIME TESTED / 4 dari 4 selesai.
- Restore seluruh part yang dipilih: RUNTIME TESTED / 4 dari 4 selesai.
- Full A18 acceptance: NOT VERIFIED.
- Large-file APK performance: UNKNOWN.
- Post-state semantic verification restore di luar restore checks saat ini: UNKNOWN.
- Root cause restore progress GB defect: UNKNOWN.

### CURRENT IMPLEMENTATION / SOURCE EVIDENCE

- `AppBackupStateCard` mengambil local backup inventory melalui `AppBackupInventoryBehavior.inspectLocal(packageName)`.
- Refresh inventory LOCAL APPS saat ini masih bergantung pada state/effect yang ada dan belum memiliki refresh event khusus setelah backup selesai.
- Backup execution saat ini belum memiliki APK identity-based skip preflight sebelum `engine.execute()`.
- Restore backend sudah menerima `Set<AppBackupPart>`, sehingga subset restore sudah didukung pada contract behavior.
- Action RESTORE pada `BackupPartChip` masih disabled; action RESTORE utama adalah jalur all-parts yang sudah di-wiring.
- Restore extraction saat ini melaporkan raw processed/total, tetapi defect tampilan skala GB yang dilaporkan belum direproduce dengan raw runtime evidence.

### REQUIREMENT — USER-DERIVED

- Jika backup APK yang ada masih identik dengan APK/version yang terpasang, proses backup APK harus di-skip.
- Jika APK/version yang terpasang berubah, proses backup APK harus dilakukan kembali.
- Restore harus dapat dijalankan per-part, dengan all-parts restore tetap tersedia.

Requirement tersebut dicatat karena dinyatakan langsung oleh user; bukan hasil inference dari reference implementation.

### UNKNOWN / BLOCKED / LIMITATION

1. **Apps list inventory refresh**
   - Status: ACTIVE issue.
   - Observed: LOCAL APPS dapat menampilkan `No backup on device` sementara app detail sudah menampilkan backup yang baru dibuat.
   - Current interpretation: kemungkinan stale UI inventory state.
   - Root cause: NOT YET VERIFIED pada runtime.
   - Source inspection menunjukkan belum ada refresh trigger khusus, tetapi causal proof pada runtime masih pending.

2. **APK identical-skip**
   - Status: BACKLOG.
   - Belum implemented.
   - Identity/integrity decision boundary masih perlu ditentukan sebelum implementation.
   - Metadata saat ini menyediakan evidence version/hash/size, tetapi predicate authoritative untuk skip belum ditentukan.

3. **Restore per-part**
   - Status: IMPLEMENTED backend / ACTIVE UI wiring gap.
   - Backend menerima subset part.
   - Action RESTORE pada part chip masih disabled.
   - Runtime per-part restore belum diuji.

4. **Restore progress GB display**
   - Status: BLOCKED pending runtime evidence.
   - User melaporkan defect, tetapi screenshot/raw value yang terdampak belum tersedia.
   - Root cause tetap UNKNOWN.
   - Jangan menyatakan fix sebelum defect direproduce dan diverifikasi.

5. **Large-file performance**
   - Status: UNKNOWN.
   - Evidence runtime yang berhasil saat ini menggunakan payload relatif kecil.
   - Belum ada evidence yang membuktikan performance pada APK/data skala GB.

### PROPOSED NEXT ACTIONS

1. **ACTIVE / correctness:** reconcile dan perbaiki refresh inventory LOCAL APPS, kemudian runtime-test bahwa backup yang baru selesai langsung muncul pada list.
2. **BACKLOG / user requirement:** tentukan authoritative APK identity/integrity predicate untuk keputusan skip atau rebackup sebelum implementation.
3. **BACKLOG / user requirement:** wire action RESTORE per-part melalui restore behavior yang sudah tersedia.
4. **VERIFICATION:** instrument dan reproduce restore progress menggunakan canonical `processedBytes / totalBytes / elapsed / bytesPerSecond` sebelum menentukan diagnosis defect GB.
5. **VERIFICATION:** runtime-test restore APK-only, Data-only, Ext. data-only, dan Media-only setelah per-part wiring.
6. **PERFORMANCE / later:** ukur stage timing pada file besar sebelum melakukan optimization berikutnya.

### AUTHORIZATION

**Authorized pada checkpoint ini:** update `docs/worklog.md` dan reconcile checkpoint.

**Belum authorized pada checkpoint ini:** implementation change untuk inventory refresh, APK skip, restore per-part wiring, restore progress, atau performance optimization.

### CURRENT STATE

- Lifecycle phase: VERIFICATION
- Current task: A18 runtime checkpoint reconciliation
- Dependencies: valid backup artifacts, runtime/device testing, current source state
- Verification target: backup/restore behavior dan gap UI/state yang masih tersisa
- Out of scope pada checkpoint ini: implementation changes
- Next actionable work: inventory refresh reconciliation, dengan authorization code change tetap diperlukan

# BΛR☰ P5.1 Feature Coverage & Grouping Ledger

## Status

**P5.1 — REFERENCE FEATURE AUDIT — COVERAGE / GROUPING — ONGOING / STATIC**

Dokumen ini adalah **dokumen kerja terpisah** dari `docs/audits/P5_FEATURE_REGISTER.md`.

Tujuan utamanya:
- mengelompokkan temuan P5.1 yang sudah ada;
- melihat coverage per domain sebelum masuk P5.2;
- menemukan kemungkinan lubang coverage yang masih perlu dicari dari Reference;
- menjaga agar pencarian/penambahan temuan baru tidak mengubah atau menghilangkan histori register F;
- mempertahankan traceability dari setiap kelompok kembali ke F-ID asli.

Dokumen ini **bukan P5.2 contract register** dan **bukan authorization untuk implementasi**.

---

## 1. Posisi dokumen dalam P5.1

P5.1 sekarang dipisahkan menjadi dua artefak kerja:

1. **Feature Register**
   - `docs/audits/P5_FEATURE_REGISTER.md`
   - menyimpan temuan/reference feature evidence;
   - F-ID adalah histori evidence dan harus dipertahankan;
   - temuan baru ditambahkan sebagai F163+ bila memang ditemukan evidence baru.

2. **Coverage & Grouping Ledger**
   - dokumen ini;
   - mengelompokkan F-ID secara provisional;
   - dipakai untuk mencari coverage hole;
   - grouping di sini belum berarti canonical contract, owner, atau boundary final.

Urutan kerja:

```
P5.0 Scope
   ↓
P5.1 Feature Register
   ↓
P5.1 Coverage / Grouping
   ↓
Targeted Reference follow-up bila ada hole
   ↓
F163+ bila evidence baru ditemukan
   ↓
Coverage reconciliation
   ↓
P5.2 Feature contract, owner, and boundary
```

**P5.2 belum dimulai hanya karena grouping sudah dibuat.**

---

## 2. Aturan anti-kehilangan evidence

### 2.1 Feature Register adalah append-oriented evidence ledger

`P5_FEATURE_REGISTER.md` diperlakukan sebagai sumber histori temuan.

Aturan:
- jangan menghapus F-ID lama hanya karena nanti ternyata masuk kelompok lain;
- jangan mengganti arti F-ID secara diam-diam;
- jangan memindahkan detail evidence dari register ke dokumen ini;
- jika ditemukan evidence baru, tambahkan F-ID baru bila memang merupakan feature/contract evidence yang independen;
- jika temuan lama ternyata overlap, simpan F-ID lama dan catat rekonsiliasinya;
- F94 tetap menjadi reconciliation marker sesuai register dan tidak dihitung sebagai unique feature-contract unit.

### 2.2 Dokumen ini adalah view kerja

Grouping boleh berubah selama P5.1.

Perubahan grouping:
- **tidak** mengubah histori F-ID;
- **tidak** berarti contract consolidation;
- **tidak** berarti owner final;
- **tidak** berarti implementation task;
- **tidak** berarti parity/closure.

Dengan pola ini, pencarian dapat terus bertambah tanpa perlu merombak register evidence.

---

## 3. Coverage buckets P5.1

Coverage memakai 24 domain yang sudah ditetapkan oleh P5.0. Domain P5.0 tidak diubah oleh dokumen ini.

| # | P5.0 domain | Current F-ID coverage | Coverage purpose |
|---:|---|---|---|
| 1 | Onboarding | F01, F45, F73, F87, F100 | first-start, identity, password/settings continuity, restore-related entry dependencies |
| 2 | Home / dashboard | F02, F03, F22, F24, F27, F35, F36, F37 | dashboard/search/orchestration and home-level feature entry |
| 3 | Apps | F04–F08, F38–F44, F53–F71, F77, F83, F93, F159–F162 | core Apps inventory, selection, backup/restore, package execution, special data, row actions, compatibility and artifact materialization |
| 4 | App configuration | F09, F58, F62, F85, F116–F121 | configuration model, labels, task-input projection, persistence and normalization |
| 5 | App detail | F07, F08, F54, F60, F61 | detail actions, app info, restore-card model and detail integrations |
| 6 | APK import | F10, F86 | APK/APKS import/share artifact path |
| 7 | Folders | F11, F12, F47, F78, F101, F126–F130 | folder model, backup/restore, manifests, strategy, result algebra and metadata lifecycle |
| 8 | Messages | F13, F14, F17, F18, F48, F72, F79, F110 | SMS backup/restore, conversations, default-handler integration, advanced provider state, retention and task execution |
| 9 | Calls | F15, F16, F80, F99, F111 | call-log backup/restore, task execution and retention |
| 10 | Cloud | F19–F21, F42, F51–F52, F87–F88, F96–F105, F131–F153 | cloud connection, provider execution, metadata/cleanup, diagnostics, provider-specific protocols and credentials |
| 11 | Scheduling | F22, F50, F74, F107–F114, F122 | schedule selection, execution eligibility, task handoff, per-feature schedule preparation and aggregate persistence |
| 12 | Settings | F23, F26, F52, F73, F87, F100, F115, F118–F120 | settings and feature policy surfaces consumed by backup/restore |
| 13 | Premium / entitlement | F31 | Reference premium/entitlement feature evidence |
| 14 | Password / encryption | F25, F41, F52, F73, F95, F106, F154–F158 | password lifecycle, archive/encryption strategy, cryptographic payload/archive boundaries |
| 15 | Tasks | F27, F43, F70, F75–F82 | task lifecycle, result aggregation, temporary workspace and feature task executors |
| 16 | Wi-Fi | F28, F49, F81, F113 | Wi-Fi backup/restore, sensitive-access authentication and scheduled task preparation |
| 17 | Wallpapers | F29, F82, F112 | wallpaper management/apply and task execution |
| 18 | Storage | F24, F44, F89, F125, F161 | storage inventory, app-size measurement, manage-space and execution-time disk-space preflight |
| 19 | Locale | F32, F90 | locale persistence and configuration-change propagation |
| 20 | Blacklist | F30, F123 | blacklist persistence and backup-selection exclusion |
| 21 | Notices / licenses | F34, F92 | content loading, selection and supporting legal/static surfaces |
| 22 | Logging / diagnostics | F35, F51, F60, F64, F84, F102 | local logging, diagnostics, package visibility and transfer-test result surfaces |
| 23 | Contributor | F33, F91 | contributor registration state and persistence |
| 24 | Database / local persistence | F42, F45, F46, F53, F59, F70, F83, F87, F89, F115, F117, F121, F122, F123, F129, F130 | persistence/reconciliation surfaces that support multiple feature families |

### Important grouping rule

The table above is a **primary coverage view**, not a statement that each F-ID belongs to only one conceptual boundary.

A feature can consume another domain's contract. Cross-domain references are expected.

Example:
- F159 belongs primarily to Apps because it is an Apps restore compatibility gate.
- Its version metadata may also be consumed by cloud/local metadata flows.
- That dependency does not move F159 into the Cloud domain.

---

## 4. Current coverage state

P5.1 coverage is **not considered complete merely because F01–F162 exist**.

Current interpretation:

| State | Meaning |
|---|---|
| **COVERED — provisional** | Existing F evidence maps to the domain, but completeness has not yet been proven. |
| **FOLLOW-UP REQUIRED** | Existing evidence exposes a boundary that may contain additional feature behavior; targeted Reference search is required. |
| **NEW EVIDENCE** | Targeted search establishes an independent feature/contract boundary; add a new F-ID to the Feature Register. |
| **RECONCILE** | Existing F findings overlap or belong to a larger family and need grouping clarification, without deleting evidence. |
| **READY FOR P5.2 REVIEW** | Coverage has been sufficiently searched/reconciled for the domain; this does not itself open implementation. |

These are **P5.1 working states only**. They do not replace P5.3 classifications such as MATCH, UNKNOWN, BLOCKED, or DEFERRED.

---

## 5. How to audit each group

For each domain:

### Step A — Count current evidence

Record:
- all F-IDs currently mapped;
- major Reference owner surfaces represented;
- known execution/dependency boundaries represented.

### Step B — Look for missing surfaces

Do not assume the group is complete from the existing F-ID count.

Search the Reference for:
- additional Activities/services/receivers/providers relevant to the domain;
- feature-specific data models;
- task/executor classes;
- persistence/state models;
- result/error algebra;
- permission/precondition paths;
- local/cloud metadata paths;
- special-case branches;
- provider-specific behavior;
- import/export or migration paths;
- cleanup/delete/retry/cancellation behavior.

### Step C — Reconcile against existing F-ID

If the newly found behavior is already represented:
- attach it to the existing F-ID as supporting evidence; do not create a duplicate.

If it is genuinely independent:
- add a new F-ID to `P5_FEATURE_REGISTER.md`;
- then add that F-ID to this grouping ledger.

### Step D — Mark the group

Only after the targeted sweep can the group move toward `READY FOR P5.2 REVIEW`.

---

## 6. P5.1 working rule for new F-ID

New IDs continue monotonically from the current register.

Current highest unique feature ID:

**F162**

Therefore the next independent Reference feature finding is:

**F163**

Do not reuse an old number.

Do not create a new F-ID merely because:
- an existing feature is being grouped differently;
- an existing F-ID is consumed by another domain;
- an implementation task is being split;
- a future contract is expected.

Create F163+ only when targeted Reference evidence establishes a new independent feature/evidence boundary.

---

## 7. P5.1 grouping is not P5.2 contract grouping

This distinction is mandatory.

### P5.1 grouping asks:

> “Temuan Reference yang sudah ada ini nutup bagian mana, dan bagian mana yang masih mungkin bolong?”

Output:
- coverage buckets;
- F-ID mapping;
- targeted audit queue;
- new F-ID discoveries;
- reconciliation notes.

### P5.2 grouping asks:

> “Setelah coverage cukup, sebenarnya kontraknya apa, siapa owner canonical-nya, boundary-nya di mana, dan dependency-nya apa?”

Output:
- canonical feature contract;
- owner;
- consumers;
- inputs/triggers;
- outputs/results;
- state;
- dependencies;
- execution boundary;
- P4 contracts consumed;
- implementation target;
- verification surface.

Jadi **grouping sekarang tetap P5.1**, sedangkan contract consolidation nanti baru P5.2.

---

## 8. Anti-regression / cross-document consistency

Setiap kali P5.1 menemukan F baru:

1. update `P5_FEATURE_REGISTER.md`;
2. update dokumen ini untuk memasukkan F baru ke coverage group;
3. pastikan F-ID tidak hilang dari register;
4. pastikan F-ID tidak dipakai ulang;
5. catat jika F baru ternyata overlap dengan F lama;
6. jangan mengubah P5.0 scope hanya karena F baru ditemukan, kecuali evidence menunjukkan scope authority memang salah;
7. jangan membuka P5.2 hanya karena jumlah F bertambah.

Targetnya adalah:

```
REGISTER = evidence history
GROUPING = coverage view
CONTRACT = P5.2 canonical model
```

Ketiga artefak mempunyai fungsi berbeda dan tidak boleh dicampur.

---

## 9. Current P5.1 audit queue

Prioritas pencarian berikutnya:

1. **Onboarding → Home / dashboard**
   - validasi apakah F01–F03 sudah mencakup seluruh entry, state transition, search/result, dan first-run continuation behavior;
   - cari feature-specific behavior yang hanya terlihat dari consumer/orchestration path.

2. **Apps**
   - validasi coverage core backup/restore setelah F159–F162;
   - cek apakah masih ada execution boundary yang belum punya F-ID;
   - jangan menganggap F04–F08 + F38–F162 otomatis lengkap.

3. **App configuration → App detail**
   - rekonsiliasi konfigurasi, labels, favorites, detail actions, shortcuts, app info dan task-input projection;
   - cari boundary yang saat ini hanya muncul sebagai dependency.

4. **Folders → Messages → Calls**
   - lanjutkan pola yang sama: feature surface → execution → persistence → result/error → cleanup.

5. **Cloud**
   - provider-neutral first, provider-specific second;
   - jangan membuat F-ID hanya karena provider class ada jika tidak ada independent lifecycle/behavior.

6. **Scheduling / Tasks**
   - reconcile schedule selection, eligibility, task handoff, executor lifecycle, cancellation/retry/process-death semantics.

7. **Settings / Password / Storage**
   - cari feature policy yang belum terhubung dengan execution evidence.

8. **Remaining domains**
   - Locale, Blacklist, Notices/Licenses, Logging/Diagnostics, Contributor, Database/local persistence.

Urutan ini adalah **audit order**, bukan ranking kepentingan feature dan bukan implementation priority.

---

## 10. Exit condition P5.1 coverage work

P5.1 coverage work dapat dianggap siap untuk handoff ke P5.2 apabila:

- setiap P5.0 domain sudah memiliki coverage mapping;
- setiap group sudah mendapat targeted Reference sweep yang relevan;
- hole yang ditemukan sudah:
  - ditutup dengan evidence existing, atau
  - ditambahkan sebagai F-ID baru, atau
  - dicatat sebagai unresolved/UNKNOWN dengan evidence yang jelas;
- tidak ada F-ID yang hilang dari register;
- tidak ada F-ID yang dibuat hanya untuk alasan grouping;
- overlap/duplicate sudah direkonsiliasi;
- coverage grouping cukup stabil untuk membentuk canonical contracts.

**Ini bukan P5.2 closure.**

Setelah kondisi tersebut tercapai, baru masuk:

**P5.2 — Feature contract, owner, and boundary**

---

## 11. Static-only boundary

Seluruh dokumen ini tetap tunduk pada batas P5:

- Reference read-only;
- decompile ZIP adalah primary evidence;
- audit/reference search static-only;
- tidak build;
- tidak install;
- tidak runtime/device verification;
- tidak provider execution;
- tidak backend execution;
- tidak mengubah P1–P4 frozen authority kecuali controlled re-audit terbukti diperlukan.

Jika targeted audit menemukan defect nyata pada frozen authority P1–P4, ikuti mekanisme controlled re-audit yang sudah ditetapkan; jangan memperbaiki frozen phase secara diam-diam dari dokumen P5.1.

---

## 12. Working principle

> **Cari → kelompokkan → cek lubang → tambah evidence bila perlu → rekonsiliasi → baru kontrak.**

Bukan:

> **Cari 162 → anggap selesai → langsung bikin contract.**

P5.1 tetap terbuka selama coverage belum cukup dibuktikan.

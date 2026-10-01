# DEFINISI TARGET REKONSTRUKSI

Target project adalah:

> **«Rekonstruksi Reference Swift Backup 5.1.0 (620) menjadi BaRe/BΛR☰ dengan fidelity 1:1 terhadap Reference, kecuali perbedaan yang secara eksplisit diizinkan dalam handoff ini.»**

---

## 1. REPOSITORY DAN BRANCH

* **Repository GitHub:** `savie/BaRe`  
  * URL: [BaRe Repository](https://github.com/savie/BaRe?utm_source=chatgpt.com)
* **Branch Utama Pekerjaan:** `rewrite`

### 1.1. Scope Pengerjaan Branch `rewrite`
Seluruh komponen project dikerjakan pada branch **`rewrite`**, meliputi:
* Source code
* Perubahan
* Continuous Integration (CI)
* Reconstruction
* Database integration
* Supabase integration
* Dokumentasi project

Branch **`rewrite`** merupakan branch utama implementasi BaRe untuk rekonstruksi Reference. Seluruh perubahan terhadap konfigurasi, integrasi, dan dokumentasi harus dilakukan pada branch ini.

### 1.2. Sumber Reference Canonical
Reference tetap menjadi baseline/source of truth untuk menentukan *parity reconstruction*.

Reference canonical yang digunakan adalah hasil decompile archive **Swift Backup 5.1.0 (versionCode 620)** yang diberikan dalam bentuk ZIP pada environment kerja lokal GPT.

* **Path Canonical Reference:** `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
* Archive tersebut merupakan sumber *evidence* utama dan bersifat **read-only**.

### 1.3. Ketentuan Repository `reference/`
Folder `reference/` di repository BaRe boleh digunakan sebagai *mirror* lokal/working copy dari Reference untuk mempercepat pekerjaan forensic, grep, diff, hash, parsing, inventory, dan audit massal, selama isinya telah diverifikasi identik dengan Reference canonical.

**Aturan Penggunaan:**
* ZIP decompile adalah Reference canonical/source asal.
* `reference/` adalah *mirror* lokal/evidence cache, bukan *source implementation*.
* `reference/` bersifat **read-only** dan tidak boleh dimutasi sebagai bagian dari implementasi BaRe.
* Implementasi dan rekonstruksi hanya dilakukan pada `app/` atau area *implementation surface* BaRe yang relevan.
* Jika `reference/` dan ZIP canonical berbeda, ZIP canonical menjadi acuan dan *mirror* harus direkonsiliasi sebelum digunakan sebagai *evidence*.
* Jangan menganggap isi `reference/` sebagai Reference yang independen dari archive canonical.
* Verifikasi *equivalence* dapat dilakukan dengan hash, file inventory, atau pemeriksaan isi sesuai kebutuhan audit.

**Alur Kerja Utama:**

Reference canonical (ZIP) → Verifikasi/Mirror Lokal → Contract/Evidence → app/Implementation

*(Bukan: reference/ ↔ app/)*

Repository `savie/BaRe` branch `rewrite` merupakan target implementasi dari rekonstruksi tersebut.

---

## 2. HARD SCOPE RULE — REFERENCE READ-ONLY / APP IMPLEMENTATION ONLY

**Reference adalah evidence/source of truth dan selalu read-only. Reference tidak pernah menjadi target implementasi.**

* `reference/` dan artefak decompile Reference hanya dibaca untuk *evidence*, *inventory*, *mapping*, dan *parity verification*.
* Seluruh perubahan reconstruction/implementation dilakukan pada target BaRe/BΛR☰, terutama area `app/` yang menjadi *implementation surface*.
* Jika suatu kontrak yang terbukti dari Reference perlu diwujudkan pada BaRe, implementasikan kontrak tersebut di `app/`; **jangan mengubah Reference agar cocok dengan app**.
* Tidak ada global replacement, sinkronisasi, atau mutasi dua arah yang menjadikan Reference ikut berubah.
* Jika *evidence* belum cukup menentukan bagaimana kontrak harus diterapkan di `app/`, statusnya `UNKNOWN`/`BLOCKED` dan pekerjaan berhenti pada *evidence*/kualifikasi; jangan membuat perubahan spekulatif.
* Setiap *implementation batch* wajib memverifikasi bahwa `reference/` tetap *unchanged* dan *diff implementation* terbatas pada *scope* target yang telah ditentukan.

**Formula Operasional:**

Reference (read-only evidence) → Contract → BaRe/app Implementation

*(Bukan: Reference ↔ app synchronization)*

---

## 3. MASTER WORKFLOW — AUDIT → CATAT → CEK → IMPLEMENTASI → RE-AUDIT

Pola ini wajib dipahami sebelum mengerjakan N-domain mana pun.

### 3.1. Urutan Dasar Workflow
```
AUDIT ──> CATAT ──> CEK ──> IMPLEMENTASI ──> RE-AUDIT ──> CLOSURE
```

1. **AUDIT**
   * Bongkar *evidence* sesuai *scope*.
   * Gunakan Reference canonical atau *mirror* lokal yang sudah diverifikasi identik.
   * Untuk N-domain selain N-01, baca hasil **N-01 TOTAL AUDIT terlebih dahulu** agar *dependency*/*resource scope* sudah diketahui.
   * Setelah itu, bongkar/inspeksi ZIP canonical secara spesifik untuk domain tersebut.
2. **CATAT**
   * Catat seluruh *finding*, *evidence*, *ownership*, *dependency*, *classification*, dan pekerjaan yang perlu dilakukan.
   * Jangan melakukan *mutation implementation* sebelum *register audit* cukup lengkap.
3. **CEK**
   * Tentukan apakah hasil audit bisa dikerjakan **sekali jalan**.
   * Jika volume, *dependency*, risiko, atau *scope* terlalu besar, pecah menjadi `N-X-1`, `N-X-2`, `N-X-3`, dan seterusnya.
   * Pembagian hanya dibuat jika memang diperlukan, bukan administratif.
4. **IMPLEMENTASI**
   * Dikerjakan hanya setelah tahap CEK selesai.
   * Implementasikan pada `app/` / *implementation surface* BaRe.
   * Reference tetap *read-only*.
   * Ikuti *ownership* N-domain agar tidak terjadi *double mutation*.
5. **RE-AUDIT**
   * Audit kembali hasil implementasi terhadap Reference.
   * Verifikasi semua *finding* yang ditargetkan.
   * Pastikan tidak ada regresi di *scope* terkait.
6. **CLOSURE**
   * Hanya tandai `🟢` jika *exit criterion* domain benar-benar terpenuhi.
   * Jika belum, tetap `🟡`, `🔴`, `UNKNOWN`, atau `BLOCKED` sesuai *evidence*.

---

### 3.2. Alur Eksekusi Berdasarkan Skala Scope

* **Jika bisa sekali jalan:**
  ```
  AUDIT ──> CATAT ──> CEK: SEKALI JALAN ──> IMPLEMENTASI ──> RE-AUDIT ──> 🟢
  ```
* **Jika harus dipecah:**
  ```
  AUDIT ──> CATAT ──> CEK: PECAH ──> N-X-1 ──> RE-AUDIT ──> N-X-2 ──> RE-AUDIT ──> ... ──> TOTAL RE-AUDIT ──> CLOSURE
  ```

> **Aturan Tegas:** Jangan melakukan implementasi sebelum tahap CEK selesai.

---

### 3.3. Dependency Rule Lintas N

**N-01 adalah master resource/dependency audit.**

N-01 bukan berarti seluruh *resource* harus diimplementasikan sebagai pekerjaan N-01. N-01 menyediakan:
* Resource inventory
* Logical resource inventory
* Qualifier/variant
* Resource graph
* Ownership
* Orphan/unknown register
* Cross-domain mapping

**Urutan Eksekusi Sebelum Audit N-02 Sampai N-15:**

BACA N-01 TOTAL AUDIT → AMBIL FINDING SCOPE N → BONGKAR ZIP SPESIFIK → TOTAL AUDIT N

**Contoh Transfer Finding N-01 ke Domain Lain:**
* `N-01 resource` → `N-02 string`
* `N-01 resource` → `N-03 dimension`
* `N-01 resource` → `N-04 style/color/attr`
* `N-01 resource` → `N-05 manifest XML`
* `N-01 resource` → `N-08 navigation resource`

Setelah N-domain selesai, N-01 dapat ditutup melalui **closure verification** terhadap *finding* yang ditransfer kepadanya. Jangan melakukan *duplicate implementation* di N-01 hanya agar status N-01 menjadi hijau.

---

## 4. DEFINISI DEFECT DAN SPESIFIKASI TARGET

> **«Unauthorized Difference = Defect»**

*(Bukan: «Reference + bebas modifikasi selama aplikasinya terlihat mirip.»)*

### Spesifikasi Target Akhir:
* **Base Target:** Reference Swift Backup 5.1.0 (620)
* **Proses:** Reconstruction
* **Target App:** BaRe / BΛR☰
* **Target Branch:** `rewrite`
* **Tech Stack:** Java + Android Views/XML
* **Backend:** Supabase untuk kebutuhan backend yang diizinkan
* **Fitur Lisensi:** Premium gratis
* **Migrasi Data:** Tanpa migration
* **Fidelity Target:** 1:1 kecuali Authorized Deviations

---

## 5. CANONICAL ROADMAP

```
CURRENT
savie/BaRe
└── rewrite
    │
    ├── PHASE 1 — FOUNDATION
    │   └── Android / Gradle / Java / Resources / Manifest
    │
    ├── PHASE 2 — REFERENCE SKELETON
    │   └── Application / Activity / Fragment / Service / etc.
    │
    ├── PHASE 3 — UI + NAVIGATION
    │   └── XML / Layout / Theme / Menu / Dialog / Navigation
    │
    ├── PHASE 4 — CORE BEHAVIOR
    │   └── State / Permission / Storage / Account / Settings
    │
    ├── PHASE 5 — FEATURES
    │   └── Backup / Restore + seluruh feature Reference
    │
    ├── PHASE 6 — AUTHORIZED DEVIATIONS
    │   ├── BΛR☰ branding
    │   ├── Premium gratis
    │   └── Supabase backend
    │
    ├── PHASE 7 — RUNTIME
    │   └── Build ──> APK ──> Install ──> Execute
    │
    ├── PHASE 8 — PARITY
    │   └── Visual + Behavior + Feature + Runtime
    │
    └── PHASE 9 — DEVIATION AUDIT
        ├── MATCH
        ├── AUTHORIZED DEVIATION
        ├── UNKNOWN
        ├── UNAUTHORIZED DEVIATION
        └── BLOCKED
            │
            ▼
        FINAL: BΛR☰
        (Reference-equivalent Android application, only explicitly authorized deviations)
```

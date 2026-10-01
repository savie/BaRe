DEFINISI TARGET REKONSTRUKSI

Target project adalah:

«Rekonstruksi Reference Swift Backup 5.1.0 (620) menjadi BaRe/BΛR☰ dengan fidelity 1:1 terhadap Reference, kecuali perbedaan yang secara eksplisit diizinkan dalam handoff ini.»

0. REPOSITORY DAN BRANCH

Repository GitHub:

"savie/BaRe"

"BaRe Repository" (https://github.com/savie/BaRe?utm_source=chatgpt.com)

Branch utama untuk seluruh pekerjaan:

"rewrite"

Seluruh:

- source code
- perubahan
- CI
- reconstruction
- database integration
- Supabase integration
- dokumentasi project

dikerjakan pada branch:

"rewrite"

Branch "rewrite" merupakan branch utama implementation BaRe untuk reconstruction Reference.

Seluruh perubahan terhadap source project, configuration project, integration, database integration, Supabase integration, CI, reconstruction, dan dokumentasi project harus dilakukan pada branch tersebut.

Reference tetap menjadi baseline/source of truth untuk menentukan parity reconstruction.

Sumber Reference Canonical

Reference canonical yang digunakan project adalah decompile archive Swift Backup 5.1.0 (versionCode 620) yang diberikan dalam bentuk ZIP pada environment kerja lokal GPT.

Path canonical Reference:

`/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`

Archive tersebut merupakan sumber evidence utama dan bersifat read-only.

Repository `reference/`

Folder `reference/` di repository BaRe boleh digunakan sebagai mirror lokal/working copy dari Reference untuk mempercepat pekerjaan forensic, grep, diff, hash, parsing, inventory, dan audit massal, selama isinya telah diverifikasi identik dengan Reference canonical.

Aturannya:

- ZIP decompile adalah Reference canonical/source asal.
- `reference/` adalah mirror lokal/evidence cache, bukan source implementation.
- `reference/` bersifat read-only dan tidak boleh dimutasi sebagai bagian dari implementasi BaRe.
- Implementasi dan reconstruction hanya dilakukan pada `app/` atau area implementation BaRe yang relevan.
- Jika `reference/` dan ZIP canonical berbeda, ZIP canonical menjadi acuan dan mirror harus direkonsiliasi sebelum digunakan sebagai evidence.
- Jangan menganggap isi `reference/` sebagai Reference yang independen dari archive canonical.
- Verifikasi equivalence dapat dilakukan dengan hash, file inventory, atau pemeriksaan isi sesuai kebutuhan audit.

Dengan demikian, alur kerja yang digunakan adalah:

`Reference canonical (ZIP) → verifikasi/mirror lokal → contract/evidence → app/implementation`

Bukan:

`reference/ ↔ app/`

Reference tetap menjadi baseline/source of truth. Mirror lokal hanya merupakan mekanisme kerja untuk menghindari pengambilan ulang file Reference yang besar atau berjumlah banyak.

Repository "savie/BaRe" branch "rewrite" merupakan target implementation dari reconstruction tersebut.

---

## HARD SCOPE RULE — REFERENCE READ-ONLY / APP IMPLEMENTATION ONLY

**Reference adalah evidence/source of truth dan selalu read-only. Reference tidak pernah menjadi target implementasi.**

- `reference/` dan artefak decompile Reference hanya dibaca untuk evidence, inventory, mapping, dan parity verification.
- Seluruh perubahan reconstruction/implementation dilakukan pada target BaRe/BΛR☰, terutama area `app/` yang menjadi implementation surface.
- Jika suatu kontrak yang terbukti dari Reference perlu diwujudkan pada BaRe, implementasikan kontrak tersebut di `app/`; **jangan mengubah Reference agar cocok dengan app**.
- Tidak ada global replacement, synchronization, atau mutation dua arah yang menjadikan Reference ikut berubah.
- Jika evidence belum cukup menentukan bagaimana kontrak harus diterapkan di `app/`, statusnya `UNKNOWN`/`BLOCKED` dan pekerjaan berhenti pada evidence/classification; jangan membuat perubahan spekulatif.
- Setiap implementation batch wajib memverifikasi bahwa `reference/` tetap unchanged dan diff implementation terbatas pada scope target yang telah ditentukan.

Formula operasional:

`Reference (read-only evidence) → contract → BaRe/app implementation`

Bukan:

`Reference ↔ app synchronization`


---

## MASTER WORKFLOW — AUDIT → CATAT → CEK → IMPLEMENTASI → RE-AUDIT

Pola ini wajib dipahami sebelum mengerjakan N-domain mana pun.

### Urutan dasar

`AUDIT → CATAT → CEK → IMPLEMENTASI → RE-AUDIT → CLOSURE`

1. **AUDIT**
   - bongkar evidence sesuai scope;
   - gunakan Reference canonical atau mirror lokal yang sudah diverifikasi identik;
   - untuk N-domain selain N-01, baca hasil **N-01 TOTAL AUDIT terlebih dahulu** agar dependency/resource scope sudah diketahui;
   - setelah itu baru bongkar/inspeksi ZIP canonical secara spesifik untuk domain tersebut.

2. **CATAT**
   - catat seluruh finding;
   - catat evidence;
   - catat ownership;
   - catat dependency;
   - catat classification;
   - catat pekerjaan yang perlu dilakukan;
   - jangan melakukan mutation implementation sebelum register audit cukup lengkap.

3. **CEK**
   - tentukan apakah hasil audit bisa dikerjakan **sekali jalan**;
   - jika volume, dependency, risiko, atau scope terlalu besar, pecah menjadi `N-X-1`, `N-X-2`, `N-X-3`, dan seterusnya;
   - pembagian hanya dibuat jika memang diperlukan, bukan administratif.

4. **IMPLEMENTASI**
   - baru setelah tahap CEK selesai;
   - implementasikan pada `app/`/implementation surface BaRe;
   - Reference tetap read-only;
   - ikuti ownership N-domain agar tidak terjadi double mutation.

5. **RE-AUDIT**
   - audit kembali hasil implementasi terhadap Reference;
   - verifikasi semua finding yang ditargetkan;
   - pastikan tidak ada regression di scope terkait.

6. **CLOSURE**
   - hanya tandai `🟢` jika exit criterion domain benar-benar terpenuhi;
   - jika belum, tetap `🟡`, `🔴`, `UNKNOWN`, atau `BLOCKED` sesuai evidence.

### Jika bisa sekali jalan

`AUDIT → CATAT → CEK: SEKALI JALAN → IMPLEMENTASI → RE-AUDIT → 🟢`

### Jika harus dipecah

`AUDIT → CATAT → CEK: PECAH → N-X-1 → RE-AUDIT → N-X-2 → RE-AUDIT → ... → TOTAL RE-AUDIT → CLOSURE`

**Jangan implementasi sebelum tahap CEK selesai.**

### Dependency rule lintas N

**N-01 adalah master resource/dependency audit.**

N-01 bukan berarti seluruh resource harus diimplementasikan sebagai pekerjaan N-01.

N-01 menyediakan:

- resource inventory;
- logical resource inventory;
- qualifier/variant;
- resource graph;
- ownership;
- orphan/unknown register;
- cross-domain mapping.

Sebelum audit N-02 sampai N-15:

`BACA N-01 TOTAL AUDIT → AMBIL FINDING YANG MENJADI SCOPE N → BONGKAR ZIP SECARA SPESIFIK → TOTAL AUDIT N`

Temuan N-01 dapat menjadi pekerjaan N-domain lain.

Contoh:

`N-01 resource → N-02 string`

`N-01 resource → N-03 dimension`

`N-01 resource → N-04 style/color/attr`

`N-01 resource → N-05 manifest XML`

`N-01 resource → N-08 navigation resource`

Setelah N-domain selesai, N-01 dapat ditutup melalui **closure verification** terhadap finding yang ditransfer kepadanya. Jangan melakukan duplicate implementation di N-01 hanya agar status N-01 hijau.

---

1. Reference adalah baseline

Reference Swift Backup 5.1.0 (620) adalah baseline/source of truth.

Untuk setiap komponen aplikasi, kondisi Reference menjadi acuan:

- source/class structure
- package
- AndroidManifest
- Activity
- Fragment
- Service
- Receiver
- Provider
- layout XML
- drawable
- vector
- menu
- values
- styles
- themes
- resources
- navigation
- dialog
- permission
- intent
- configuration
- behavior
- feature
- backup/restore
- settings
- account
- Premium
- storage
- database
- integration
- dependency
- runtime behavior

Jangan membuat desain, behavior, struktur, atau implementasi baru apabila informasi yang diperlukan masih dapat diperoleh dari Reference.

---

2. Definisi 1:1

1:1 berarti parity terhadap Reference pada seluruh aspek yang tidak termasuk dalam daftar deviation yang diizinkan.

Setiap perbedaan antara BaRe dan Reference harus diklasifikasikan sebagai:

- AUTHORIZED DEVIATION — perbedaan yang secara eksplisit diizinkan oleh handoff.
- UNAUTHORIZED DEVIATION — perbedaan yang tidak diizinkan dan harus diperbaiki.
- UNKNOWN — belum cukup evidence untuk menentukan apakah berbeda atau sama.

Tidak boleh menganggap suatu perbedaan sebagai deviation yang diizinkan hanya berdasarkan asumsi atau convenience implementasi.

---

3. Deviation yang DIIZINKAN

Hanya perubahan berikut yang boleh membuat BaRe berbeda dari Reference:

A. Branding

Semua branding pengguna:

Swift Backup → BΛR☰ / BaRe

Termasuk:

- application name
- logo
- branding text
- halaman informasi
- dialog
- menu
- notification
- help
- dokumentasi
- branding yang terlihat pengguna

Identifier internal yang mengandung nama Swift bukan alasan untuk membiarkannya tetap berada di target app/. Setiap identifier internal app-owned harus dianalisis berdasarkan fungsi dan dependency-nya, lalu dinormalisasi ke identitas BaRe/BΛR☰ apabila merupakan residue Swift Backup.

Aturan normalisasi target app/:

- seluruh occurrence `Swift` / `swift` di target `app/` harus mencapai **0** setelah audit dan implementasi selesai;
- seluruh occurrence `Firebase` / `firebase` di target `app/` harus mencapai **0** setelah audit dan implementasi selesai;
- class, method, field, resource, XML reference, ID, key, filename, URL, callback identity, comment, dan konfigurasi app-owned yang membawa identitas Swift/Firebase harus dinormalisasi apabila memang merupakan residue target;
- rename wajib dilakukan berdasarkan ownership/dependency dan harus diikuti seluruh consumer/resource/reference yang terdampak;
- identifier dependency-owned, Reference-only, atau external protocol yang bukan app-owned tidak boleh diubah secara blind dan harus diklasifikasikan secara eksplisit.

**Jangan melakukan blind/global text replacement.**

Target static hygiene adalah:

`app/ → 0 Swift/swift + 0 Firebase/firebase`

B. Swift-specific identity

Referensi eksternal yang memang merupakan identitas Swift Backup dapat diganti dengan identitas BaRe apabila memang diperlukan:

- website
- Terms of Service
- Privacy Policy
- documentation
- help
- deep link
- product URL
- branding-related identity

Jangan melakukan global text replacement.

C. Premium

Premium BaRe diberikan GRATIS.

Perubahan yang diizinkan:

- entitlement Premium dianggap granted
- tidak membutuhkan pembayaran
- tidak membutuhkan pembelian Premium

Selain mekanisme entitlement tersebut, feature, UI, flow, dan behavior Premium tetap mengikuti Reference.

Jangan menghapus Premium hanya karena gratis.

D. Backend

BaRe menggunakan Supabase.

Supabase digunakan untuk kebutuhan backend BaRe yang memang memerlukan backend.

Firebase tidak digunakan.

Perubahan backend hanya boleh dilakukan sejauh diperlukan untuk menggantikan atau menyediakan fungsi backend yang relevan. Behavior aplikasi yang tidak berkaitan dengan backend tetap harus mengikuti Reference.

Tidak menggunakan proses migration.

Supabase Project

Project Supabase yang digunakan:

"https://fbiazqbrkwovzrirnzpb.supabase.co"

Project tersebut merupakan backend project yang ditetapkan untuk BaRe.

Jika membutuhkan backend, database, authentication, storage, atau server-side functionality, gunakan Supabase sesuai kebutuhan Reference dan requirement BaRe.

Jangan menggunakan Firebase.

Supabase Configuration

Jangan mengarang konfigurasi Supabase yang belum diketahui.

Jika membutuhkan:

- project ID
- anon/public key
- service role key
- schema
- table
- column
- relationship
- RLS
- RLS policy
- bucket
- storage policy
- authentication provider
- Edge Function
- database function
- trigger
- secret
- configuration
- environment variable

dan informasinya belum tersedia atau belum dapat diverifikasi, tandai sebagai:

UNKNOWN

Jangan membuat asumsi.

Keberadaan Project URL tidak berarti konfigurasi lainnya otomatis diketahui.

Actual Supabase state harus dibedakan dari konfigurasi atau struktur yang hanya diasumsikan dari source, dokumentasi, atau Reference.

Database

Supabase digunakan sebagai database/backend BaRe sesuai kebutuhan reconstruction.

Tidak menggunakan proses migration.

Schema, table, relationship, policy, storage, authentication, dan konfigurasi backend lainnya tidak boleh dibuat berdasarkan asumsi apabila informasi yang diperlukan masih dapat diperoleh dari actual Supabase state atau Reference.

Behavior database yang menjadi bagian dari Reference harus direkonstruksi sesuai Reference, kecuali perbedaannya termasuk Authorized Deviation backend.

Penggunaan Supabase tidak memberikan izin untuk mengubah behavior aplikasi yang tidak berkaitan dengan kebutuhan backend.

---

4. BAHASA IMPLEMENTASI

Reference menggunakan Java pada hasil rekonstruksi/decompile yang menjadi acuan project.

Untuk "rewrite":

WAJIB menggunakan Java.

Kotlin TIDAK digunakan sebagai bahasa source implementation.

Aturan:

- source implementation menggunakan ".java"
- jangan menambahkan source ".kt"
- jangan menggunakan Kotlin sebagai dependency implementation apabila tidak diperlukan oleh Reference
- UI tetap menggunakan Android Views/XML sesuai Reference
- jangan mengganti UI menjadi Jetpack Compose
- struktur package, class, method, resource, lifecycle, dan behavior mengikuti Reference
- jika Reference membutuhkan library/runtime tertentu, pertahankan hanya berdasarkan evidence dari Reference

Target:

«Reference Java → BaRe rewrite Java»

Bahasa Java adalah requirement implementation, bukan optional choice.

Perbedaan antara Reference dan rewrite tetap harus mengikuti aturan:

«BaRe = Reference + Authorized Deviations»

Perbedaan yang disebabkan oleh penggunaan Kotlin dianggap tidak diizinkan, karena rewrite diwajibkan menggunakan Java.

---

5. Aturan perubahan

Untuk setiap perbedaan:

Reference → Rewrite

harus dapat dijawab:

«“Apakah perbedaan ini termasuk deviation yang diizinkan?”»

Jika YA → "AUTHORIZED DEVIATION".

Jika TIDAK → "UNAUTHORIZED DEVIATION" dan harus diperbaiki.

Jika belum dapat dibuktikan → "UNKNOWN".

Jangan mengubah Reference menjadi requirement baru berdasarkan asumsi.

Repository branch yang menjadi target perubahan adalah:

"savie/BaRe" → "rewrite"

Backend yang menjadi target untuk kebutuhan backend adalah:

Supabase → "https://fbiazqbrkwovzrirnzpb.supabase.co"

---

6. Definisi keberhasilan

Project tidak boleh dinyatakan 1:1 hanya karena berhasil build.

Minimal harus diverifikasi:

Reference
→ inventory
→ mapping
→ reconstruction
→ build
→ runtime test
→ visual comparison
→ behavior comparison
→ feature comparison
→ deviation audit
→ verification

Status:

- "MATCH" — sesuai Reference
- "AUTHORIZED DEVIATION" — berbeda tetapi diizinkan
- "UNAUTHORIZED DEVIATION" — berbeda dan tidak diizinkan
- "UNKNOWN" — belum dapat diverifikasi
- "BLOCKED" — verifikasi/perbaikan terhambat

Build berhasil bukan bukti bahwa project telah mencapai 1:1.

Runtime berhasil bukan bukti bahwa seluruh feature telah parity.

Setiap bagian harus diverifikasi terhadap Reference sesuai aspek yang relevan.

Backend integration juga harus diverifikasi terhadap actual Supabase state apabila bagian tersebut digunakan oleh aplikasi.

---

7. Formula target

Secara sederhana:

«BaRe = Reference + Authorized Deviations»

dan:

«Unauthorized Difference = Defect»

Bukan:

«Reference + bebas modifikasi selama aplikasinya terlihat mirip.»

Target akhir adalah:

Reference Swift Backup 5.1.0 (620)
→ Reconstruction
→ BaRe/BΛR☰
→ branch "rewrite"
→ Java + Android Views/XML
→ Supabase untuk kebutuhan backend yang diizinkan
→ Premium gratis
→ tanpa migration
→ 1:1 kecuali Authorized Deviations

---

8. Canonical Roadmap
CURRENT
savie/BaRe
└── rewrite

↓

PHASE 1 — FOUNDATION
Android/Gradle/Java/Resources/Manifest
↓

PHASE 2 — REFERENCE SKELETON
Application/Activity/Fragment/Service/etc.
↓

PHASE 3 — UI + NAVIGATION
XML/Layout/Theme/Menu/Dialog/Navigation
↓

PHASE 4 — CORE BEHAVIOR
State/Permission/Storage/Account/Settings
↓

PHASE 5 — FEATURES
Backup/Restore + seluruh feature Reference
↓

PHASE 6 — AUTHORIZED DEVIATIONS
BΛR☰ branding
Premium gratis
Supabase backend
↓

PHASE 7 — RUNTIME
Build → APK → Install → Execute
↓

PHASE 8 — PARITY
Visual + Behavior + Feature + Runtime
↓

PHASE 9 — DEVIATION AUDIT
MATCH
AUTHORIZED DEVIATION
UNKNOWN
UNAUTHORIZED DEVIATION
BLOCKED
↓

FINAL
BΛR☰
Reference-equivalent Android application

only explicitly authorized deviations

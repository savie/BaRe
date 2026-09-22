# BaRe v1.0 — Product

## Tujuan

Membangun BaRe sebagai **backup & restore manager Android** yang menyediakan capability backup & restore yang luas secara gratis, berdasarkan capability dan alur produk yang dapat diamati dari Swift Backup Premium, tetapi dengan **UI/UX, domain model, architecture, implementation, storage, provider, security, dan verification milik BaRe sendiri**.

Reference memberi tahu **apa yang perlu dipertimbangkan**. Reference tidak menentukan **bagaimana BaRe harus dibangun**.

## Product Boundary

BaRe v1.0 mencakup:

1. **Apps** — discovery, detail, APK/split APK, app data, external/media data, shared libraries, permissions, special data, batch operation, install/restore, backup history.
2. **Folders** — folder setup, backup/restore, incremental, multiple backups, protection, notes/tags, sync/full restore.
3. **Messages** — SMS/MMS backup/restore dan attachment dengan batasan Android/default-SMS-app.
4. **Call Logs** — backup/restore.
5. **Wi-Fi** — saved network backup/restore sesuai API/privilege Android.
6. **Wallpapers** — backup/restore/apply.
7. **Schedules** — scheduled operation, conditions, background execution, run-now, result state.
8. **Storage** — local/internal/external/SAF dan storage switching.
9. **Remote/Cloud** — cloud/remote storage abstraction dan provider sesuai capability yang benar-benar didukung BaRe.
10. **Security** — encryption, password/key strategy, integrity, safe archive handling.
11. **Compression** — configurable compression untuk backup yang sesuai.
12. **Management** — labels, favorites, blacklist, quick actions, app configs, backup retention/protection.
13. **Diagnostics** — operation logs, diagnostics, error/skip reporting, storage/transfer checks.
14. **Import/Export** — APK/APKS dan konfigurasi yang memang diperlukan product workflow.

## Explicit v1.0 Exclusions

Hal berikut tidak otomatis menjadi scope v1.0 hanya karena dapat terlihat pada reference atau potensial secara teknis:

- provider cloud/remote yang belum memiliki implementation dan verification path nyata;
- capability Android yang tidak tersedia atau tidak dapat diverifikasi pada target platform/mode;
- feature enhancement yang tidak diperlukan untuk baseline backup/restore journey;
- optimasi performa yang belum dibutuhkan untuk correctness atau operability;
- internal/proprietary Swift Backup implementation, asset, credential, premium/license mechanism, atau architecture.

Extension tersebut dapat masuk BaRe++ setelah memiliki alasan product, dependency yang jelas, dan verification path.

## Whole-Product UX Baseline

Tahap awal implementation membentuk **UX/UI seluruh product**, bukan menyelesaikan satu capability secara end-to-end sebelum capability lain mulai.

Seluruh area product harus memiliki bentuk UX yang dapat dinavigasi dan dipahami, termasuk screen, navigation, selection, configuration, confirmation, progress, result, history, dan state utama seperti loading, empty, unavailable/limited, blocked, failed, partial, dan success.

UX baseline boleh menggunakan mock/static state atau placeholder behavior selama fungsi backend belum tersedia. Placeholder tidak boleh diperlakukan sebagai implementation atau verification.

Target area UX mengikuti Product Boundary dan reference yang relevan:

`First Run → Home → Apps → Folders → Messages → Call Logs → Wi-Fi → Wallpapers → Schedules → Storage → Remote/Cloud → Management → Diagnostics → Settings → Import/Export`

UX/visual identity BaRe dibuat sendiri. Reference digunakan untuk memahami information architecture, workflow, dan observable behavior; bukan untuk menyalin proprietary implementation atau asset.

## Core User Journeys

### Backup

`Discover → Select → Configure → Authorize → Execute → Store → Verify → History`

### Restore

`Select Backup → Inspect → Choose Parts/Options → Validate → Prepare → Restore → Verify → Result`

### Folder

`Create Setup → Select Source → Configure Strategy → Backup → Incremental/Multiple Versions → Restore/Sync`

### Schedule

`Create Schedule → Select Operation → Set Conditions → Enable → Background Run → Result/Diagnostics`

### Cloud

`Connect Provider → Prepare Storage → Upload/Download/Sync → Verify → Maintain Metadata`

### First Run

`Intro → Storage → Permissions/Privilege → Account (optional where applicable) → Ready`

## Execution Modes

`NON_ROOT`, `ADB`, `SHIZUKU`, `ROOT`.

Execution mode adalah **mechanism/capability source**, bukan domain model. Satu product operation harus tetap memiliki semantic yang sama; availability dan fidelity ditentukan oleh capability yang tersedia pada mode tersebut.

## Product Rules

- BaRe menyediakan capability target tanpa menjadikan pembelian Swift Backup sebagai dependency atau requirement.
- Reference digunakan hanya sejauh diperbolehkan oleh hukum, regulasi, license, dan terms yang berlaku.
- Source code, decompiled implementation, proprietary asset, credential, premium/license mechanism, dan implementation proprietary Swift Backup bukan source implementation BaRe.
- Capability yang tidak tersedia pada device/mode harus dinyatakan sebagai unavailable/limited, bukan dipalsukan sebagai success.
- Backup dan restore harus memiliki hasil yang jelas per operation/part.
- `SUCCESS` tidak otomatis berarti `VERIFIED`.
- Restore yang berpotensi destructive harus eksplisit dan dapat dipahami user.
- Archive, path, package identity, encryption, integrity, dan storage harus divalidasi sebelum mutation.
- Interrupted operation harus meninggalkan state yang dapat didiagnosis dan, bila aman, dilanjutkan/recover.
- Reference behavior menjadi target observasi; keputusan desain BaRe boleh berbeda selama product capability dan semantic yang ditargetkan tetap tercapai.

## Product Acceptance Criteria

Capability hanya boleh dinyatakan **supported** bila seluruh chain berikut tersedia dan dapat dibuktikan:

`Defined Scope → User Journey → UX State → Capability Resolution → Implementation → Runtime Test → Evidence`

Acceptance minimum:

- happy path berjalan pada target device/mode yang dinyatakan;
- unavailable/limited/blocked condition menghasilkan state yang benar dan tidak dipalsukan sebagai success;
- failure/partial/interruption memiliki result dan diagnostics yang dapat ditelusuri;
- operation yang memutasi data melakukan validation dan confirmation yang diperlukan sebelum mutation;
- hasil penting dapat diverifikasi terhadap state/artifact yang diharapkan;
- evidence dicatat sebelum capability dianggap verified.

## v1.0 vs Later

**Target v1.0:** capability inti dan end-to-end journey yang membentuk product baseline, dengan dukungan platform/mode/provider yang benar-benar dapat diverifikasi.

**Later / BaRe++:** extension yang tidak diperlukan untuk product baseline, optimasi, provider tambahan, UX enhancement, dan capability baru.

Perubahan scope harus mempertahankan alasan product, dependency, dan verification path. Fitur tidak masuk scope hanya karena tersedia pada reference.

## Definition of Product Completion

BaRe v1.0 tidak dianggap selesai hanya karena semua menu/screen/class sudah ada. Completion membutuhkan:

`Capability → Journey → Implementation → Runtime Test → Verification Evidence`

untuk setiap capability yang dinyatakan supported.

## Status

**PRODUCT BASELINE — RECONCILED / WHOLE-PRODUCT UX FIRST / EVIDENCE-BASED COMPLETION**
 
## Password Lifecycle Boundary

BaRe menggunakan dua password authority yang memiliki lifecycle berbeda.

- **Recovery password** adalah authority untuk BaRe ID / Local Account identity recovery, termasuk `bare-recovery.bare` export dan import.
- **Advanced password** adalah authority untuk Advanced backup encryption dan lifecycle backup yang memilih Advanced encryption.
- Kedua password tidak saling menjadi prerequisite. Recovery tidak boleh bergantung pada Advanced password, dan Advanced backup tidak boleh menggunakan Recovery password sebagai encryption authority.
- Standard backup encryption tidak memerlukan Advanced password dan tidak mengubah Recovery password lifecycle.
- Account/cloud authentication lifecycle tetap terpisah dari kedua password tersebut.
- Recovery password dan Advanced password tidak dipersist sebagai plaintext; masing-masing mengikuti verifier/password lifecycle yang berlaku.

Canonical boundary:

Advanced password → Advanced backup encryption / backup lifecycle

Recovery password → BaRe ID / Local Account identity → `bare-recovery.bare` Import/Export

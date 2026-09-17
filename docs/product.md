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

## v1.0 vs Later

**Target v1.0:** capability inti dan end-to-end journey yang membentuk product baseline, dengan dukungan platform/mode/provider yang benar-benar dapat diverifikasi.

**Later / BaRe++:** extension yang tidak diperlukan untuk product baseline, optimasi, provider tambahan, UX enhancement, dan capability baru.

Jangan memasukkan fitur hanya karena terlihat menarik. Setiap tambahan harus punya alasan product dan verification path.

## Definition of Product Completion

BaRe v1.0 tidak dianggap selesai hanya karena semua menu/screen/class sudah ada. Completion membutuhkan:

`Capability → Journey → Implementation → Runtime Test → Verification Evidence`

untuk setiap capability yang dinyatakan supported.

## Status

**PRODUCT BASELINE — DEFINED FROM REFERENCE / WHOLE-PRODUCT UX FIRST**

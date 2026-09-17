# BaRe v1.0 — Capability Matrix

## Tujuan

Matrix ini menurunkan capability BaRe v1.0 dari `PRODUCT.md`, `ARCHITECTURE.md`, dan observable behavior pada `REFERENCE.md`, dengan lesson engineering dari bootstrap BaRe sebagai bahan evaluasi.

Matrix ini adalah **capability map**, bukan backlog berurutan dan bukan kewajiban membuat file/folder contract terpisah.

## Matrix

| ID | Capability | Scope | Capability Source | Constraint / Partial State | Verification Path | Dependency |
|---|---|---|---|---|---|---|
| CAP-01 | App Discovery | Discover installed apps, package identity, metadata, APK/split references | Android APIs; privileged provider bila diperlukan | visibility/package/API differences | device discovery vs expected package state | Foundation |
| CAP-02 | APK Artifact | Collect base APK/splits, create BaRe artifact, metadata, integrity | Android API/provider | split availability, readable source | artifact parse + hash/integrity verification | Storage + Archive |
| CAP-03 | App Data Access | Collect private application data | NON_ROOT/ADB/SHIZUKU/ROOT sesuai capability | unavailable/limited berdasarkan mode/device/policy | per-component runtime verification | Capability resolution + staging |
| CAP-04 | App Restore | Validate and restore APK/data/parts | Android installer + provider | signature/version/install privilege/data access | pre/post restore validation | Artifact + target capability |
| CAP-05 | Folder Backup/Restore | Filesystem backup, restore, incremental/base chain | Android filesystem/SAF/provider | path, permission, special file, storage limits | archive/tree comparison + restore verification | Storage + Archive |
| CAP-06 | Messages | SMS/MMS + attachments | Android APIs + required role/permission | default SMS role, permission, Android/RCS limits | controlled device backup/restore | Permissions + Storage |
| CAP-07 | Call Logs | Backup/restore call logs | Android APIs + permission | permission/API restrictions | source/result comparison | Permissions + Storage |
| CAP-08 | Wi-Fi | Saved network backup/restore | Android APIs + privileged mechanism | Android version/device restrictions; manual fallback where applicable | device-specific runtime verification | Capability resolution |
| CAP-09 | Wallpapers | Read, backup, restore/apply wallpaper | Android APIs/provider | launcher/platform compatibility | before/after asset/state verification | Storage |
| CAP-10 | Storage | Local/internal, external/SAF, switching, space checks | Android filesystem + SAF | permission, removable media, filesystem limits | read/write/switch/space tests | Foundation |
| CAP-11 | Remote/Cloud Storage | Provider abstraction, upload/download/sync | provider implementations | account/network/provider-specific limitations | provider contract + transfer integrity verification | Storage + Archive + Security |
| CAP-12 | Archive Security | Versioned manifest, integrity, encryption/key lifecycle, safe paths | BaRe implementation | corruption, wrong key/password, unsafe path, interrupted write | negative tests + cryptographic/integrity verification | Archive |
| CAP-13 | Compression | Configurable archive compression | BaRe archive layer | format/level/resource constraints | round-trip + integrity/size verification | Archive |
| CAP-14 | Scheduling | Schedule operations, conditions, background execution, run-now, result state | Android scheduling/runtime | battery/charging/network/permission/background restrictions | controlled scheduled runs + persisted result state | Application operation model |
| CAP-15 | Management | labels, favorites, blacklist, quick actions, app configs, retention/protection | BaRe persistence/domain | consistency across operation/history | persistence + behavior tests | Domain + Persistence |
| CAP-16 | Diagnostics | operation logs, error/skip reporting, storage/transfer diagnostics | BaRe diagnostics + platform logs | sensitive data handling, partial evidence | failure injection + diagnostic evidence | All execution paths |
| CAP-17 | Import/Export | APK/APKS and required configuration workflows | Android storage/SAF | package validation, compatibility | import/export round-trip | Storage + Artifact |

## Capability State

Capability availability harus dapat dibedakan dari execution result.

Minimum semantic:

`AVAILABLE · UNAVAILABLE · LIMITED · BLOCKED · SKIPPED · FAILED · SUCCESS · VERIFIED`

Contoh: `App APK = SUCCESS`, `App Data = UNAVAILABLE` tidak boleh dipadatkan menjadi full-backup success.

### Implementation / Verification State

Availability dan verification bukan pengganti status implementation. Untuk tracking engineering, gunakan state berikut bila diperlukan:

`UX_SHELL · PARTIAL · IMPLEMENTED · RUNTIME_TESTED · VERIFIED`

Interpretasi:

- `UX_SHELL` — surface UX ada, behavior masih mock/static/placeholder.
- `PARTIAL` — sebagian implementation nyata sudah ada, tetapi scope capability belum lengkap.
- `IMPLEMENTED` — implementation capability sudah ada sesuai scope yang dinyatakan, tetapi evidence runtime belum cukup untuk verification.
- `RUNTIME_TESTED` — runtime test sudah dijalankan dan observed result tersedia, tetapi verification conclusion/evidence belum lengkap.
- `VERIFIED` — acceptance criteria dan evidence yang diperlukan terpenuhi untuk target environment yang dinyatakan.

**Current baseline:** repository memiliki whole-product UX shell awal; backend capability implementation belum dinyatakan implemented/verified hanya dari keberadaan menu atau screen. Status per capability harus diperbarui berdasarkan actual implementation dan evidence.

## Evidence Model

Setiap capability yang menuju `RUNTIME_TESTED` atau `VERIFIED` harus memiliki evidence yang dapat ditelusuri minimal:

`Capability ID → Target Environment → Preconditions → Test/Input → Expected → Observed → Result → Evidence Reference`

Evidence reference dapat berupa test output, runtime log, artifact/hash, screenshot bila relevan, device observation, atau record lain yang benar-benar mendukung claim. Jangan menggunakan reference audit sebagai pengganti runtime evidence.

## Platform vs Implementation Limitation

Constraint harus dibaca dengan dua sumber limitation yang berbeda:

- **Platform limitation** — Android version/API, permission, role, device policy, hardware, storage, network, atau privilege yang memang membatasi capability.
- **Implementation limitation** — BaRe belum memiliki provider, logic, integration, atau verification yang diperlukan.

Keduanya tidak boleh disamakan. `UNAVAILABLE` karena platform tidak sama dengan `NOT_IMPLEMENTED` pada BaRe.

## Execution Source

Resolver memilih atau memvalidasi capability source berdasarkan operation requirement. Tidak boleh menganggap `ROOT` atau `ADB` otomatis membuat semua capability tersedia.

Execution mode (`NON_ROOT`, `ADB`, `SHIZUKU`, `ROOT`) adalah mechanism/source, bukan semantic operation.

## Failure Safety

Operation harus fail closed pada validation/security boundary, mempertahankan partial/error state, dan membersihkan staging yang tidak valid.

`SUCCESS` adalah execution result. `VERIFIED` membutuhkan evidence yang sesuai dengan capability.

## Bootstrap Lessons Incorporated

Bootstrap menunjukkan nilai dari provider isolation, capability resolution, staging archive, integrity verification, timeout/cleanup, dan per-component result. Namun execution mode tidak boleh bocor menjadi semantic domain operation.

## Work Selection Model

Capability **tidak memiliki urutan implementasi tetap**.

UX/UI seluruh product dibentuk terlebih dahulu sebagai shell menyeluruh. Setelah itu pekerjaan implementation dipilih dinamis berdasarkan keadaan aktual:

`Safety/Security → Blocker → Prerequisite → Correctness → Critical Dependency → Verification Gap → Maintainability → Optimization`

Pada setiap iteration:

`Inspect Actual State → Select Highest-Value Work → Implement/Refine → Test → Verify → Update Understanding`

Pekerjaan dapat berpindah antar area. Shared foundation boleh diperbaiki ketika kebutuhan capability nyata menemukannya. Capability yang belum membutuhkan implementation tidak harus dipaksa dikerjakan hanya karena posisinya ada di matrix.

### Capability → Journey → Evidence

Setiap capability yang dinyatakan supported harus dapat dipetakan ke minimal satu user journey dan evidence verification. Mapping dapat dicatat pada test/evidence record tanpa membuat file contract baru.

Bentuk canonical:

`CAP-ID → Journey/Operation → Implementation State → Runtime Test → Evidence → Verification State`

### Reference Validation Paths

Jalur seperti:

- `App APK Backup → Artifact → Verify`
- `Folder Backup → Archive → Verify`
- `App Restore APK → Validate → Install → Verify`
- `App Data Backup`

adalah **contoh validation path**, bukan urutan pekerjaan dan bukan daftar slice yang harus diselesaikan satu per satu.

## Status

**CAPABILITY MAP — RECONCILED / EVIDENCE-BASED IMPLEMENTATION & VERIFICATION MODEL**

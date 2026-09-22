# BaRe v1.0 — Architecture

## Tujuan

Menetapkan bentuk sistem BaRe sebelum dan selama implementation. Architecture harus mendukung product scope dan user journeys tanpa mengikat BaRe pada implementation Swift Backup.

## Build Shape

BaRe dibangun dengan **whole-product UX-first**. Seluruh UX/UI shell dibentuk lebih dahulu agar product memiliki bentuk menyeluruh. Fungsi, behavior, provider, dan infrastructure kemudian diisi serta dirapikan per area berdasarkan dependency dan evidence aktual.

Ini bukan urutan capability. Area dapat dikerjakan bergantian dan shared foundation dapat direvisi ketika kebutuhan nyata ditemukan.

```text
Whole-product UX/UI
        ↓
Shared System Foundation
        ↓
Capability / Provider Implementation
        ↓
Integration & Runtime Verification
        ↓
Refinement across areas
```

## System Shape

```text
UI / UX Shell
 ↓
Presentation / Application / Use Cases
 ↓
Domain
 ↓
Capability Providers
 ↓
Android / Privileged Runtime / Storage / Network
```

Cross-cutting:

```text
Security · Integrity · Diagnostics · Persistence · Scheduling · Observability
```

> Implementation tidak perlu membuat folder/file contract terpisah hanya demi mengikuti diagram. Capability semantics cukup diturunkan dari Product, Architecture, dan Capability Matrix; struktur code mengikuti kebutuhan implementasi nyata.

## Boundary

### UI / UX Shell

Seluruh product surface dibentuk mencakup navigation, screen, user input, selection, configuration, confirmation, progress, result, history, dan state utama.

UX shell boleh menggunakan mock/static state atau placeholder behavior sebelum backend tersedia. Placeholder tidak dianggap implementation atau verification.

UI tidak boleh mengetahui detail provider Root/ADB/Shizuku/cloud secara langsung.

### Application

Menjalankan user journey:

- backup;
- restore;
- folder backup/restore;
- scheduled operation;
- cloud sync;
- import/export;
- diagnostics.

Application layer mengorkestrasi operation, bukan menyimpan detail Android/provider implementation.

### Domain

Model utama harus independen dari execution mode:

- Backup / Restore operation;
- Backup Plan / Restore Plan;
- Backup Artifact;
- Package/App;
- Folder;
- Message / Call Log / Wi-Fi / Wallpaper;
- Storage target;
- Capability;
- Provider;
- Schedule;
- Operation Result;
- Verification Result;
- Error / Skip / Blocked state.

### Capability

Capability mendefinisikan **apa yang dapat dilakukan** dan constraint-nya. Detail implementasi boleh berada langsung pada area feature/foundation yang membutuhkannya; tidak ada kewajiban membuat lapisan contract sebagai folder/file terpisah jika belum memberi nilai nyata.

Contoh kategori:

- package discovery/install;
- app APK/data access;
- external/media access;
- messages/call logs;
- Wi-Fi;
- wallpaper;
- folder filesystem;
- storage;
- cloud/remote transfer;
- scheduling;
- encryption/compression;
- diagnostics.

### Provider

Provider merealisasikan capability berdasarkan mechanism/environment, termasuk:

`NON_ROOT`, `ADB`, `SHIZUKU`, `ROOT`, Android APIs, SAF, local storage, dan remote/cloud service.

Provider boleh berbeda implementasinya, tetapi domain operation tidak berubah.

## Dependency Rules

Dependency mengikuti arah:

`UI → Application → Domain → Capability Provider → Platform/Infrastructure`

- UI tidak memanggil provider/platform secara langsung.
- Domain tidak bergantung pada Android framework, execution mode, atau provider implementation.
- Application bergantung pada capability/domain abstraction, bukan detail mechanism.
- Provider boleh bergantung pada platform API dan infrastructure yang diperlukan.
- Cross-cutting concern tidak boleh menjadi jalan pintas untuk melewati boundary domain/provider.
- Dependency tambahan boleh dibuat bila kebutuhan nyata membuktikannya, tetapi harus mempertahankan semantic domain yang independen dari mechanism.

## Shared Foundation

Fondasi bersama yang perlu tersedia untuk seluruh product meliputi:

- domain dan operation model;
- result/error/partial/blocked semantics;
- capability resolution;
- provider boundary;
- storage abstraction;
- archive/artifact format;
- manifest/metadata;
- integrity verification;
- staging dan atomic commit;
- security boundary;
- persistence;
- operation lifecycle, timeout, cancellation, recovery;
- diagnostics dan observability;
- test/verification infrastructure.

Fondasi dibangun sebagai **shared substrate**, bukan sebagai feature slice yang harus diselesaikan end-to-end sebelum area lain boleh dikerjakan.

## Canonical Lifecycle & State

Operation memiliki lifecycle minimum:

`PLANNED → VALIDATING → READY → RUNNING → {SUCCEEDED | FAILED | PARTIAL | BLOCKED | SKIPPED | CANCELLED}`

Verification adalah state/evidence terpisah dari execution result:

`UNVERIFIED → VERIFIED`.

Artifact minimum memiliki lifecycle yang dapat membedakan staging dari committed state:

`STAGING → COMMITTED → VERIFIED`

atau terminal invalid/failed state bila validation atau commit gagal.

State harus persisted sejauh diperlukan agar interruption, restart, diagnostics, dan recovery tidak kehilangan truth penting. State transition harus konsisten dan tidak boleh mengubah failure/partial menjadi success tanpa evidence.

## Persistence Boundary

Persistence bertanggung jawab menyimpan state yang diperlukan untuk continuity product, termasuk metadata artifact, operation history/result, configuration, schedule state, dan diagnostics yang memang diperlukan.

Domain model tidak mengetahui detail database/file format. Application menentukan kebutuhan persistence; infrastructure menyediakan implementation.

Data yang dapat direkonstruksi dari artifact tidak boleh dibuat sebagai duplicate source of truth tanpa alasan. Metadata yang menjadi authoritative harus memiliki ownership yang jelas.

## Backup Architecture

```text
Discover
→ Resolve Capability
→ Build Plan
→ Validate
→ Collect
→ Build Manifest/Metadata
→ Archive
→ Compress/Encrypt
→ Integrity
→ Commit Atomically
→ Persist Metadata
→ Verify
```

Failure, skip, blocked, partial result, dan verification state harus dipertahankan secara eksplisit.

## Restore Architecture

```text
Select Artifact
→ Parse/Validate
→ Verify Integrity/Auth
→ Resolve Target
→ Resolve Capability
→ Build Restore Plan
→ Confirm Destructive Actions
→ Stage
→ Mutate
→ Post-restore Validation
→ Commit/Recover
→ Verify
→ Result
```

Tidak ada provider yang boleh melewati validation hanya karena memiliki privilege lebih tinggi.

## Recovery & Idempotency

Operation yang dapat diulang harus menentukan behavior terhadap retry, duplicate execution, stale staging, dan interrupted state.

Minimum rule:

- staging tidak dianggap committed;
- retry tidak boleh menganggap partial mutation sebagai full success;
- recovery harus memeriksa state aktual sebelum melanjutkan mutation;
- cleanup hanya boleh menghapus state yang aman untuk dihapus;
- operation yang tidak aman untuk diulang harus diblokir atau meminta explicit user action;
- verification dilakukan terhadap hasil aktual, bukan hanya terhadap langkah yang telah dieksekusi.

## Storage

Storage harus melalui abstraction yang membedakan:

- local/internal;
- external/SAF;
- remote/cloud.

Backup artifact harus memiliki identity, metadata, integrity state, dan lifecycle yang dapat dikelola tanpa mengikat domain ke filesystem/provider tertentu.

## Archive

Format backup BaRe harus versioned dan memiliki minimal:

- format/version;
- product metadata;
- target identity;
- backup parts;
- manifest;
- metadata;
- integrity information;
- compression information;
- encryption information bila aktif;
- relationship ke base backup bila incremental.

Path traversal, unsafe links, special files, invalid package identity, corrupt archive, dan write di luar target harus ditolak sebelum mutation.

### Archive/Data Migration

Perubahan format artifact atau persisted state harus versioned dan memiliki migration strategy yang eksplisit.

- Reader harus mengenali version yang didukung.
- Format/state yang tidak didukung harus ditolak secara jelas, bukan diparse secara spekulatif.
- Migration harus menjaga integrity dan metadata yang diperlukan.
- Migration yang gagal tidak boleh merusak source artifact/state.
- Compatibility policy ditentukan per version berdasarkan kebutuhan nyata; tidak mengklaim backward/forward compatibility tanpa verification.

## Security

Security menjadi boundary, bukan fitur tambahan di akhir:

- password/key lifecycle;
- encrypted archive;
- authenticated/integrity-protected data;
- secure temporary files;
- safe path handling;
- least privilege;
- explicit destructive confirmation;
- sensitive diagnostics handling.

Implementation BaRe harus independen dan tidak menjadikan source code, decompiled implementation, proprietary asset, credential, atau premium/license mechanism Swift Backup sebagai dependency atau source implementation. Setiap teknik analisis reference harus tetap berada dalam batas hukum, regulasi, license, dan terms yang berlaku.

## Scheduling & Runtime

Scheduled operation harus menggunakan operation/use-case yang sama dengan manual operation. Scheduler hanya menentukan **kapan** operation dijalankan.

Background execution harus memiliki state `queued/running/succeeded/failed/blocked/skipped/cancelled` atau semantic equivalent yang jelas.

Persisted schedule state harus dapat membedakan konfigurasi schedule, execution instance, dan hasil execution.

## Verification

Setiap supported capability harus dapat ditelusuri:

`Reference → Product Requirement → UX → Architecture → Implementation → Runtime Test → Evidence`

Evidence harus mengidentifikasi setidaknya capability, target environment/device bila relevan, kondisi pengujian, expected result, observed result, dan status verification.

Architecture tidak dianggap verified hanya karena code dapat dikompilasi.

## Independence Rule

Swift Backup adalah **functional/workflow reference**.

BaRe tidak menggunakan source code, internal implementation, proprietary asset, credential, license/premium mechanism, atau architecture reference sebagai dependency. BaRe membangun model dan implementation sendiri berdasarkan behavior/capability yang dapat diamati dan diverifikasi, dengan tetap mematuhi batas hukum dan license/terms yang berlaku.

## Status

**ARCHITECTURE BASELINE — RECONCILED / UX-FIRST WHOLE-PRODUCT / EXPLICIT LIFECYCLE & BOUNDARIES**

## Local Account Recovery Security Boundary

Portable Local Account recovery menggunakan password authority yang berbeda dari Advanced encryption password.

AdvancedPasswordStore
  └── Advanced encryption strategy / backup encryption

RecoveryPasswordStore
  └── Local Account identity recovery
        ├── Export → BREC artifact
        └── Import ← BREC artifact

Kedua password memiliki lifecycle, verifier, dan ownership yang berbeda. Recovery flow tidak boleh bergantung pada konfigurasi Advanced hanya untuk membuat atau membuka bare-recovery.bare.

Recovery password disimpan hanya sebagai salted PBKDF2 verifier. Password plaintext tidak dipersist. Artifact tetap menggunakan authenticated encryption dan portable recovery master key seperti contract BREC yang berlaku.

# Status Implementasi Apps — BaRe rewrite

Tanggal: 2026-09-28

## Basis Evidence

Reference yang digunakan:
- `reference/reference_apps_audit.md`
- branch: `v1.0/rebaseline`
- Audit Checkpoint 40: static evidence-based Apps2 architecture baseline tersedia.
- Runtime Reference dan runtime BaRe belum terverifikasi.

## Perubahan pada rewrite

### App List projection
`AppListActivity` sekarang menerapkan pipeline:

```
installed inventory
    ↓
AppFilterEngine
    ↓
query projection
    ↓
AppSortState
    ↓
RecyclerView
```

Search tidak lagi hanya `label.contains()` / `packageName.contains()`; query ditokenisasi dan dicocokkan terhadap nama, package/appId, serta labels yang tersedia pada model.

### Filter persistence
`AppFilterStore` sekarang mempertahankan:
- system filter
- app type
- favorites
- backup status
- cloud sync status
- install status
- enabled status
- backup age

### Sort
Sort mode tetap mengikuti tujuh mode yang teridentifikasi pada audit:
- Name
- InstallDate
- UpdateDate
- BackupDate
- AppSize
- BackupSize
- DateUsed

`DateUsed` sekarang menggunakan `UsageStatsManager`; jika usage data tidak tersedia, mode kembali ke Name sesuai boundary capability yang ditemukan pada audit.

### Batch entry
FAB Apps sekarang membuka `AppsBatchActivity` secara langsung, bukan popup action placeholder.

### Capability declaration
Manifest menambahkan `android.permission.PACKAGE_USAGE_STATS` untuk capability DateUsed.

## Verification

- Source changes committed to `rewrite`: YES.
- Post-change file inspection: PASS.
- GitHub CI workflow/status for latest commit: NONE OBSERVED.
- Local Gradle build: NOT RUN / environment tidak memiliki working clone yang dapat digunakan pada sesi ini.
- Runtime test: NOT RUN.
- Reference visual comparison: NOT RUN.
- Reference behavioral parity: UNVERIFIED.


## Continued implementation — post-baseline

- Static Apps2 architecture baseline recorded at `docs/architecture/apps2-static-baseline.md`.
- Persistent favorite state implemented and loaded during local discovery.
- Favorite item action implemented in the Apps list.
- Local system-app visibility now reaches the discovery boundary instead of being forced to all-app inventory.
- Cloud inventory domain contract implemented:
  - `CloudInventoryProvider`
  - explicit `Loading/Success/Empty/DriveNotConnected/NetworkError/CloudError` states
  - `CloudInventoryMapper` from cloud backup metadata to `CanonicalApp`
  - mapper unit test added.
- Cloud transport/backend remains BLOCKED/UNKNOWN because rewrite currently has no verified cloud transport dependency or endpoint contract. No fake remote implementation was introduced.

## Known remaining gaps

- Cloud Apps repository/inventory masih belum diimplementasikan; current cloud section belum dapat dianggap Reference-parity.
- Exact Reference filter predicate collaborator masih belum seluruhnya direkonstruksi.
- App item exact swipe/overflow action graph masih belum tertutup.
- Detail/backup/restore execution belum parity Reference.
- FastScroller masih implementation-level, belum visual/runtime compared.
- Architecture freeze belum dilakukan.


## Update — Apps Detail / Backup History Slice

- Reference basis: `reference/reference_apps_audit.md` on `v1.0/rebaseline`.
- `rewrite` now carries backup history identity through `LocalBackupRecord.backupId`.
- `RestoreRequest.localBackupId` selects the concrete local backup record.
- `AppBackupManager.artifact(...)` resolves the selected backup identity instead of implicitly using latest when an ID is supplied.
- `DetailActivity` renders local backup history and restores the selected/latest record identity.
- Backup execution now checks `AppsCapability` for every requested `AppPart` before creating artifacts.
- `AppPart.SHARED_LIBS` is now represented in the backup source routing boundary, although runtime/source accessibility remains unverified.
- Cloud transport remains intentionally unimplemented/blocked because no verified backend contract was found in the rewrite evidence.
- Delete/protect/note persistence and full Reference detail action parity remain incomplete; the UI explicitly avoids destructive deletion without a confirmed backup identity.

### Verification state

- GitHub combined status for latest commits: no reported status checks.
- GitHub workflow runs for latest commits: none reported.
- Local build/test: BLOCKED in this session because the environment cannot resolve GitHub for cloning and no local Gradle checkout is available.
- Runtime Reference/Apps2 parity: UNVERIFIED.


## Update — Reference-supported Apps surface implementation pass

Implemented in `rewrite`:
- Reference item-action matrix and persisted swipe defaults;
- expanded filter predicates including Favorites/NotFavorites, Miscellaneous, labels;
- persistent label associations and selected-label filtering;
- batch action surface and quick-action mode routing;
- custom configuration model, settings persistence, and execution bridge;
- backup limits and local deletion with protected-backup handling;
- AppInfo and package-visibility diagnostics;
- multiple-backup and restore-special-data detail surfaces;
- PackageInstaller wait/source verification;
- privileged archive staging and restore copy boundary;
- ZIP/TAR/7-Zip archive detection/extraction with explicit SBA unsupported boundary;
- task-state persistence for UI recovery.

Reference reconciliation artifact: `docs/engineering/apps-reference-implementation-reconciliation.md`.

Remaining evidence-bound boundaries are explicitly blocked/unknown there; no cloud backend or SBA implementation is invented.


## Branding / Handoff Guardrail

- Product-facing branding on `rewrite` must use **BΛR☰**; legacy product naming is not allowed in UI text, resource identifiers, product documentation, filenames, or product-facing classes.
- The `reference/` tree is audit evidence and may retain original decompiled package/class/resource names so the evidence remains traceable to the Reference APK.
- Do not create an artificial engineering handoff merely because work crosses capability boundaries.
- A real handoff is allowed only when an external specialist, different authority, unavailable capability, out-of-scope decision, or required external dependency makes it necessary.
- When a real handoff is required, record: current state, evidence, question, blocker, impact, required decision, and expected output.

## Apps task update — split/shared-library artifact path

- Reference evidence re-checked from APK/JADX:
  - ji retains the full splitSourceDirs collection.
  - g00.v(packageName) derives shared-library APK paths from ApplicationInfo.sharedLibraryFiles and resolves their package metadata.
  - Reference uses a PackageInstaller session that accepts a list of APK files, rather than a single APK-only write path.
- Rewrite changes:
  - AppBackupManager now stages the complete SPLITS and SHARED_LIBS collections into distinct archive payload directories.
  - AppRestoreManager now routes SPLITS and SHARED_LIBS archives into APK-set restore.
  - InstallerSourceProxy now has multi-APK installation paths, split version/package filtering, and shared-library package installation.
  - New task messages are resource-backed through strings.xml; no new user-facing hardcoded text was introduced.
- Verification:
  - Static source reconciliation: UPDATED.
  - Runtime PackageInstaller behavior: UNVERIFIED.
  - Gradle/build verification: still BLOCKED in this environment.
- Handoff:
  - No external handoff required. Current work remains within the authorized Apps implementation scope.

- Follow-up verification hardening: InstallerSourceProxy now verifies expected versionCode and expected split names after PackageInstaller commit; split restore retries the APK-set session once on failure. Runtime behavior remains UNVERIFIED.

## Apps task update — special-data restore boundary

- Reference evidence re-checked from JADX:
  - restore_special_permissions defaults true;
  - restore_ssaids defaults false;
  - special payload contains permissionStatesCsv, ssaid, ntfAccessComponent, accessibilityComponent, notificationPolicyXml;
  - notification-policy restore uses the notification system service and validates package-scoped XML/payload size before applyRestore;
  - notification access and accessibility are restored through privileged settings operations;
  - SSAID is delegated to a dedicated helper in Reference.
- Rewrite changes:
  - special-data payload now has an explicit version field;
  - local metadata persists special-data fields;
  - backup captures permission-state, notification-access, accessibility, and notification-policy metadata where the platform exposes them;
  - notification-policy restore now uses the Android notification service reflection boundary with Reference-aligned payload/package validation;
  - special permission restore is wired into AppRestoreManager;
  - SSAID sekarang sudah mempunyai boundary capture/restore dan validasi 16-hex.
- Write SSAID sekarang menggunakan temporary same-file replacement lalu rename, sehingga tidak lagi melakukan direct overwrite terhadap file aktif.
- Implementasi ini tetap **belum 1:1 Reference** karena Reference menggunakan state-object/SettingsState-style mutation dan commit/reload semantics yang belum direproduksi.
- Runtime effect dan kebutuhan reboot tetap UNVERIFIED; tidak ada fake success yang diklaim.
- Verification:
  - Static Reference reconciliation: UPDATED.
  - Source syntax/brace sanity: PASSED for touched Kotlin files.
  - Runtime hidden-system API behavior: UNVERIFIED.
  - Gradle/build verification: BLOCKED in this environment.
- Handoff:
  - No external handoff required; SSAID is recorded as a verification/implementation gap, not handed off.


## Update — Apps metadata / multiple-backup consistency pass

- AppBackupManager and LocalMetadataStore now use the same notificationPolicyXmlB64 metadata key and UTF-8 Base64 encoding, removing the previously observed writer/reader mismatch.
- BackupCatalog.create() now avoids timestamp directory collisions.
- BackupCatalog.delete() now provides a concrete local backup deletion primitive.
- BackupRequest.multipleBackupStrategy is now executed by the local backup path:
  - KEEP_ALL retains all records;
  - REPLACE_LATEST removes the previous record after the new backup is created;
  - LIMIT retains the requested number of newest records.
- Build/test execution remains intentionally deferred.
- Runtime parity remains UNVERIFIED.


## Update — Apps correctness follow-up

- AppListActivity filter/sort menu index mapping telah diperbaiki:
  - miscellaneous/backup-age tetap pada indeks 17–26;
  - sort Name sampai DateUsed pada 27–33;
  - label filter pada 34.
- AppRestoreManager sekarang mengambil LocalMetadata berdasarkan localBackupId saat restore backup tertentu, sehingga special-data restore tidak lagi bergantung pada metadata backup yang kebetulan sedang terpasang pada model.
- Cakupan special-data yang mengikuti backup terpilih mencakup permission states, notification access, accessibility, notification policy, dan SSAID.
- SSAID file update telah diperkeras menjadi temporary copy + replace pada path yang sama, kemudian dilakukan read-back verification.
- Verification status:
  - Static source inspection: UPDATED.
  - Runtime SSAID behavior: UNVERIFIED.
  - Runtime restore terhadap backup selain latest: UNVERIFIED.
  - Gradle/build verification: belum tersedia pada sesi ini.

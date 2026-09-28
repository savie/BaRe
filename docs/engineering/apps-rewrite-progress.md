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

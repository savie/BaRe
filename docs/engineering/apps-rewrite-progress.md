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

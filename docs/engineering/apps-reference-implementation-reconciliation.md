# Apps Reference → Rewrite Implementation Reconciliation

## Basis

- Reference source: Reference APK 5.1.0-620 JADX/apktool audit pada `reference/reference_apps_audit.md`, branch `v1.0/rebaseline`.
- Target implementation: BaRe branch `rewrite`.
- Legacy Apps tidak menjadi dependency implementation Apps2.
- Runtime parity tidak diklaim dari static evidence.

## Implemented boundaries

### Apps list

- LOCAL/CLOUD shell boundary retained.
- Package discovery → CanonicalApp.
- Persisted system/type/favorite/misc/backup/sync/install/enabled/backup-age/label filters.
- Search across name/package/appId/labels.
- Seven sort modes including UsageStats fallback.
- Favorite persistence.
- Labels assignment/filtering.
- Overflow actions: Launch, Enable/Disable, Uninstall, Force Stop, Play Store, Clear Data, App Info, Share APK.
- Swipe action persistence with Reference defaults:
  - right = Launch;
  - left = Uninstall.
- Batch entry.

### Batch / Quick Actions

- Explicit selection model.
- Select all / clear selection.
- Backup, restore, delete-backups, apply-labels, enable/disable, uninstall, export.
- Quick-action modes for all/pending/updated/redo/restore-all/restore-newer.
- Cloud sync action remains explicitly blocked because no verified cloud transport contract exists in rewrite.

### Labels

- Label definitions persist locally.
- Package → label association persists locally.
- Set/Add/Clear-style assignment is supported through the repository boundary.
- Selected-label filtering is persisted.

### Custom configurations

- Config + ConfigSettings domain model.
- Ordered task-input fields represented:
  - AppParts;
  - locations;
  - sync option;
  - multiple-backup strategy;
  - backup limits;
  - compression;
  - cache backup;
  - restore permission mode;
  - special permissions;
  - SSAID;
  - force redo;
  - enabled.
- Duplicate-name guard.
- Edit/delete/settings surfaces.
- Configuration execution enters Apps backup task stack.

### Detail / backup history

- Local backup history reconstructed from backup records.
- Concrete backup identity propagated to restore.
- Backup details/status surface.
- Protect/unprotect persistence.
- Note persistence.
- Confirmation-gated delete.
- Part-specific restore request.
- Multiple-backup surface.
- Restore-special-data detail surface.

### Backup / archive

- AppPart capability gate.
- Local backup artifacts.
- APK, data, external data, expansion, media, splits/shared-library routing boundaries.
- Backup limits enforced before artifact creation.
- Privileged staging path for inaccessible app directories.
- Archive detection/extraction supports ZIP/TAR/7-Zip; SBA format is explicitly rejected pending a verified SBA implementation.
- Local metadata persistence includes backup identity-adjacent fields, dates, note, protection, and selected parts.

### Restore / install

- Restore request identity and selected parts.
- Capability + installed-target preconditions.
- APK install through PackageInstaller session.
- Install result is waited/verified against installed package state and installer source.
- Data/DE-data/external/expansion/media staging and privileged copy path.
- Restore task state and persisted latest task result.
- Explicit failure when an artifact/archive format is unsupported.

### Settings / diagnostics

- App backup limit configuration.
- Package visibility diagnostics from PackageManager.
- App info exposes package/version/source/data/DE-data/splits/UID/installer.

### Task boundary

- Backup/restore operation state machine.
- Cancellation state.
- Last task state persistence for UI recovery.
- Task Activity status surface.

## Explicitly blocked / unknown

1. Cloud transport/provider implementation.
   - Audit establishes client-side cloud metadata/artifact orchestration but not backend transaction/atomicity semantics.
   - Rewrite therefore exposes cloud inventory/contracts but does not invent a provider.

2. Reference SBA archive (SBA) format implementation.
   - Audit identifies format 6 and its extraction boundary, but the exact native/internal SBA implementation is not sufficiently reproduced in rewrite evidence.
   - Rewrite fails explicitly rather than treating SBA as ZIP.

3. Notification-policy hidden system API parity.
   - Reference has a concrete privileged proxy; rewrite currently retains the boundary but does not claim hidden-API parity.

4. Full special-data permission restoration.
   - Request flags/defaults and model boundary are implemented; every Android special permission mutation path is not yet proven.

5. Exact Reference visual/animation parity.
   - Static resources and structural surfaces are not runtime proof.

6. Runtime Reference vs rewrite verification.
   - No runtime execution evidence exists in this session.

## Non-goals preserved from audit

- No Home → Apps cutover.
- No Legacy Apps replacement.
- No invented cloud atomicity.
- No claim that static implementation equals runtime parity.

## Verification status

- GitHub status checks: no reported checks for the latest implementation commits.
- GitHub Actions workflow runs: none reported for the latest implementation commits.
- Local Gradle build: BLOCKED because the environment cannot resolve GitHub and no local rewrite checkout is available.
- Runtime APK verification: UNVERIFIED.
- Static source reconciliation: ongoing/implemented across the evidence-supported Apps boundaries above.

# BaRe v1.0 — Export / Import Capability Map

## Tujuan

Dokumen ini mematangkan boundary Export / Import sebelum perubahan UI/implementation berikutnya pada branch v1.0/rebaseline.

Reference Swift digunakan sebagai discovery evidence. Dokumen ini tidak menganggap seluruh capability reference sebagai capability BaRe yang harus diimplementasikan.

## Keputusan yang Sudah Ditetapkan

### Local Account

Entry point UI bersifat general:

LOCAL ACCOUNT
├── Export
└── Import

Untuk kondisi BaRe saat ini, option yang mempunyai lifecycle nyata adalah:

Export
└── Local BaRe Identity → bare-recovery.bare

Import
└── Local BaRe Identity ← bare-recovery.bare

Artifact .bare adalah BaRe ID Lifecycle / local identity continuity artifact. Bukan backup data dan bukan settings export.

### Backup Lifecycle

Backup encryption tetap menjadi lifecycle terpisah:

BACKUP
└── Encryption Password Strategy
    ├── Standard
    └── Advanced

Standard/Advanced tidak digunakan sebagai semantic owner untuk BaRe ID Lifecycle.

### Account / Cloud

Ketika ACCOUNT/cloud lifecycle sudah dikerjakan, Export/Import/Cloud capability dapat berubah berdasarkan identity context. Untuk fase pembuatan APK sekarang, surface boleh tetap terlihat untuk discovery dan pengembangan, tetapi capability yang belum ada tidak boleh diklaim implemented.

## Reference-derived Inventory

| Candidate | Reference evidence | BaRe lifecycle | Current BaRe state | UI treatment |
|---|---|---|---|---|
| Local BaRe Identity .bare | BaRe recovery implementation; reference identity/continuity discovery | BaRe ID Lifecycle | IMPLEMENTED STATIC / runtime lifecycle UNVERIFIED | Export + Import |
| Settings export/import | Swift reference Export settings / Import settings | Settings / configuration transfer | UI entry exists from #552; implementation not verified | Future option under Export / Import |
| APK/APKS import | Swift APK/APKS import/share evidence | APK artifact / installation | Partial APK artifact collection; general import workflow incomplete | Future Import capability; do not equate with backup restore |
| APK/share/export | Swift APK/share indicators | APK artifact transport | No complete product export/share contract | Future; separate from identity/backup |
| Cloud setup export/import | Swift reference cloud setup export/import | Account / Cloud lifecycle | Account/cloud implementation not complete | Future; identity-dependent |
| Backup export/import | Product boundary + backup workflows | Backup Lifecycle | Backup engine not implemented end-to-end | Future; separate from .bare identity artifact |
| App configuration transfer | Reference Config domain exists, but export/import semantics are not established as a standalone BaRe contract | Management / Backup configuration | Not established | Do not add yet |
| Labels/favorites/management metadata export | Reference management capability exists, but standalone export/import contract is not established | Management | Partial local persistence only | Do not add yet |

## Important Distinctions

### 1. Export / Import is an entry point, not a lifecycle

Export / Import
  │
  ├── Local BaRe Identity
  ├── Settings              (future)
  ├── APK/APKS              (future/import-oriented)
  ├── Backup                (future)
  └── Cloud setup           (future/account-dependent)

The menu must not imply that all options are already supported.

### 2. .bare is not Settings

The canonical artifact is bare-recovery.bare.

It contains the current BaRe recovery envelope and internal BREC versioning. It is used to preserve/recover the same LOCAL BaRe identity.

It must not be labelled Export settings.

Recommended user-facing semantic:
- Local BaRe Identity
- Export Local Identity
- Import Local Identity

The general Settings entry, when implemented, should remain semantically separate:
- Export settings
- Import settings

### 3. Backup is not Local Identity Recovery

Local BaRe Identity
    → same LOCAL identity / Master Key continuity

Backup
    → Apps / data / folders / messages / etc.
    → Backup Encryption Strategy

A backup artifact must not be treated as a BaRe identity recovery artifact, and a .bare identity artifact must not be presented as a backup archive.

## Current Reference Coverage Relevant to Export / Import

The current Swift reference audit records:

- Import/Export domain evidence for APK/APKS import/share.
- Settings export/import.
- Cloud setup export/import.
- Backup/security/configuration domains that may later require their own artifact workflows.
- Reference capability evidence is static/documented; reference runtime was not performed.

The current BaRe product/capability documents already define Import/Export broadly as APK/APKS and required configuration workflows. This map refines that broad boundary by separating lifecycle ownership.

## Current BaRe Implementation Reconciliation

### Implemented / Partial

- Recovery codec and artifact repository exist.
- Current canonical recovery filename: bare-recovery.bare.
- Current internal recovery format: BREC v3.
- Recovery artifact carries encrypted identity/master-key recovery material.
- Recovery import/export is explicitly separated from backup encryption.
- Local identity conflict protection exists.
- Full destructive-loss → artifact → reinstall → import continuity remains runtime UNVERIFIED.

### Existing but not equivalent to Export/Import implementation

- APK discovery/detail and APK artifact copying exist partially.
- App labels/favorites persistence exists.
- Settings persistence/system actions exist.
- Backup encryption strategy UI exists, but actual backup engine integration does not.

### Not yet implemented / not verified

- Settings export/import artifact workflow.
- Complete APK/APKS import workflow.
- Cloud setup export/import.
- End-to-end backup export/import/restore engine.
- Account/cloud identity-dependent export/import policy.
- Full runtime verification of Local BaRe Identity export/import.

## Proposed UI Shape

For the current APK development stage:

Account
└── Settings
    └── Export / Import

Export
├── Local BaRe Identity
└── [future options only when capability exists]

Import
├── Local BaRe Identity
└── [future options only when capability exists]

The Recovery row is no longer the preferred general UI entry for this capability. The word recovery may remain in explanatory copy where it clarifies that Local BaRe Identity export/import is intended to recover identity after local app-state loss.

Example:

> Export your Local BaRe Identity so it can be restored after BaRe app data is lost.

## Status

DECISION RECONCILED / EXPORT-IMPORT ENTRY POINT GENERALIZED / LIFECYCLE BOUNDARIES SEPARATED / IMPLEMENTATION NOT YET CHANGED

## Next

1. Reconcile existing Settings rows against this map.
2. Remove the standalone Recovery row from the Settings surface.
3. Replace it with general Export and Import entry points.
4. Keep Local BaRe Identity as the only currently actionable option.
5. Keep future Settings/APK/APKS/Backup/Cloud options out of the executable path until their lifecycle contracts exist.
6. Update the capability/worklog records.
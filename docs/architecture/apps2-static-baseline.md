# Apps2 Static Architecture Baseline

Tanggal: 2026-09-28
Branch: rewrite

## Status

STATIC EVIDENCE-BASED BASELINE.

Baseline ini diturunkan dari `reference/reference_apps_audit.md` pada branch `v1.0/rebaseline`.

Ini bukan architecture freeze dan bukan runtime parity claim.

## Evidence Boundary

Confirmed statically:
- exact 45-class Reference Apps inventory;
- Apps list/navigation;
- canonical app convergence model;
- local/cloud repository boundary;
- list state;
- search/filter/sort state;
- AppPart/artifact/metadata boundary;
- special-data boundary;
- restore compatibility/task/precondition boundary;
- split restore execution;
- EXPANSION restore semantics;
- resource/include/binding/manifest evidence.

Unknown / unverified:
- exact full filter predicate decomposition;
- remaining deep semantics among imported `defpackage.*`;
- historical metadata migration engine;
- cloud backend transaction/atomicity;
- runtime visual/branch parity.

## BaRe Rewrite Boundary

```
PackageManager / platform
        ↓
AppDiscovery
        ↓
CanonicalApp
        ↓
LocalInventory / CloudInventory
        ↓
ListState
        ↓
Search → Filter → Sort → Selection
        ↓
Apps UI
        ↓
Detail / Backup History
        ↓
Backup / Restore Orchestration
        ↓
Task / Preconditions
        ↓
Platform Capability Adapters
```

Legacy Apps implementation is not a dependency of this boundary.

## Domain Contracts

### CanonicalApp

Owns the converged app identity and display/runtime metadata:
- package/name/appId;
- version;
- installation/update state;
- enabled/bundled/launchable/favorite;
- labels;
- local/cloud backup references;
- size and filesystem paths.

### Inventory

Local inventory is produced from PackageManager and local backup metadata.

Cloud inventory must be produced from a cloud adapter that converts valid cloud metadata into the same `CanonicalApp` model.

Cloud backend transport and remote atomicity are outside the domain contract.

### List Projection

```
inventory
 → query
 → filter
 → sort
 → selection
 → adapter
```

The projection must not mutate repository inventory.

### Backup / Restore

```
BackupRequest
 → part capability check
 → artifact writer
 → metadata update
 → catalog/history
```

```
RestoreRequest
 → compatibility/precondition check
 → artifact lookup
 → platform restore
 → task result
```

### Capability Boundary

Root/Shizuku/package-installer/usage-access behavior belongs behind explicit platform capability boundaries.

The UI must not infer capability from an implementation side effect.

## Explicit Non-Contracts

Do not assume:
- historical metadata migration exists;
- cloud upload/delete is transactionally atomic;
- unresolved Reference collaborator behavior;
- runtime visual parity;
- runtime branch parity.

## Implementation Rule

Every UNKNOWN boundary must remain explicit in code or documentation until evidence closes it.

No Home → Apps cutover is part of this baseline.

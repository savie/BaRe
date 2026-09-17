# BaRe Implementation Architecture Mapping

Status: ACTIVE / FIRST VERTICAL SLICE

## Purpose

Map the current implementation to the product architecture without treating existing classes as the product architecture itself.

## Product Flow

`Application Backup → Component Selection → Capability Resolution → Provider → Artifact/Repository → Integrity Verification → Result`

## Current Mapping

| Product boundary | Current implementation | State |
|---|---|---|
| Application discovery | `PackageDiscovery` | Implemented / runtime observed |
| Capability resolution | `CapabilityResolver` | Implemented / runtime slices observed |
| Package/APK execution | `PackageBackupCoordinator` | Implemented / runtime observed for NON_ROOT, SHIZUKU, ROOT per user device evidence |
| Archive + integrity | `BackupArchiveWriter` | Implemented / CI-tested |
| Application backup contract | `ApplicationBackupUseCase` | Newly established |
| Application backup orchestration | `ApplicationBackupUseCaseImpl` | First vertical integration slice |
| Application private-data port | `ApplicationDataSource` | Contract established |
| ROOT private-data adapter | `RootApplicationDataSource` | Fail-closed / not implemented |
| Package restore | `PackageRestoreCoordinator` | Implemented / end-to-end restore unverified |
| Private-data restore | None | Not implemented |
| Repository abstraction | None | Not yet implemented |
| Scheduling | None | Not yet implemented |
| Related user-data domains | None | Not yet implemented |

## Dependency Direction

Desired:

`UI → Application Use Case → Domain Contract → Provider Adapter → Android`

The existing `PackageBackupCoordinator` remains implementation material during migration. New product-level code must not introduce UI-to-provider or domain-to-Android coupling.

## First Vertical Slice

Target slice:

`Application Backup → APK component → capability resolution → NON_ROOT/SHIZUKU/ROOT provider → archive/integrity → structured component result`

Private application data is part of the product target and the application-backup contract, but the current slice reports it explicitly as `BLOCKED` rather than claiming unsupported or successful behavior.

## Verification Boundary

- Contract existence: observed in source.
- APK backup execution: previously runtime observed on user device for NON_ROOT, SHIZUKU, and ROOT.
- Current branch build after this change: must be re-verified by CI.
- Application private-data backup: unverified and currently fail-closed.
- Full application backup parity: unverified.
- Full restore parity: unverified.

## Refactor Rule

Do not rewrite working provider implementations merely to satisfy layering. Introduce product contracts above them, migrate one vertical journey at a time, and remove obsolete coupling only after equivalent behavior has regression coverage.

## Next Slice

Implement the ROOT private-data provider contract with an isolated, security-reviewed filesystem transport, then integrate it into the application archive format and restore verification path. Do not expose it as successful until runtime evidence proves backup and restore of actual application data.

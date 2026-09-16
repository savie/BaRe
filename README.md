# BaRe

BaRe is a greenfield Android backup and restore application.

## Product Baseline

Swift Backup Premium is the functional capability baseline.

BaRe targets full functional parity with that baseline and may extend beyond it when additional capability is safe, maintainable, independently implemented, and verifiable.

## Execution Modes

- NON_ROOT
- ADB
- SHIZUKU
- ROOT

All four modes are in product scope. Capability depth may differ by Android version, device/OEM, permissions, policy, and runtime environment. Root is a supported privileged mode, not a bypass mechanism.

## Functional Scope

The product baseline covers backup and restore capabilities including applications and app data, APK/split APK handling, external data/media/folders, SMS/MMS, call logs, contacts, Wi-Fi, wallpapers, incremental and scheduled backups, local and remote/cloud storage, encryption/compression, integrity validation, diagnostics, and restore-related metadata/options, subject to platform and execution-mode constraints.

## Repository Boundary

This repository is the execution plane for implementation source, project-specific tests, build/runtime configuration, and implementation-specific documentation.

Canonical product and engineering control documentation is maintained in Varnexis-Workspace.

## Implementation Independence

The reference APK is a functional discovery reference only. BaRe is independently implemented and does not modify, patch, crack, repackage, bypass, or copy the reference implementation.

## Engineering Status

- Baseline reconciliation: established in Varnexis-Workspace.
- Repository bootstrap: committed to a bootstrap branch; build verification pending.
- Runtime/device verification: not yet available in the current engineering environment.
- Build/runtime capability claims: UNKNOWN until verified with evidence.

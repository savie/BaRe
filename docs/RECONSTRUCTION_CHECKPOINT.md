# BΛR☰ Reconstruction Checkpoint

## Purpose

Current project dashboard. Detailed evidence/history remains in `docs/RECONSTRUCTION_STATUS.md` and technical audits under `docs/audits/`.

## Canonical control plane

- Roadmap / handoff: `docs/bare.md`
- P1 gate: `docs/PHASE_1_INVENTORY.md`
- P2 gate: `docs/PHASE_2_SKELETON.md`
- P3 gate: `docs/PHASE_3_GATE.md`
- P4 gate: `docs/PHASE_4_GATE.md`
- P4 contract register: `docs/audits/P4_CONTRACT_REGISTER.md`
- Detailed status/history: `docs/RECONSTRUCTION_STATUS.md`

## Roadmap status

| Phase | Scope | Current status |
|---|---|---|
| 1 | Foundation / evidence | **COMPLETE / FROZEN** |
| 2 | Reference skeleton | **COMPLETE / FROZEN** |
| 3 | UI + Navigation + P3 closure | **COMPLETE / FROZEN** |
| 4 | Core behavior / contracts | **ACTIVE — P4.0 RE-AUDIT / INVENTORY** |
| 5 | Features | **DEFERRED** |
| 6 | Authorized deviations | **DEFINED / GATED** |
| 7 | Runtime | **BLOCKED / GATED** |
| 8 | Parity | **NOT EXECUTED** |
| 9 | Deviation audit | **NOT FINAL** |

## Frozen P3 position

- 71/71 Reference-owned Activities covered/registered.
- Activity depth: 23 🟢 / 48 🟡 / 0 🔴.
- 15 normalized P3 domains closed at the static boundary.
- Reference remains read-only.
- No build/install/runtime/device verification is claimed.

## Current P4 position

**P4 remains active at P4.0.**

A targeted Reference re-audit was performed using:
- `v1.0/rebaseline/reference/*`;
- the supplied `SwiftBackup-5.1.0-620-decompiled.zip`;
- current `rewrite` source;
- existing N-07/N-08/N-09 audits.

The P4 register was expanded from coarse domain rows into explicit P3-trigger/contract/consumer/verification rows.

## Confirmed P4.0 gaps

The re-audit confirms these are real P4 contract gaps, not merely documentation gaps:

1. First-start/account lifecycle state is broader than the current P3 booleans.
2. Permission readiness must eventually be derived from authoritative permission/access state, not manual P3 success flags.
3. Reference persists and validates `preferred_storage_dir`; BaRe has no equivalent verified storage coordinator/persistence contract.
4. Account/session state is only partially reconciled despite provider-neutral repositories already existing.
5. Reference settings use a persisted `AppSettings` model; BaRe currently has the UI boundary but not the Reference-shaped settings contract.
6. Intro password mode uses a BaRe-specific `P3_PASSWORD_MODE`; Reference uses `saved_password_mode` with Reference enum/default semantics.
7. First-run cloud settings restore has an explicit Reference state/result flow; a completion boolean alone is not equivalent.
8. TaskActivity requires task status/progress/error state; current empty task adapters are only a boundary stub.
9. Core data inventory must include the Reference-shaped models consumed by these flows, not only `UserInfo`.
10. Reference has a secure/encrypted local preference boundary relevant to persisted P4 state.

## Explicit downstream boundaries

These remain outside P4 implementation:

- backup/restore execution;
- archive/compression/encryption;
- provider token exchange / provider SDK execution;
- actual cloud transfer;
- Firebase/Supabase auth execution;
- backend/database mutation;
- billing/purchase verification execution;
- root/Shizuku privileged engine;
- installed-app inventory/app-op engine;
- foreground-service execution;
- runtime/device verification.

## Execution guard

- Reference is read-only.
- P4.0 is inventory/reconciliation only.
- No implementation is implied by a register row.
- Build/install/runtime remains prohibited unless explicitly authorized.
- Static evidence never implies engine/provider/backend/runtime success.

## Current position

> **P1 frozen → P2 frozen → P3 frozen → 71/71 Activities covered → 15 P3 domains closed → P4 active → P4.0 re-audit/inventory confirms concrete P4 gaps.**

Next package remains **P4.1 — BaRe Gap / Blocker Analysis**, after the remaining P4.0 inventory acceptance pass.

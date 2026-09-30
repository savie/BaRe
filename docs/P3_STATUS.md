# BΛR☰ P3 Status — UI + Navigation

## Purpose

This is the **current P3 work queue**.

P3 answers:

> Which of the 71 Reference Activities have meaningful UI/navigation reconstruction, which are still shallow, and which are urgent?

It does **not** claim:
- runtime verification;
- visual parity;
- backup/restore execution;
- provider execution;
- backend implementation;
- full P4/P5 feature parity.

Those remain governed by the phase gates and detailed evidence log.

## Status semantics

- 🔴 **RED — not meaningful yet**: too thin/stub-like to count as meaningful P3 reconstruction.
- 🟡 **YELLOW — shallow/boundary**: the surface exists, but meaningful Reference data/behavior/deeper contract is still pending or intentionally deferred.
- 🟢 **GREEN — meaningful P3 reconstruction**: the Activity has substantive Reference-derived UI/navigation/state/source-contract depth. Green does **not** mean runtime verified or feature-complete.
- ⚪ **SPECIAL REVIEW**: source is populated enough to avoid red/yellow classification, but the previous audit explicitly requested tighter Reference comparison before final depth classification.

## Last complete 71-Activity depth audit

Audit snapshot: `7f03a13a0dc05bdf42b5cad28c16f81d33651551`.

At that snapshot:

| Depth | Count |
|---|---:|
| 🟢 Green | 22 |
| 🟡 Yellow | 39 |
| 🔴 Red | 7 |
| ⚪ Special review | 3 |
| **Total** | **71** |

The audit explicitly warned that 71/71 structural coverage is not 71/71 reconstruction completion.

## 🔴 Red backlog from the last complete audit

These 7 Activities were red in the complete audit:

1. `PCloudSignInActivity`
2. `CallsBackupsActivity`
3. `MessagesBackupsActivity`
4. `ComposeSmsActivity`
5. `MultipleBackupsActivity`
6. `RestoreSpecialDataDetailsActivity`
7. `AppBackupLimitsActivity`

### Post-audit vertical sweeps

All 7 red items subsequently received a dedicated P3 vertical sweep on 2026-09-30:

| Activity | Post-audit P3 result | Operational status |
|---|---|---|
| `PCloudSignInActivity` | Browser/custom-tab/auth boundary reconstructed; SDK token handling intentionally not fabricated | 🟡 |
| `CallsBackupsActivity` | Shared backup list layout/menu/title boundary reconstructed; ViewModel/delete engine deferred | 🟡 |
| `MessagesBackupsActivity` | Shared backup list layout/item/menu boundary reconstructed; ViewModel/delete engine deferred | 🟡 |
| `ComposeSmsActivity` | Reference Activity is empty; BaRe now matches the empty Activity + manifest contract | 🟢 |
| `MultipleBackupsActivity` | Three strategy cards, slider, conditions, Parcelable contract and preference/result boundary reconstructed | 🟢 |
| `RestoreSpecialDataDetailsActivity` | 13-row restore-detail UI, switch/card behavior and boolean result boundary reconstructed | 🟢 |
| `AppBackupLimitsActivity` | Four app-part limit sections, local/cloud inputs, state/result model reconstructed | 🟢 |

**Important:** this is a post-audit operational reclassification, not a new full 71-Activity audit. A future full depth audit should confirm these statuses.

## Current provisional P3 picture

Using the last full audit plus the seven post-audit sweeps:

| Status | Count | Meaning |
|---|---:|---|
| 🟢 Green | 26 | 22 from the full audit + 4 red items subsequently deepened |
| 🟡 Yellow | 42 | 39 from the full audit + 3 red items subsequently deepened to boundary level |
| 🔴 Red | 0 | Every Activity from the last red backlog has received a dedicated P3 sweep |
| ⚪ Special review | 3 | Still requires tighter Reference comparison |
| **Total** | **71** | Provisional until the next full 71-Activity depth audit |

### ⚪ Special review

These remain explicitly flagged by the last full audit:

- `WallsManageActivity`
- `WifiActivity`
- `LocaleActivity`

Do not silently promote these to green. Recompare their source/layout against Reference before final classification.

## What is urgent now

### 1. Re-audit the three special-review Activities

- WallsManageActivity
- WifiActivity
- LocaleActivity

This closes the only explicit unresolved classification bucket from the last full audit.

### 2. Continue the 🟡 queue

The yellow queue is the next P3 depth backlog. The exact 39 names remain in the last complete audit recorded in `RECONSTRUCTION_STATUS.md`; use that evidence log rather than recreating the inventory.

### 3. Do not turn yellow into P5 by accident

A yellow Activity can be correct P3 work when its Reference behavior belongs to a later engine/provider/backup contract.

The goal is to reconstruct the Reference UI/navigation/state boundary first, then record the dependency as P4/P5 UNKNOWN or deferred.

### 4. Re-run the 71-Activity depth audit after a meaningful batch

The next full audit should replace the provisional counts above with a fresh 71-row classification.

## Current phase position

- P1: COMPLETE / FROZEN
- P2: COMPLETE / FROZEN
- P3: **ACTIVE**
- P4: PARTIAL / DEPENDENCY-DRIVEN
- P5: NOT COMPLETE / DEFERRED
- P6: DEFINED / GATED
- P7: BLOCKED / GATED
- P8: NOT YET EXECUTED
- P9: NOT YET FINAL

## Evidence source

Detailed P3 and Reference evidence remains in:

- `docs/RECONSTRUCTION_STATUS.md`
- `docs/PHASE_2_SKELETON.md`
- `docs/REFERENCE_AUDIT.md`
- `docs/REFERENCE_FEATURE_MAP.md`

The current working queue is this document; the roadmap dashboard is `docs/RECONSTRUCTION_CHECKPOINT.md`.
# BΛR☰ Reconstruction Checkpoint

## Purpose

This document is the working checkpoint/dashboard for the reconstruction roadmap.

It answers three questions:
1. What is structurally complete?
2. What has actually been reconstructed/verified so far?
3. What remains UNKNOWN, BLOCKED, or intentionally deferred?

It does not replace the detailed evidence documents.

## Source of truth

- Reference: Swift Backup 5.1.0 (620)
- Target: savie/BaRe
- Branch: rewrite
- Baseline: 42e4107e7289b4346cb030e5ad97472126440f23
- Canonical component inventory: docs/PHASE_2_SKELETON.md
- High-level parity dashboard: docs/PARITY_MATRIX.md
- Phase 1 evidence: docs/PHASE_1_INVENTORY.md
- Handoff / roadmap authority: docs/bare.md

## Roadmap status

| Phase | Scope | Current status | Meaning |
|---|---|---|---|
| 1 | Foundation | COMPLETE / FROZEN | Reference/project/resource/manifest inventory gate is closed. |
| 2 | Reference Skeleton | COMPLETE / FROZEN | 71 Activities + 3 Services + 8 Receivers + 0 Reference-owned Providers are structurally registered/mapped. |
| 3 | UI + Navigation | ACTIVE | Current primary workstream. Vertical reconstruction is being done Activity/surface by Activity/surface. |
| 4 | Core Behavior | PARTIAL / DEPENDENCY-DRIVEN | Some Reference contracts/repositories have already been audited/reconstructed because P3 surfaces depend on them. This is not a Phase 4 completion claim. |
| 5 | Features | NOT COMPLETE / DEFERRED | Full backup/restore and feature execution parity remains UNKNOWN. |
| 6 | Authorized Deviations | BASELINE DEFINED; IMPLEMENTATION GATED | Branding/Premium/Supabase deviations are defined by handoff. Supabase implementation remains explicitly permission-gated. |
| 7 | Runtime | BLOCKED / GATED | Build → APK → install → execute has not been authorized/executed. |
| 8 | Parity | NOT YET EXECUTED | Visual/behavior/feature/runtime parity verification requires runtime evidence. |
| 9 | Deviation Audit | NOT YET FINAL | Final MATCH / AUTHORIZED DEVIATION / UNKNOWN / UNAUTHORIZED DEVIATION / BLOCKED audit comes after parity evidence. |

## Phase 2: what the 71 / 3 / 8 actually mean

These numbers are component counts, not feature-completion counts.

- 71 Activities — exact Reference-package Activities listed in docs/PHASE_2_SKELETON.md.
- 3 Services — TaskService, ScheduleService, HeadlessSmsSendService.
- 8 Receivers — AlarmReceiver, LocaleChangedReceiver, BootReceiver, NotificationTaskCancelReceiver, PackageInstallResultReceiver, ShortcutPinnedReceiver, SmsReceiver, MmsReceiver.
- 0 Reference-owned Providers — Reference has 4 manifest providers, but they are dependency/library providers.

Therefore:

> Phase 2 = all Reference component boundaries exist.
>
> Phase 2 ≠ all 71 Activities are finished.

The exact 71 Activity inventory is intentionally kept in docs/PHASE_2_SKELETON.md so the number can always be traced to a concrete component name.

## Current vertical reconstruction checkpoint

The following Activity/surface batches are explicitly documented as reconstructed or deepened in P3:

### Recent vertical sweep

- AppBackupLimitsActivity
- RestoreSpecialDataDetailsActivity
- MultipleBackupsActivity
- ComposeSmsActivity
- MessagesBackupsActivity
- CallsBackupsActivity
- PCloudSignInActivity

These are P3 reconstruction checkpoints, not claims of full feature parity. Where Reference behavior depends on P4/P5 engines, those dependencies remain explicit boundaries.

### Earlier documented P3 batches

The repository history/docs also record P3 work for:

- Home navigation / Home fragments
- Account profile-card hierarchy
- Settings shell / Settings Detail
- Apps-list UI and navigation
- Apps-item interaction boundaries
- Apps Quick Actions
- Apps Batch
- SwiftLogger
- Config List / Config Settings / Config Run
- Licenses
- Cloud Connect provider routing
- MEGA / Dropbox / pCloud authentication boundaries
- Shortcuts
- Cloud Diagnostics
- Cloud Orphan Cleaner

For these surfaces, the exact claim varies by batch. docs/PARITY_MATRIX.md and the corresponding reconstruction-status entries remain authoritative for the detailed status.

## P4 work that happened early

Some P4/core-behavior contracts have already been reconstructed ahead of a complete P3 sweep.

Examples documented in docs/RECONSTRUCTION_STATUS.md include:

- CloudAppRepository
- CloudFolderRepository
- backup count writers
- billing catalog / SKU contracts
- premium transaction model/repository
- account migration repository/policy
- cloud file deletion repository
- user-info repository
- messages/call capability/policy contracts

This is intentional dependency-driven work, not a phase-order violation.

The practical rule is:

> If P3 needs a verified P4 contract to avoid inventing behavior, reconstruct the minimum P4 contract needed, record it, then return to the active P3 vertical sweep.

Do not interpret an existing P4 contract as proof that the corresponding feature is complete.

## P5 status

Full feature execution is still not complete.

The following remain outside the current P3 completion claim:

- full backup engines
- full restore engines
- provider execution
- complete app/message/call/folder backup/restore flows
- complete feature-side effects
- complete runtime data/state parity

A P3 screen reaching a boundary does not promote its underlying P5 feature to MATCH.

## P6 status

The handoff defines these Authorized Deviations:

- BΛR☰ / BaRe branding
- Swift-specific external identity replacement where required
- Premium is free/granted
- Supabase replaces Firebase where backend functionality is required

Important:

- Authorized deviation definition is not the same as implementation.
- Supabase implementation is explicitly WAITING FOR EXPLICIT USER PERMISSION.
- Unknown Supabase schema/config/RLS/etc. must remain UNKNOWN until actual evidence is available.

## P7 / P8 / P9 gate

No runtime parity claim has been made.

Until execution is authorized:

- no APK build claim
- no install claim
- no runtime behavior claim
- no visual screenshot parity claim
- no end-to-end feature parity claim

Therefore P8 and the final P9 deviation audit remain downstream gates.

## P3 working queue

The complete Activity-level P3 audit and current backlog are maintained in `docs/PHASE_3_STATUS.md`.

Latest complete 71-Activity P3 depth audit at `b556d19e5c07656219070f42f448945d16982961`:
- 🟢 Green: **48**
- 🟡 Yellow: **23**
- 🔴 Red: **0**
- **71/71 classified**
- The previous three special-review Activities (`WallsManageActivity`, `WifiActivity`, `LocaleActivity`) are now resolved as 🟡 after direct Reference source/layout comparison.

Do not use the 71/71 structural count as a completion metric; the depth classification is the current P3 work signal.

## Documentation authority

The role of every document under `docs/` is defined in `docs/DOCS_INDEX.md`.

For daily execution, read this checkpoint first, then `docs/PHASE_3_STATUS.md`, then `docs/RECONSTRUCTION_STATUS.md` for evidence.

## Working order from this checkpoint

1. Keep the Phase 2 inventory frozen.
2. Continue the P3 vertical sweep Activity/surface by Activity/surface.
3. When a P3 surface depends on a missing verified core contract, reconstruct only the necessary P4 contract.
4. Do not jump into full P5 execution unless the relevant P4 contract and P3 surface are ready.
5. Keep P6 deviations isolated and explicit.
6. When P3/P4/P5 are sufficiently reconstructed and execution is authorized, enter P7.
7. Use runtime evidence for P8 parity.
8. Perform P9 deviation audit last.

## Urgency interpretation

### Highest urgency now

P3 vertical coverage and dependency closure.

The immediate question for each next Activity is:

- Does its Reference UI/layout/menu/navigation exist?
- Does its required P4 contract exist?
- Is the Activity only a boundary, or does Reference contain real behavior that must be reconstructed?
- Are we accidentally claiming P5 behavior from a P3 screen?

### Medium urgency

P4 contract gaps exposed by P3.

Only reconstruct the minimum verified contract required by the current vertical slice.

### Later urgency

P5 full feature execution, then runtime/parity.

Do not use the existence of a Java skeleton or P3 screen as evidence that the underlying feature is complete.

## Final mental model

Think of the project as two different dimensions:

Horizontal phase gates:
P1 → P2 → P3 → P4 → P5 → P6 → P7 → P8 → P9

Vertical feature slices:
Activity → layout → navigation → state → contract → engine → runtime parity

The project is currently:

> P1 frozen + P2 frozen + P3 active, with selected P4 contracts reconstructed as dependencies.

That is the intended interpretation of the current checkpoint.



## Lifecycle interpretation update — 71 / 3 / 8

The current P3 gate is now interpreted as a **phase-boundary audit**, not a requirement to force every component into green.

- **71 Activities:** 48 are at the current P3 boundary (green); 23 still contain evidence-supported P3 depth work or need an explicit dependency decision.
- **3 Services:** all structural boundaries exist. TaskService and ScheduleService have substantial Reference execution contracts and therefore move their remaining behavior to P4/P5; HeadlessSmsSendService is already minimal in the Reference and has reached its meaningful P3 boundary.
- **8 Receivers:** all structural boundaries exist. Remaining side effects are phase-owned by P4/P5; MmsReceiver additionally needs its Reference inheritance boundary (SmsReceiver) corrected before execution work.
- **P7/P8/P9 remain downstream gates** and are not part of this audit.

The next P3 action is therefore to continue only the **27 yellow Activity surfaces** where Reference-derived UI/navigation/state reconstruction remains justified. Green Activities and supporting surfaces with execution-only gaps should be treated as inputs to P4/P5/P6 rather than reopened as P3 backlog.

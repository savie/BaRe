# BΛR☰ Phase 3 — UI + Navigation Gate

## Authority

- Reference: Swift Backup 5.1.0
- Version code: 620
- Target repository: savie/BaRe
- Implementation branch: `rewrite`
- Baseline authority: `docs/bare.md`
- Reference snapshot: supplied decompiled Reference / `reference/`
- P1 gate: `docs/PHASE_1_INVENTORY.md`
- P2 gate: `docs/PHASE_2_SKELETON.md`

## Scope

Phase 3 reconstructs the Reference application surface through the P3 boundary:

- UI / Android Views/XML
- Activity navigation and intent contracts
- Activity lifecycle/state boundaries
- permission/introduction/error/loading/dialog surfaces
- visible resource contracts
- Reference-derived P3 dependency boundaries
- the normalized 15-domain parity audit and its follow-up closure

Phase 3 does **not** claim:

- build/install/runtime verification;
- visual runtime parity;
- backup/restore execution;
- provider/engine execution;
- backend/Supabase execution;
- full P4/P5 feature parity.

Reference remains read-only. All implementation changes belong to `app/`.

## Gate status

**PHASE 3 — ACTIVE / FOLLOW-UP CLOSURE**

The latest complete Activity depth audit is the current P3 Activity baseline:

| Component | Result |
|---|---:|
| Activities | **71 / 71 covered** |
| Green depth | **23** |
| Yellow depth | **48** |
| Red depth | **0** |
| Services | **3 / 3 structurally covered** |
| Receivers | **8 / 8 structurally covered** |

**Important:** 71/71 means registered/covered, not 71/71 fully reconstructed. The latest depth audit is the authoritative Activity classification: 23 🟢 / 48 🟡 / 0 🔴.

Green means P3 UI/navigation/state reconstruction is complete through the documented dependency boundary. It does not mean downstream execution is complete.

## P3 lifecycle

```
P1 — Foundation
  ↓
P1 FROZEN
  ↓
P2 — Reference Skeleton
  ├─ 71 Activities
  ├─ 3 Services
  ├─ 8 Receivers
  └─ 0 Reference-owned Providers
  ↓
P2 FROZEN
  ↓
P3 — Activity/UI/navigation reconstruction
  ↓
71-Activity depth audit
  ↓
TOTAL P3 AUDIT — 15 domains
  ↓
normalisation / dedup
  ↓
classification
  ↓
dependency mapping
  ↓
dependency ordering
  ↓
work-package formation
  ↓
FOLLOW-UP CLOSURE
  ↓
TOTAL RE-AUDIT
  ↓
P3 CLOSED / FROZEN
  ↓
P4 GATE REVIEW
```

## Total P3 Audit — 15 domains

The original 15-domain audit is historical evidence. The table below is the current normalized domain register; Activity depth is tracked separately above.

| # | Domain | Current closure state |
|---:|---|---|
| 1 | Resource | 🟡 OPEN |
| 2 | Strings | 🟢 CLOSED / STATIC PASS |
| 3 | Dimensions | 🟢 CLOSED / PASS |
| 4 | Styles / Themes / Colors | 🟢 CLOSED / STATIC PASS |
| 5 | Manifest | 🟢 CLOSED / STATIC PASS |
| 6 | Intent | 🟢 CLOSED / STATIC PASS |
| 7 | Permissions | 🟢 CLOSED / STATIC PASS |
| 8 | Navigation | 🟢 CLOSED / STATIC PASS |
| 9 | Lifecycle / State | 🟢 CLOSED / STATIC PASS |
| 10 | Dialog / Error / Loading | 🟢 CLOSED / STATIC PASS |
| 11 | Branding / Identity | 🟢 CLOSED / STATIC PASS |
| 12 | Java-only | 🟢 CLOSED / PASS |
| 13 | Fake / Stub | 🟢 CLOSED / STATIC PASS |
| 14 | Boundary | 🟢 CLOSED / STATIC PASS |
| 15 | Static Hygiene | 🟢 CLOSED / STATIC PASS |

### Important status rule

The table above is the **current normalized closure register**, not a reproduction of the original audit colors.

A domain becomes 🟢 only after its current evidence-backed exit criterion is satisfied and re-audited.

## Closed domains

### N-02 — Strings
- Total-audited against the 71-Activity linked Reference string graph.
- 260 P3-linked string names are fully present or explicitly mapped to BaRe-owned identity.
- 101 missing P3-linked strings were reconstructed from Reference values; four Swift-derived identifiers were mapped through the N-11 branding rule instead of copied literally.
- Seven Reference-vs-BaRe value differences remain as **Authorized Branding/Identity Deviations** (BΛR☰ wording / Swift-specific external identity replacement).
- Duplicate app-owned string definitions: 0 after re-audit.
- Residual Swift product identity in the app-owned strings resource: 0.
- Reference remained unchanged; no build/install/runtime verification was used.
- Full audit register: `docs/audits/N02_STRINGS_TOTAL_AUDIT.md`.
- **STATIC PASS / CLOSED for P3.**

### N-03 — Dimensions
- Total audit: `docs/audits/N03_DIMENSIONS_TOTAL_AUDIT.md`
- Reference dimension inventory: **839 unique dimension names across 20 `dimens.xml` files**.
- N-03 application/project-facing scope: **67 Reference-facing dimension contracts**, separated from dependency/library dimensions.
- Reference-facing base values remain reconciled in `app/src/main/res/values/dimens.xml`.
- Required qualifier overrides remain present and match Reference: `values-land`, `values-w820dp`, `values-w320dp-land`, `values-w600dp-land`.
- Target-only `bare_expressive_switch_min_width` is explicitly classified as a BaRe-owned addition and does not invalidate Reference-facing parity.
- Reference canonical SHA rechecked unchanged.
- Build/install/runtime/visual verification not performed.
- **N-03 = 🟢 CLOSED / PASS — STATIC TOTAL RE-AUDIT.**

### N-11 — Branding / Identity
- Current exit criterion: **zero Swift product identity in `app/`**.
- App-owned Swift-derived identifiers were renamed where statically reconciled.
- Swift-specific external callback identity was replaced where app-owned identity was required.
- Reference remains untouched.
- Static PASS.
- Runtime/provider/OAuth success is not claimed.

### N-12 — Java-only
- BaRe application source remains Java-only.
- Static PASS.

## Follow-up execution rule

P3 closure uses **N-Level Full Closure / Audit-to-Green**:

1. Total-audit the complete N-domain.
2. Record the complete contract register before mutation.
3. Classify every finding.
4. Map dependencies and ownership.
5. Implement all actionable items belonging to that N in bounded batches.
6. Re-audit the complete N.
7. Do not stop between sub-batches while actionable work remains for that N.
8. Mark 🟢 only when the N exit criterion is actually satisfied.
9. Items belonging to another N are transferred explicitly; no duplicate mutation.
10. Reference remains read-only throughout.

Every bounded implementation batch must have:

- known scope;
- ownership;
- exclusions;
- static verification;
- re-audit target;
- checkpoint;
- stop/rollback condition.

## Current N closure order

| N | Domain | State |
|---:|---|---|
| N-01 | Resource | 🟡 |
| N-02 | Strings | 🟢 |
| N-03 | Dimensions | 🟢 |
| N-04 | Styles / Themes / Colors | 🟢 |
| N-05 | Manifest | 🟢 |
| N-06 | Intent | 🟢 |
| N-07 | Permissions | 🟢 CLOSED / STATIC PASS |
| N-08 | Navigation | 🟢 CLOSED / STATIC PASS |
| N-09 | Lifecycle / State | 🟢 CLOSED / STATIC PASS |
| N-10 | Dialog / Error / Loading | 🟢 CLOSED / STATIC PASS |
| N-11 | Branding / Identity | 🟢 |
| N-12 | Java-only | 🟢 |
| N-13 | Fake / Stub | 🟢 CLOSED / STATIC PASS |
| N-14 | Boundary | 🟢 CLOSED / STATIC PASS |
| N-15 | Static Hygiene | 🟡 |

**N-02, N-03, N-11, and N-12 are closed and must not be reopened without new evidence of defect.**

N-09 and N-10 remain red at the domain-register level until their complete N-level closure audit proves otherwise.

## Current P3 exit gate

P3 can close only when:

1. all 71 Reference-owned Activities remain covered, with the latest depth audit at 23 🟢 / 48 🟡 / 0 🔴;
2. no unresolved P3 defect remains outside explicitly deferred/downstream boundaries;
3. all 15 normalized domains have a current classification;
4. every non-green domain has either reached its documented exit criterion or has an explicit, evidence-backed downstream ownership/deferment;
5. Resource and Style/Theme/Color parity work is fully audited;
6. no unexplained Swift product identity remains in `app/`;
7. static resource/reference integrity is clean for the audited P3 surface;
8. Reference remains unchanged;
9. no unauthorized build/runtime claim is used as closure evidence.

When all conditions are satisfied:

**FREEZE P3**

Then P4 may enter gate review. P4 implementation does not start automatically.

## Runtime boundary

Build/install/runtime/visual verification is not authorized in this phase.

Therefore this gate makes no claim of:

- APK build success;
- installation success;
- runtime success;
- provider success;
- engine success;
- backend success;
- end-to-end feature success.

## Evidence / history

Older P3 documents and audit records remain recoverable through Git history. They are not competing authorities.

The current P3 authority is this file:

**`docs/PHASE_3_GATE.md`**

The detailed historical commits preserve prior audit snapshots, resource audits, normalization steps, and execution evidence.

## Current position

> **P1 FROZEN + P2 FROZEN + P3 Activity coverage 71/71 with depth 23 🟢 / 48 🟡 / 0 🔴 + normalized 15-domain closure active + P4 GATED.**

P3 is **not yet frozen**.


### N-04 closure — Styles / Themes / Colors

- Total audit: `docs/audits/N04_STYLES_THEMES_COLORS_TOTAL_AUDIT.md`
- Final static re-audit: **PASS**
- 98 style definitions in the BaRe values style surface.
- 0 duplicate styles.
- 0 unresolved custom style references within the N-04 style graph.
- 162 value color definitions plus required selector resources.
- 0 unresolved color references in the N-04 style graph.
- 57 attrs in the BaRe values attr surface with no duplicate declarations.
- 0 residual Swift identity in the audited N-04 style surface.
- Theme/light/dark/transparent/intro variants reconstructed under BaRe-owned identity.
- Reference canonical SHA rechecked unchanged.
- Build/install/runtime not performed.
- **N-04 = 🟢 CLOSED / STATIC PASS.**


### N-05 closure — Manifest

- Total audit: `docs/audits/N05_MANIFEST_TOTAL_AUDIT.md`
- N05-M1 static implementation and re-audit: **PASS**
- `locales_config.xml` and `network_security_config.xml` restored from Reference.
- Corresponding application manifest links restored.
- Reference-defined dynamic receiver permission mapped to the BaRe package identity.
- 71/71 Reference-owned Activities, 3/3 Services, 8/8 Receivers remain structurally covered; 0 Reference-owned Providers.
- MSAL/test-query and dependency/library manifest entries remain explicitly dependency-owned/UNKNOWN and were not blindly copied.
- Build/install/runtime not performed.
- **N-05 = 🟢 CLOSED / STATIC PASS.**


### N-06 closure — Intent

- Total audit: `docs/audits/N06_INTENT_TOTAL_AUDIT.md`
- N06-1 app-owned manifest Intent contracts: **PASS**
- N06-2 explicit Activity/Service Intent contracts: **PASS**
- N06-3 dependency/external callback surface: **explicit downstream ownership**
- Reference canonical fingerprint unchanged.
- Reference remained read-only.
- Build/install/runtime not performed.
- **N-06 = 🟢 CLOSED / STATIC PASS.**


### N-07 closure — Permissions

- Total audit: `docs/audits/N07_PERMISSIONS_TOTAL_AUDIT.md`
- Manifest declarations: **34/34 semantic match**
- Runtime SMS/call/notification/storage permission contracts: **PASS**
- Custom permission identity substitution: **explicitly recorded**
- Special-access declarations have explicit downstream ownership.
- Root/Shizuku, storage engine, installed-app inventory, package operations, exact-alarm behavior, and foreground-service lifecycle are **not claimed complete by N-07**.
- No speculative permission mutation.
- Reference remained read-only.
- Build/install/runtime not performed.
- **N-07 = 🟢 CLOSED / STATIC PASS — permission contract boundary.**


### N-08 closure — Navigation

- Total audit: `docs/audits/N08_NAVIGATION_TOTAL_AUDIT.md`
- Home/tab navigation: **PASS**
- Actionable app-owned Activity navigation: **PASS**
- Existing menu/drawer navigation: **PASS**
- Back/result navigation boundaries: **PASS**
- HomeSearch result routes remain explicitly downstream-blocked by missing search semantics; no synthetic routing was invented.
- Password-engine-dependent route remains downstream-boundary.
- External/dependency callbacks remain owned by N-06 / permission or feature domains.
- Reference remained read-only.
- Build/install/runtime not performed.
- **N-08 = 🟢 CLOSED / STATIC PASS — navigation contract boundary.**


### N-08 Search P3 closure

- Reference Search UI was re-audited against canonical decompile.
- P3 Search UI/resource surface has been reconstructed.
- Search toolbar/input, result-section containers, empty state, system-app affordance, result item layouts, keyboard boundary, and close transition are covered.
- Query/index/data/result-provider semantics remain **P4 handoff**.
- **P3 Search UI/navigation = 🟢 CLOSED.**


### N-09 closure — Lifecycle / State

- Total audit: `docs/audits/N09_LIFECYCLE_STATE_TOTAL_AUDIT.md`
- P3 lifecycle/recreation state: **PASS**
- Home selected navigation state: **PASS**
- Parcelable/List recreation state: **PASS**
- RestoreSpecialDataDetailsActivity Reference `extra_config_settings` gap: **FIXED + RE-AUDITED**
- Cloud/Auth/Diagnostics engine state remains explicit P4/feature handoff.
- Reference remained read-only.
- Build/install/runtime not performed.
- **N-09 = 🟢 CLOSED / STATIC PASS — lifecycle/recreation contract boundary.**


### N-10 closure — Dialog / Error / Loading

- Total audit: `docs/audits/N10_DIALOG_ERROR_LOADING_TOTAL_AUDIT.md`
- Common error surface: **PASS**
- Common loading/progress surface: **PASS**
- Folder/detail loading skeletons: **PASS**
- Warning/notice surfaces: **PASS**
- Programmatic Material dialog boundaries: **PASS at P3 boundary**
- Reference Firebase backend error surface was mapped to an authorized **Supabase** target surface.
- Actual backend/error-engine execution remains P4.
- **N-10 = 🟢 CLOSED / STATIC PASS.**


### N-13 closure — Fake / Stub

- Total audit: `docs/audits/N13_FAKE_STUB_TOTAL_AUDIT.md`
- Generic `ReferenceActivityBoundary` P3 shell: **REMOVED**
- Storage Switch fake shell: **REPLACED with Reference-shaped P3 UI**
- Locale selection fake completion: **FIXED to apply selected locale**
- Explicit engine/provider/backend boundary dialogs remain classified as **P4 handoffs**, not P3 fake.
- **N-13 = 🟢 CLOSED / STATIC PASS.**


### N-14 closure — Boundary

- Total audit: `docs/audits/N14_BOUNDARY_TOTAL_AUDIT.md`
- P3 dependency-boundary truthfulness: **PASS**
- Removed synthetic `RESULT_OK` from Google Drive GMS/no-GMS boundary acknowledgements.
- Removed synthetic `RESULT_OK` from Filen provider-auth boundary.
- Removed contributor dialog-dismiss `RESULT_OK` while remote persistence remains downstream.
- Provider callback boundaries already using non-success results for deferred provider work were retained.
- Explicit downstream ownership remains for engine/provider/backend/Supabase execution.
- Reference remained read-only.
- Build/install/runtime not performed.
- **N-14 = 🟢 CLOSED / STATIC PASS — truthful P3 boundary/result contract.**


### N-15 closure — Static Hygiene / Control-Plane Consistency

- Total audit: `docs/audits/N15_STATIC_HYGIENE_TOTAL_AUDIT.md`
- Canonical target guard: **PASS**
- Single live P3 authority: `docs/PHASE_3_GATE.md`
- Historical audit records remain distinguishable from current status.
- Current normalized 15-domain table reconciled with the already-closed N-05 through N-14 domains.
- Removed stale current-state colors for N-05, N-06, N-07, N-08, N-09, N-10, and N-13.
- No current `ACTIVE / TOTAL AUDIT`, `AUDIT REQUIRED`, or current #11 Branding `🔴 FAIL` marker remains in the audited control-plane documents.
- Reference remains read-only.
- Build/install/runtime not performed.
- **N-15 = 🟢 CLOSED / STATIC PASS — control-plane consistency.**

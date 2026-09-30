# BΛR☰ PHASE 4 GUIDE

## Purpose

Phase 4 is the **Core Behavior** phase following the frozen Phase 3 UI + Navigation reconstruction.

Reference baseline: Swift Backup 5.1.0 (versionCode 620), supplied decompiled archive.

Target: `savie/BaRe`, branch `rewrite`.

P3 status at entry:

- 71/71 Activities 🟢
- 0 Yellow
- 0 Red
- P3 frozen
- no build/install/runtime/visual verification performed

## Phase 4 scope

Phase 4 reconstructs core behavior that sits immediately behind the frozen P3 surfaces:

1. state and state restoration;
2. permission contracts and permission-driven UI state;
3. storage/path selection and persistence boundaries;
4. account/session state boundaries;
5. settings/configuration state;
6. Activity/Fragment coordination required by those contracts;
7. deterministic local data/state contracts required by the Reference UI.

Phase 4 does **not** claim:

- backup engine execution;
- restore engine execution;
- cloud provider execution;
- provider token exchange;
- database/backend success;
- billing/entitlement success;
- runtime/device verification.

Those remain downstream unless a specific Phase 4 task is explicitly proven to own the contract.

## Non-negotiable engineering rules

### Reference first

For every behavior:

`Reference → evidence → BaRe implementation`

Do not invent behavior when Reference evidence exists.

### P3 freeze protection

Do not reopen or redesign a green Activity merely to support Phase 4.

A green Activity may change only when Phase 4 exposes a concrete defect in an existing P3 contract. Record the evidence before changing it.

### Classification

Every difference or unresolved behavior is classified as:

- **PASS**
- **AUTHORIZED DEVIATION**
- **P4 DEFERRED**
- **UNKNOWN**
- **FAIL**

Do not convert UNKNOWN into an assumption.

### Implementation language

- Java only.
- Android Views/XML.
- No new Kotlin source.
- No Jetpack Compose rewrite.
- Preserve Reference class/resource/navigation contracts where evidence supports them.

### Boundary markers

Existing P3 boundary strings/dialogs are temporary engineering markers.

They are not final product copy and never constitute proof of execution.

When a real Phase 4 contract replaces one, remove or replace the marker with the Reference-equivalent surface.

## Phase 4 workstreams

### F4.1 State model

For each relevant Activity/feature:

- identify Reference initial state;
- identify loading/ready/empty/error states;
- identify transient versus persisted state;
- identify recreation behavior;
- identify result/return state;
- identify state ownership;
- identify state reset conditions.

Acceptance:

- no fabricated state;
- state transitions are Reference-derived;
- recreation does not silently lose required P3 state.

### F4.2 Permission model

For each permission-gated surface:

- Reference permission declaration;
- request timing;
- rationale/denied state;
- retry path;
- permanently-denied path where evidenced;
- Android-version-specific branch;
- navigation after result.

Acceptance:

- manifest and Activity request contracts agree;
- permission denial is represented explicitly;
- no permission success is fabricated.

### F4.3 Storage model

Reconstruct only the storage behavior required by the Reference contract:

- selected storage location;
- path/URI state;
- initial/default location;
- local versus cloud distinction;
- persistence boundary;
- invalid/unavailable location handling.

Acceptance:

- no invented storage layout;
- no destructive filesystem operation without Reference evidence;
- provider/engine execution remains deferred when outside Phase 4.

### F4.4 Account/session state

Reconstruct:

- signed-in/signed-out state;
- account identity display state;
- sign-in result propagation;
- session-dependent UI;
- logout/disconnect state;
- account persistence boundary.

Provider authentication/token exchange remains downstream unless directly required by a verified Phase 4 contract.

### F4.5 Settings/configuration state

Reconstruct:

- preference defaults;
- setting read/write behavior;
- category routing;
- dependency between settings;
- validation;
- reset/default behavior;
- result propagation.

Do not redesign settings architecture for convenience.

### F4.6 Core data contracts

Only create data/value objects when required by Reference evidence.

For every compatibility object:

- identify Reference source contract;
- document fields;
- document serialization/Parcelable shape where known;
- document unknown fields explicitly;
- avoid fake inventory/data.

## Verification ladder

Phase 4 verification is static-first:

```
Reference evidence
→ contract definition
→ Java implementation
→ static inspection
→ targeted source-level tests/checks if available
→ explicit user authorization
→ build/runtime/device verification
```

Build, install, and runtime execution remain prohibited until explicitly authorized.

## Phase 4 exit criteria

Phase 4 may close only when:

- all targeted P4 contracts are classified;
- no P4 FAIL remains;
- all P3 surfaces still satisfy their frozen contracts;
- permission/state/storage/account/settings behavior has evidence;
- no engine/provider/backend success is claimed without execution evidence;
- all deferred work is explicitly classified for Phase 5+;
- documentation is updated in:
  - `docs/PHASE_3_STATUS.md`
  - `docs/PHASE_3_CLOSURE_AUDIT.md`
  - `docs/PARITY_MATRIX.md`
  - `docs/RECONSTRUCTION_CHECKPOINT.md`
  - this guide.

## Immediate Phase 4 sequence

1. Build a Reference-backed state/permission contract inventory.
2. Identify P4 gaps that block existing green P3 flows.
3. Implement the smallest Reference-equivalent Java contracts.
4. Re-audit P3 surfaces for regressions.
5. Classify every remaining execution dependency as P4/P5/P6/P7/etc.
6. Update the checkpoint after each verified work package.

Do not start backup/provider/backend implementation merely because a P3 boundary exists.

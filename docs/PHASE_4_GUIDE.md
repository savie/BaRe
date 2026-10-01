# BΛR☰ PHASE 4 GUIDE

## Canonical Target Guard

The reconstruction target is defined by `docs/bare.md`. This guide cannot redefine 1:1 parity or authorize deviations. P4 cannot start until P3 closure is established and the P4 gate is explicitly satisfied.

Reference baseline: Swift Backup 5.1.0 (versionCode 620), supplied decompiled archive.

Target: `savie/BaRe`, branch `rewrite`.

## Phase 4 position

P3 is frozen at the documented static boundary:

- 71 / 71 Reference-owned Activities covered;
- Activity depth: 23 🟢 / 48 🟡 / 0 🔴;
- all 15 normalized P3 domains closed at the static boundary;
- no unresolved P3 defect remains outside downstream boundaries;
- no build/install/runtime/device verification is claimed.

P4 implementation is **gated, not automatically started** by the P3 freeze.

P4 begins only after an explicit P4 gate decision. This guide therefore defines the execution method and scope; it does not authorize implementation by itself.

## Purpose

Phase 4 is the **Core Behavior / Contract** phase behind the frozen Phase 3 UI + Navigation surfaces.

The central rule is:

> **Do not start P4 by deciding what architecture to build. Start by determining what contracts the frozen P3 surfaces actually require.**

P4 is therefore **evidence-first and contract-first**, not Activity-first and not architecture-first.

The target lifecycle is:

```
Reference evidence
      ↓
P3 boundary inventory
      ↓
P4 contract classification
      ↓
minimal Reference-equivalent contract
      ↓
static verification
      ↓
P3 regression audit
      ↓
next P4 boundary
```

P4 does not attempt to recreate every class or subsystem visible in the Reference decompile. It reconstructs the behavior and contracts required by the frozen P3 surfaces, using Reference evidence wherever available.

## Phase 4 scope

Phase 4 reconstructs core behavior that sits immediately behind the frozen P3 surfaces:

1. state and state restoration;
2. permission contracts and permission-driven UI state;
3. storage/path selection and persistence boundaries;
4. account/session state boundaries;
5. settings/configuration state;
6. Activity/Fragment coordination required by those contracts;
7. deterministic local data/state contracts required by the Reference UI;
8. job/task contracts only where an existing P3 flow requires them;
9. classification of downstream execution dependencies.

P4 does **not** claim:

- backup engine execution;
- restore engine execution;
- cloud provider execution;
- provider token exchange;
- actual upload/download;
- archive/compression/encryption execution;
- database/backend success;
- billing/entitlement success;
- production automation success;
- runtime/device verification.

Those remain downstream unless a specific Phase 4 task is explicitly proven to own the contract.

## Non-negotiable engineering rules

### Reference first

For every behavior:

`Reference → evidence → contract → BaRe implementation`

Do not invent behavior when Reference evidence exists.

When Reference evidence is incomplete:

- classify the gap as **UNKNOWN**;
- do not silently infer product behavior;
- document the evidence boundary;
- defer implementation when a safe contract cannot be established.

### P4 is boundary-first

Do not begin by implementing a large generic engine, repository hierarchy, provider layer, or domain model merely because it appears architecturally useful.

First identify the actual P3 boundary:

```
Activity / Fragment
      ↓
user action / lifecycle event
      ↓
existing P3 boundary
      ↓
missing contract or dependency
```

Then classify that dependency:

- **P4** — required contract/core behavior behind an existing P3 flow;
- **P5** — actual feature execution;
- **P6** — runtime/parity/hardening;
- **P7+** — later lifecycle work where applicable;
- **UNKNOWN** — evidence is insufficient to classify safely.

Only after classification should implementation begin.

### P3 protection / Backflow Firewall

P3 is frozen.

A P3 surface may change only when P4 produces concrete evidence that an existing P3 contract is wrong.

Required sequence:

```
P4 implementation
      ↓
Does it expose a P3 contract mismatch?
      │
      ├─ NO → keep P3 frozen
      │
      └─ YES
           ↓
     Reference evidence?
           │
           ├─ NO → STOP / UNKNOWN
           │
           └─ YES → controlled P3 correction
```

A P4 convenience refactor is not sufficient evidence to modify a green P3 Activity.

Do not use P4 as a reason to redesign UI, navigation, resources, or Activity structure.

### Minimal implementation principle

Implement the **smallest Reference-equivalent contract** required by an existing P3 flow.

Avoid speculative:

- generic engines;
- unused repositories;
- provider frameworks without consumers;
- fake inventories;
- fake execution success;
- abstractions created only for future convenience.

Architecture may emerge from verified dependency requirements; it must not be invented ahead of evidence.

### Classification

Every difference, dependency, or unresolved behavior is classified as:

- **PASS**
- **AUTHORIZED DEVIATION**
- **P4**
- **P5**
- **P6**
- **P7+**
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

## P4.0 Boundary & Contract Inventory

This is the required first P4 work package.

Before implementing any P4 subsystem, inventory every relevant dependency exposed by the frozen P3 surfaces.

For each boundary record:

```
P3 surface
    ↓
trigger / lifecycle event
    ↓
existing boundary
    ↓
Reference evidence
    ↓
required contract
    ↓
classification
    ↓
consumer
    ↓
minimum implementation
    ↓
deferred execution
    ↓
verification method
```

The inventory must answer:

- What does the P3 surface ask for?
- What does the Reference demonstrably do?
- What contract is required to preserve that behavior?
- Which layer owns that contract?
- Is it P4 or downstream?
- What remains intentionally deferred?
- What evidence would prove the contract correct?
- Could implementing it force a P3 change?

### P4 work package exit contract

No P4 implementation package is considered ready until these are explicit:

- **Reference evidence**
- **Contract**
- **Owner**
- **P3 consumer**
- **Minimum implementation**
- **Deferred execution**
- **Verification**
- **P3 regression surface**

This prevents implementation from becoming architecture drift.

## P4.1 State model

For each relevant Activity/feature identified by the boundary inventory:

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
- recreation does not silently lose required P3 state;
- only state required by an observed P3 flow is implemented.

## P4.2 Permission model

For each permission-gated surface identified by the inventory:

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
- no permission success is fabricated;
- permission changes do not alter frozen P3 navigation unless Reference evidence requires it.

## P4.3 Storage / Persistence model

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
- provider/engine execution remains deferred when outside Phase 4;
- persistence exists only where required by a verified contract.

Example boundary:

```
P4:
selected URI
selected path
persisted location
invalid/unavailable state

P5:
read filesystem
archive
compression
encryption
write backup
```

## P4.4 Account / Session state

Reconstruct only the account/session behavior required by an existing P3 flow:

- signed-in/signed-out state;
- account identity display state;
- sign-in result propagation;
- session-dependent UI;
- logout/disconnect state;
- account persistence boundary.

Provider authentication/token exchange remains downstream unless directly required by a verified Phase 4 contract.

## P4.5 Settings / Configuration state

Reconstruct:

- preference defaults;
- setting read/write behavior;
- category routing;
- dependency between settings;
- validation;
- reset/default behavior;
- result propagation.

Do not redesign settings architecture for convenience.

## P4.6 Core data contracts

Only create data/value objects when required by Reference evidence and an identified P3 consumer.

For every compatibility object:

- identify Reference source contract;
- document fields;
- document serialization/Parcelable shape where known;
- document unknown fields explicitly;
- identify the P3 consumer;
- avoid fake inventory/data;
- avoid creating objects solely because an analogous Reference class exists.

## P4.7 Job / Task contracts

Create job/task contracts only when an existing P3 flow requires a job/task boundary.

For example:

```
P4:
BackupJob
RestoreJob
JobState
Progress
Cancellation
Error/result contract

P5:
actual filesystem execution
archive/compression
encryption
provider upload/download
retry/resume execution
```

The existence of a P3 “Backup” or “Restore” Activity does not by itself authorize implementation of the execution engine.

## P4.8 Dependency classification

After each verified contract, classify the remaining execution dependency:

```
P3 surface
   ↓
P4 contract
   ↓
P5 execution
   ↓
P6 runtime / parity / hardening
```

Examples:

### Local backup

```
P4
storage contract
backup configuration
BackupJob contract
state/progress/error model

P5
filesystem read
archive
compression
encryption
backup write
```

### Cloud

```
P4
CloudProvider abstraction only when required
credential/session state
remote metadata contract
upload/download job model

P5
OAuth/token exchange
actual upload/download
retry/resume
checksum
provider execution
```

Do not implement provider-specific execution merely because a cloud provider appears in the P3 UI.

## Verification ladder

Phase 4 verification is static-first:

```
Reference evidence
→ boundary inventory
→ contract definition
→ Java implementation
→ static inspection
→ targeted source-level tests/checks if available
→ P3 regression audit
→ explicit user authorization
→ build/runtime/device verification
```

Build, install, and runtime execution remain prohibited until explicitly authorized.

Static success does not imply engine/provider/backend/runtime success.

## P4 work package loop

Every P4 package follows the same loop:

```
1. Select frozen P3 boundary
2. Gather Reference evidence
3. Define contract
4. Classify P4 vs downstream
5. Implement minimum contract
6. Static verify
7. Re-audit affected P3 surface
8. Record deferred dependencies
9. Close package
10. Select next evidence-backed boundary
```

Do not batch speculative architecture work across unrelated P3 surfaces.

## Phase 4 exit criteria

Phase 4 may close only after:

- all targeted P4 boundaries are inventoried;
- all targeted P4 contracts are classified;
- no P4 FAIL remains;
- all P3 surfaces still satisfy their frozen contracts, except explicitly evidenced/approved corrections;
- state/permission/storage/account/settings behavior has Reference evidence;
- required core data/job contracts have identified consumers;
- no speculative unused subsystem remains part of the claimed P4 completion;
- no engine/provider/backend success is claimed without execution evidence;
- all deferred work is explicitly classified for Phase 5+;
- documentation is updated in the applicable lifecycle records.

P4 closure does not imply:

- backup/restore execution success;
- cloud execution success;
- backend/database success;
- billing/entitlement success;
- runtime/device parity;
- production readiness.

## Immediate Phase 4 sequence

After explicit P4 gate approval:

1. **P4.0 — Build the Reference-backed boundary and contract inventory.**
2. **P4.1 — Identify the P4 gaps that block existing frozen P3 flows.**
3. **P4.2 — Implement the smallest Reference-equivalent contracts required by those blockers.**
4. **P4.3 — Re-audit the affected P3 surfaces for regression.**
5. **P4.4 — Classify every remaining execution dependency as P4/P5/P6/P7+/UNKNOWN.**
6. **P4.5 — Close the verified work package and update the lifecycle checkpoint.**
7. Repeat only for the next evidence-backed P3 boundary.

Do not start backup/provider/backend implementation merely because a P3 boundary exists.

Do not start from Activity #1 and implement all 71 Activities independently.

Do not create a large generic architecture before the boundary inventory demonstrates the contracts that architecture must serve.

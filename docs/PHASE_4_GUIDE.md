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

## P4 execution model

P4 is one lifecycle loop, expressed as six work packages. Do not create a separate phase document for every work package.

```
P3 FROZEN
   ↓
P4.0 — Reference-backed contract inventory
   ↓
P4.1 — BaRe gap / blocker analysis
   ↓
P4.2 — Minimum contract implementation
   ↓
P4.3 — P3 regression re-audit
   ↓
P4.4 — Remaining-gap classification
   ↓
P4.5 — Verified checkpoint / package closure
```

The six packages are the execution stages of one P4 workflow, not six independent projects.

### P4.0 — Reference-backed Boundary & Contract Inventory

This is the first P4 work package and produces the canonical contract register.

For every relevant frozen P3 boundary, record:

```
P3 surface
    ↓
trigger / lifecycle event
    ↓
existing P3 boundary
    ↓
Reference evidence
    ↓
required contract
    ↓
current BaRe state
    ↓
classification
    ↓
consumer / owner
    ↓
minimum implementation
    ↓
deferred execution
    ↓
verification method
    ↓
P3 regression surface
```

The inventory must answer:

- What does the frozen P3 surface ask for?
- What does the Reference demonstrably establish?
- What contract is actually required?
- What already exists in BaRe?
- Which layer owns the contract?
- Is it P4 or downstream?
- What remains intentionally deferred?
- What evidence would prove the contract correct?
- Could implementation require a P3 correction?

P4.0 must use existing Reference evidence first. Do not restart the Reference decompile audit unless a specific evidence gap requires targeted re-checking.

The current contract domains are:

1. state / state restoration;
2. permission contracts and permission-driven UI state;
3. storage/path selection and persistence;
4. account/session state;
5. settings/configuration;
6. Activity/Fragment coordination required by those contracts;
7. deterministic local data/state contracts;
8. job/task contracts only where an existing P3 flow requires them;
9. downstream execution dependencies that must be explicitly classified.

**P4.0 output:** `docs/audits/P4_CONTRACT_REGISTER.md`.

No implementation is authorized merely because an inventory row exists.

### P4.1 — BaRe Gap / Blocker Analysis

Compare the P4.0 contract register against the current BaRe implementation.

For every contract classify the current condition:

- **PASS** — contract already satisfied;
- **GAP** — required behavior is missing/incomplete;
- **STUB** — boundary exists but is non-functional/static;
- **DOWNSTREAM** — contract exists but execution belongs to P5+;
- **UNKNOWN** — Reference evidence is insufficient;
- **FAIL** — current behavior contradicts an established contract.

Prioritize only gaps that block an existing frozen P3 flow.

Do not start from Activity #1 and do not treat every Reference class as a required BaRe implementation.

**P4.1 output:** update `docs/audits/P4_CONTRACT_REGISTER.md` with gap/blocker status. Create a separate gap register only if the register becomes materially unreadable.

### P4.2 — Minimum Contract Implementation

Implement only the smallest Reference-equivalent P4 contract required by a P4.1 blocker.

Rules:

- Java only.
- Android Views/XML.
- No new Kotlin source.
- No speculative generic engine/repository/provider architecture.
- No fake execution success.
- No implementation of P5 engine behavior merely because P3 exposes the feature.
- Preserve frozen P3 surfaces unless concrete Reference evidence proves a contract mismatch.

Every implementation package must have:

- Reference evidence;
- contract;
- owner;
- P3 consumer;
- minimum implementation;
- deferred execution;
- verification method;
- regression surface.

### P4.3 — P3 Regression Re-audit

After each P4 implementation package:

1. re-audit the affected frozen P3 surface;
2. verify navigation/resource/state assumptions remain intact;
3. record any regression;
4. if a P3 correction appears necessary, require Reference evidence before changing it.

A convenience refactor is not evidence for modifying a frozen P3 Activity.

**P4.3 output:** affected existing audit(s) plus the P4 contract register.

### P4.4 — Remaining-gap Classification

Every unresolved dependency is classified:

- **P4** — still core behavior;
- **P5** — actual feature execution;
- **P6** — runtime/parity/hardening;
- **P7+** — later lifecycle work;
- **UNKNOWN** — evidence insufficient.

Typical boundaries:

```
P4
state / permission / storage / account / settings
job-state / progress / error contracts
local metadata / deterministic persistence

P5
filesystem execution
archive / compression / encryption
backup / restore execution
provider upload / download
token exchange / provider SDK execution
backend mutation

P6+
runtime parity / hardening / performance / device-specific verification
```

Do not convert UNKNOWN into an assumption.

**P4.4 output:** explicit classification in the contract register and lifecycle status records.

### P4.5 — Verified Checkpoint / Package Closure

A P4 package can close only when:

- its contracts are evidenced and classified;
- required implementation is complete;
- static verification is recorded;
- affected P3 surfaces remain valid;
- downstream work is explicitly deferred/classified;
- no P4 FAIL remains for that package;
- no runtime/build/install/provider/backend success is implied.

Update:

- `docs/audits/P4_CONTRACT_REGISTER.md`;
- `docs/RECONSTRUCTION_CHECKPOINT.md`;
- `docs/RECONSTRUCTION_STATUS.md`;
- `docs/PHASE_4_GATE.md` only when the gate state itself changes.

### Documentation rule

Do **not** create `P4.0.md`, `P4.1.md`, `P4.2.md`, etc. by default.

Use:

```
docs/
├── PHASE_4_GUIDE.md          ← rules + workflow
├── PHASE_4_GATE.md           ← current P4 gate
├── RECONSTRUCTION_CHECKPOINT.md
├── RECONSTRUCTION_STATUS.md
└── audits/
    └── P4_CONTRACT_REGISTER.md  ← technical evidence + reconciliation
```

Existing domain audits remain in `docs/audits/` and are referenced by the P4 contract register; do not duplicate them unless a new audit is actually required.

### Verification ladder

P4 verification remains static-first:

```
Reference evidence
→ boundary inventory
→ contract definition
→ BaRe implementation
→ static inspection
→ targeted source-level checks if available
→ P3 regression audit
→ explicit user authorization
→ build/runtime/device verification
```

Build, install, and runtime execution remain prohibited until explicitly authorized.

Static success does not imply engine/provider/backend/runtime success.

### P4 work package loop

Every package follows:

```
1. Select frozen P3 boundary
2. Gather existing Reference evidence
3. Define contract
4. Compare against BaRe
5. Classify P4 vs downstream
6. Implement minimum contract if blocked
7. Static verify
8. Re-audit affected P3 surface
9. Record deferred dependencies
10. Close package
11. Select next evidence-backed boundary
```

Do not batch speculative architecture across unrelated P3 surfaces.

## Phase 4 exit criteria

Phase 4 may close only after:

- all targeted P4 boundaries are inventoried;
- all targeted P4 contracts are classified;
- no P4 FAIL remains;
- all affected P3 surfaces still satisfy their frozen contracts, except explicitly evidenced/approved corrections;
- state/permission/storage/account/settings behavior has Reference evidence;
- required core data/job contracts have identified consumers;
- no speculative unused subsystem remains part of the claimed P4 completion;
- no engine/provider/backend success is claimed without execution evidence;
- all deferred work is explicitly classified for Phase 5+;
- lifecycle documentation is updated.

P4 closure does not imply:

- backup/restore execution success;
- cloud execution success;
- backend/database success;
- billing/entitlement success;
- runtime/device parity;
- production readiness.

## Immediate Phase 4 sequence

After explicit P4 gate approval:

1. **P4.0 — Build the Reference-backed contract register.**
2. **P4.1 — Identify blockers in BaRe behind frozen P3 flows.**
3. **P4.2 — Implement the smallest required P4 contracts.**
4. **P4.3 — Re-audit affected P3 surfaces.**
5. **P4.4 — Classify every remaining dependency.**
6. **P4.5 — Close the verified package and update lifecycle records.**
7. Repeat only for the next evidence-backed boundary.

Do not start backup/provider/backend implementation merely because a P3 boundary exists.

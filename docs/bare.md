# BaRe / BΛR☰ — Canonical Reconstruction Contract

**Repository:** `savie/BaRe`  
**Primary branch:** `rewrite`  
**Reference:** Swift Backup 5.1.0, versionCode 620  
**Contract state:** SPECIFICATION — NOT VERIFIED

## 1. Authority

BaRe is reconstructed from a read-only Reference.

```
Reference (read-only)
    ↓
Evidence / Contract
    ↓
Mapping
    ↓
BaRe implementation
    ↓
Test
    ↓
Verification
```

Reference is never modified to make BaRe match.

Canonical Reference inputs:
- `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
- `/mnt/data/5.1.0 (620).apk`

Lifecycle governance:
- `/mnt/data/FULL_LIFECYCLE_SYSTEM_ENGINEER_MASTER_v2.md`

## 2. Target Formula

```
BaRe = Reference + Authorized Deviations
```

Any difference not explicitly authorized below is an **UNAUTHORIZED DEVIATION**.

## 3. Hard Implementation Constraints

- Implementation language: Java.
- No Kotlin source (`.kt`).
- No Jetpack Compose.
- UI implementation uses Android Views/XML.
- No speculative implementation when the Reference contract is unknown.
- Insufficient evidence must be recorded as `UNKNOWN` or `BLOCKED`.

## 4. State Model

Use these states consistently:

| State | Meaning |
|---|---|
| PLANNED | Target defined, not implemented |
| IMPLEMENTED | Source exists |
| COMPILED | Relevant source compiled successfully |
| TESTED | Relevant test executed |
| VERIFIED | Contract proven with evidence |
| AUTHORIZED DEVIATION | Difference explicitly allowed |
| UNKNOWN | Evidence insufficient |
| BLOCKED | Progress prevented by missing prerequisite/dependency |

These are not interchangeable:

`documented ≠ implemented ≠ compiled ≠ tested ≠ verified`

Build success is not proof of runtime correctness.

## 5. Evidence Rule

Every material claim follows:

```
Claim
  ↓
Expected contract
  ↓
Evidence
  ↓
Observed result
  ↓
Classification
```

Do not use `MATCH`, `VERIFIED`, `COMPLETE`, `READY`, or `WORKING` without the evidence required for that claim.

## 6. Difference Classification

| Classification | Meaning |
|---|---|
| MATCH | Reference contract and BaRe behavior/structure agree and evidence is sufficient |
| AUTHORIZED DEVIATION | Difference explicitly allowed by this document |
| UNAUTHORIZED DEVIATION | Difference without authorization; defect |
| UNKNOWN | Evidence insufficient to classify |
| BLOCKED | Verification/implementation cannot proceed |

`UNKNOWN` is never a synonym for MATCH.

## 7. Authorized Deviations

### 7.1 Branding / Public Identity

Swift Backup public-facing identity may become:

```
Swift Backup → BΛR☰ / BaRe
```

This may cover app name, logo, public text, help, notices, public links and other user-visible identity surfaces.

Branding changes must not silently change unrelated behavior.

### 7.2 Static Hygiene / Identifier Normalization

Final BaRe-owned `app/` code must contain no **unauthorized internal** occurrences of:
- `Swift` / `swift`
- `Firebase` / `firebase`

This is **not** a blind grep-and-replace rule.

Every relevant occurrence is classified:

| Classification | Meaning |
|---|---|
| RENAME | Safe to rename; all consumers updated |
| PRESERVE-COMPATIBILITY | External/technical contract must remain |
| MIGRATE | Internal contract moved to BaRe while compatibility is preserved |

Required ledger:

| Occurrence | Location | Owner | Classification | Action | Evidence |
|---|---|---|---|---|---|
| ... | ... | ... | ... | ... | ... |

Goal: zero unauthorized internal occurrences, not zero arbitrary third-party strings.

### 7.3 Premium Entitlement

Premium entitlement is granted/free.

Allowed change:
- remove payment/purchase enforcement.

Not allowed:
- remove Premium features;
- remove Premium UI/flow;
- alter Premium behavior for reasons other than entitlement.

### 7.4 Backend

BaRe backend target is Supabase instead of Firebase.

Project URL:

`https://fbiazqbrkwovzrirnzpb.supabase.co`

Never invent or infer without evidence:
- project ID
- anon key
- schema
- table
- column
- RLS
- bucket
- Edge Function
- RPC
- authentication configuration

If actual state is not verified: `UNKNOWN` / `BLOCKED`.

Migration files are not proof that actual database state changed.

No data migration is authorized by this contract.

## 8. Third-Party / Library Components

A Reference component being supplied by a dependency does not make its contract irrelevant.

Delegation is valid only when:
1. dependency is declared;
2. class resolves;
3. package/class contract matches;
4. manifest registration matches;
5. authority/configuration matches where applicable;
6. relevant runtime behavior is verifiable;
7. compatibility identifiers are recorded where required.

`dependency exists ≠ contract verified`.

## 9. Mapping Requirement

Every target component/resource/contract must be traceable:

```
Reference
 → Evidence
 → BaRe target
 → Implementation
 → Verification evidence
 → Classification
```

No blind/global replacement is permitted.

## 10. Phase Governance

Every phase document must explicitly define:

```
INPUT
  ↓
WORK
  ↓
OUTPUT
  ↓
EXIT CRITERIA
  ↓
EVIDENCE
  ↓
STATE
```

A phase is not PASS because its documentation exists.

## 11. Decision Records

Cross-cutting decisions require a record containing:

- Decision
- Context
- Alternatives
- Rationale
- Trade-off
- Consequence
- Affected components
- Evidence

At minimum record:
- package normalization
- Application rename
- Firebase → Supabase boundary
- Premium entitlement
- third-party preservation
- provider delegation
- Reference → BaRe compatibility strategy

## 12. Global Definition of Done

The project is not complete merely because an APK builds or launches.

Required lifecycle:

```
Reference
 → Inventory
 → Mapping
 → Reconstruction
 → Build
 → Runtime Test
 → Visual Comparison
 → Behavior Comparison
 → Feature Comparison
 → Deviation Audit
 → Verification
```

Completion claims require evidence.

## 13. Non-Negotiables

1. Evidence > assumption.
2. Verification > confidence.
3. Reference is read-only.
4. Do not fabricate system, database, runtime, deployment or tool state.
5. Do not skip prerequisites.
6. Do not treat source existence as runtime proof.
7. Do not treat migration history as actual database state.
8. Do not treat build success as system correctness.
9. Do not silently change canonical requirements.
10. Preserve `UNKNOWN` / `BLOCKED` until resolved.

## 14. Roadmap

1. Foundation
2. Reference Skeleton
3. UI + Navigation
4. Core Behavior
5. Features
6. Authorized Deviations
7. Runtime
8. Parity Verification
9. Deviation Audit
10. Final BΛR☰

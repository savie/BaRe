# BΛR☰ Phase 5 Gate

## Gate decision

**P5 — CLOSED at the static feature-contract boundary / READY FOR P6**

P5.0 through P5.7 are complete at the documented static boundary. This document is the single P5 → P6 handoff decision surface.

P5 closure does **not** claim build, install, runtime/device parity, provider execution, backend execution, native execution, or production readiness.

## Frozen P5 inputs

- Reference: Swift Backup 5.1.0 / versionCode 620 decompile ZIP; read-only.
- Target: `savie/BaRe`, branch `rewrite`.
- P5 method: `docs/PHASE_5_GUIDE.md`.
- P5.7 closure evidence: `docs/audits/P5.7_FEATURE_CLOSURE.md`.
- P6 handoff readiness: `docs/audits/P5.6.5_P6_HANDOFF_READINESS.md`.
- P5.6 regression evidence remains part of the closure package.

## P5 closure sequence

| Boundary | Result |
|---|---|
| P5.0 — Scope / feature universe | **COMPLETE** |
| P5.1 — Feature evidence / coverage | **COMPLETE** |
| P5.2 — Contract / owner / boundary | **COMPLETE** |
| P5.3 — Gap / dependency / classification | **COMPLETE** |
| P5.4 — Implementation readiness | **COMPLETE** |
| P5.5 — Bounded feature implementation | **COMPLETE / STATIC** |
| P5.6 — Regression / hygiene / consumer closure | **COMPLETE / STATIC** |
| P5.6.5 — P6 handoff readiness | **COMPLETE / STATIC** |
| P5.7 — Feature closure | **COMPLETE / STATIC** |
| P5 overall gate | **CLOSED / READY FOR P6** |

## Feature universe

P5 closes the frozen Reference feature universe as follows:

- Numbered Reference IDs: **171**
- Unique feature-contract units: **170**
- Batch-assigned implementation contracts: **168**
- Authorized target-deviation contracts: **F31, F168**
- Reconciliation marker: **F94 → F69**
- UNKNOWN: **0**
- BLOCKED: **0**
- UNAUTHORIZED DEVIATION: **0**

The six implementation batches remain ordered:

`R-A → R-B → R-C → R-D → R-E → R-F`

The detailed contract register, owner mapping, dependency classification, readiness assignment, implementation evidence, and regression evidence remain in their respective P5 evidence documents. This gate is the consolidated decision surface, not a replacement for those evidence records.

## Final classification

### MATCH — 168 contracts

The 168 batch-assigned contracts are closed as Reference-equivalent at the static implementation/contract boundary, subject to the explicit verification limitations below.

Known downstream execution is not represented as successful merely because its static contract exists.

### AUTHORIZED DEVIATION — F31 / F168

The project explicitly authorizes Premium to be free.

BaRe therefore retains the Reference Premium feature surface while using a target entitlement policy that grants Premium access without requiring payment or a Google Play purchase.

The current static target policy is represented by:

- `com.bare.premium.PremiumActivity`
- `com.bare.premium.PremiumAccessPolicy`
- `PremiumTransaction` / `PremiumTransactionRepository` as Reference-derived purchase-domain contracts

No Google Play billing execution or purchase-verification backend is claimed by this gate.

**Classification:** AUTHORIZED DEVIATION / CLOSED at the static target-policy boundary.

## P5 implementation and regression package

The closure package establishes:

1. Reference evidence was mapped into the frozen F-ID universe.
2. Each feature contract has a defined owner/boundary.
3. Dependencies and downstream execution boundaries were classified.
4. Implementation readiness was assigned before bounded implementation.
5. R-A through R-F were implemented/re-audited at the static boundary.
6. P5.6 regression closed target identity leakage, localization debt, semantic naming, broken consumers, cross-batch ownership, and related hygiene defects.
7. P5.6.5 established the provider-neutral backend/account boundary needed by the next phase.
8. P5.7 assigned a final classification to every unique P5 contract.

## P6 handoff contract

Phase 6 must start from this gate and the supporting P5.6.5 audit.

### Backend ownership

Use this boundary:

`UI/feature consumer → provider-neutral domain/repository boundary → Supabase adapter → Supabase service/backend`

Supabase is the authorized BaRe target backend policy.

Firebase is Reference evidence only and is not a target backend implementation.

### Identity ownership

Use this conceptual boundary:

`Account lifecycle → provider-neutral BackendIdentity → Supabase Auth identity`

BaRe backend identity is distinct from external backup-cloud provider identity.

### External cloud providers

`CloudProviderRepository` owns external backup-cloud access.

Supabase owns BaRe backend concerns.

These identities, credentials, repositories, and persistence responsibilities must not be collapsed into one model.

### Reference backend evidence

`ReferenceBackendContract` is evidence-only.

Reference backend paths such as `users/{uid}/userInfo`, `cloud_v1`, and purchase-verification paths must **not** be copied mechanically into a Supabase schema.

P6 derives its target backend model from approved BaRe contracts, target requirements, and actual authorized Supabase state.

### Data classification

Before backend persistence, P6 must classify data as:

- LOCAL_ONLY
- LOCAL_PERSISTED
- CLOUD_PERSISTED
- BACKEND_DERIVED
- PROVIDER_DERIVED
- RUNTIME_ONLY
- SECRET/CREDENTIAL
- MIXED_LOCAL_CLOUD

### Credential boundary

Credential-shaped Reference contracts are evidence, not authorization to persist secrets.

P6 must explicitly decide whether each credential belongs to:

- NEVER_BACKEND
- LOCAL_SECURE_STORAGE
- SUPABASE_AUTH
- SUPABASE_DATABASE
- EXTERNAL_PROVIDER_ONLY
- TRANSIENT_MEMORY

Provider secrets, private keys, encryption keys, passwords, and access/refresh tokens must not be placed into ordinary application tables without an explicit evidence/authorization decision.

## Explicit P6 scope

The following are **P6 work**, not missing P5 closure:

- Supabase project/client configuration
- Supabase Auth implementation
- session/token lifecycle integration
- target database model
- database policies/RLS
- Storage responsibilities
- server-side functions
- Supabase adapters/repositories
- local↔cloud synchronization
- conflict/retry semantics
- secrets/environment configuration
- backend runtime verification
- authorized Premium free-access integration beyond the static P5 policy boundary

P5 does not authorize execution of these items.

## Verification boundary

The following remain unperformed and unclaimed:

- Gradle/build/APK generation
- installation/device execution
- runtime behavior verification
- real filesystem backup/restore execution
- scheduler/AlarmManager/FGS/WorkManager execution
- Root/Shizuku privileged execution
- external cloud-provider network/SDK execution
- Google Play billing execution
- Firebase execution
- Supabase Auth/database/Storage/RLS/function/network execution
- native archive/crypto runtime execution

These are downstream verification boundaries and do not reopen the P5 static feature closure.

## Gate integrity rules

1. Reference artifacts remain read-only.
2. This gate is the single P5 → P6 decision surface.
3. Detailed P5 audits remain evidence and must not be rewritten as competing live gates.
4. P6 must not infer a Supabase schema from Reference Firebase paths alone.
5. P6 must preserve provider-neutral consumer boundaries unless an evidence-backed target change requires otherwise.
6. P6 must preserve the F31/F168 Premium authorized deviation.
7. Any newly discovered P5 contract defect requires evidence-backed reopening/re-audit rather than silently changing this gate.

## Exit decision

**P5 is CLOSED at the static feature-contract boundary and READY FOR P6.**

The next lifecycle is **Phase 6 — Authorized Deviations**.

Phase 6 may now read this gate as the authoritative P5 handoff. It must still follow its own future `PHASE_6_GUIDE.md` and exit through a future `PHASE_6_GATE.md`.

**No P6 implementation is performed by this gate.**

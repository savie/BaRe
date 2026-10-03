# BΛR☰ Phase 6 Scope

## Scope definition

Phase 6 is the lifecycle boundary for the **authorized target deviations** and
the **BaRe backend target** that are explicitly established by the project
handoff.

The authoritative target definition is:

`BaRe = Reference + Authorized Deviations`

For Phase 6, the authorized deviations relevant to this scope are:

1. **BΛR☰ / BaRe branding**
2. **Premium gratis**
3. **Supabase backend**

The Reference remains the baseline/source of truth and remains read-only.

Phase 6 must establish the target backend and authorized deviations required
before Phase 7. In particular, the BaRe backend must be verifiable standalone,
without APK runtime, before P6 closes.

## Scope authority

This scope is derived from the following project documents:

- `docs/bare.md`
- `docs/PHASE_5_GATE.md`
- `docs/audits/P5.6.5_P6_HANDOFF_READINESS.md`
- `docs/audits/P5.7_FEATURE_CLOSURE.md`
- `docs/REFERENCE_BACKEND_CONTRACT.md`
- `docs/PHASE_6_GUIDE.md`

Authority order:

`Project definition → P5 gate/handoff → Reference backend evidence → P6 Guide → implementation`

This document defines **what belongs to P6**. The execution method and
verification sequence are defined by `docs/PHASE_6_GUIDE.md`.

## P6 objectives

P6 exists to:

- implement the approved BaRe backend target using Supabase;
- preserve provider-neutral backend/account boundaries already established in P5;
- preserve the separation between BaRe backend identity and external
  cloud-provider identity;
- classify backend-bound data and credentials before persistence;
- implement the authorized BΛR☰ / BaRe branding target;
- preserve the Reference Premium feature surface while granting Premium free;
- verify the backend independently of APK runtime;
- re-audit the target after implementation;
- hand off a verified backend to P7.

## In scope

### 1. BaRe backend target

The P6 backend scope includes BaRe-owned backend responsibilities that are
required by the approved contracts, including as applicable:

- Supabase Auth;
- backend identity;
- session/token lifecycle;
- database persistence;
- database relationships and constraints;
- Row Level Security;
- Storage;
- server-side functions;
- provider-neutral backend repositories/adapters;
- local ↔ backend synchronization for explicitly cloud-owned state;
- conflict/retry/error behavior where required by the approved contract;
- backend-derived state.

The actual implementation scope of each item is determined by the audited
contract and ownership. The existence of a Reference Firebase service alone
does not make an equivalent target service mandatory.

### 2. Backend data and ownership boundary

P6 includes classification and ownership decisions for backend-relevant data:

- `LOCAL_ONLY`
- `LOCAL_PERSISTED`
- `CLOUD_PERSISTED`
- `BACKEND_DERIVED`
- `PROVIDER_DERIVED`
- `RUNTIME_ONLY`
- `SECRET/CREDENTIAL`
- `MIXED_LOCAL_CLOUD`

P6 also includes the boundary:

`UI / feature consumer → provider-neutral domain/repository boundary → Supabase adapter → Supabase service/backend`

### 3. Account and identity boundary

P6 includes the BaRe backend identity path:

`Account lifecycle → provider-neutral BackendIdentity → Supabase Auth identity`

P6 must preserve:

`BaRe backend identity ≠ external cloud-provider identity`

External backup-cloud access remains owned by
`CloudProviderRepository`.

### 4. Credential boundary

P6 includes classification and handling of credential-shaped data.

Each credential must be explicitly classified as:

- `NEVER_BACKEND`
- `LOCAL_SECURE_STORAGE`
- `SUPABASE_AUTH`
- `SUPABASE_DATABASE`
- `EXTERNAL_PROVIDER_ONLY`
- `TRANSIENT_MEMORY`

Reference credential-shaped contracts are evidence only and do not by
themselves authorize persistence of secrets.

### 5. Reference backend evidence → Supabase target

P6 includes using audited Reference backend evidence to reconstruct the
required semantics of the target backend.

Reference Firebase paths are evidence/blueprint only.

The scope explicitly includes:

`Reference backend evidence → BaRe contract → Supabase target model`

It explicitly excludes mechanical conversion:

`Firebase path → automatic Supabase table`

The target schema, relationships, RLS, Storage, Auth, and server-side
responsibilities must come from the approved BaRe contracts, ownership,
authorization requirements, and actual available Supabase state.

### 6. BΛR☰ / BaRe branding

P6 includes the authorized branding deviation:

`Swift Backup → BΛR☰ / BaRe`

This covers target app-owned user-facing identity established by the project
definition, including branding surfaces and related target identity.

Branding changes must follow ownership/dependency analysis and must not use
blind/global replacement.

### 7. Premium free-access deviation

P6 includes the authorized F31 / F168 deviation:

- Premium entitlement is granted;
- payment is not required;
- Google Play purchase is not required;
- Reference Premium feature surfaces remain;
- no fake purchase/billing backend is introduced merely to imitate Reference
  billing.

Reference purchase/billing behavior remains evidence for the feature surface;
the free entitlement is the authorized target difference.

### 8. Standalone backend verification

P6 includes verification of the backend without APK runtime.

As applicable, verification covers:

- Auth;
- identity;
- session lifecycle;
- database read/write behavior;
- insert/update/delete;
- relationships;
- constraints;
- RLS;
- Storage;
- server-side functions;
- authorization;
- expected failures;
- cross-user isolation;
- backend-derived state.

The required distinction is:

`IMPLEMENTED ≠ VERIFIED`

### 9. P6 re-audit and closure evidence

P6 includes re-auditing:

- provider leakage;
- ownership/boundary collisions;
- credential leakage;
- unauthorized schema coupling;
- Firebase target residue;
- Reference backend path misuse;
- branding regression;
- Premium deviation regression;
- remaining UNKNOWN/BLOCKED/DEFERRED items.

## Out of scope

The following do not belong to P6 as execution targets:

### 1. APK/runtime/device verification

P6 does not own:

- final APK build verification;
- APK installation;
- device execution;
- app runtime verification;
- App ↔ backend runtime verification;
- runtime backup/restore verification;
- runtime scheduler/foreground-service verification;
- filesystem/privileged execution verification.

These belong to the later runtime lifecycle, beginning with P7.

### 2. Reference mutation

P6 must not:

- modify the canonical Reference ZIP;
- modify Reference evidence to fit BaRe;
- turn `reference/` into an implementation surface;
- synchronize Reference and BaRe bidirectionally.

Reference remains read-only evidence.

### 3. Firebase as target backend

Firebase is not a P6 target.

P6 must not:

- add Firebase as the BaRe backend;
- add Firebase runtime dependencies;
- use Firebase as the target Auth/database/Storage implementation;
- mechanically reproduce Firebase paths as Supabase schema.

Firebase evidence may be inspected only to establish Reference behavior and
contract semantics.

### 4. Unapproved application changes

P6 does not authorize arbitrary behavior changes.

Any difference from Reference must remain one of:

- `AUTHORIZED DEVIATION`
- `MATCH`
- `UNKNOWN`
- `UNAUTHORIZED DEVIATION`
- `BLOCKED`

P6 must not introduce convenience-driven redesigns unrelated to the
authorized backend/branding/Premium boundary.

### 5. Billing implementation

P6 does not require real Premium purchasing.

It must not introduce a fake purchase/billing backend merely to reproduce
Reference billing after the Premium-free deviation has been authorized.

### 6. Unknown Supabase configuration

P6 does not include inventing or assuming unavailable:

- project IDs;
- keys;
- schemas;
- tables;
- columns;
- relationships;
- RLS policies;
- Storage buckets/policies;
- Auth providers;
- Edge Functions;
- database functions;
- triggers;
- secrets;
- environment configuration.

If required evidence is unavailable, the affected item is `UNKNOWN` and
cannot be treated as verified.

### 7. Migration workflow

The project definition explicitly states:

**Tidak menggunakan proses migration.**

Migration tooling is therefore not a prerequisite or execution scope for P6
backend functionality or standalone backend verification.

### 8. New feature discovery

P6 does not reopen the Reference feature universe closed by P5.

P5 is the frozen feature-contract baseline. P6 consumes those contracts and
implements only the backend/deviation responsibilities assigned to this
lifecycle.

## P6 boundary summary

| Area | P6 |
|---|---|
| Reference | Read-only evidence |
| Feature universe | Consumes P5 frozen contracts |
| Branding | **IN SCOPE — authorized deviation** |
| Premium | **IN SCOPE — free authorized deviation** |
| Supabase backend | **IN SCOPE** |
| Provider-neutral backend boundary | **IN SCOPE** |
| BaRe Auth / identity | **IN SCOPE where required by contract** |
| Database / RLS | **IN SCOPE where required by contract** |
| Storage / functions | **IN SCOPE where used by approved contract** |
| Credential classification | **IN SCOPE** |
| External cloud-provider identity separation | **IN SCOPE** |
| Standalone backend verification | **IN SCOPE / hard exit requirement** |
| Firebase target implementation | **OUT OF SCOPE** |
| Reference mutation | **OUT OF SCOPE** |
| APK/device/runtime | **OUT OF SCOPE — P7+** |
| Real Premium billing | **OUT OF SCOPE** |
| Migration workflow | **OUT OF SCOPE** |
| New Reference feature discovery | **OUT OF SCOPE** |
| Unverified/assumed Supabase configuration | **OUT OF SCOPE / UNKNOWN** |

## P6 exit boundary

P6 scope is satisfied only when the approved in-scope backend/deviation work
has reached the verification boundary defined by the P6 Guide:

`P5 CLOSED → P6 scope → approved target implementation → standalone backend verification → re-audit → P6 CLOSED → P7`

P6 closure does not claim APK, device, runtime, or production readiness.

## Scope rule

> **P6 hanya mengerjakan hal yang sudah punya dasar contract/evidence dan masuk authorized deviation atau backend boundary yang ditetapkan project.**

> **Kalau evidence/configuration belum cukup, statusnya UNKNOWN — bukan alasan untuk mengarang implementasi.**

> **Guide menjelaskan cara menjalankan scope ini; Scope ini menjelaskan batas apa yang boleh dikerjakan P6.**

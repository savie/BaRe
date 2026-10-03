# BΛR☰ Phase 6 Guide

## Purpose

Phase 6 is the lifecycle boundary for the authorized BaRe target deviations
and backend integration:

**PHASE 6 — AUTHORIZED DEVIATIONS / BACKEND**
- BΛR☰ branding
- Premium gratis
- Supabase backend

P5 reconstructs the Reference feature universe. P6 turns the already-defined
BaRe backend contracts into an actual Supabase-backed system and preserves the
authorized target identity deviations.

P6 must produce a backend that can be verified **standalone, without an APK**,
before Phase 7.

Phase 7 owns:

**Build → APK → Install → Runtime → App ↔ Backend verification**

This guide is the P6 working method. It does not by itself claim runtime,
APK, device, or production readiness.

## Authority and boundaries

Canonical project definition:
- `docs/bare.md`

Frozen predecessor / handoff:
- `docs/PHASE_5_GATE.md`
- `docs/audits/P5.6.5_P6_HANDOFF_READINESS.md`
- `docs/audits/P5.7_FEATURE_CLOSURE.md`

Reference backend evidence:
- `docs/REFERENCE_BACKEND_CONTRACT.md`

Target backend policy:
- Supabase
- Firebase is Reference evidence only

Reference source of truth:
- Swift Backup 5.1.0 / versionCode 620 decompile ZIP
- Reference is read-only

Target:
- `savie/BaRe`
- branch `rewrite`
- implementation surface: BaRe/app/

P6 must preserve:
- Reference → contract/evidence → BaRe implementation
- provider-neutral consumer/domain boundaries
- BΛR☰ / BaRe target identity
- Premium as a free authorized deviation
- Supabase as the target backend
- no Reference mutation
- no speculative backend behavior
- Java source implementation
- Android Views/XML
- only explicitly authorized deviations

## P6 workflow

The project-wide lifecycle remains:

`AUDIT → CATAT → CEK → IMPLEMENTASI → RE-AUDIT → CLOSURE`

P6 applies this workflow to backend and authorized-deviation work.

The backend boundary is:

`UI / feature consumer → provider-neutral domain/repository boundary → Supabase adapter → Supabase service/backend`

Account identity:

`Account lifecycle → provider-neutral BackendIdentity → Supabase Auth identity`

External backup-cloud identity remains separate:

`BaRe backend identity ≠ external cloud-provider identity`

`CloudProviderRepository` owns external backup-cloud access.
Supabase owns BaRe backend concerns.

## P6.0 — Scope and entry control

Before implementation:

1. Read `docs/PHASE_5_GATE.md`.
2. Read `docs/audits/P5.6.5_P6_HANDOFF_READINESS.md`.
3. Read `docs/audits/P5.7_FEATURE_CLOSURE.md`.
4. Read `docs/bare.md` for canonical target rules.
5. Read `docs/REFERENCE_BACKEND_CONTRACT.md` before using Reference backend evidence.
6. Confirm P5 remains frozen at its documented static boundary.
7. Confirm the Supabase target and actual available Supabase state.
8. Establish the P6 contract/data/security register before backend mutation.

**Exit:** P6 scope, authority, ownership, and backend execution boundary are
clear.

## P6.1 — Backend contract, ownership, and data classification

Finalize the provider-neutral contracts before wiring Supabase.

For every backend-relevant value or operation, establish:

- Reference evidence
- BaRe contract
- canonical owner
- consumer(s)
- data classification
- persistence decision
- identity boundary
- credential boundary
- authorization requirement
- Supabase responsibility
- verification surface

Use these data classifications:

- `LOCAL_ONLY`
- `LOCAL_PERSISTED`
- `CLOUD_PERSISTED`
- `BACKEND_DERIVED`
- `PROVIDER_DERIVED`
- `RUNTIME_ONLY`
- `SECRET/CREDENTIAL`
- `MIXED_LOCAL_CLOUD`

Not every Reference value belongs in Supabase.

Not every remotely stored Reference value should become a database row.

**Exit:** every P6 backend value has an explicit ownership and persistence
decision.

## P6.2 — Reference backend evidence and Supabase target model

Reference Firebase evidence may be used to understand:

- data relationships;
- ownership;
- payloads;
- lifecycle;
- backend behavior;
- authentication semantics;
- cloud/backend boundaries.

Reference paths are **evidence and blueprint**, not an automatic Supabase
schema.

For example, Reference evidence such as:

`users/{uid}/userInfo`

may establish a User → UserInfo relationship.

It must not be copied mechanically into a Supabase table name or schema.

Use:

`Reference backend evidence → BaRe contract → Supabase target model`

Not:

`Firebase path → automatic Supabase table`

The target model must be derived from the approved BaRe contract, target
requirements, ownership, authorization, and actual Supabase state.

**Exit:** schema, relationships, ownership, and backend responsibilities are
defined before implementation.

## P6.3 — Supabase implementation

Implement the approved target model in Supabase.

Possible responsibilities include:

- Supabase Auth;
- database tables;
- relationships;
- constraints;
- indexes;
- Row Level Security;
- Storage;
- server-side functions;
- backend adapters;
- session/token lifecycle;
- local ↔ backend synchronization;
- conflict/retry behavior.

Only implement responsibilities that are evidenced by the contract.

Do not invent backend behavior merely because a Reference Firebase service
exists.

### Database rule

The project definition states that P6 does **not use a migration workflow**.

Therefore P6 works against the target Supabase state directly.

Do not make migration tooling a prerequisite for backend functionality or for
the P6 standalone verification gate.

If a later lifecycle explicitly requires migration/reproducibility packaging,
that is a separate downstream concern and must not block P6 backend
verification.

### Supabase configuration rule

Do not invent:

- project IDs;
- keys;
- schema;
- tables;
- columns;
- relationships;
- RLS policies;
- Storage buckets;
- authentication providers;
- Edge Functions;
- database functions;
- triggers;
- secrets;
- environment configuration.

If required information is not available or verifiable, classify it as
`UNKNOWN` and stop the affected implementation at evidence/classification.

## P6.4 — Auth and credential boundary

BaRe backend authentication:

`Account → BackendIdentity → Supabase Auth`

External provider authentication remains owned by the external
`CloudProviderRepository`.

Credential-shaped Reference contracts are evidence, not authorization to
persist secrets.

Each credential must be classified as one of:

- `NEVER_BACKEND`
- `LOCAL_SECURE_STORAGE`
- `SUPABASE_AUTH`
- `SUPABASE_DATABASE`
- `EXTERNAL_PROVIDER_ONLY`
- `TRANSIENT_MEMORY`

Default rule:

Provider secrets, private keys, encryption keys, passwords, and
access/refresh tokens must not be placed into ordinary application tables
without explicit authorization.

Service-role credentials must never be embedded in the client application.

## P6.5 — RLS, Storage, and security verification

For every persisted backend resource, verify:

- owner;
- read authorization;
- write authorization;
- update authorization;
- delete authorization;
- relationship constraints;
- RLS;
- cross-user isolation.

If Supabase Storage is used, verify:

- bucket ownership;
- upload authorization;
- download authorization;
- delete authorization;
- Storage policies.

If server-side functions are used, verify:

- caller authorization;
- input validation;
- output contract;
- failure behavior;
- secret handling.

Security verification is part of backend verification, not an optional cleanup
step.

## P6.6 — Branding

BΛR☰ / BaRe branding is an authorized target deviation.

P6 must preserve the branding already established by the earlier static
reconstruction.

Target identity:

`Swift Backup → BΛR☰ / BaRe`

Applicable user-facing identity includes:

- application name;
- logo;
- branding text;
- information/about surfaces;
- help;
- dialogs;
- menus;
- notifications;
- documentation;
- branding-related URLs/deep links where applicable.

Do not reintroduce Swift Backup branding into target app-owned surfaces.

Do not perform blind/global text replacement.

Internal identifiers that still contain Reference identity must be evaluated by
ownership and dependency; app-owned residue should be normalized, while
dependency-owned or external identifiers must not be renamed blindly.

Branding verification is a **regression guard** during P6.

## P6.7 — Premium

F31 / F168 remain:

**AUTHORIZED DEVIATION**

BaRe Premium is free.

P6 must preserve the Reference Premium feature surface while applying the
authorized entitlement difference:

- Premium access is granted;
- payment is not required;
- Google Play purchase is not required;
- a fake purchase/billing backend must not be introduced merely to imitate
  Reference billing.

Reference purchase/billing contracts remain useful as evidence but do not
override the authorized free-access policy.

## P6.8 — Backend standalone verification

This is a hard P6 requirement.

Before P7 begins, the backend must be testable and verifiable **without APK**.

Verify as applicable:

- Auth;
- user identity;
- session lifecycle;
- database read;
- insert;
- update;
- delete;
- relationships;
- constraints;
- RLS;
- Storage;
- server-side functions;
- authorization;
- expected failures;
- cross-user isolation;
- backend-derived state.

Example:

`Test User A → Supabase → A can access A data → PASS`

Then:

`Test User B → Supabase → B cannot access A data → PASS`

The purpose is to prove that the backend is correct before the application
depends on it.

**IMPLEMENTED is not the same as VERIFIED.**

## P6.9 — Backend re-audit

After implementation:

1. Re-audit the target against the approved contract.
2. Verify the actual Supabase state.
3. Verify ownership and authorization.
4. Verify RLS and Storage policies where applicable.
5. Verify credential handling.
6. Verify Firebase is not a target backend.
7. Verify Reference backend paths were not copied mechanically as a schema.
8. Verify branding regression guards.
9. Verify Premium authorized deviation.
10. Reclassify remaining gaps.

If a backend batch is split:

`P6-X-1 → RE-AUDIT → P6-X-2 → RE-AUDIT → ... → TOTAL RE-AUDIT`

## P6.10 — P6 closure

P6 may close when:

- backend contracts have canonical owners;
- data classification is complete;
- BaRe identity and external provider identity remain separate;
- Supabase target implementation is complete for the approved scope;
- Auth is verified where required;
- database behavior is verified where required;
- RLS is verified;
- Storage/functions are verified when used;
- credential boundaries are verified;
- Firebase is not a target implementation;
- Reference Firebase structure was used only as evidence/blueprint;
- no migration workflow is required for P6 functionality;
- branding remains BΛR☰ / BaRe;
- Premium free-access deviation remains intact;
- **Backend Standalone Verification = PASS**;
- remaining limitations are explicitly recorded.

P6 closure does **not** claim APK or runtime success.

## P6 → P7 boundary

The lifecycle handoff is:

`P6 backend implementation → standalone backend verification → P6 CLOSED → P7 build/APK/runtime`

P7 must then verify the complete application path:

`APK → app runtime → account/session → BaRe backend → external provider/runtime dependencies`

P6 must not use APK runtime testing as a substitute for standalone backend
verification.

## P6 status vocabulary

| Status | Meaning |
|---|---|
| `IMPLEMENTED` | Backend code/config/schema exists. |
| `CONFIGURED` | Required Supabase configuration is available and verified. |
| `TESTED` | Direct backend test has been executed. |
| `VERIFIED` | Evidence confirms the expected contract/behavior. |
| `BLOCKED` | A dependency prevents verification or implementation. |
| `UNKNOWN` | Evidence is insufficient to determine the correct behavior/configuration. |
| `DEFERRED` | Work explicitly belongs to a later lifecycle boundary. |

Do not use `IMPLEMENTED` as a synonym for `VERIFIED`.

## P6 hard rules

P6 must not:

- use Firebase as the target backend;
- add Firebase runtime dependencies;
- copy Firebase paths blindly into Supabase schema;
- collapse BaRe identity and external provider identity;
- store credentials in ordinary tables without authorization;
- embed service-role credentials in the client;
- invent unknown Supabase configuration;
- invent backend behavior;
- mutate Reference evidence;
- use APK runtime as a substitute for standalone backend verification;
- make migration tooling a prerequisite for P6 backend functionality;
- reintroduce Swift Backup branding into target app-owned surfaces;
- remove or replace Premium surfaces merely because Premium is free.

## Final P6 formula

`P5 contract → ownership → data/security classification → Supabase target model → implementation → standalone verification → re-audit → P6 closure → P7`

Core rule:

> **Backend harus berfungsi dan terbukti sebelum APK menggunakannya.**

> **Firebase membantu memahami Reference; Supabase tetap menjadi target.**

> **BΛR☰ / BaRe adalah target identity; branding bukan alasan untuk mengubah Reference evidence.**

> **Premium gratis adalah authorized deviation.**

> **Migration bukan dependency untuk P6 working backend.**

# BΛR☰ Reconstruction Status

## Baseline
- Reference: Swift Backup 5.1.0, version code 620
- Reference artifact: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reconstruction branch: `rewrite`
- Target: 1:1 Reference fidelity except explicitly Authorized Deviations

## Current phase
**PHASE 2 — BACKEND CALL-GRAPH + ACCOUNT LIFECYCLE AUDIT**

## Verified in latest batch
- Reference `d45.a()` resolves the current authenticated identity, with an internal anonymous-user fallback state.
- Reference `d45.c()` sign-out is a lifecycle operation, not a simple auth logout:
  - reads migration state;
  - signs out auth;
  - clears anonymous identity state;
  - clears local app data for a non-anonymous signed-in user;
  - resets migration/account state;
  - resets cloud-restore/first-start flags;
  - cancels scheduled alarms through the application lifecycle;
  - re-runs account initialization.
- Contributor registration is read from `contributorDetails/{uid-prefix}`.
- Contributor model fields are status, type, name, locales, Telegram ID, Crowdin ID, PayPal ID.
- Contributor validity rules are type-dependent: Translator requires name + Telegram + Crowdin; Community Helper requires name + Telegram.
- `appData/activeSkus` is a Firebase list consumed by billing to derive SKU strings.
- Purchase verification is read from `purchase_verifications/{uid}/{obfuscated-key}` as a Boolean.
- Verification Boolean is copied into local premium-verification state and used by the Reference billing/premium flow.
- Cloud summary reads apps/folders/SMS count/call-log count.
- `CloudMetadata.hasBackups()` corrected to Reference semantics: APK/data/ext-data/media/expansion links only.

## BaRe contracts added/updated
- `CloudSummaryRepository` + `CloudSummaryService`
- `BillingCatalogRepository`
- `AccountRepository` explicitly documents Reference lifecycle sign-out semantics
- `PurchaseVerificationRepository` uses VERIFIED / NOT_VERIFIED / UNKNOWN state

## Still UNKNOWN / IN PROGRESS
- Exact Supabase relational schema/RLS/auth claims: UNKNOWN.
- Concrete Supabase adapter: NOT STARTED until contract freeze.
- Complete cloud_v1/apps writer graph: IN PROGRESS.
- Complete cloud_v1/folders mutation graph: IN PROGRESS.
- SMS/call count writers: no writer call-site identified yet; current evidence proves reader paths only.
- Contributor mutation/write path: no write call-site identified yet; current evidence proves read/listener path only.
- Full billing flow and exact SKU normalization: IN PROGRESS.
- Exact obfuscated purchase-verification key derivation: retained behind repository boundary pending full billing audit.
- Anonymous account migration/sign-in flow: IN PROGRESS.

## Supabase rule
Do not mechanically rename Firebase to Supabase. Do not invent tables, columns, RLS, auth claims, or secrets. Freeze evidence first, then derive the adapter.

## Verification rule
No parity claim from build alone. Required sequence remains: build → install → runtime → visual → behavior → feature → deviation audit → verification.

## Next exact work
1. Finish cloud_v1/apps/folders writers and consumers.
2. Audit billing SKU normalization and purchase verification call graph.
3. Audit anonymous → Google/sign-in migration path and local-data semantics.
4. Freeze backend contract and only then implement Supabase adapter/schema.
5. Wire Home services to concrete repositories.
6. Build/install/runtime verification.

Do not restart the Reference inventory from zero.

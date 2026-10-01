# N-14 BOUNDARY — TOTAL AUDIT

## Status

**AUDIT → REGISTER → CHECK: SEKALI JALAN → IMPLEMENTATION → RE-AUDIT → 🟢 CLOSED**

Reference: Swift Backup 5.1.0 / versionCode 620  
Target: savie/BaRe / branch `rewrite`  
Canonical Reference: supplied decompile ZIP  
Reference remains read-only.

## 1. Scope

N-14 verifies that a P3 dependency boundary is:

- explicit and truthful;
- owned by the correct downstream domain;
- not presented as completed execution;
- not returning a successful Activity result before downstream work actually succeeds;
- not silently converting a Reference dependency/engine/provider/backend contract into a fake P3 completion.

N-14 is not a P4 engine/provider/backend implementation task.

## 2. Audit register

### N14-B-01 — Google Drive / GMS authentication boundary

**Target finding:** `GmsSignInActivity` displayed the explicit P3 Google-auth boundary but the dialog positive action returned `RESULT_OK`.

**Reference evidence:** Reference GMS flow returns success only from the provider/auth result path; failure/cancel paths return non-success.

**Classification:** UNAUTHORIZED P3 success leakage.

**Action:** removed the positive success result from the boundary dialog. The boundary now only acknowledges the downstream handoff; navigation/back returns `RESULT_CANCELED`.

**Result:** PASS.

### N14-B-02 — Google Drive browser / no-GMS authentication boundary

**Target finding:** `NoGmsSignInActivity` displayed the provider boundary but its positive dialog action returned `RESULT_OK`.

**Reference evidence:** Reference no-GMS flow distinguishes successful authentication from cancellation/failure and does not treat an informational boundary acknowledgement as authentication success.

**Classification:** UNAUTHORIZED P3 success leakage.

**Action:** removed the positive success result. Boundary acknowledgement no longer emits `RESULT_OK`.

**Result:** PASS.

### N14-B-03 — Filen authentication boundary

**Target finding:** `FilenSignInActivity` accepted non-empty credentials, showed the P3 provider boundary, then returned `RESULT_OK` without a provider authentication result.

**Reference evidence:** Reference Filen flow obtains its provider result through downstream authentication before the Activity result is produced.

**Classification:** UNAUTHORIZED P3 success leakage.

**Action:** removed the synthetic success result from the boundary dialog.

**Result:** PASS.

### N14-B-04 — Contributor remote-persistence boundary

**Target finding:** `ContributorRegActivity` set `RESULT_OK` from dialog dismissal even though the target deliberately defers Reference remote contributor persistence.

**Reference evidence:** Reference contributor registration submits through its ViewModel/coroutine path; success is tied to that downstream operation rather than merely dismissing a UI boundary.

**Classification:** UNAUTHORIZED P3 success leakage.

**Action:** removed the `onDismiss -> RESULT_OK` side effect. The save action now remains a truthful downstream boundary.

**Result:** PASS.

## 3. Existing boundary surfaces reviewed

The audit also reviewed the existing explicit boundary families, including:

- app backup/restore and batch engine actions;
- task execution / force-stop;
- cloud provider authentication;
- Yandex/TeraBox callback/provider-token handoff;
- storage/runtime change;
- folder filesystem and backup/restore/delete/copy operations;
- message/call backup/restore;
- configuration execution;
- schedule persistence/execution;
- blacklist/app inventory persistence;
- app label and favorite persistence;
- APK parsing/install;
- cloud diagnostics/orphan operations;
- password/encryption engine;
- shortcut schedule lookup/execution;
- contributor remote state.

These remain downstream boundaries where the target does not claim the deferred engine/provider/backend operation has completed.

Provider callback surfaces already using `RESULT_CANCELED` for deferred provider work were retained; no synthetic success was introduced.

## 4. Boundary ownership rule confirmed

For N-14:

`P3 UI action → explicit boundary → P4 owner`

is valid.

`P3 UI action → boundary dialog → RESULT_OK without downstream success`

is not valid.

This distinction is the central N-14 contract.

## 5. Re-audit

Static re-audit after implementation:

- `GmsSignInActivity`: no boundary-dialog `RESULT_OK`.
- `NoGmsSignInActivity`: no boundary-dialog `RESULT_OK`.
- `FilenSignInActivity`: no boundary-dialog `RESULT_OK`.
- `ContributorRegActivity`: no dialog-dismiss `RESULT_OK`.
- Yandex/TeraBox downstream callback boundaries continue to avoid synthetic success.
- Explicit P3 boundary messages remain visible and ownership-specific.
- No Reference mutation.
- No build/install/runtime performed.

## 6. Closure

**N-14 → 🟢 CLOSED / STATIC PASS — truthful P3 boundary/result contract.**

Important: N-14 closure does **not** mean provider, engine, backend/Supabase, or end-to-end execution is complete.

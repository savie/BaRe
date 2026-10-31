# BΛR☰ — ConfigRepo / LabelRepo Permission-Denied Follow-up Audit

**Date:** 2026-10-31  
**Repository:** savie/BaRe  
**Branch:** `feat/local-account-lifecycle-vault`  
**Build commit:** `ba8e3aba7a30c9061fb6e60802353273b84dba22`  
**Workflow run:** [41198083623](https://github.com/savie/BaRe/actions/runs/41198083623)  
**Scope:** ConfigRepo and LabelRepo runtime failure after Local Account activation  
**Status:** evidence-led follow-up; root cause not yet runtime-isolated

## 1. New device evidence

The user-provided BARΞ LOGGER screenshot captured on 31/10/26 at approximately 18:53 local time still contains:

- `ConfigRepo: Permission denied`
- `LabelRepo: Permission denied`

The same startup log shows Firebase successfully connected, internal storage read/write checks passed, HomeActivity opened, and the elevated service started. Therefore, these two repository failures must not be attributed generically to root availability or the app's general internal-storage write access.

This is a regression/failure signal against the expectation that Local Config/Label operations no longer depend on Firebase authorization.

## 2. CI evidence and what it proves

Workflow run 41198083623 completed successfully. Its only job, `build-namespace-apk`, checked out commit `ba8e3aba7a30c9061fb6e60802353273b84dba22` from `feat/local-account-lifecycle-vault`.

The job completed the APK rebuild, alignment, signing, packaging, and artifact upload. It did **not** run Android device tests or a ConfigRepo/LabelRepo CRUD acceptance suite.

**Conclusion:** CI proves that the namespace APK can be rebuilt, signed, and packaged. It does not prove that Local Account routing is active at runtime or that either repository succeeds.

## 3. Current code-path observations

### 3.1 ConfigRepo fetch

File: `bare-implementation/smali/br1.smali`  
Method: `br1.b()Z`

The method calls `LocalAccountVault.isCurrentUserLocal()`. If true, it invokes `br1.a()` (local/cache load) and returns success. If false, it continues into the network check and then calls `cf3.a(..., true)`.

A false-negative Local identity classification therefore re-enters the Firebase/cloud authorization path and can reproduce the reported error.

### 3.2 LabelRepo fetch

File: `bare-implementation/smali/lr4.smali`  
Method: `lr4.b()Z`

The same routing pattern exists: true selects `lr4.a()` (local file/cache load); false can continue to `cf3.a(..., true)`.

### 3.3 Local session marker

File: `bare-implementation/smali_classes3/com/bareapps/barebackup/localaccount/LocalAccountVault.smali`

- `activate(...)` calls `setCachedLocalUser(...)`, then `writeMarkers(true, false)`.
- `writeMarkers(ZZ)` obtains preferences through reflective `prefs()`, writes `local_account_session_active` and `local_signout_pending_intro`, and uses synchronous `commit()`.
- `isLocalSessionActive()` reads the same key through `prefs()`.
- `isCurrentUserLocal()` checks `isLocalSessionActive()` before pending-user/Firebase-wrapper inference.

The code shape is directionally correct, but the device evidence means we must verify the actual value, preference object, and execution order on-device. Do not infer that the marker is persisted merely because the write call exists.

### 3.4 Label mutation handler still needs a complete guard audit

File: `bare-implementation/smali/gr4.smali`

The label-parameter handler shown in the current branch still checks `V.getA()` before updating the in-memory label map and dispatching persistence. That is not the same contract as `LocalAccountVault.isCurrentUserLocal()`. For Local Account, this guard can skip label mutation entirely.

Audit every Label write path (create/update/delete label parameters, app-to-label assignment, and batch changes), not just the fetch method. Replace provider-specific guards with the central repository/provider policy only after each operation has a local persistence implementation.

## 4. Leading hypotheses — not yet facts

1. **Marker persistence/read mismatch:** `activate()` may not successfully persist the marker, or the reflected `cz4.f` preferences reference may not be initialized/identical at read time.
2. **Startup ordering:** repository initialization may run before Local activation commits the marker, and a later fetch may not be retriggered through the Local route.
3. **Different active identity:** the Intro flow may be creating a Firebase anonymous session or resolving a wrapper that is not the product Local Account session.
4. **Remaining provider-specific mutation guards:** Label handler(s) still use `V.getA()`, so Local writes may no-op even if fetch routing is corrected.
5. **Stale or mismatched installed artifact:** the device may not be running the artifact produced from commit `ba8e3aba...`; package/version/build fingerprint must be recorded before interpreting runtime results.

No one hypothesis is confirmed by the current screenshot alone.

## 5. Required runtime instrumentation

Add temporary, non-sensitive diagnostics at these boundaries:

- Local activation entry and exit.
- Result of `writeMarkers(true, false)` (boolean only).
- Preference file identity/name and marker presence/value (never dump unrelated preference contents).
- `isLocalSessionActive()` result.
- `isCurrentUserLocal()` result and the selected branch.
- ConfigRepo and LabelRepo fetch route: `LOCAL_CACHE` vs `CLOUD`.
- Label/Config mutation route and persistence result.

Never log account payloads, OAuth/Firebase tokens, recovery secrets, encryption keys, or full preference contents. Remove or downgrade temporary diagnostics after acceptance tests pass.

## 6. Required next audit actions

1. Verify the exact installed APK SHA-256, versionCode/versionName, package name, and build commit.
2. On a clean test profile, perform Skip/Local activation and capture the marker write result.
3. Immediately query `isLocalSessionActive()` and `isCurrentUserLocal()` after activation and again after cold restart.
4. Capture the route decision from both repositories before any cloud call.
5. Inspect `cz4.f` initialization and prove that `LocalAccountVault.prefs()` reads/writes the same SharedPreferences instance used for the markers.
6. Trace every Config and Label mutation to its final persistence sink.
7. Run Local CRUD tests offline and online; Local mode must not invoke the Firebase Config/Label helper.

## 7. Safety constraints

- Do not make Firebase Realtime Database rules public or grant broad access to anonymous users.
- Do not treat root access as a substitute for application-level repository authorization.
- Do not silently swallow a failed local write; surface a diagnosable error.
- Do not claim fixed until runtime CRUD and cold-start regression tests pass.

## 8. Exit criteria

This audit can be closed only when the exact installed build is identified, both repository fetches select local storage for an active Local Account, all Config/Label mutations persist locally, no Local Config/Label operation reaches Firebase, data survives process death/cold restart, and the acceptance matrix in the implementation spec passes.

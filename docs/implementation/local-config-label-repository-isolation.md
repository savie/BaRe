# BΛR☰ Feature Spec — Local Config & Label Repository Isolation

**Date:** 2026-10-31  
**Repository:** savie/BaRe  
**Target branch:** `feat/local-account-lifecycle-vault`  
**Priority:** P0 — blocks usable Local Account  
**Status:** implementation specification; do not mark complete before device acceptance

## 1. Problem

Local Account is a product-owned identity, not Firebase Anonymous Authentication. ConfigRepo and LabelRepo still report `Permission denied` after Local activation. The current fetch paths branch on `LocalAccountVault.isCurrentUserLocal()`, while at least one Label mutation handler still branches on `V.getA()`.

A successful APK build is not sufficient. The feature must make Local Config and Label operations genuinely local and independent of Firebase authorization.

## 2. Product contract

When a Local Account session is active:

- ConfigRepo reads and writes BΛR☰-owned local persistent storage.
- LabelRepo reads and writes BΛR☰-owned local persistent storage.
- Create, read, update, delete, assignment, and batch operations are available locally.
- Network availability must not change the selected Local persistence provider.
- Firebase Config/Label fetch and mutation helpers must not be called.
- A local persistence failure must be reported as a local I/O/serialization/storage error, not disguised as Firebase `Permission denied`.

For a Google/Firebase-backed account, preserve the existing cloud behavior. Provider selection must be explicit and centralized.

## 3. Required implementation work

### F1 — One authoritative account/provider discriminator

Create or retain one central provider decision, backed by the committed Local session state. All Config/Label repositories and mutation handlers must consume it.

Required invariants:

1. `local_account_session_active=true` means Local provider.
2. Explicit Google selection clears Local session markers before Google repository operations begin.
3. Local sign-out clears active-session state but does not erase the persistent Local account vault.
4. Pending Intro/Skip state must not be confused with an active authenticated Local session.
5. Firebase anonymous-user status must never be used as the sole discriminator for product Local Account.
6. Marker write failure must prevent activation from being reported as successful.

### F2 — Verify preference ownership and marker durability

The current vault helper obtains SharedPreferences reflectively through `cz4.f`. Verify the exact preference instance initialization and ownership.

Implementation requirements:

- Prefer a direct, typed preference accessor if it can be safely resolved in this APK rewrite.
- If reflection remains necessary, validate class, field, initialization timing, and failure behavior.
- Use synchronous `commit()` where activation depends on the marker immediately; check and propagate its boolean result.
- Read-after-write the two marker values before notifying observers or navigating Home.
- Do not fall back to a permissive Local result if preference access fails.

### F3 — ConfigRepo local CRUD

Audit and implement every ConfigRepo operation, not only `br1.b()`:

- Load local ConfigsData.
- Create/update/delete configuration.
- Persist after mutation.
- Reload from persistent storage after process restart.
- Preserve schema compatibility and existing data.
- Avoid cloud fetch/mutation calls in Local mode.

Use an atomic write strategy appropriate to the existing file abstraction. Verify serialization by reopening the written value. Do not report success before durable persistence is confirmed.

### F4 — LabelRepo local CRUD

Audit and implement every LabelRepo operation:

- Load LabelsData.
- Create/update/delete LabelParams.
- Assign/unassign labels to applications.
- Batch assignment/removal.
- Persist the complete updated LabelsData.
- Recompute dependent app-label state after successful persistence.
- Reload after process death.

Replace remaining `V.getA()` provider checks in Label mutation handlers (including `gr4` and any related lambdas) with the central provider contract. Do not simply remove guards: implement a local persistence branch first.

### F5 — Prevent Local-to-cloud fallthrough

In Local mode, fetch and mutation functions must return through the local branch. A failed local read/write must produce a local error and must not fall through to Firebase as a fallback.

The Local path must remain selected both online and offline. Cloud fallback would reintroduce the reported authorization failure and could create split-brain state.

### F6 — Safe diagnostics

Log only:
- selected provider (`LOCAL` / `GOOGLE`);
- operation name;
- success/failure category;
- marker read/write boolean;
- local storage path class or opaque identifier where safe.

Never log user data, tokens, recovery secrets, keys, or complete serialized Config/Label objects.

## 4. Acceptance tests

| ID | Scenario | Expected result |
|---|---|---|
| LC-01 | Activate Local Account | Marker write succeeds; read-after-write returns active |
| LC-02 | Open Home immediately after activation | ConfigRepo and LabelRepo choose LOCAL route |
| LC-03 | Local mode, network available | No Firebase Config/Label helper invocation |
| LC-04 | Local mode, network disabled | Both repositories load local data successfully |
| LC-05 | Create/edit/delete Config | Change persists and is visible after reload |
| LC-06 | Create/edit/delete Label | Change persists and is visible after reload |
| LC-07 | Assign/unassign app labels | Mapping persists and dependent app state refreshes |
| LC-08 | Batch label operation | All intended mappings persist atomically or operation reports partial/failure accurately |
| LC-09 | Force-stop and cold restart | Local provider remains selected; Config/Labels reload |
| LC-10 | Marker preference unavailable or commit fails | Activation fails visibly; no false-success navigation |
| LC-11 | Explicit Google selection | Local marker cleared; cloud route remains functional |
| LC-12 | Local sign-out | Local active marker cleared; vault/data retained; Intro shown |
| LC-13 | Local data file corrupt/unreadable | Clear local recovery/error state; no Firebase fallback |
| LC-14 | Upgrade from previous build | Existing Config/Label data remains readable; no destructive migration |

## 5. Required instrumentation for debugging

Before changing routing again, record the exact installed artifact identity and add temporary diagnostics for:

- activation result;
- `writeMarkers` result;
- `isLocalSessionActive()`;
- `isCurrentUserLocal()`;
- selected branch in `br1.b()` and `lr4.b()`;
- persistence sink reached by each mutation.

The expected Local startup trace is:

```text
LocalAccount.activate: markerCommit=true
LocalAccount.marker: active=true introPending=false
LocalAccount.provider: LOCAL
ConfigRepo.fetch: LOCAL_CACHE
LabelRepo.fetch: LOCAL_CACHE
```

This is an expected diagnostic shape, not a claim that the current build produces it.

## 6. Implementation sequence

1. Confirm installed artifact matches CI commit.
2. Prove marker persistence/read consistency and initialization order.
3. Fix central provider classification and activation failure handling.
4. Fix ConfigRepo local persistence and all mutations.
5. Fix LabelRepo local persistence and all mutation guards.
6. Add route-level tests proving Firebase is not called in Local mode.
7. Run APK build and static verification.
8. Run device acceptance tests, including online/offline and cold restart.
9. Remove temporary diagnostics and update the audit evidence.

## 7. Definition of done

- All acceptance tests LC-01 through LC-14 pass or have an explicitly approved, evidence-backed limitation.
- No Local Config/Label path calls Firebase.
- Config and Label data survive force-stop and cold restart.
- Google/cloud behavior remains unchanged.
- CI build success and device runtime success are reported separately.
- Audit document is updated with commit, APK SHA, device/Android details, logs, and test outcomes.

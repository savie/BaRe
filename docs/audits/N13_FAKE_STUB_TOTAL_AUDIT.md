# N-13 FAKE / STUB — TOTAL AUDIT

## Status

**AUDIT → REGISTER → SPLIT → IMPLEMENTATION → RE-AUDIT → 🟢 CLOSED**

Reference: Swift Backup 5.1.0 / versionCode 620  
Target: savie/BaRe / branch `rewrite`  
Canonical Reference: supplied decompile ZIP  
Reference remains read-only.

## 1. Scope

N-13 distinguishes:

- **P3 fake/stub** — a visible/UI/navigation/lifecycle surface is presented as implemented but is actually a generic placeholder, no-op, or fake flow.
- **P4 boundary** — UI intentionally stops at a documented downstream engine/backend/provider boundary. This is not counted as a fake when the boundary is explicit and truthful.
- **normal Android behavior** — e.g. `Service.onBind() { return null; }` for a started service is not automatically a fake.
- **data default/empty state** — empty LiveData or null lookup is not automatically fake without Reference evidence of a required value.

## 2. Reference-derived register

### N13-P3-01 — ReferenceActivityBoundary shell

Target contained a generic `ReferenceActivityBoundary` implementation that rendered only:
- toolbar;
- generic `p3_activity_boundary` text.

It was used by `StorageSwitchActivity`.

**Classification:** P3 FAKE/STUB.

**Action:** removed the shell and migrated Storage Switch to its own Reference-shaped UI.

### N13-P3-02 — StorageSwitchActivity

Before:
- inherited fake boundary Activity;
- clicked the entire content root;
- displayed generic placeholder dialog.

Reference has:
- appbar;
- progress indicator;
- RecyclerView storage list surface;
- Extended FAB for Apply and Restart;
- lifecycle/provider-driven state.

**Action:** reconstructed P3 UI surface:
- dedicated `storage_switch_activity.xml`;
- toolbar;
- progress indicator;
- RecyclerView;
- Apply and Restart FAB;
- explicit downstream storage/runtime boundary only on the action.

The storage provider/runtime operation remains P4.

**Result:** PASS.

### N13-P3-03 — LocaleActivity selection

Before:
- locale selection only displayed a generic boundary message;
- positive button returned `RESULT_OK`;
- no locale was actually applied.

Reference has a real locale-selection flow.

**Action:** locale selection now calls AndroidX AppCompat application-locale API with the selected Reference-supported tag, then returns success.

Credits data loading remains downstream/provider-owned and is not falsely synthesized.

**Result:** PASS for P3 locale selection.

## 3. Explicit P4 boundaries — NOT fake

The following target patterns were reviewed and retained as explicit downstream boundaries rather than misclassified as P3 fake:

- app backup/restore execution buttons;
- batch backup/restore/action engine;
- task force-stop execution;
- cloud provider authentication/provider SDK execution;
- PCloud/Dropbox/Mega/Filen/etc. provider operations;
- backend/provider diagnostics execution;
- storage/runtime application of provider changes.

These surfaces show a boundary dialog/message because the corresponding engine/provider implementation is outside the current P3 scope.

They remain registered for P4 and are not claimed as feature completion.

## 4. Service onBind null

Target services returning null from `onBind()` were reviewed.

This is compatible with started-service semantics and is not, by itself, evidence of a fake implementation.

Execution behavior remains downstream and is not promoted into P3.

## 5. Re-audit

Static checks after implementation:

- `ReferenceActivityBoundary` source removed.
- `StorageSwitchActivity` no longer extends the fake boundary.
- Storage Switch has a dedicated Reference-shaped layout.
- Storage Switch no longer installs a click listener on the entire content root to fake the flow.
- Locale selection no longer completes without applying the selected locale.
- Remaining `p3_*_boundary` messages belong to explicit P4 engine/provider handoffs or documented downstream boundaries.
- No Reference mutation.
- No build/install/runtime performed.

## 6. Closure

**N-13 → 🟢 CLOSED / STATIC PASS — P3 fake/stub surface.**

Important: N-13 closure does **not** mean P4 engine/provider/backend execution is complete.

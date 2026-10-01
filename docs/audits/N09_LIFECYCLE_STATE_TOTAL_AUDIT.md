# N-09 LIFECYCLE / STATE — TOTAL AUDIT

## Status

**AUDIT COMPLETE → IMPLEMENTATION COMPLETE → RE-AUDIT PASS**

- Reference: Swift Backup 5.1.0 / versionCode 620
- Target: `savie/BaRe` / branch `rewrite`
- Canonical Reference: `SwiftBackup-5.1.0-620-decompiled.zip`
- Reference remained read-only.

## 1. Roadmap boundary

The BΛR☰ roadmap places broad **State** under PHASE 4 Core Behavior. Therefore N-09 does not claim to reconstruct persistent/business state engines.

N-09 covers the **lifecycle/recreation contract that is observable at the Activity/UI boundary**:
- Activity recreation;
- `onSaveInstanceState` state handoff;
- restoration of selected UI/navigation state;
- restoration of Parcelable/List UI input state;
- lifecycle transitions that are required to preserve the P3 surface.

Business persistence, provider state, authentication state, search/index state, engine state, and backend state remain downstream/P4.

## 2. Reference register

Canonical Reference application-owned custom `onSaveInstanceState` keys:

- HomeActivity: `saved_fragment`
- IntroActivity: `KEY_FIREBASE_ERROR_DIALOG_MODE`
- DetailActivity: `ji.PARCEL_KEY`
- FolderDetailActivity: `extra_folder_info`
- RestoreSpecialDataDetailsActivity: `extra_config_settings`
- AppBackupLimitsActivity: `extra_limits`
- AppVisibilityDiagnosticsActivity: `app_visibility_scroll_y`, `app_visibility_search_query`
- PremiumActivity: `premium_plans_expanded`, `selected_plan_id`
- CloudConnectActivity: `checked_cloud_constant`, `connect_activity_launched`
- CloudDiagnosticsActivity: `key_is_showing_results`, `key_latest_report_markdown`, `key_latest_report_has_failures`
- DropboxSignInActivity: `dropbox_app_auth_started`, `dropbox_app_auth_result_received`

Dependency-owned lifecycle state is excluded from app-owned implementation closure.

## 3. Target reconciliation

### N09-1 — P3 UI/navigation lifecycle state

Already reconciled before N-09:
- Home selected navigation item → restored via `saved_fragment`.
- Detail Activity input Parcelable → restored.
- FolderDetail input Parcelable → restored.
- AppBackupLimits Parcelable list → restored.
- AppVisibility scroll/search state → restored.
- Premium expansion/selected plan → restored.

**PASS**

### N09-2 — RestoreSpecialDataDetailsActivity

Reference restores/saves:
- `extra_config_settings`

Target previously restored only:
- `restore_special_permissions`

**DEFECT FOUND**

Implementation:
- added Parcelable `configSettings`;
- restore from Intent on first creation;
- restore from saved state after recreation;
- save back under exact Reference key.

**PASS after implementation**

### N09-3 — CloudConnect/Auth/Diagnostics state

Reference state exists for:
- checked cloud provider;
- connection launch status;
- OAuth flow status;
- diagnostics result/report state.

These values are coupled to cloud-provider/auth/diagnostic behavior and are therefore **P4/feature-engine state**, not silently promoted into P3 lifecycle closure.

No synthetic state engine was added.

### N09-4 — Intro Firebase error-dialog state

Reference persists the Firebase error-dialog mode.

Target's current Intro flow uses a P3 auth boundary and does not contain the Reference Firebase dialog engine.

Classification:
**P4 authentication/error-flow handoff**, not a missing P3 lifecycle implementation.

## 4. CEK — split

N-09 was split into:
1. P3 UI/navigation recreation state;
2. app-owned Parcelable/List restoration;
3. provider/auth/diagnostics state handoff;
4. dependency-owned lifecycle state exclusion.

## 5. Re-audit

Static re-audit:
- Home: PASS
- Detail: PASS
- FolderDetail: PASS
- AppBackupLimits: PASS
- AppVisibilityDiagnostics: PASS
- Premium: PASS
- RestoreSpecialDataDetails: PASS after fix
- Reference custom-state inventory: accounted for
- no Reference mutation
- no runtime/build/install performed

## 6. Closure

N-09 closes at the **lifecycle/recreation boundary**.

It does not claim completion of:
- search/index state;
- cloud/auth state;
- diagnostics engine state;
- backup/restore engine state;
- backend state;
- provider state.

**N-09 → 🟢 CLOSED / STATIC PASS — lifecycle/recreation contract boundary.**

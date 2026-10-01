# N-08 NAVIGATION — TOTAL AUDIT

## Status

**AUDIT COMPLETE → CEK COMPLETE → IMPLEMENTATION: NO MUTATION REQUIRED → RE-AUDIT PASS**

- Reference: Swift Backup 5.1.0 / versionCode 620
- Canonical Reference: `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
- Target: `savie/BaRe` / `rewrite`
- Reference remains read-only.

## 1. Evidence inventory

Canonical Reference forensic sweep:
- 259 application-package Java source files scanned.
- 102 navigation/result/back call sites found across `startActivity*`, `setResult`, `finish`, and back-handling surfaces.
- 31 direct `new Intent(...Activity.class)` constructor edges were extracted from application-owned source; one self-reference / service-style false-positive was excluded from the actionable Activity graph.
- Manifest Intent contracts are N-06-owned and were not duplicated here.

N-01 handoff:
- navigation/resource transition behavior → **N-08**
- menu presence/XML structure remains **N-01**
- Intent/deep-link contract remains **N-06**
- lifecycle/state consequences → **N-09**
- dialog/error/loading semantics → **N-10**

## 2. N08 register

### N08-1 — Home/tab navigation
Reference:
- Home Activity owns four primary navigation destinations:
  - Home
  - Cloud
  - Schedule
  - Account
- bottom navigation ↔ pager synchronization
- selected destination restoration via `saved_fragment`
- search entry
- account shortcut

Target:
- same four navigation IDs;
- ViewPager/pager synchronization;
- selected-item restoration;
- search Activity launch;
- account navigation.

**PASS**

### N08-2 — App-owned Activity-to-Activity navigation

Reference direct edges were reconciled against target callers for the actionable P3 surface, including:

- ConfigList → Labels / SettingsDetail / Settings / ConfigEdit
- AppsBatch → SettingsDetail / Settings
- AppsConfigRun → SettingsDetail / Settings
- AppsQuickActions → SettingsDetail / Settings
- FoldersBatch → SettingsDetail / Settings / folder-edit result flow
- MessagesDash → MessagesBackupRestore / Conversations / SettingsDetail / Settings
- CallsDash → CallsBackups / SettingsDetail / Settings
- Intro → Home
- Shortcuts → ConfigList / AppsQuickActions
- Settings → AppSwipeActions / RestoreSpecialDataDetails
- existing AppsList drawer/actions → Quick Actions / Labels / ConfigList / Blacklist / SettingsDetail / Settings / Batch
- existing Cloud and Settings feature shells expose their documented Activity destinations.

**PASS for actionable target-owned navigation edges.**

### N08-3 — HomeSearch result navigation

Reference HomeSearch contains result-driven routes to:
- AppList
- Detail
- FolderDetail
- FoldersDash
- MessagesDash
- CallsDash
- WallsDash
- Wifi
- Preconditions
- MessagesBackupRestore / CallsBackupRestore in permission-dependent quick-action paths.

Target HomeSearch currently exposes:
- Reference-shaped search UI shell;
- back/close navigation;
- source-bounds Intent contract.

It does **not** implement Reference search indexing/query/result population.

Therefore these result-driven routes are classified:

**DOWNSTREAM / BLOCKED BY SEARCH SEMANTICS — NOT A N08 DEFECT**

Do not invent a fake search result engine merely to make the Activity graph appear complete.

### N08-4 — Intro password route

Reference conditionally launches `UserPasswordActivity` through `extra_is_restoring`.

Target currently uses the P3 password setup boundary instead of claiming the password engine.

Classification:

**DOWNSTREAM / PASSWORD-ENGINE BOUNDARY**

The navigation contract itself is already represented by the P3 flow boundary; actual password behavior remains outside N-08.

### N08-5 — External/system navigation

Reference includes navigation to Android/system/external surfaces:
- battery optimization settings;
- usage access settings;
- Wi-Fi/device credential confirmation;
- share choosers;
- wallpaper/system application surfaces;
- external OAuth/browser callbacks.

These are not copied blindly into N-08 when their actual behavior is owned by permissions, feature integrations, dependency callbacks, or P4 engines.

Classification:
- permission/system access → N-07 / owning feature;
- OAuth/dependency callbacks → N-06 / integration;
- actual feature operation → downstream engine;
- share chooser/system handoff → owning feature surface.

No unresolved N-08-owned defect found.

### N08-6 — Back/result transitions

Reference has extensive `finish()`, `setResult()`, and Activity-result paths.

Target has corresponding P3 back/result boundaries across the audited Activities.

Lifecycle-specific state restoration is explicitly retained for N-09.

**PASS at N-08 navigation boundary.**

## 3. CEK decision

**PECAH required** into:
- N08-1 Home/tab
- N08-2 Activity graph
- N08-3 HomeSearch result graph
- N08-4 external/system routes
- N08-5 back/result boundary

No additional implementation split was required because actionable N08-owned target gaps were not found.

## 4. Implementation

**No mutation required.**

Reason:
- actionable N08-owned navigation already exists in target;
- remaining Reference routes depend on search/auth/engine/lifecycle semantics explicitly deferred to their owning domains;
- adding synthetic routes without their Reference data/conditions would violate the evidence-first rule.

## 5. Re-audit

Static re-audit:
- Reference canonical archive unchanged.
- Home/tab navigation: PASS.
- Direct actionable Activity navigation: PASS.
- Existing drawer/menu navigation: PASS.
- Back/finish boundaries: PASS.
- Result/navigation ownership split: PASS.
- HomeSearch result routes: explicitly downstream-blocked, not silently treated as parity.
- Password route: explicitly downstream-boundary, not silently treated as parity.
- External/dependency callbacks: not duplicated from N-06.

## 6. Closure

N-08 exit criterion is satisfied for the **N-08-owned navigation contract**:
1. navigation/resource handoff consumed from N-01;
2. actionable Activity navigation reconciled;
3. Home/tab navigation reconciled;
4. menu/drawer navigation owned by N-08 distinguished from N-01 XML presence;
5. back/result boundaries classified;
6. downstream/blocked routes explicitly registered;
7. no speculative navigation behavior added;
8. Reference remains read-only.

**N-08 → 🟢 CLOSED / STATIC PASS — navigation contract boundary.**

This does not claim search engine, password engine, lifecycle engine, provider, backend, or runtime success.

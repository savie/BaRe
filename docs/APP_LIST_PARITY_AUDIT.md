# App List UI Parity Audit

**Project:** BΛR☰  
**Reference:** Swift Backup 5.1.0 (620)  
**Working branch:** `feature/apps-list-ui`  
**Audit type:** Static source/layout comparison; runtime parity and CI build not yet verified.

## Scope and guardrails

This phase covers App List discovery, filtering, presentation, search, per-row controls, and batch-action entry points. It does not implement or modify the backup/restore engine, cloud/backend behavior, or unrelated flows.

Keep the existing skeleton and intentional placeholder files (including `.gitkeep`) unless a specific implementation need justifies changing them. An empty placeholder is not automatically a defect.

## Reference evidence inspected

From `SwiftBackup-5.1.0-620-decompiled.zip`:

- `output/jadx/resources/res/layout/app_list_activity.xml`: DrawerLayout/CoordinatorLayout, app-bar include, swipe-to-refresh, RecyclerView, fast scroller, and floating batch-actions button.
- `output/jadx/resources/res/layout/appbar_with_filters.xml`: toolbar/search view and applied-filter area.
- `output/jadx/resources/res/layout/toolbar_mini.xml`: title/subtitle toolbar treatment.
- `output/jadx/resources/res/menu/menu_apps.xml`: search, filter, and navigation-drawer actions.
- `output/jadx/sources/org/swiftapps/swiftbackup/appslist/ui/list/AppListActivity.java`: search listener, filter entry point, refresh listener, fast-scroller setup, batch-action entry point, and drawer behavior.
- `output/jadx/sources/org/swiftapps/swiftbackup/appslist/ui/AppItemContentLayout.java`: row contains an icon, multiple text/subtitle fields, labels, favorite affordance, and a per-row menu affordance.
- `output/jadx/resources/res/values/strings.xml`: reference terminology includes User apps, System apps, System apps (Launchable), System apps (Updated), System apps (Labelled/Favorites), Show/Hide System Apps, and filter-related messages.

Static resource/string evidence does not by itself establish the exact default filter state or runtime behavior on the user's device.

## Current BΛR☰ implementation observed

- `AppCatalogRepository`: reads installed applications with PackageManager, sorts by label/package name, and applies query + All/User/System filters.
- `AppListActivity`: search, filter spinner, refresh button, loading/empty state, count, and batch-action placeholder.
- `AppListAdapter`: app icon, package name, label, and backup status.
- `InstalledApp`: determines system-app classification from system/updated-system flags.
- Current layout is a simplified native LinearLayout/ListView design rather than the reference's app-bar/RecyclerView/fast-scroller structure.
- Backup history is not wired. The status must not claim that an app has no backup when the catalog cannot verify that fact.
- Batch backup actions and app-detail navigation remain unimplemented; do not count them as parity complete.

## Changes made in this pass

1. Added a per-row overflow control with Open app, App info, and Copy package name actions. This is a useful interim menu, not proof that reference-specific backup/menu actions have parity.
2. Changed the unavailable backup status to neutral wording instead of asserting that no backup exists.
3. Added a clear-search control that appears only when the query is non-empty.

Relevant files:
- `app/src/main/java/com/bareapps/barebackup/appslist/ui/list/AppListActivity.java`
- `app/src/main/java/com/bareapps/barebackup/appslist/ui/list/AppListAdapter.java`
- `app/src/main/java/com/bareapps/barebackup/appslist/data/InstalledApp.java`
- `app/src/main/res/layout/app_list_activity.xml`
- `app/src/main/res/layout/app_list_item.xml`

## Open questions / remaining work

### Installed-app count mismatch (493 vs 373)

Do not force the number to match by arbitrarily filtering packages. Compare on the same device and filter state:
- raw PackageManager result count;
- user/system/updated-system/launchable subsets;
- package visibility and OEM installed-app access behavior;
- reference's selected filter and any applied/hidden filters;
- actual visible item count versus any toolbar count.

Reference strings mention an installed-app visibility diagnostics explanation and Xiaomi-specific installed-app access. This is a reason to investigate package visibility and device permissions, not proof that this is the cause on the current device.

### UI parity priorities

1. Resolve the count discrepancy with evidence.
2. Map reference toolbar/search/filter behavior and the exact available filter modes.
3. Improve toolbar and filter presentation without breaking current search/filter/refresh.
4. Map row menu, favorite, labels, selection, and batch actions to the reference workflow. Do not substitute generic Android actions for backup actions and call it parity.
5. Implement app details only after the catalog behavior is stable.

### CI

`.github/workflows/BΛR☰-Rebuild-CI.yml` currently uses `workflow_dispatch` only; it does not trigger on every push. Preserve that manual-only behavior. No CI run or device/runtime test has been performed as part of this pass, so no green-build claim is made.

## Acceptance gate for this phase

- Search can be entered and cleared; query filtering remains responsive.
- All/User/System filters remain functional.
- Per-row menu actions either complete or provide a clear failure message.
- Backup status is not fabricated before backup history is connected.
- Count mismatch has a documented explanation backed by matched device/filter evidence.
- Batch actions are not reported as complete until a real supported workflow and its results are implemented and tested.
- CI is run once after the grouped changes are ready, and the actual run result is checked.

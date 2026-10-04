# Reference ZIP Gap Audit — 2026-10-04

## Authority

- Reference: supplied `SwiftBackup-5.1.0-620-decompiled.zip`
- Reference is read-only evidence.
- P1: `docs/PHASE_1_INVENTORY.md`
- P2: `docs/PHASE_2_SKELETON.md`
- Target source: current `rewrite/app/`

## Static structural reconciliation

Reference Manifest target:

| Surface | Reference | BaRe app | Gap |
|---|---:|---:|---:|
| Activity | 95 | 71 | 24 external/dependency |
| Service | 10 | 3 | 7 external/dependency |
| Receiver | 10 | 8 | 2 external/dependency |
| Provider | 4 | 2 | 2 external/dependency |
| **Total** | **119** | **84** | **35** |

All **71 app-owned Reference Activities** are present in `app/src/main/java/com/bare/`.

Reference app-owned source evidence in the ZIP remains the implementation authority. External/dependency components are contract/integration targets; no BaRe clone classes are invented merely to reach 119.

## Root/Core reconciliation

Reference `SwiftApp` is the Application root. BaRe already has `BaReApp` and the Reference notification-channel family. This pass added the safe Application singleton boundary.

Reference `HomeActivity` navigation state is already represented by the BaRe four-page pager. This pass added the Reference reselect-to-top behavior and no unsupported dependency class.

## Implementation rule

For each remaining gap:

1. Read the corresponding source/smali/resource from the supplied ZIP.
2. Locate the existing BaRe owner in `app/`.
3. Reconcile only Reference-proven behavior.
4. Apply only authorized deviations: Swift branding → BaRe, Firebase backend → Supabase, Premium free, Java, Views/XML.
5. Static-check the affected owner and consumers.
6. Commit.
7. Continue to the next Reference-proven gap.

No build, APK, install, runtime/device, or live Supabase execution is performed under the active guard.

## Current loop

**Batch:** Application root → Home

**Status:** IMPLEMENTED / STATIC

**Next:** continue Reference ZIP → current `app/` gap reconciliation through the remaining core/feature owners; do not create manifest dependency clones without dependency evidence.

## Implementation loop update

### Batch A — Application notification contract
Reference ZIP evidence from common/NotificationHelper.java + SwiftApp.java proves:
- success channel uses task_complete_sound_success
- error/crash channel uses the Reference error sound
- task completion channels use notification audio attributes
- application startup calls NotificationManager.cancelAll()

BaRe reconciliation:
- BaReApp now resolves the shipped success/error raw resources to Android resource URIs.
- startup cancelAll() is aligned with Reference.
- existing BaRe singleton/channel ownership is preserved.

Commit: fb6ca5cbdee5d5d1ed97eb5372b526d0b049323c

### Batch B — Home Search result pipeline
Reference ZIP evidence from home/search/HomeSearchActivity.java proves:
- Apps, Folders, and Quick Actions have dedicated RecyclerView adapters.
- Search results control section/card visibility.
- App result opens DetailActivity with the package as target.
- Folder result opens FolderDetailActivity with FolderItem.
- Quick Actions dispatch into corresponding backup/restore surfaces.
- system-app visibility is part of the result state.

BaRe reconciliation:
- existing HomeSearchEngine is retained as the search/ranking owner.
- result adapters are now attached to the existing Reference-shaped RecyclerViews.
- app and folder indexes are loaded from existing BaRe repositories.
- result card visibility and system-app toggle are driven by HomeSearchEngine.State.
- Reference-proven app/folder/quick-action dispatch is wired to existing BaRe owners.
- no new manifest component or fake dependency class was introduced.

Commits:
- 76c82cae79994e035e09ce43ef18721e08805687
- 1e079380ff0ee6f1ce478901bc513f446b904c5e

### Static guard
These batches were reviewed statically only. No build, APK generation, install, runtime/device execution, or live Supabase mutation was performed.

## Current loop

Batch: Application → Home/Search

Status: IMPLEMENTED / STATIC

Next: continue Reference ZIP → current app/ gap reconciliation through the remaining core/feature owners; do not create manifest dependency clones without dependency evidence.

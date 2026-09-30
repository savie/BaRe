# BΛR☰ Phase 3 Closure Audit

## Document Role

**SUPPORTING EVIDENCE / HISTORY ONLY.**

The active P3 work order lives exclusively in docs/PHASE_3_STATUS.md.

This document records the closure criteria, evidence already established, corrections made, and the current reason Phase 3 remains open.

## Baseline

- Reference: Swift Backup 5.1.0, versionCode 620
- Reference source: supplied decompiled archive
- Target repository: savie/BaRe
- Target branch: rewrite
- Build/install/runtime/visual verification: **not performed**
- Engine/provider/backend/runtime success: **not claimed**

## Closure Criteria

P3 can close only when:
1. all 71 Activities remain at the evidence-supported P3 boundary;
2. no unresolved P3 defect remains;
3. the remaining Resource/Dimension parity work is fully audited;
4. the remaining Style/Theme/Color parity work is fully audited;
5. the P3 boundary/deferred execution classification remains explicit;
6. no unexplained visible Swift branding remains outside authorized deviations;
7. the final static resource-reference checks remain clean.

Until these conditions are met, Phase 4 remains gated.

## Current Closure Gate Matrix

| Gate | Classification | Current evidence |
|---|---|---|
| Activity inventory | **PASS** | 71/71 Activities represented in the current P3 status. |
| Java-only source | **PASS** | Current audit records Java-only application source; no Kotlin source is used by handoff. |
| Android Views/XML | **PASS** | Current P3 reconstruction uses Android Views/XML; ComposeSmsActivity is an Activity name, not Compose UI. |
| Firebase dependency | **PASS** | Current app/build.gradle has no Firebase dependency. |
| Branch target | **PASS** | Work target is rewrite. |
| Reference baseline | **PASS** | P3 reconstruction is based on the supplied Reference archive. |
| Branding / visible Swift identity | **PASS + AUTHORIZED DEVIATION** | Visible Swift branding was removed from P3 user-facing surfaces; required Swift-specific external contracts remain authorized. |
| Resource / Dimension parity | **OPEN** | Dimension subgate is closed; the broader application-owned Resource queue remains open. |
| String parity | **PASS — P3-visible surface** | Active P3-visible wording was audited; downstream Reference-only strings remain outside this P3 surface. |
| Style / Theme / Color parity | **OPEN** | Full static matrix is still pending; no runtime visual comparison has been performed. |
| Intent / Navigation matrix | **PASS — static** | 71 Activity contracts and manifest registration were audited. |
| Lifecycle / State matrix | **PASS — static** | 71 Activity lifecycle/state boundaries were audited; runtime lifecycle verification remains outside P3. |
| Dialog / Error / Loading parity | **PASS for audited P3 surfaces** | Known Activity-specific states were reconstructed; deeper feature execution remains downstream. |
| Fake / Stub / P3 boundary classification | **PASS / P4 DEFERRED** | Intentional P3 boundaries are documented as temporary engineering markers. |
| Dependency boundaries | **P4 DEFERRED** | Backup/provider/backend/entitlement execution remains downstream. |
| Static resource-reference integrity | **PASS — audited P3 surface** | Known missing P3 resource references found by static audit were corrected. |

## Resource / Dimension Evidence

### Dimension

Reference evidence:
- 839 unique dimension names across 20 values*/dimens.xml files.
- 67 names outside known dependency/library prefix families were treated as project-facing/non-library scope.
- All 67 are present in BaRe with Reference values.
- Qualifier overrides restored for:
  - values-land: activity_horizontal_margin = 64.0dp
  - values-w820dp: activity_horizontal_margin = 64.0dp
  - values-w320dp-land: clock_face_margin_start = 24.0dp
  - values-w600dp-land: clock_face_margin_start = 64.0dp
- Dimension subgate: **PASS**.

Known corrected dimension values include:
- label_chip_corner_radius = 11.0dp
- label_chip_stroke_width = 1.5dp
- subtitle_small = 13.0sp
- subtitle_smaller = 12.0sp
- title = 16.0sp

### Broad Resource Evidence

Reference res/ inventory: **1,491 files**.

The Reference tree contains dependency/library resources, so the target is not blind one-to-one copying of all 1,491 files.

Evidence-backed app-owned corrections included 15 Reference drawables relevant to current P3 contracts, plus later menu/XML corrections.

Later corrections:
- menu_apk_import.xml
- menu_select_all.xml
- menu_smscalls_backups.xml
- menu_premium.xml
- ic_bug.xml
- ic_help.xml
- Reference PreferenceCategory layout contract in settings.xml

Current static contract evidence:
- active R.menu references have corresponding rewrite resources;
- active R.xml surface was checked;
- no current Java references were found for R.anim, R.animator, R.raw, or R.font;
- full application-owned Reference resource matrix remains open.

## Activity / P3 Corrections Already Recorded

The closure audit established and corrected, among other audited P3 items:

### Manifest / lifecycle
- restored Reference default launch mode for ApkImportActivity;
- restored exported=false for BoxSignInActivity;
- restored explicit exported=false for FilenSignInActivity.

### User-visible identity
- removed visible Firebase wording from audited P3 cloud diagnostic/orphan surfaces;
- replaced visible Swift Backup wording in the App Visibility share subject;
- retained BΛR☰ branding as the authorized product identity.

### Resource references
- restored ic_error.xml;
- restored ic_settings_block_filled.xml;
- restored ic_plus.xml;
- corrected the Apk Import default icon reference to the platform equivalent.

### Wallpaper / Wi-Fi P3 surfaces
- WallApplyActivity, WallsManageActivity, and WifiActivity were corrected toward the Reference P3 resource/menu/card contracts.
- Their actual provider/engine execution remains downstream.

## P3 Boundary Rule

P3 boundary messages are **temporary engineering markers**.

They are not final product copy and must not be read as evidence of:
- successful backup;
- successful restore;
- successful authentication;
- successful persistence;
- successful provider operation;
- successful billing;
- successful backend operation.

Actual execution remains downstream P4/P5 work.

## Closure Decision

**P3 IS NOT FULLY CLOSED.**

Current reason is narrow and explicit:

- **Resource / Dimension:** remaining queue open after the Dimension subgate.
- **Style / Theme / Color:** remaining queue open.
- Runtime/build/install/visual verification is not required to perform these static audits and remains unauthorized.

The 71 Activities remain green and protected from regression reopening.

**Phase 4 remains GATED / NOT STARTED.**

## Historical Evidence Notes

The former standalone Resource/Dimension audit files were retired. Their relevant evidence is consolidated into this closure record and docs/PHASE_3_STATUS.md.

Historical freeze wording from earlier checkpoints is superseded by the current open P3 state. It must not be read as a second active status.

No build/install/runtime/visual verification was performed in the documented P3 resource closure work.

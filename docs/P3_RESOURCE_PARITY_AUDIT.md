# P3 Resource Parity Audit — Broad Resource Pass

## Scope

Reference: Swift Backup 5.1.0 (versionCode 620), supplied decompile archive.
Target: savie/BaRe, branch rewrite.
Static-only. No build, install, runtime, or visual verification.

## Inventory

Reference APKTool resource tree: 1,491 resource files under res/.
- 341 layouts
- 445 drawables
- 44 menus
- 18 XML resources
- 12 raw resources
- 7 fonts
- 41 animations
- 42 animators
- 199 color resources
- additional qualifier/density variants

The Reference tree contains both application resources and AndroidX/Material/dependency resources. The audit therefore does not treat the full 1,491-file count as an application-owned copy target.

BaRe rewrite currently contains 222 application resource files.

## Dimension subgate

Previously closed:
- 67 identified project-facing/non-library dimension names match Reference values.
- Reference qualifier overrides restored for land, w820dp, w320dp-land, and w600dp-land.

See docs/P3_RESOURCE_DIMENSION_AUDIT.md.

## Broad resource findings

- 204 Reference resource paths have exact path counterparts in BaRe.
- Many remaining Reference resources are dependency/library resources or resources belonging to Reference surfaces/contracts that are not represented by the current BaRe resource tree.
- Exact path absence alone is not treated as a defect: some Reference resources are dependency-owned, some are downstream-only, and some are intentionally represented by a reconstructed BaRe resource with a different local filename/contract.

## Evidence-backed restorations

The following Reference app-owned drawables were absent from BaRe and are now restored from the Reference APKTool source:

- ic_clear_all
- ic_content_copy
- ic_delete
- ic_create_new_folder
- ic_download
- ic_cloud_off
- ic_edit_pencil
- ic_folder
- ic_check_circle_outline
- ic_check_circle_full
- ic_check_circle_mini
- ic_refresh
- ic_share
- ic_sync
- ic_warn_filled

These are concrete app-owned vector resources rather than AndroidX/Material library resources. Several are directly evidenced by current BaRe P3 layouts/menu contracts (schedule-label, Wi-Fi, cloud, folder, labels, and wallpaper surfaces).

No Activity source was changed.

## Current gate classification

**Resource/dimension parity: UNKNOWN — OPEN**

Reason:
1. Dimension project-facing subgate is PASS.
2. A concrete set of missing app-owned drawable resources has been restored.
3. The full Reference application-resource matrix has not yet been proven equivalent across layouts, menus, drawables, colors, animations, XML/raw/font resources, and qualifier variants.
4. Dependency/library resources must remain separated from application-owned parity.

Therefore this pass does not promote the overall gate to MATCH/PASS.

## Safety constraints respected

- No GREEN Activity was reopened.
- No engine/provider/backend/runtime claim was made.
- No build/install/runtime/visual verification was performed.
- P3 boundary markers remain engineering markers only.

## Next resource sub-pass

Continue with Reference application-owned layout/menu/XML/animation/qualifier resource mapping, using concrete Reference resource usage and current BaRe contracts as evidence. Do not blindly import dependency/library resources.\n\n## 2026-09-30 Evidence-backed menu parity continuation\n\nAdditional static evidence closed concrete application-owned menu/resource gaps on the rewrite branch:\n\n- menu_apk_import.xml restored from Reference because ApkImportActivity references the menu contract and the Reference menu is application-owned.\n- menu_select_all.xml restored from Reference; the action_select_all contract is referenced by current batch/schedule surfaces.\n- menu_smscalls_backups.xml is present and matches the current SMS/calls backup action contract.\n- menu_premium.xml was aligned to the Reference icon/show-as-action contract.\n- ic_bug.xml and ic_help.xml were restored because the restored/aligned menus require them.\n\nNo Activity source was changed. No build, install, runtime, or visual verification was performed.\n\nThe overall Resource/dimension gate remains UNKNOWN / OPEN because the complete application-owned layout/XML/animation/qualifier/content matrix is still not fully evidenced.\n
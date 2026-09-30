# P3 EU-01 Resource Matrix — Reference ZIP Evidence

## Source of truth

EU-01 uses the supplied **Swift Backup 5.1.0 / versionCode 620 decompile ZIP** as the Reference source of truth.

Reference evidence is read from:

- `output/jadx/resources/res/`
- `output/jadx/sources/org/swiftapps/swiftbackup/`

The repository's `reference/apktool/` / `reference/jadx/` mirrors are secondary cross-check material only and are **not** the primary Reference input for this EU.

## Target

BaRe application-owned resources:

- `app/src/main/res/`
- branch: `rewrite`

## Reference resource inventory from the supplied ZIP

The decoded ZIP contains the previously recorded major resource families:

| Resource family | Reference count |
|---|---:|
| layout | 341 |
| layout-land | 2 |
| layout-sw600dp | 2 |
| layout-w600dp | 1 |
| layout-watch | 2 |
| drawable | 445 |
| drawable-anydpi | 2 |
| drawable-anydpi-v31 | 1 |
| drawable-nodpi | 33 |
| menu | 44 |
| xml | 18 |
| raw | 12 |
| font | 7 |
| anim | 41 |
| animator | 42 |
| color | 199 |

These counts are inventory evidence only. They are **not** a parity target because the decoded Reference includes dependency/library resources.

## Application-ownership evidence

The strongest current static ownership signal is Reference application-source usage:

`output/jadx/sources/org/swiftapps/swiftbackup/` was scanned for `R.<type>.<name>` references.

Current Reference application-source usage inventory:

| Type | Distinct application-source references |
|---|---:|
| anim | 4 |
| color | 6 |
| dimen | 14 |
| drawable | 59 |
| font | 4 |
| layout | 14 |
| menu | 30 |
| string | 300 |
| style | 2 |
| xml | 1 |

This source-usage inventory is the **candidate ownership seed**, not a final parity verdict. A resource can still be dependency-provided, shared, generated, or intentionally represented differently in BaRe.

### Initial high-confidence application resource examples

Reference application source explicitly references application-facing resources such as:

- layouts: `app_list_activity`, `folder_detail_activity`, `intro_benefit_card_view`, `schedule_fab_menu_item`, `task_activity`, `wifi_show_dialog`;
- menus: `menu_apps`, `menu_apps_batch_activity`, `menu_config_settings`, `menu_folder_picker`, `menu_task_activity`, `menu_walls_explore`;
- drawables: `ic_app`, `ic_check`, `ic_cloud`, `ic_restore`, `ic_settings_*_filled`, `ic_stat`;
- application colors: `acnt`, `ambrdark`, `blk07`, `premium`, `trans`, `wht20`;
- application fonts: `main_bold`, `mono_bold`, `mono_medium`, `condensed_regular`.

The exact ownership classification still requires checking the Reference declaration plus current BaRe counterpart/usage before mutation.

## Ownership classification rule

Each candidate is classified as:

1. **APP-MATCH** — Reference application-owned resource already represented by the current BaRe contract.
2. **APP-MISSING** — Reference application-owned resource with evidence of a bounded missing BaRe counterpart.
3. **DEPENDENCY/LIBRARY** — Reference resource belongs to AndroidX/Material/other dependency surface.
4. **QUALIFIER VARIANT** — application-owned resource variant that must be reconciled with its base contract.
5. **AUTHORIZED DIFFERENCE** — identity/branding or another explicitly authorized BΛR☰ deviation.
6. **DOWNSTREAM / NOT P3 IMPLEMENTATION** — resource tied to a deferred provider/backend/engine capability where reconstruction would invent behavior.
7. **UNRESOLVED** — evidence insufficient; no mutation permitted.

## EU-01 Batch 01 result

**Inventory baseline: COMPLETE.**

The previous inventory note based on repository tree data is superseded as the primary Reference evidence. The supplied decompile ZIP is now the authoritative Reference input for this EU.

**No application resource mutation was performed in Batch 01.**

## EU-01 Batch 02

**Ownership classification is now the active batch.**

Required evidence per candidate:

- exact Reference ZIP path;
- declaration/resource type and qualifier;
- Reference application-source usage where available;
- current BaRe counterpart;
- dependency/library exclusion evidence;
- whether the candidate is P3-visible and bounded.

Only candidates classified **APP-MISSING** with a known safe contract may proceed to Small Implementation.

## Guardrails

- Do not bulk-copy Reference resources.
- Do not treat raw count differences as defects.
- Do not replace BΛR☰ identity merely to match Swift-named internal identifiers.
- Do not invent provider/backend/engine behavior through resources.
- Static verification only; build/install/runtime/visual verification remains gated.

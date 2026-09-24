# Reference Apps Shell Mapping

## Status

- Sumber Reference: branch `reference`
- Artifact utama: `reference/apktool/res/layout/app_list_activity.xml`
- Pendukung: `appbar_with_filters.xml`, `toolbar_mini.xml`, `menu_apps.xml`, `dimens.xml`
- BaRe target: branch `v1.0/rebaseline`
- Audit level: static source mapping
- Runtime verification Reference: UNKNOWN / belum dilakukan
- Runtime verification BaRe: UNKNOWN / belum dilakukan

## Reference structure

```
DrawerLayout
└── CoordinatorLayout
    ├── appbar_with_filters
    │   └── toolbar_mini + search_view + applied-filters row + divider
    ├── SwipeRefreshLayout
    │   └── FrameLayout
    │       ├── RecyclerView
    │       └── FastScroller
    ├── error_layout
    └── ExtendedFloatingActionButton(batch_actions)

Drawer content
└── drawer_container
    ├── rv_drawer_top
    └── rv_drawer_bottom
```

## Component mapping

| Reference component | Evidence | Exact geometry / property | BaRe current target | Status |
|---|---|---|---|---|
| Root `DrawerLayout` | `app_list_activity.xml` | match_parent x match_parent | `BaReApp.kt` apps menu overlay | DIFFERENCE |
| App content `CoordinatorLayout` | `app_list_activity.xml` | match_parent x match_parent, fitsSystemWindows=true | `BaReApp.kt` Column + HorizontalPager | DIFFERENCE |
| `appbar_with_filters` | `appbar_with_filters.xml` | wrap_content height, full width | `AppsContextHeader` | PARTIAL |
| `toolbar_mini` | `toolbar_mini.xml` | wrap_content height, start padding 12dp, zero elevation | `AppsContextHeader` | GAP |
| Toolbar title | `toolbar_mini.xml` | uppercase, 13sp, primary color, bold font | source selector currently | DIFFERENCE |
| Toolbar subtitle | `toolbar_mini.xml` | visible, below title, end margin 16dp | app count currently exists but inside source selector | PARTIAL |
| Search | `menu_apps.xml` + `appbar_with_filters.xml` | action_search; inline SimpleSearchView when opened | `AppsContextHeader` + global header | DIFFERENCE |
| Filter | `menu_apps.xml` | action_filter, ifRoom | `AppsContextHeader` | PARTIAL |
| Drawer | `menu_apps.xml` | action_drawer, always | `BaReApp.kt` appsMenu | PARTIAL |
| Applied filters | `appbar_with_filters.xml` | Flexbox row, start padding 16dp, bottom padding 4dp, initially gone | inside `AppsFilterScreen` list | DIFFERENCE |
| Divider | `appbar_with_filters.xml` | ToolbarDivider immediately below header block | no exact local equivalent verified | GAP |
| Refresh | `app_list_activity.xml` | SwipeRefreshLayout around list | AppsFilter reload exists; swipe gesture not verified | GAP |
| App list | `app_list_activity.xml` | RecyclerView, match_parent, bottom padding 128dp, clipChildren=false, clipToPadding=false | LazyColumn | DIFFERENCE |
| Fast scroller | `app_list_activity.xml` | end aligned, full height minus 140dp bottom margin | none | MISSING |
| Batch actions | `app_list_activity.xml` | ExtendedFAB, end+bottom, margin 20dp, text `batch_actions`, playlist-check icon | no equivalent verified in current Apps shell | MISSING |
| Error surface | `app_list_activity.xml` | full screen, same scrolling behavior | error text inside list | DIFFERENCE |
| Drawer top list | `app_list_activity.xml` | top constrained list, top padding 16dp | current drawer top content | PARTIAL |
| Drawer bottom list | `app_list_activity.xml` | bottom constrained list, bottom padding 20dp | current drawer bottom section | PARTIAL |

## Reference dimensions

- `spacing_low` = 4dp
- `spacing_medium` = 8dp
- `spacing_medium_more` = 12dp
- `spacing_normal` = 16dp
- `spacing_normal_more` = 20dp
- `spacing_large` = 24dp
- `spacing_larger` = 48dp
- RecyclerView bottom padding = 128dp
- FastScroller bottom margin = 140dp
- App icon size resource = 40dp
- Extended FAB minimum height = 48dp
- Extended FAB icon = 24dp
- Extended FAB start/end padding = 20dp
- Extended FAB icon/text spacing = 12dp

## Reference action contract

From `menu_apps.xml`:

1. Search → open inline search view.
2. Filter → open filter surface.
3. Drawer → open navigation drawer.

The menu does not establish additional Apps-shell actions.

## BaRe implementation boundary

The current Apps page is composed by:

- `BaReApp.kt` → `AppsContextHeader`
- `BaReApp.kt` → `AppsFilterScreen`
- `AppsFilter.kt` → inventory, filters, sorting, list, app action sheet
- `AppsScreens.kt` → separate Apps surface / detail and backup flows

For parity work, `AppsFilterScreen` is the existing list/behavior surface to preserve. The shell should be corrected around it rather than introducing a second Apps list implementation.

## A1 implementation contract

A1 should change only the Apps shell/presentation boundary:

1. Preserve `AppsFilterScreen` behavior as the current list/behavior owner.
2. Replace the current Apps local header visual structure with a Reference-shaped local sub-header:
   - title
   - subtitle
   - search action
   - filter action
   - drawer action
   - divider
3. Keep the project's explicit Global Header + Local Sub-header concept.
4. Remove source-selector UI from the parity path unless separately classified as a capability extension.
5. Add Reference-positioned batch action entry as a separate shell action; do not invent backend behavior.
6. Do not claim FastScroller parity until an actual implementation and verification exist.
7. Do not change filter semantics in A1.
8. Do not change backup/data behavior in A1.

## Verification gates

A1 is not VERIFIED until:

- source mapping is implemented;
- build is green;
- Apps shell renders without layout/Compose errors;
- search/filter/drawer actions remain reachable;
- no existing Apps filter behavior regresses.

Visual pixel/position parity remains RUNTIME / visual verification work and is not established by static source mapping alone.

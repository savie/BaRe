# N-04 STYLES / THEMES / COLORS — TOTAL AUDIT

## Status

**TOTAL AUDIT COMPLETE — REGISTERED — IMPLEMENTATION AUTHORIZED**

- Domain: N-04 Styles / Themes / Colors
- Phase: P3
- Reference: local canonical ZIP
- Canonical: `/mnt/data/SwiftBackup-5.1.0-620-decompiled.zip`
- N-01 dependency: `docs/audits/N01_RESOURCE_TOTAL_AUDIT.md`
- Implementation: begins only after this register/check
- Build/install/runtime: NOT PERFORMED

## 1. N-01 handoff used first

N-01 establishes:

- 1,087 unique style symbols
- 567 unique color symbols
- 1,466 unique attr symbols
- 4,850 reachable candidate resource symbols
- N-04 ownership for styles/themes/colors/custom attrs
- qualifier topology and cross-domain ownership

Therefore this audit does not restart the complete resource inventory. The local ZIP was then inspected specifically for N-04 semantic definitions and dependency closure.

## 2. Reference N-04 inventory

| Resource class | Reference logical definitions |
|---|---:|
| style | 1,087 |
| color | 567 unique / 651 definitions across qualifiers |
| attr | 1,466 |

The Reference values tree also contains dependency/library definitions. They are not automatically BaRe-owned.

### Direct Reference application graph

The application source/resource graph directly references:

- 101 styles
- 764 color names
- 23 attrs

Some direct color references resolve through framework/library resources rather than Reference-owned value definitions. They must not be blindly copied.

## 3. BaRe current N-04 surface

Current implementation at audit start:

- 48 style definitions in `app/src/main/res/values/styles.xml`
- 1 color definition in `app/src/main/res/values/colors.xml`
- 12 intro-specific attrs in `app/src/main/res/values/attrs.xml`

Previously reconstructed style batches already cover:

- CardStyleNormal
- M3ButtonFilled
- M3ButtonFilled.Large
- dialog/typography styles
- M3ButtonTonal font family
- Title font family

These are retained and are not duplicated.

## 4. N-04 finding classes

### A — Already reconstructed

Existing BaRe style contracts that match the audited Reference semantics within their current scope.

### B — Missing application-owned component styles

The Reference application graph contains missing component styles including:

- BottomNavTextAppearanceActive
- BottomNavTextAppearanceInactive
- CircularActionIcon
- CustomTabText
- DetailTabTextAppearance
- ExtendedFabShapeAppearanceOverlay
- ExtendedFabTextAppearance
- FabShapeAppearanceOverlay
- FadeActivityAnimations
- GoogleSignInButton
- IntroBenefitCard
- IntroBenefitIconCard
- M3AlertDialogTheme
- M3SplitButtonTonalIcon
- M3SplitButtonTonalLeading
- MyTextViewStyle
- NavigationRailTextAppearanceActive
- NavigationRailTextAppearanceInactive
- ScheduleFabMenuItem
- ScheduleFabMenuItemShapeAppearanceOverlay
- ScheduleFabMenuItemTextAppearance
- ScheduleFabMenuToggle
- SearchViewIcon
- TextAppearance.BREChip
- TextAppearance.FilterChip
- TextAppearance.S3ProviderChip
- TextAppearanceListItem
- TextAppearanceListItemSecondary
- TextOverline
- TextOverline.Large

### C — Swift identity styles requiring N-11-aware mapping

Reference has:

- SwiftCircularProgressIndicator
- SwiftLinearProgressIndicator
- SwiftSegmentedListItemCardView
- SwiftSegmentedPreferenceCard
- SwiftTheme
- SwiftTheme.AppBarOverlay
- SwiftTheme.PopupOverlay
- SwiftTheme.PopupOverlay.Dark
- SwiftThemeBlack
- SwiftThemeDark

Because N-11 requires zero unexplained Swift product identity in `app/`, these cannot be copied literally. Their BaRe implementation must use targeted BaRe-owned names and preserve the actual semantic contract.

Expected mapping family:

- SwiftTheme → BaReTheme
- SwiftThemeDark → BaReThemeDark
- SwiftThemeBlack → BaReThemeBlack
- SwiftTheme.AppBarOverlay → BaReTheme.AppBarOverlay
- SwiftTheme.PopupOverlay → BaReTheme.PopupOverlay
- SwiftTheme.PopupOverlay.Dark → BaReTheme.PopupOverlay.Dark
- SwiftCircularProgressIndicator → BaReCircularProgressIndicator
- SwiftLinearProgressIndicator → BaReLinearProgressIndicator
- SwiftSegmentedListItemCardView → BaReSegmentedListItemCardView
- SwiftSegmentedPreferenceCard → BaReSegmentedPreferenceCard

These are identity mappings, not semantic redesigns.

## 5. Theme foundation finding

Reference theme chain is materially deeper than the current BaReTheme:

Reference:

`BaseTheme → SwiftTheme`

`BaseThemeDark → SwiftThemeDark`

`SwiftThemeBlack → SwiftThemeDark`

and Intro/theme overlays depend on this chain.

Current BaReTheme is only a shallow shell. Therefore N-04 cannot close from component styles alone.

The theme foundation requires:

- Material3 Expressive base-theme contract
- light/dark color roles
- custom color roles
- custom theme attrs
- card style wiring
- dialog wiring
- toolbar/popup wiring
- segmented-list wiring
- text appearance wiring
- time picker wiring
- input style wiring
- floating/extended FAB wiring

## 6. Color finding

The Reference contains a large custom palette used by the theme chain, including families such as:

- md_theme_light_*
- md_theme_dark_*
- color_primary_*
- blk*
- wht*
- red*
- grn*
- ambr*
- toolbar_*
- bottom_bar_*
- navigation_bar_*
- status_bar_*
- dialogbg_*
- popupbg_*
- divider_*
- segmented_list_item_*
- provider/application colors

Only colors proven reachable from the N-04 application-owned theme/component closure should be implemented.

Library-only Material/AppCompat/YubiKit/MSAL resources remain dependency-owned.

## 7. Attr finding

Reference defines 1,466 attrs, but most are library/dependency contracts.

N-04 must implement only attrs that are:

1. app-owned;
2. referenced by the app-owned theme/component graph; and
3. not already supplied by the BaRe dependency surface.

Examples of app-semantic attrs observed in the Reference graph include:

- cardBackgroundColor
- cardStrokeColor
- cardStyle
- cardStyleNormal
- cardStyleStroked
- dialogBackground
- dividerColor
- toolbarColor
- toolbarDividerColor
- toolbarShadowColor
- popupBackgroundColor
- segmentedListItemBackgroundColor
- segmentedListItemBottomMargin
- segmentedListItemCheckedBackgroundColor
- listItemCardViewStyle
- materialCardViewStyle
- extendedFloatingActionButtonPrimaryStyle
- floatingActionButtonPrimaryStyle
- textInputBoxBackgroundColor
- colorError2 / related error roles
- colorWarn / related warning roles

Exact Reference definitions are the evidence source. No attr format is invented.

## 8. Qualifier requirements

N-01 reports 1,128 multi-qualifier logical resource symbols across the candidate non-library surface.

For N-04:

- theme variants must preserve their qualifier topology;
- color qualifier overrides must not be collapsed;
- Reference night/API variants must remain distinct when application-owned;
- style qualifier variants must be preserved.

## 9. Implementation split decision

**CEK RESULT: PECAH.**

N-04 is too dependency-heavy for a single blind write because the theme foundation is upstream of many component styles.

Implementation is therefore split into:

### N-04-1 — Component styles

Scope:

- missing application-owned component styles
- FAB/schedule styles
- text appearances
- intro/card/button/dialog component styles
- progress/list/segmented component styles
- Swift-prefixed component style identity mappings to BaRe names

### N-04-2 — Theme foundation

Scope:

- BaseTheme / BaseThemeDark
- BaReTheme / BaReThemeDark / BaReThemeBlack
- theme overlays
- application-owned color palette required by the theme
- application-owned custom attrs required by the theme
- theme-linked component wiring
- identity mapping from Swift theme names to BaRe names

### N-04-3 — Qualifier + cross-domain closure

Scope:

- qualifier-specific N-04 resources
- N-03 dimension dependencies
- N-11 identity verification
- N-05 manifest/theme linkage
- static unresolved style/color/attr references

Each sub-batch receives its own static re-audit.

## 10. No blind-copy rule

Do not copy:

- all 1,087 Reference styles;
- all 567 Reference colors;
- all 1,466 Reference attrs;
- AndroidX/Material/AppCompat/YubiKit/MSAL definitions

merely because they exist in the decompiled APK.

The implementation target is the **application-owned N-04 contract**, not the complete merged dependency resource table.

## 11. N-04 implementation acceptance

N-04 can close only when:

1. application-owned styles are accounted for;
2. application-owned themes are reconstructed;
3. BaRe identity mapping contains no unexplained Swift resource identity;
4. application-owned colors required by the theme/component graph are present;
5. application-owned attrs required by the graph are present;
6. qualifier variants are preserved;
7. dependency/library resources are not duplicated without evidence;
8. no unexplained app-owned N-04 reference remains missing;
9. N-03/N-05/N-11 cross-domain ownership is explicitly reconciled;
10. Reference remains unchanged;
11. implementation diff stays inside BaRe scope;
12. static re-audit passes.

Runtime/build is not part of this closure claim.

## 12. Current conclusion

**N-04: 🟡 AUDITED / IMPLEMENTATION SPLIT REQUIRED**

The audit establishes the complete N-04 contract and the implementation order. The next action is N-04-1 Theme Foundation.


## N-04-1 execution — component styles

- Implemented on `rewrite`.
- Style count increased from 48 to **83**.
- All 34 planned non-theme missing component styles were registered.
- Four Swift-prefixed component styles were reconstructed under BaRe-owned names:
  - `BaReCircularProgressIndicator`
  - `BaReLinearProgressIndicator`
  - `BaReSegmentedListItemCardView`
  - `BaReSegmentedPreferenceCard`
- Static re-audit:
  - expected N-04-1 style additions: **34/34 present**
  - residual Swift identity in `styles.xml`: **0**
  - Reference unchanged
  - build/install/runtime: **not performed**
- N-04 remains 🟡 because the theme foundation and color/attr closure are still open.


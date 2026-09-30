# P3 EU-01 Resource Matrix — Inventory Baseline

## Purpose

EU-01 / N-01 resolves **application-owned Reference→BaRe resource parity**.

This checkpoint is an **evidence-only inventory baseline**. It does not declare parity, does not copy Reference resources, and does not modify application resources.

## Current source baseline

- Branch: `rewrite`
- Reference: Swift Backup 5.1.0 / versionCode 620
- Target: `savie/BaRe`
- Reference resource tree: `reference/apktool/res/`
- Target resource tree: `app/src/main/res/`

## Inventory totals

| Tree | Resource files |
|---|---:|
| Reference | **1491** |
| BaRe | **242** |
| Raw difference | **1249** |

**Important:** the raw difference is **not** a parity verdict. The Reference tree contains dependency/library/generated resources.

## Reference resource inventory by type / qualifier

| Directory | Files |
|---|---:|
| `anim` | 41 |
| `animator` | 42 |
| `color` | 199 |
| `color-night` | 3 |
| `color-v31` | 21 |
| `drawable` | 445 |
| `drawable-anydpi` | 2 |
| `drawable-anydpi-v31` | 1 |
| `drawable-hdpi` | 36 |
| `drawable-ldpi` | 1 |
| `drawable-ldrtl-hdpi` | 1 |
| `drawable-ldrtl-mdpi` | 1 |
| `drawable-ldrtl-xhdpi` | 1 |
| `drawable-ldrtl-xxhdpi` | 1 |
| `drawable-ldrtl-xxxhdpi` | 1 |
| `drawable-mdpi` | 35 |
| `drawable-night-nodpi` | 1 |
| `drawable-nodpi` | 33 |
| `drawable-watch` | 1 |
| `drawable-xhdpi` | 36 |
| `drawable-xxhdpi` | 35 |
| `drawable-xxxhdpi` | 16 |
| `font` | 7 |
| `interpolator` | 18 |
| `layout` | 341 |
| `layout-land` | 2 |
| `layout-sw600dp` | 2 |
| `layout-w600dp` | 1 |
| `layout-watch` | 2 |
| `menu` | 44 |
| `mipmap-anydpi` | 1 |
| `mipmap-xxxhdpi` | 3 |
| `raw` | 12 |
| `values` | 11 |
| `values-de` | 2 |
| `values-de-rDE` | 1 |
| `values-es` | 2 |
| `values-es-rES` | 1 |
| `values-fr` | 2 |
| `values-fr-rFR` | 1 |
| `values-h320dp` | 1 |
| `values-h320dp-port` | 1 |
| `values-h360dp-land` | 1 |
| `values-h480dp` | 1 |
| `values-h480dp-land` | 1 |
| `values-h550dp-port` | 1 |
| `values-h720dp` | 1 |
| `values-hdpi` | 1 |
| `values-in` | 2 |
| `values-in-rID` | 1 |
| `values-it` | 2 |
| `values-it-rIT` | 1 |
| `values-ja` | 2 |
| `values-ja-rJP` | 1 |
| `values-land` | 3 |
| `values-large` | 1 |
| `values-night` | 1 |
| `values-night-v31` | 1 |
| `values-pl` | 2 |
| `values-pl-rPL` | 1 |
| `values-port` | 1 |
| `values-pt` | 1 |
| `values-pt-rBR` | 2 |
| `values-ru` | 2 |
| `values-ru-rRU` | 1 |
| `values-sw360dp` | 1 |
| `values-sw600dp` | 3 |
| `values-tr` | 2 |
| `values-tr-rTR` | 1 |
| `values-uk` | 2 |
| `values-uk-rUA` | 1 |
| `values-v28` | 2 |
| `values-v31` | 3 |
| `values-v33` | 1 |
| `values-v34` | 2 |
| `values-v35` | 1 |
| `values-vi` | 2 |
| `values-vi-rVN` | 1 |
| `values-w320dp-land` | 1 |
| `values-w360dp-port` | 1 |
| `values-w400dp-port` | 1 |
| `values-w600dp` | 1 |
| `values-w600dp-land` | 1 |
| `values-w820dp` | 1 |
| `values-watch` | 1 |
| `values-xlarge` | 1 |
| `values-zh-rCN` | 2 |
| `values-zh-rTW` | 2 |
| `xml` | 18 |

## BaRe resource inventory by type / qualifier

| Directory | Files |
|---|---:|
| `color` | 1 |
| `drawable` | 79 |
| `drawable-nodpi` | 1 |
| `layout` | 121 |
| `menu` | 29 |
| `values` | 6 |
| `values-land` | 1 |
| `values-w320dp-land` | 1 |
| `values-w600dp-land` | 1 |
| `values-w820dp` | 1 |
| `xml` | 1 |

## Ownership rule

EU-01 may treat a Reference resource as an application-owned parity candidate only after ownership evidence is established.

Current evidence categories:

1. **Application-owned candidate** — evidence ties the resource to the Reference application contract/source/UI.
2. **Dependency/library/generated candidate** — evidence ties the resource to AndroidX/Material/AppCompat/other dependency or generated resource surfaces.
3. **Qualifier variant** — same contract under a Reference configuration qualifier; must be reconciled with its base resource contract rather than counted as an unrelated feature.
4. **Unresolved** — ownership cannot yet be established safely.

An unresolved item is **not copied or changed**.

## Stability guard

Because the Reference contains 1,491 files across many resource families, EU-01 will not process the tree as one mutation.

Before any resource mutation, the next evidence pass must establish:

- application-owned file/name set;
- dependency/library exclusions;
- resource type and qualifier;
- current BaRe counterpart;
- Reference usage/role where needed;
- exact candidate change scope.

Only a bounded candidate set may enter implementation.

## Current EU-01 status

**Evidence batch 01 — Inventory baseline: COMPLETE.**

**Parity verdict: NOT YET DETERMINED.**

**Implementation changes: NONE.**

**Runtime/build/install/visual verification: NOT AUTHORIZED / NOT PERFORMED.**

**Next EU-01 batch:** ownership classification and bounded Reference→BaRe candidate matrix.

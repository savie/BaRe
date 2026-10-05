# Phase 2 — Reference Materialization Register

**State:** EXECUTED — REFERENCE ARTIFACT BASELINE RECORDED / BARE MATERIALIZATION STILL IN PROGRESS

## Purpose

Phase 2 reconstruction must materialize what is actually present in the Reference artifact before claiming parity.

The Reference apktool output is the source baseline for manifest/resource reconstruction. No missing value is to be invented from current library defaults.

## Reference Manifest Baseline

Source artifact:

`/mnt/data/p2last/output/apktool/AndroidManifest.xml`

Observed:
- file size: 39,762 bytes
- SHA-256: `287cdbf168ca6b95b842ae15deb7e908c552f3f823723bc9518e44df4f4833f0`
- Application: 1
- Activities: 95
- Services: 10
- Receivers: 10
- Providers: 4
- manifest-facing entities: 120
- uses-permission entries: 34
- uses-feature entries: 4
- query package entries: 7
- intent-filter entries: 22
- meta-data entries: 23
- uses-library entries: 2

### Engineering rule

The complete Reference manifest is the baseline. A reduced BaRe manifest must not be treated as equivalent merely because its 120 component names match.

Required reconstruction sequence:

```
Reference manifest
    ↓
exact structural materialization
    ↓
component/resource/dependency resolution
    ↓
authorized deviation audit
    ↓
verification
```

Any difference in permissions, filters, metadata, authorities, flags, themes, resources, or dependency configuration is a separate mapping item.

## Reference Resource Baseline

Observed resource file inventory under Reference apktool `res/`:

| Resource directory | Files |
|---|---:|
| layout | 341 |
| layout-land | 2 |
| layout-sw600dp | 2 |
| layout-w600dp | 1 |
| layout-watch | 2 |
| drawable | 445 |
| drawable-anydpi | 2 |
| drawable-anydpi-v31 | 1 |
| menu | 44 |
| xml | 18 |
| raw | 12 |
| font | 7 |
| anim | 41 |
| animator | 42 |
| color | 199 |
| **all res files** | **1,491** |

These counts are inventory evidence only. Resource parity is not claimed until the actual Reference resource contents are materialized and build-resolved.

## Resource Reconstruction Rule

Do not create dummy XML/layout/resource placeholders solely to satisfy compilation.

If a resource is referenced by the Reference manifest or Java source:
1. locate its Reference definition;
2. materialize the actual definition;
3. preserve its dependency references;
4. record the mapping;
5. verify resource compilation;
6. classify any deliberate change as an authorized deviation.

## Current BaRe Status

The current BaRe tree contains a structural manifest and Java skeleton, but it is **not yet the complete Reference resource/materialization set**.

Therefore:
- Reference inventory: **RECORDED**
- Reference manifest baseline: **RECORDED**
- BaRe exact manifest parity: **NOT VERIFIED**
- BaRe resource parity: **NOT VERIFIED**
- Android resource compilation: **BLOCKED**
- Full Android APK build: **BLOCKED**
- Phase 2: **NOT VERIFIED**

## Next Materialization Tranches

1. Replace the reduced manifest with the complete Reference manifest, then audit only authorized deviations.
2. Materialize Reference `res/values`, styles, themes, colors, strings, XML contracts and manifest-referenced resources.
3. Materialize remaining layouts/drawables/menus/fonts/animations as required by source/resource dependency analysis.
4. Resolve all 37 dependency-owned manifest components against exact Reference evidence.
5. Execute a real Android build with SDK/API 37 and the required Gradle toolchain.
6. Advance entity states only from retained evidence.

## Non-Negotiable

**Reference contains it → BaRe reconstructs it.**

**Reference does not prove it → BaRe records UNKNOWN/BLOCKED.**

No speculative substitute is promoted to MATCH.

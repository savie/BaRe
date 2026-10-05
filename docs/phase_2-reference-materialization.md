# Phase 2 — Reference Materialization Register

**State:** IN PROGRESS — REFERENCE INVENTORY RECORDED / BARe PARITY OPEN

## Reference Manifest

Baseline:
- 1 Application;
- 95 Activities;
- 10 Services;
- 10 Receivers;
- 4 Providers;
- 34 permissions;
- 4 features;
- 22 intent-filters;
- 23 metadata entries;
- 2 uses-library entries.

Reference manifest SHA-256:
`287cdbf168ca6b95b842ae15deb7e908c552f3f823723bc9518e44df4f4833f`

## Reference Resources

Reference `res/` contains 1,491 files:
- layout 341
- layout-land 2
- layout-sw600dp 2
- layout-w600dp 1
- layout-watch 2
- drawable 445
- drawable-anydpi 2
- drawable-anydpi-v31 1
- menu 44
- xml 18
- raw 12
- font 7
- anim 41
- animator 42
- color 199

## Reconstruction Rule

Do not create dummy resources.

For each required Reference resource:
1. locate the actual definition;
2. trace consumers;
3. materialize it;
4. preserve dependencies;
5. compile;
6. classify deviations.

## Current State

Reference inventory is recorded. BaRe resource parity is not verified.

**State:** NOT VERIFIED.

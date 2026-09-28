# Apps Rewrite Implementation Ledger

## Scope

Target implementation: BaRe `rewrite` → Home → Apps.

Reference basis: Swift Backup 5.1.0 (620) decompiled source/resources and `reference/reference_apps_audit.md` on `v1.0/rebaseline`.

Naming rule: Product subsystem in `rewrite` is **Apps**. The audit's historical Apps2 label is not used as a product/module name.

## Implemented boundaries

- Apps List shell: Local/Cloud section, toolbar, search, filter entry, drawer, pull-to-refresh, RecyclerView, FastScroller, batch FAB.
- Canonical app model and installed package discovery.
- Search projection.
- Filter state persistence and filter engine.
- Sort state persistence and sort modes.
- App selection model.
- Reference item action inventory.
- Batch Activity and batch task entry.
- Quick Actions catalog.
- Labels data/list/edit surface.
- Custom configuration data/list/edit/settings surface.
- Detail/App Info navigation surface.
- Backup Parts model: APP, DATA, EXTDATA, EXPANSION, MEDIA, SPLITS, SHARED_LIBS.
- Local metadata model and version requirement contract.
- Cloud metadata model and version normalization boundary.
- Special-data payload and compressed local storage boundary.
- Local archive/backup manager.
- PackageInstaller APK install boundary.
- DATA/EXTDATA/EXPANSION/MEDIA archive restore boundary.
- AppsTask state/cancellation boundary.
- Apps working directory.
- Cloud artifact descriptor boundary.
- Supabase cloud adapter boundary; no Firebase dependency added.
- App Backup Limits and App Visibility Diagnostics surfaces.
- Blacklist storage/surface.
- Home Dashboard Apps entry and Home Search app discovery/detail navigation.

## Explicit non-claims

The following remain UNKNOWN/UNVERIFIED and are not represented as complete parity:

- Reference runtime visual/branch parity.
- Full 342 obfuscated collaborator semantic equivalence.
- Remote Supabase schema/RLS/transactional atomicity.
- Historical metadata schema migration engine not found in inspected Reference source.
- Exact byte-for-byte archive compatibility for every Reference archive format.
- Full privileged data restore semantics across device/vendor combinations.
- Reference cloud backend behavior beyond the client-side artifact/metadata contract.

## Verification

Static source/resource implementation was written from the audit contracts.

Build/runtime verification is still required before claiming COMPILES, RUNNING, 1:1 runtime parity, DEPLOYED, or VERIFIED.

## Next verification gates

1. Compile `rewrite`.
2. Fix compile errors from actual toolchain output.
3. Run unit tests.
4. Install/run on Android device or emulator.
5. Verify Home → Apps visual/interaction parity against Reference.
6. Verify Local/Cloud, search/filter/sort, drawer, batch, labels, configs, detail, backup/restore and privileged branches.
7. Only then mark individual checkpoints runtime-verified.

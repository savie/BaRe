# Source-first decompilation migration

## Decision

Use the SwiftBackup 5.1.0 (620) JADX output as the behavior reference. Preserve each
source file exactly as `.java` in a reference mirror before converting behavior into
Kotlin. Do **not** rename raw Java text to `.kt`: Java syntax is not valid Kotlin and
that would create non-compiling files without making the port more faithful.

## Workflow

1. Run `tools/import_swiftbackup_reference.py <decompiled.zip>` to extract every
   `output/jadx/sources/defpackage/*.java` file into
   `reference/swiftbackup-5.1.0-620/defpackage/` and generate a SHA-256 manifest.
2. For each feature being migrated, identify the source class and its callers/callees.
3. Keep the exact obfuscated source filename in the mirror; add a semantic Kotlin target
   under `app/src/main/java/com/bareapps/` only when its role is understood.
4. Update `docs/reference-mapping/defpackage-rewrite-index.md` with the source class,
   semantic target, call relationships, implemented behavior, and remaining parity gaps.
5. Rename semantic Kotlin files/classes only after call-site and lifecycle audits establish
   the role. Do not change the raw source mirror.
6. Do not claim feature parity based only on copying, renaming, or creating a placeholder.
7. Build/test/CI remain opt-in and are not run by this workflow unless explicitly requested.

## Scope and batching

The supplied decompile contains 9,897 `defpackage/*.java` files (about 28.5 MiB of
Java source). Treat the source mirror as an immutable reference corpus, not as 9,897
independent Kotlin rewrites. Migrate by feature/call graph in bounded batches, preserving
source evidence and marking unknown behavior `TODO(parity)`.

## Current batch

The shell lifecycle / command-job cluster is the active batch:
`ex0`, `zd7`, `me2`, `r77`, `rh4`, `vy5`, `gn6`, `gy7`, `dm1`,
`xd7`, `yd7`, `od7`, `ae7`, `pd7`, `ip7`, `hp7`, and `gp7`.
Do not expand into unrelated classes until this cluster's behavior and integration gaps
are explicitly accounted for.

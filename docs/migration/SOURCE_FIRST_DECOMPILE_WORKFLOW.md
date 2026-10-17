# Focused source-first migration

## Scope

Migrate only source classes already selected for the active feature or explicitly pointed
out during the work. This does **not** mean migrating every Java file in the decompile.

Current main focus remains the known shell/command cluster:
`zd7`, `me2`, `r77`, `rh4`, `vy5`, `gn6`, `gy7`, and only the directly
used helpers among `ex0`, `dm1`, `xd7`, `yd7`, `od7`, `ae7`, `pd7`,
`ip7`, `hp7`, and `gp7`. The existing `qe7` port is also being completed as a
whole-class example of this workflow.

## Rules

1. Read the exact decompiled Java source for the selected class.
2. Port the **whole selected class**, not just audited fragments: include every method,
   branch, exception path, resource cleanup, and relevant state.
3. Rename a variable or method only when its role is supported by the source/call sites.
   Keep unclear identifiers temporarily; don't guess what they mean.
4. Use descriptive Kotlin filenames/classes once the role is clear. Preserve the exact
   source class name in `docs/reference-mapping/defpackage-rewrite-index.md`.
5. Mark unresolved API or behavior differences with `TODO(parity)`, but retain the source
   control flow rather than deleting the unclear part or replacing it with a simplified stub.
6. Don't refactor unrelated files or add abstractions unless needed for this class's port.
7. Do not run build, tests, or CI unless explicitly requested.

## Completion criteria

- Every method in each selected Java source has a corresponding Kotlin implementation or an
  explicit explanation for a platform/API constraint.
- Source filename → Kotlin filename mapping is recorded in the same work session.
- Known behavior is ported; unresolved behavior remains visible and is marked clearly.
- No broad migration of unrelated classes is implied.

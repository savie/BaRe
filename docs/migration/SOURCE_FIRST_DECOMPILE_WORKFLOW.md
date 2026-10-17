# Focused source-first migration

## Scope

This workflow applies only to source classes whose function and call relationships have
already been established in the SwiftBackup 5.1.0 (620) JADX output. It does **not**
call for migrating all Java files or copying the entire decompile into the project.

Current focus is the known shell/command cluster only:
`zd7`, `me2`, `r77`, `rh4`, `vy5`, `gn6`, `gy7`, and only the directly
used helpers among `ex0`, `dm1`, `xd7`, `yd7`, `od7`, `ae7`, `pd7`,
`ip7`, `hp7`, and `gp7`.

## Rules

1. Read the exact decompiled Java source and relevant callers/callees before changing a port.
2. Port only the behavior that is clear. Preserve source method/control-flow semantics as closely
   as Kotlin permits; do not invent replacement behavior.
3. Keep the source obfuscated identifier in the mapping index, but use a descriptive Kotlin
   filename/class once its role is verified.
4. Do not rename or refactor unrelated files and do not add a new abstraction unless source
   behavior or integration requires it.
5. Mark uncertain behavior `TODO(parity)`; don't claim parity without evidence.
6. Finish this cluster before taking on unrelated classes.
7. Do not run build, tests, or CI unless explicitly requested.

## Completion criteria for this cluster

- Startup, command execution, result sentinels, retry behavior, stream handling, and cleanup
  have each been compared with their exact source classes.
- Each mapping row says what is implemented and what remains open.
- Remaining gaps are explicitly named; no broad migration is implied.

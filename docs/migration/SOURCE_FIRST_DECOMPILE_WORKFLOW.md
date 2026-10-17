# Focused source-first migration

## Scope

Work through the **existing** files in `app/src/main/java/com/bareapps/filesystem/` first.
Compare each implementation against its exact SwiftBackup 5.1.0 (620) JADX source and fix
parity gaps in place. Do not expand to unrelated packages or migrate the entire decompile.

For each existing file:
1. Identify the source class/methods it represents.
2. Compare every method, branch, exception path, state field, and cleanup operation.
3. Port the whole selected source class, not only the fragments already audited.
4. Keep unknown obfuscated identifiers and calls exactly visible; never replace them with
   guessed helper logic or a public API that only seems equivalent.
5. Rename a class, file, or local variable only when its role is supported by source/call sites.
6. Update the source-to-Kotlin mapping in the same work session.
7. Leave platform/decompiler ambiguities marked `TODO(parity)`; do not silently invent semantics.

## Existing filesystem package is the active batch

Prioritize the core and current gaps already present in the package, including
`FileSystemEntry.kt` (`q63`), `FileAccessPolicy.kt` (`p63`),
`StoragePathMapper.kt` (`m70`), `SafDocumentTreeBridge.kt` (the selected
`ji8.q(q63, int)` bridge), `TrashDirectoryResolver.kt` (the relevant `m70/g70`
slice), `RootAwareFile.kt` (`jr7`), and the command/stream helper files.

This is a parity pass over existing files, not a request to create a broad set of new files.
Do not treat comments, placeholders, or mapping rows as implemented behavior.

## Verification constraints

- Keep exact source evidence and unresolved obfuscated dependencies visible.
- Do not claim exact parity when a dependency or API contract remains unresolved.
- Do not run build, tests, or CI unless explicitly requested.

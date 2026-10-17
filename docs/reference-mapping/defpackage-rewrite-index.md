# defpackage → Kotlin rewrite index

Reference source: SwiftBackup 5.1.0 (620), JADX decompile.
Target branch: `rewrite`.

This index records semantic mappings from obfuscated `defpackage` classes to
meaningful Kotlin files. A mapping may be partial; `TODO(parity)` marks
behavior that is not yet implemented or verified. Do not treat a created file
as proof of feature parity.

| Reference class | Kotlin target | Scope | Status |
|---|---|---|---|
| `defpackage.k55` | `com/bareapps/rootservice/ShellSelectionRegistry.kt` | Shell cache/selection slice only; original class is a large utility class | Partial port; lifecycle TODO |
| `defpackage.ex0` | `com/bareapps/rootservice/RootShellFactory.kt` | `su --mount-master` / `su` / `sh` selection | Semantic port; startup behavior needs verification |
| `defpackage.zd7` | `com/bareapps/rootservice/ShellProcessSession.kt` | Process and shell lifecycle | Placeholder/partial boundary; lifecycle TODO |
| `defpackage.vy5` | `com/bareapps/rootservice/RootRequiredCommandExecutor.kt` | Root-required execution gate and retry policy | Partial policy mapping; result semantics TODO |
| `defpackage.rh4` | `com/bareapps/filesystem/LibsuCommandExecutor.kt` | Command accumulation, output/error, execution result | Adapter, not full task/lifecycle parity |
| `defpackage.qe7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Shizuku process and permission gate | Partial port; internal binder behavior differs |
| `defpackage.le7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Service/permission state used by `qe7` | Combined partial mapping; split into a dedicated file if more service behavior is ported |
| `defpackage.jr7` | `com/bareapps/filesystem/RootAwareFile.kt` | Root-aware `File` operations | Partial port; requires full override audit |
| `defpackage.gy7` | Not yet created | Task marker writes, stdout/stderr collection and exit status | TODO: create dedicated Kotlin mapping file |
| `defpackage.dm1` | Not yet created | Command-line task writer | TODO: create dedicated Kotlin mapping file |

## Workflow rule

When a new `defpackage/NAME.java` is encountered:
1. Add a row here immediately.
2. Create a Kotlin file in the relevant `com.bareapps.*` package during the same work session.
3. Implement behavior only where source evidence is sufficient; otherwise add explicit `TODO(parity)` comments.
4. Update this row when implementation status changes.
5. Never claim parity just because a placeholder or adapter exists.

Do not mechanically create one class per obfuscated name without checking scope:
some obfuscated classes are huge utility classes or generated helpers. Record the exact
slice being mapped so the relationship stays traceable.

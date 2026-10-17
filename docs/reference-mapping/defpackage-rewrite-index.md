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
| `defpackage.zd7` | `com/bareapps/rootservice/ShellProcessSession.kt` | Status/aliveness adapter and explicit shell ownership boundary | Partial; direct Process, startup handshake, synchronized execTask and waitAndClose remain TODO |
| `defpackage.vy5` | `com/bareapps/rootservice/RootRequiredCommandExecutor.kt`, `com/bareapps/rootservice/ShellCommandTask.kt` | Root-required execution gate, deferred command task, and retry policy boundary | Partial; root gate/deferred execution ported, exact `gn6` retry/result semantics TODO |
| `defpackage.rh4` | `com/bareapps/filesystem/LibsuCommandExecutor.kt`, `com/bareapps/rootservice/ShellCommandTask.kt` | Command accumulation, stdout/stderr, execution result, and deferred task boundary | Adapter; not full `od7`/`gn6` parity |
| `defpackage.qe7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Shizuku process and permission gate | Partial port; internal binder behavior differs |
| `defpackage.le7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Service/permission state used by `qe7` | Combined partial mapping; split into a dedicated file if more service behavior is ported |
| `defpackage.jr7` | `com/bareapps/filesystem/RootAwareFile.kt` | Root-aware `File` operations | Partial port; requires full override audit |
| `defpackage.gy7` | `com/bareapps/filesystem/CommandTaskProtocol.kt` | Task marker protocol, concurrent stdout/stderr readers, and exit-status coordination | Raw-stream protocol implemented; integration with custom zd7 process remains separate from libsu Shell.Job path |
| `defpackage.dm1` | `com/bareapps/filesystem/CommandTaskWriter.kt` | UTF-8 command writer with newline terminators | Implemented source-supported write behavior |
| `defpackage.od7` | `com/bareapps/rootservice/ShellCommandTask.kt` | Deferred command-job API (`add` then execute) | Partial semantic port; exact return/status contract TODO |
| `defpackage.ae7` | `com/bareapps/filesystem/CommandTaskSink.kt` | Closeable command-writer contract | Interface ported; concrete `dm1` writer implements it |
| `defpackage.pd7` | `com/bareapps/filesystem/ShellTaskCallback.kt` | Shell task callback receiving stdin/stdout/stderr streams | Interface ported; integration with libsu execution TODO |
| `defpackage.gn6` | `com/bareapps/rootservice/CommandTaskResult.kt` | Execution result: stdout, stderr, exit status, retry/failure sentinel | Partial; typed result added, singleton identity semantics TODO |
| `defpackage.ee7` | `com/bareapps/rootservice/ShellTerminatedException.kt` | Retryable shell-terminated IOException signal | Exception type ported; libsu public API does not expose equivalent lifecycle signal |
| `defpackage.ip7` | `com/bareapps/filesystem/CommandStreamLineReader.kt` | UTF-8 line reader filtering protocol marker | Line filtering ported; edge-case parity not verified |
| `defpackage.hp7` | `com/bareapps/filesystem/CommandExitCodeReader.kt` | Stdout reader parses exit code after marker | Parsing ported; concurrent integration TODO |
| `defpackage.gp7` | `com/bareapps/filesystem/CommandStderrDrainer.kt` | Stderr reader drains lines until marker | Draining ported; concurrent integration TODO |

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

# defpackage → Kotlin rewrite index

Reference source: SwiftBackup 5.1.0 (620), JADX decompile.
Target branch: `rewrite`.

This index records semantic mappings from obfuscated `defpackage` classes to
meaningful Kotlin files. A mapping may be partial; `TODO(parity)` marks
behavior that is not yet implemented or verified. Do not treat a created file
as proof of feature parity.

| Reference class | Kotlin target | Scope | Status |
|---|---|---|---|
| `defpackage.k55` | `com/bareapps/rootservice/ShellSelectionRegistry.kt`, `com/bareapps/rootservice/ProcessShellRegistry.kt` | Shell cache/selection slices for libsu and direct Process backend | Partial; direct Process cache added, original utility class remains broader |
| `defpackage.ex0` | `com/bareapps/rootservice/RootShellFactory.kt`, `com/bareapps/rootservice/ProcessShellFactory.kt`, `com/bareapps/rootservice/ProcessShellBackend.kt` | `su --mount-master` / `su` / `sh` selection and Process startup handshake | Startup uses source-equivalent `ShellUtils.b` quoting and a total startup timeout deadline; startup and mount-namespace semantics still require device verification |
| `defpackage.zd7` | `com/bareapps/rootservice/ShellProcessSession.kt`, `com/bareapps/rootservice/ProcessShellBackend.kt` | libsu status adapter plus direct Process startup/execTask/close backend | Startup verification runs through the `r77`-shaped worker; task execution is synchronized on the caller thread; stream reset/separator newline and `waitAndClose` branches mapped. The source's synchronized `awaitTermination` can hold the worker monitor while waiting; libsu Shell subclass parity and device verification TODO |
| `defpackage.vy5` | `com/bareapps/rootservice/RootRequiredCommandExecutor.kt`, `com/bareapps/rootservice/ShellCommandTask.kt` | Root-required execution gate, deferred command task, and retry policy boundary | Retry policy is now separated from the `rh4`-like result boundary and retries only the exact `gn6.e` singleton once; libsu `Shell.Job` integration and device verification remain TODO |
| `defpackage.rh4` | `com/bareapps/filesystem/LibsuCommandExecutor.kt`, `com/bareapps/rootservice/ShellCommandTask.kt` | Command accumulation, stdout/stderr, execution result, and deferred task boundary | Process-backed result boundary now returns success payload or exact `gn6.d`/`gn6.e` singleton; source list aliasing/synchronization and libsu integration remain TODO |
| `defpackage.qe7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Shizuku process and permission gate | Partial port; internal binder behavior differs |
| `defpackage.le7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Service/permission state used by `qe7` | Combined partial mapping; split into a dedicated file if more service behavior is ported |
| `defpackage.jr7` | `com/bareapps/filesystem/RootAwareFile.kt` | Root-aware `File` operations | Partial port; requires full override audit |
| `defpackage.r77` | `com/bareapps/rootservice/ProcessShellWorker.kt` | Serialized Runnable queue backed by `Shell.EXECUTOR`; shutdown clears pending work, shutdownNow cancels active drain | Queue ported and wired into startup verification and `waitAndClose`; synchronized `awaitTermination` mirrors source behavior, including possible monitor contention while drain completes |
| `defpackage.gy7` | `com/bareapps/filesystem/CommandTaskProtocol.kt` | Static process-wide marker and marker-byte protocol, concurrent stdout/stderr readers, and exit-status coordination | Shared marker bytes and reader-failure wrapping now match source; integration remains a direct Process path rather than libsu `Shell.Job` |
| `defpackage.dm1` | `com/bareapps/filesystem/CommandTaskWriter.kt` | UTF-8 command writer with newline terminators | Implemented source-supported write behavior |
| `defpackage.xd7` | `com/bareapps/rootservice/ProcessShellOutput.kt` | Input stream wrapper whose close is a no-op; explicit underlying close | Wrapper semantics ported; lifecycle integration TODO |
| `defpackage.yd7` | `com/bareapps/rootservice/ProcessShellOutput.kt`, `com/bareapps/rootservice/ProcessShellBackend.kt` | Buffered process stdin, close-flush wrapper, explicit underlying close | Backend now wraps stdin in `BufferedOutputStream` as `zd7` does; lifecycle/device parity still TODO |
| `defpackage.od7` | `com/bareapps/rootservice/ShellCommandTask.kt` | Deferred command-job API (`add` then execute) | Deferred task now uses Process backend; exact method naming/result compatibility TODO |
| `defpackage.ae7` | `com/bareapps/filesystem/CommandTaskSink.kt` | Closeable command-writer contract | Interface ported; concrete `dm1` writer implements it |
| `defpackage.pd7` | `com/bareapps/filesystem/ShellTaskCallback.kt` | Shell task callback receiving stdin/stdout/stderr streams | Interface ported; integration with libsu execution TODO |
| `defpackage.gn6` | `com/bareapps/rootservice/CommandTaskResult.kt` | Mutable stdout/stderr/exit-code payload plus generic-failure and retry sentinels | Payload defaults, stdout empty-list behavior, and distinct singleton identity ported; callers still need integration |
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

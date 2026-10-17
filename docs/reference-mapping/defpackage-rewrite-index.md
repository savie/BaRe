# defpackage → Kotlin rewrite index

Reference source: SwiftBackup 5.1.0 (620), JADX decompile.
Target branch: `rewrite`.

This index records semantic mappings from obfuscated `defpackage` classes to
meaningful Kotlin files. A mapping may be partial; `TODO(parity)` marks
behavior that is not yet implemented or verified. Do not treat a created file
as proof of feature parity.

| Reference class | Kotlin target | Scope | Status |
|---|---|---|---|
| `org.swiftapps.filesystem.File$FileType` | `com/bareapps/filesystem/FileType.kt` | Serializable file-type abstraction with `JavaFile` and `LibsuFile` subclasses | Existing Kotlin port preserves the two subclasses and `toString()`; `LibsuFile` delegates to the mapped `jr7.g` behavior via `RootAwareFile.create` |
| `org.swiftapps.filesystem.a` | `com/bareapps/filesystem/RandomAccessFileChannelWriter.kt` | Positional FileChannel write loop for a byte-array slice | Restored source-shaped method `a`; obfuscated validation/error helpers `c6.f`, `b6.b`, `xs1.n`, `y5.m`, and `u48.l` are retained rather than replaced with guessed exceptions |
| `defpackage.k55` | `com/bareapps/rootservice/ShellSelectionRegistry.kt`, `com/bareapps/rootservice/ProcessShellRegistry.kt` | Shell cache/selection slices for libsu and direct Process backend | Partial; direct Process cache added, original utility class remains broader |
| `defpackage.ex0` | `com/bareapps/rootservice/RootShellFactory.kt`, `com/bareapps/rootservice/ProcessShellFactory.kt`, `com/bareapps/rootservice/ProcessShellBackend.kt` | `su --mount-master` / `su` / `sh` selection and Process startup handshake | Startup uses source-equivalent `ShellUtils.b` quoting and a total startup timeout deadline; startup and mount-namespace semantics still require device verification |
| `defpackage.zd7` | `com/bareapps/rootservice/ShellProcessSession.kt`, `com/bareapps/rootservice/ProcessShellBackend.kt` | libsu status adapter plus direct Process startup/execTask/close backend | Startup verification runs through the `r77`-shaped worker with source-like synchronous line reads and outer FutureTask timeout; task execution is synchronized on the caller thread; `close()` uses `shutdownNow()` and stream reset/separator newline plus `waitAndClose` branches are mapped. Root startup's process-wide `ji8.b` marker is TODO(parity). The source's synchronized `awaitTermination` can hold the worker monitor while waiting; libsu Shell subclass parity and device verification TODO |
| `defpackage.vy5` | `com/bareapps/rootservice/RootRequiredCommandExecutor.kt`, `com/bareapps/rootservice/ShellCommandTask.kt` | Root-required execution gate, deferred command task, and retry policy boundary | Retry policy is now separated from the `rh4`-like result boundary and retries only the exact `gn6.e` singleton once; libsu `Shell.Job` integration and device verification remain TODO |
| `defpackage.rh4` | `com/bareapps/filesystem/LibsuCommandExecutor.kt`, `com/bareapps/rootservice/ShellCommandTask.kt` | Command accumulation, stdout/stderr, execution result, and deferred task boundary | Source-shaped fields and result sentinels are now retained; execution still uses the public Shell.Job API rather than source zd7.execTask, so exact parity remains TODO |
| `defpackage.qe7` | `com/bareapps/filesystem/ShizukuCommandExecutor.kt` | Shizuku availability check and reflected `sh` process execution with concurrent stdout/stderr draining and cleanup | Source methods `b()`/`c()` are retained and exposed as `isAvailable()`/`execute()` aliases because their roles are established; unresolved helper calls remain obfuscated and are not replaced with guessed behavior |
| `defpackage.ne7` | `com/bareapps/filesystem/ShizukuCommandResult.kt` | Process output collection and exit status returned by `qe7.c()` | Field roles are explicit in source (`a`: collected output, `b`: exit status); Kotlin fields are normalized to `output` and `exitCode` without changing the returned values |\n| `defpackage.le7` | `com/bareapps/filesystem/ShizukuServiceState.kt` | Full class port: static Binder/service state, transaction helpers, attach/detach, version lookup, callbacks, and remote-process creation/lifecycle | All source methods are represented with obfuscated dependencies retained; callback decompilation branches and unresolved dependent classes remain TODO(parity) |
| `defpackage.p63` | `com/bareapps/filesystem/FileAccessPolicy.kt` | Readable/writable directory tracking and Android/data/obb path classification | Full selected method bodies ported; obfuscated lazy-list/string/path helpers remain dependencies; `p63.c` has a decompiler definite-assignment ambiguity marked TODO(parity) |
| `defpackage.m70` | `com/bareapps/filesystem/StoragePathMapper.kt` | Access-mode enum dispatch and `/storage/emulated/` → `/data/media/` rewrite | Source method `a(String, o93)` ported with obfuscated dependencies retained; `g70` resolver behavior remains separate |
| `defpackage.q63` | `com/bareapps/filesystem/FileSystemEntry.kt` | File abstraction, streams, copy/move, descriptor access, root/SAF fallbacks, and retry behavior | **Not ported**; target remains a placeholder despite the complete decompiled source being available. This is a major filesystem parity gap |
| `defpackage.ji8.q(q63, int)` | `com/bareapps/filesystem/SafDocumentTreeBridge.kt` | SAF DocumentsProvider tree lookup and mode-dependent document open/create, plus root-backed descriptor fallback | **Not ported**; target remains a placeholder. `ji8` is a broad utility class, so only this method slice should be migrated here |
| `defpackage.cy0` filesystem logging slice | `com/bareapps/filesystem/FilesystemLogAdapter.kt` | Filesystem-facing logger/error adapter installed during application startup | **Not ported**; target remains a placeholder. `cy0` is a broad utility class and should not be renamed wholesale based on this slice |
| `defpackage.jr7` | `com/bareapps/filesystem/RootAwareFile.kt` | Root-aware `File` operations, shell escaping, metadata, permission bits, listing, and root/Shizuku route selection | Reference members a/b/c/d/e/g/h/i, public field a, all listed File overrides, and three constructors are represented. The jr7 command paths now initialize rh4 output lists and e according to the source call sites: predicate commands leave both lists null and e=false; output commands provide an ArrayList/LinkedList, leave stderr null, and set e=true. Source imports are retained where used; the source-only Shell import is preserved as a comment because Shell.UNKNOWN is a decompiler-generated no-op. k55/rh4/qe7/le7 roles are documented, but the shell backend remains adapter-based, so exact rh4 execution and output-sharing flag parity, exception behavior, and device parity remain unverified. |
| `defpackage.r77` | `com/bareapps/rootservice/ProcessShellWorker.kt` | Serialized Runnable queue backed by `Shell.EXECUTOR`; shutdown clears pending work, shutdownNow cancels active drain | Queue ported and wired into startup verification and `waitAndClose`; synchronized `awaitTermination` mirrors source behavior, including possible monitor contention while drain completes |
| `defpackage.gy7` | `com/bareapps/filesystem/CommandTaskProtocol.kt` | Static process-wide marker and marker-byte protocol, concurrent stdout/stderr readers, and exit-status coordination | Exception conversion now follows source order; no future cancellation or interrupt restoration is added. Integration remains a direct Process path rather than libsu `Shell.Job` |
| `defpackage.dm1` | `com/bareapps/filesystem/CommandTaskWriter.kt` | UTF-8 command writer with newline terminators | Matches the complete `dm1.d0` write loop as decompiled |
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
1. Work only on the source classes already selected for the active feature; this is not a request to migrate every Java file.
2. Port the full body of each selected source class into Kotlin, including all methods, branches, exception paths, and cleanup.
3. Rename variables and classes where their roles are clear; leave unresolved names intact and mark uncertainty with `TODO(parity)`.
4. Keep the source-to-Kotlin filename mapping here and update it in the same change.
5. Never claim exact parity where internal APIs or behavior remain unresolved.

Do not mechanically create one class per obfuscated name without checking scope:
some obfuscated classes are huge utility classes or generated helpers. Record the exact
slice being mapped so the relationship stays traceable.

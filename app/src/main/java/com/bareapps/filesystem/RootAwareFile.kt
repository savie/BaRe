package com.bareapps.filesystem

import android.text.TextUtils
import com.bareapps.rootservice.ShellHelper
import com.microsoft.identity.common.java.authscheme.TokenAuthenticationScheme
// import com.topjohnwu.superuser.Shell // Source jr7 only reads Shell.UNKNOWN, a decompiler-generated no-op; no runtime behavior depends on it.
import java.io.File
import java.io.FileFilter
import java.io.FilenameFilter
import java.text.SimpleDateFormat
import java.util.ArrayList
import java.util.Date
import java.util.Iterator
import java.util.LinkedList
import java.util.List
import java.util.Locale
import java.util.function.Predicate

/**
 * Kotlin port of SwiftBackup 5.1.0 (620), JADX reference defpackage.jr7.
 *
 * Reference dependencies retained by their known roles:
 * - k55.j(): shell selector; this project currently exposes the selected shell through ShellHelper.
 * - rh4: libsu command/result path; represented by [LibsuCommandExecutor].
 * - qe7: Shizuku command/result path; represented by [ShizukuCommandExecutor].
 * - le7: Shizuku service state; represented by [ShizukuServiceState].
 *
 * The adapters are not asserted to be byte-for-byte or device-behavior identical to the
 * original obfuscated implementations. Unknown dependencies must remain unresolved rather
 * than being assigned guessed meanings.
 */
class RootAwareFile : File {
    /** Reference field jr7.a: escaped path passed to shell commands. */
    @JvmField
    val a: String

    constructor(file: File) : super(file.absolutePath) {
        a = c(path)
    }

    constructor(path: String) : this(File(path))

    constructor(parent: String, child: String) : this(File(parent, child))

    private data class CommandResult(val exitCode: Int, val output: List<String>)

    /**
     * Executes one jr7 command. [captureOutput] selects the exact rh4 field
     * setup used by jr7.a(String)/jr7.list(FilenameFilter); predicate commands
     * use jr7.d(String...) with both output lists unset.
     */
    private fun run(
        command: String,
        captureOutput: Boolean = true,
        output: MutableList<String>? = if (captureOutput) ArrayList() else null
    ): CommandResult {
        val resolved = command.replace("@@", a)
        return if (!ShellHelper.getMainShell().isRoot && e()) {
            val result = ShizukuCommandExecutor.c(arrayOf(resolved))
            CommandResult(result.exitCode, result.output)
        } else {
            LibsuCommandExecutor(ShellHelper.getMainShell()).use { executor ->
                executor.a = output
                executor.b = null
                executor.e = captureOutput
                val result = executor.add(resolved).execute()
                CommandResult(result.exitCode, result.output)
            }
        }
    }

    /** Reference jr7.a(String): return the last output line if any line is non-empty. */
    fun a(command: String): String {
        val lines = run(command).output
        if (lines.isEmpty()) {
            return ""
        }
        val iterator: Iterator<String> = lines.iterator()
        while (iterator.hasNext()) {
            if (!TextUtils.isEmpty(iterator.next())) {
                return lines[lines.size - 1]
            }
        }
        return ""
    }

    /** Reference jr7.b(String). */
    fun b(command: String): Boolean =
        run(command.replace("@@", a), captureOutput = false).exitCode == 0

    /** Reference jr7.h(int, boolean, boolean): change the three octal permission digits. */
    fun h(mask: Int, enable: Boolean, ownerOnly: Boolean): Boolean {
        val mode = a("stat -c '%a' @@").toCharArray()
        if (mode.size != 3) {
            return false
        }
        var index = 0
        while (index < 3) {
            val digit = mode[index] - '0'
            mode[index] = (
                (if (!enable || (ownerOnly && index != 0)) digit and mask.inv() else digit or mask) + 48
            ).toChar()
            index++
        }
        return b("chmod " + String(mode) + " @@")
    }

    /** Reference jr7.i(String): multiply filesystem block size by the requested stat value. */
    fun i(format: String): Long {
        val parts = java.util.regex.Pattern
            .compile(TokenAuthenticationScheme.SCHEME_DELIMITER)
            .split(a("stat -fc '%S $format' @@"))
        if (parts.size != 2) {
            return Long.MAX_VALUE
        }
        return try {
            parts[0].toLong() * parts[1].toLong()
        } catch (_: NumberFormatException) {
            Long.MAX_VALUE
        }
    }

    override fun canExecute(): Boolean = b("[ -x @@ ]")

    override fun canRead(): Boolean = b("[ -r @@ ]")

    override fun canWrite(): Boolean = b("[ -w @@ ]")

    override fun createNewFile(): Boolean = b("[ ! -e @@ ] && echo -n > @@")

    override fun delete(): Boolean = b("rm -f @@ || rmdir -f @@")

    override fun deleteOnExit(): Unit =
        throw UnsupportedOperationException("Unsupported SuFile operation")

    override fun exists(): Boolean = b("[ -e @@ ]")

    override fun listFiles(): Array<RootAwareFile>? {
        if (!b("[ -d @@ ]")) {
            return null
        }
        val names = list(null) ?: return null
        val files = Array(names.size) { index ->
            RootAwareFile(absolutePath, names[index])
        }
        return files
    }

    override fun getAbsolutePath(): String = path

    override fun getAbsoluteFile(): File = this

    override fun getCanonicalFile(): File = RootAwareFile(canonicalPath)

    override fun getCanonicalPath(): String {
        val resolved = a("readlink -f @@")
        return if (resolved.isEmpty()) path else resolved
    }

    override fun getFreeSpace(): Long = i("%f")

    override fun getParentFile(): File? {
        val parentPath = parent ?: return null
        return RootAwareFile(parentPath)
    }

    override fun getTotalSpace(): Long = i("%b")

    override fun getUsableSpace(): Long = i("%a")

    override fun lastModified(): Long {
        return try {
            a("stat -c '%Y' @@").toLong() * 1000L
        } catch (_: NumberFormatException) {
            0L
        }
    }

    override fun length(): Long {
        return try {
            a("stat -c '%s' @@").toLong()
        } catch (_: NumberFormatException) {
            0L
        }
    }

    override fun list(filter: FilenameFilter?): Array<String>? {
        if (!b("[ -d @@ ]")) {
            return null
        }
        val command = "ls -a $a"
        val names = LinkedList(run(command, output = LinkedList()).output)
        names.removeIf(Predicate { name ->
            name == null || name.isEmpty() || name == "." || name == ".." ||
                (filter != null && !filter.accept(this, name))
        })
        return names.toTypedArray()
    }

    override fun listFiles(filter: FileFilter?): Array<RootAwareFile>? {
        val names = list(null) ?: return null
        val files = ArrayList<RootAwareFile>()
        for (name in names) {
            val file = RootAwareFile(absolutePath, name)
            if (filter == null || filter.accept(file)) {
                files.add(file)
            }
        }
        return files.toTypedArray()
    }

    override fun isDirectory(): Boolean = b("[ -d @@ ]")

    override fun isFile(): Boolean = b("[ -f @@ ]")

    override fun mkdir(): Boolean = b("mkdir @@")

    override fun mkdirs(): Boolean = b("mkdir -p @@")

    override fun renameTo(dest: File): Boolean =
        d("mv -f " + a + TokenAuthenticationScheme.SCHEME_DELIMITER + c(dest.absolutePath))

    override fun setExecutable(executable: Boolean, ownerOnly: Boolean): Boolean =
        h(1, executable, ownerOnly)

    override fun setLastModified(time: Long): Boolean {
        val timestamp = SimpleDateFormat("yyyyMMddHHmm", Locale.US).format(Date(time))
        return b("[ -e @@ ] && touch -t $timestamp @@")
    }

    override fun setReadOnly(): Boolean = h(2, false, false) && h(1, false, false)

    override fun setReadable(readable: Boolean, ownerOnly: Boolean): Boolean =
        h(4, readable, ownerOnly)

    override fun setWritable(writable: Boolean, ownerOnly: Boolean): Boolean =
        h(2, writable, ownerOnly)

    override fun listFiles(filter: FilenameFilter?): Array<RootAwareFile>? {
        if (!b("[ -d @@ ]")) {
            return null
        }
        val names = list(filter) ?: return null
        return Array(names.size) { index ->
            RootAwareFile(absolutePath, names[index])
        }
    }

    override fun list(): Array<String>? = list(null)

    companion object {
        /** Reference jr7.c(String): quote and escape a shell argument. */
        @JvmStatic
        fun c(value: String): String = buildString(value.length + 2) {
            append('"')
            value.forEach { char ->
                if (char == '$' || char == '\u0060' || char == '"' || char == '\\') {
                    append('\\')
                }
                append(char)
            }
            append('"')
        }

        /** Reference jr7.d(String...). */
        @JvmStatic
        fun d(vararg commands: String): Boolean {
            return if (!ShellHelper.getMainShell().isRoot && e()) {
                ShizukuCommandExecutor.c(commands.copyOf()).exitCode == 0
            } else {
                LibsuCommandExecutor(ShellHelper.getMainShell()).use { executor ->
                    executor.add(*commands).execute().exitCode == 0
                }
            }
        }

        /** Reference jr7.e(). */
        @JvmStatic
        fun e(): Boolean = ShizukuServiceState.f() && ShizukuCommandExecutor.b()

        /** Reference jr7.g(String). */
        @JvmStatic
        fun g(path: String): File =
            if (ShellHelper.getMainShell().isRoot || e()) RootAwareFile(path) else File(path)

        // Compatibility aliases already used by the Kotlin-side FileType port.
        @JvmStatic
        fun create(path: String): File = g(path)

        @JvmStatic
        fun escapeShellArgument(value: String): String = c(value)
    }
}
 || char == '\u0060' || char == '"' || char == '\\\\') {
                    append('\\')
                }
                append(char)
            }
            append('"')
        }

        /** Reference jr7.d(String...). */
        @JvmStatic
        fun d(vararg commands: String): Boolean {
            return if (!ShellHelper.getMainShell().isRoot && e()) {
                ShizukuCommandExecutor.c(commands.copyOf()).exitCode == 0
            } else {
                LibsuCommandExecutor(ShellHelper.getMainShell()).use { executor ->
                    executor.add(*commands).execute().exitCode == 0
                }
            }
        }

        /** Reference jr7.e(). */
        @JvmStatic
        fun e(): Boolean = ShizukuServiceState.f() && ShizukuCommandExecutor.b()

        /** Reference jr7.g(String). */
        @JvmStatic
        fun g(path: String): File =
            if (ShellHelper.getMainShell().isRoot || e()) RootAwareFile(path) else File(path)

        // Compatibility aliases already used by the Kotlin-side FileType port.
        @JvmStatic
        fun create(path: String): File = g(path)

        @JvmStatic
        fun escapeShellArgument(value: String): String = c(value)
    }
}

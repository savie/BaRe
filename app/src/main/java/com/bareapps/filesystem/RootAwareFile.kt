package com.bareapps.filesystem

import com.bareapps.rootservice.ShellHelper
import com.topjohnwu.superuser.Shell
import java.io.File
import java.io.FileFilter
import java.io.FilenameFilter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * Kotlin port of `defpackage.jr7` from SwiftBackup 5.1.0 (620).
 *
 * This is a `java.io.File` subtype whose filesystem operations are executed
 * through the configured libsu shell. The reference also supports an alternate
 * Shizuku-backed executor (`qe7`); that backend is not yet wired here.
 */
class RootAwareFile : File {

    private val escapedPath: String

    constructor(file: File) : this(file.absolutePath)

    constructor(path: String) : super(File(path).absolutePath) {
        escapedPath = escapeShellArgument(absolutePath)
    }

    private fun run(command: String): CommandResult {
        val result = ShellHelper.sh(command.replace("@@", escapedPath)).exec()
        return CommandResult(result.code, result.out.orEmpty())
    }

    private fun test(command: String): Boolean = run(command).exitCode == 0

    private fun output(command: String): String {
        val lines = run(command).output
        if (lines.isEmpty()) return ""
        // Reference returns the last line when at least one output line is non-empty.
        return if (lines.any { !it.isNullOrEmpty() }) lines.lastOrNull().orEmpty() else ""
    }

    private fun space(format: String): Long {
        val parts = output("stat -fc '%S $format' @@").split(' ')
        if (parts.size != 2) return Long.MAX_VALUE
        return try {
            parts[0].toLong() * parts[1].toLong()
        } catch (_: NumberFormatException) {
            Long.MAX_VALUE
        }
    }

    private fun changeMode(mask: Int, enable: Boolean, ownerOnly: Boolean): Boolean {
        val mode = output("stat -c '%a' @@")
        if (mode.length != 3 || mode.any { it !in '0'..'7' }) return false
        val updated = mode.mapIndexed { index, char ->
            val digit = char - '0'
            val next = if (!enable || (ownerOnly && index != 0)) {
                digit and mask.inv()
            } else {
                digit or mask
            }
            ('0'.code + next).toChar()
        }.joinToString("")
        return test("chmod $updated @@")
    }

    override fun canExecute(): Boolean = test("[ -x @@ ]")
    override fun canRead(): Boolean = test("[ -r @@ ]")
    override fun canWrite(): Boolean = test("[ -w @@ ]")
    override fun createNewFile(): Boolean = test("[ ! -e @@ ] && echo -n > @@")
    override fun delete(): Boolean = test("rm -f @@ || rmdir -f @@")
    override fun deleteOnExit(): Unit =
        throw UnsupportedOperationException("Unsupported SuFile operation")
    override fun exists(): Boolean = test("[ -e @@ ]")
    override fun isDirectory(): Boolean = test("[ -d @@ ]")
    override fun isFile(): Boolean = test("[ -f @@ ]")

    override fun getAbsolutePath(): String = path
    override fun getAbsoluteFile(): File = this
    override fun getCanonicalFile(): File = RootAwareFile(canonicalPath)
    override fun getCanonicalPath(): String = output("readlink -f @@").ifEmpty { path }

    override fun getParentFile(): File? = parent?.let(::RootAwareFile)
    override fun getFreeSpace(): Long = space("%f")
    override fun getTotalSpace(): Long = space("%b")
    override fun getUsableSpace(): Long = space("%a")

    override fun lastModified(): Long =
        output("stat -c '%Y' @@").toLongOrNull()?.times(1000L) ?: 0L

    override fun length(): Long = output("stat -c '%s' @@").toLongOrNull() ?: 0L

    override fun mkdir(): Boolean = test("mkdir @@")
    override fun mkdirs(): Boolean = test("mkdir -p @@")

    override fun renameTo(dest: File): Boolean =
        run("mv -f @@ ${escapeShellArgument(dest.absolutePath)}").exitCode == 0

    override fun setExecutable(executable: Boolean, ownerOnly: Boolean): Boolean =
        changeMode(1, executable, ownerOnly)

    override fun setReadable(readable: Boolean, ownerOnly: Boolean): Boolean =
        changeMode(4, readable, ownerOnly)

    override fun setWritable(writable: Boolean, ownerOnly: Boolean): Boolean =
        changeMode(2, writable, ownerOnly)

    override fun setReadOnly(): Boolean =
        changeMode(2, false, false) && changeMode(1, false, false)

    override fun setLastModified(time: Long): Boolean {
        val timestamp = SimpleDateFormat("yyyyMMddHHmm", Locale.US).format(Date(time))
        return test("[ -e @@ ] && touch -t $timestamp @@")
    }

    override fun list(): Array<String>? = list(null)

    override fun list(filter: FilenameFilter?): Array<String>? {
        if (!isDirectory) return null
        val result = run("ls -a @@")
        val names = result.output.filterNot { name ->
            name.isNullOrEmpty() || name == "." || name == ".." ||
                (filter != null && !filter.accept(this, name))
        }
        return names.toTypedArray()
    }

    override fun listFiles(): Array<File>? {
        if (!isDirectory) return null
        return list()?.map { RootAwareFile(this, it) }?.toTypedArray()
    }

    override fun listFiles(filter: FilenameFilter?): Array<File>? {
        if (!isDirectory) return null
        return list(filter)?.map { RootAwareFile(this, it) }?.toTypedArray()
    }

    override fun listFiles(filter: FileFilter?): Array<File>? {
        val names = list() ?: return null
        return names.map { RootAwareFile(this, it) }
            .filter { filter == null || filter.accept(it) }
            .toTypedArray()
    }

    private constructor(parent: RootAwareFile, child: String) : this(File(parent, child))

    private data class CommandResult(val exitCode: Int, val output: List<String>)

    companion object {
        /**
         * Equivalent of reference `jr7.g(path)`: choose shell-backed File when
         * the configured libsu shell is root; otherwise use java.io.File.
         *
         * TODO(reference-port): include the reference's alternate Shizuku route
         * (`jr7.e() -> le7.f() && qe7.b()`) once its permission/process bridge
         * has been migrated. Until then, non-root Shizuku availability is not
         * treated as sufficient to select this implementation.
         */
        @JvmStatic
        fun create(path: String): File =
            if (runCatching { Shell.getShell().isRoot }.getOrDefault(false)) {
                RootAwareFile(path)
            } else {
                File(path)
            }

        /** Exact shell argument escaping from reference `jr7.c(String)`. */
        @JvmStatic
        fun escapeShellArgument(value: String): String = buildString(value.length + 2) {
            append('"')
            value.forEach { char ->
                if (char in "$`\\\"") append('\\')
                append(char)
            }
            append('"')
        }
    }
}

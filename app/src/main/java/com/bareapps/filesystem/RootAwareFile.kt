package com.bareapps.filesystem

import com.bareapps.rootservice.ShellHelper
import java.io.File
import java.io.FileFilter
import java.io.FilenameFilter
import java.text.SimpleDateFormat
import java.util.ArrayList
import java.util.Date
import java.util.LinkedList
import java.util.Locale
import java.util.regex.Pattern

/**
 * Kotlin port of SwiftBackup 5.1.0 (620) reference defpackage.jr7.
 * Obfuscated reference members are retained: a(String), b(String), c(String),
 * d(String...), e(), g(String), h(int, boolean, boolean), and i(String).
 */
class RootAwareFile : File {
    /** Reference field jr7.a: shell-escaped path. */
    val a: String

    constructor(file: File) : super(file.absolutePath) { a = c(path) }
    constructor(path: String) : this(File(path))
    constructor(parent: String, child: String) : this(File(parent, child))

    private data class CommandResult(val exitCode: Int, val output: List<String>)

    private fun run(command: String): CommandResult {
        val resolved = command.replace("@@", a)
        return if (!ShellHelper.getMainShell().isRoot && e()) {
            val result = ShizukuCommandExecutor.c(arrayOf(resolved))
            CommandResult(result.exitCode, result.output)
        } else {
            LibsuCommandExecutor(ShellHelper.getMainShell()).use { executor ->
                val result = executor.add(resolved).execute()
                CommandResult(result.exitCode, result.output)
            }
        }
    }

    /** Reference jr7.a(String). */
    fun a(command: String): String {
        val lines = run(command).output
        if (lines.isEmpty()) return ""
        for (line in lines) if (!line.isNullOrEmpty()) return lines[lines.size - 1]
        return ""
    }

    /** Reference jr7.b(String). */
    fun b(command: String): Boolean = d(command.replace("@@", a))

    /** Reference jr7.h(int, boolean, boolean). */
    fun h(mask: Int, enable: Boolean, ownerOnly: Boolean): Boolean {
        val mode = a("stat -c '%a' @@").toCharArray()
        if (mode.size != 3) return false
        for (index in mode.indices) {
            val digit = mode[index] - '0'
            val next = if (!enable || (ownerOnly && index != 0)) digit and mask.inv() else digit or mask
            mode[index] = (next + '0'.code).toChar()
        }
        return b("chmod ${String(mode)} @@")
    }

    /** Reference jr7.i(String). */
    fun i(format: String): Long {
        val parts = Pattern.compile(" ").split(a("stat -fc '%S $format' @@"))
        if (parts.size != 2) return Long.MAX_VALUE
        return try { parts[0].toLong() * parts[1].toLong() }
        catch (_: NumberFormatException) { Long.MAX_VALUE }
    }

    override fun canExecute() = b("[ -x @@ ]")
    override fun canRead() = b("[ -r @@ ]")
    override fun canWrite() = b("[ -w @@ ]")
    override fun createNewFile() = b("[ ! -e @@ ] && echo -n > @@")
    override fun delete() = b("rm -f @@ || rmdir -f @@")
    override fun deleteOnExit(): Unit = throw UnsupportedOperationException("Unsupported SuFile operation")
    override fun exists() = b("[ -e @@ ]")
    override fun isDirectory() = b("[ -d @@ ]")
    override fun isFile() = b("[ -f @@ ]")

    override fun getAbsolutePath(): String = path
    override fun getAbsoluteFile(): File = this
    override fun getCanonicalFile(): File = RootAwareFile(canonicalPath)
    override fun getCanonicalPath(): String = a("readlink -f @@").ifEmpty { path }
    override fun getParentFile(): File? = parent?.let(::RootAwareFile)
    override fun getFreeSpace(): Long = i("%f")
    override fun getTotalSpace(): Long = i("%b")
    override fun getUsableSpace(): Long = i("%a")

    override fun lastModified(): Long = try { a("stat -c '%Y' @@").toLong() * 1000L }
        catch (_: NumberFormatException) { 0L }
    override fun length(): Long = try { a("stat -c '%s' @@").toLong() }
        catch (_: NumberFormatException) { 0L }

    override fun list(): Array<String>? = list(null)

    override fun list(filter: FilenameFilter?): Array<String>? {
        if (!b("[ -d @@ ]")) return null
        val names = LinkedList(run("ls -a $a").output)
        names.removeIf { name ->
            name.isNullOrEmpty() || name == "." || name == ".." ||
                (filter != null && !filter.accept(this, name))
        }
        return names.toTypedArray()
    }

    override fun listFiles(): Array<File>? {
        if (!b("[ -d @@ ]")) return null
        val names = list(null) ?: return null
        return Array(names.size) { RootAwareFile(absolutePath, names[it]) }
    }

    override fun listFiles(filter: FilenameFilter?): Array<File>? {
        if (!b("[ -d @@ ]")) return null
        val names = list(filter) ?: return null
        return Array(names.size) { RootAwareFile(absolutePath, names[it]) }
    }

    override fun listFiles(filter: FileFilter?): Array<File>? {
        val names = list(null) ?: return null
        val files = ArrayList<RootAwareFile>()
        for (name in names) {
            val file = RootAwareFile(absolutePath, name)
            if (filter == null || filter.accept(file)) files.add(file)
        }
        return files.toTypedArray()
    }

    override fun mkdir() = b("mkdir @@")
    override fun mkdirs() = b("mkdir -p @@")
    override fun renameTo(dest: File) = d("mv -f $a ${c(dest.absolutePath)}")
    override fun setExecutable(executable: Boolean, ownerOnly: Boolean) = h(1, executable, ownerOnly)
    override fun setReadable(readable: Boolean, ownerOnly: Boolean) = h(4, readable, ownerOnly)
    override fun setWritable(writable: Boolean, ownerOnly: Boolean) = h(2, writable, ownerOnly)
    override fun setReadOnly() = h(2, false, false) && h(1, false, false)

    override fun setLastModified(time: Long): Boolean {
        val timestamp = SimpleDateFormat("yyyyMMddHHmm", Locale.US).format(Date(time))
        return b("[ -e @@ ] && touch -t $timestamp @@")
    }

    companion object {
        /** Reference jr7.c(String). */
        @JvmStatic fun c(value: String): String = buildString(value.length + 2) {
            append('"')
            value.forEach { char ->
                if (char in "$`\\\"") append('\\')
                append(char)
            }
            append('"')
        }

        /** Reference jr7.d(String...). */
        @JvmStatic fun d(vararg commands: String): Boolean {
            return if (!ShellHelper.getMainShell().isRoot && e()) {
                ShizukuCommandExecutor.c(commands.copyOf()).exitCode == 0
            } else {
                LibsuCommandExecutor(ShellHelper.getMainShell()).use { executor ->
                    executor.add(*commands).execute().exitCode == 0
                }
            }
        }

        /** Reference jr7.e(). */
        @JvmStatic fun e(): Boolean =
            ShizukuServiceState.f() && ShizukuCommandExecutor.b()

        /** Reference jr7.g(String). */
        @JvmStatic fun g(path: String): File =
            if (ShellHelper.getMainShell().isRoot || e()) RootAwareFile(path) else File(path)

        @JvmStatic fun create(path: String): File = g(path)
        @JvmStatic fun escapeShellArgument(value: String): String = c(value)
    }
}

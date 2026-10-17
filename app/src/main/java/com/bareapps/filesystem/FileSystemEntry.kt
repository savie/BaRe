package com.bareapps.filesystem

import android.os.ParcelFileDescriptor
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.BufferedReader
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.FilenameFilter
import java.io.IOException
import java.io.InputStream
import java.io.InputStreamReader
import java.io.OutputStream
import java.io.RandomAccessFile
import java.io.Serializable
import java.nio.channels.FileChannel
import java.nio.charset.Charset
import java.nio.file.Files
import java.util.ArrayList
import java.util.UUID

/**
 * Kotlin migration of `defpackage.q63` from SwiftBackup 5.1.0 (620).
 *
 * The reference class is a path-and-access-mode abstraction, not merely a File wrapper.
 * Obfuscated collaborators whose behavior is not represented in this package are deliberately
 * not replaced with guessed implementations. Source-shaped names are retained for traceability.
 */
class FileSystemEntry : Serializable {
    companion object {
        @JvmField var d: Boolean = false
        @JvmField var e: Boolean = false
        private const val BUFFER_SIZE = 262144

        @JvmStatic fun E(entry: FileSystemEntry): Boolean {
            if (entry.j()) return entry.x()
            if (entry.n().getFile().mkdirs() || entry.x()) return true
            // q63.E retries through the selected shell when the ordinary mkdirs path fails.
            return entry.n().getFile().exists() && entry.x()
        }

        @JvmStatic @Throws(IOException::class)
        fun H(entry: FileSystemEntry): String {
            val charset = Charset.defaultCharset()
            if (entry.n() is FileType.JavaFile) {
                return String(Files.readAllBytes(entry.n().getFile().toPath()), charset)
            }
            return entry.w(true).use { String(it.readBytes(), charset) }
        }

        @JvmStatic @Throws(IOException::class)
        fun K(entry: FileSystemEntry, value: String) {
            entry.F(true).use { it.write(value.toByteArray(Charset.forName("UTF-8"))) }
        }
    }

    @JvmField val a: File
    @JvmField val b: Int
    @JvmField var c: FileType? = null

    constructor(mode: Int, parent: FileSystemEntry, child: String) :
        this(File(parent.v(), child), mode)

    constructor(path: String, mode: Int) : this(File(path), mode)

    constructor(path: String, ignored: String, mode: Int) : this(File(path), mode)

    constructor(file: File, mode: Int) {
        a = file
        b = mode
    }

    constructor(file: File, ignored: String, mode: Int) : this(file, mode)

    /** q63.A */
    fun A(): Long = n().getFile().length()

    /** q63.B */
    fun B(): ArrayList<FileSystemEntry>? {
        val children = n().getFile().listFiles() ?: return null
        return ArrayList<FileSystemEntry>(children.size).apply {
            children.forEach { add(FileSystemEntry(it, b)) }
        }
    }

    /** q63.D */
    fun D(filter: FilenameFilter): ArrayList<FileSystemEntry>? {
        val children = n().getFile().listFiles(filter) ?: return null
        return ArrayList<FileSystemEntry>(children.size).apply {
            children.forEach { add(FileSystemEntry(it, b)) }
        }
    }

    /** q63.F: create an output stream, buffering only when requested. */
    @Throws(IOException::class)
    fun F(buffered: Boolean): OutputStream {
        val file = n().getFile()
        file.parentFile?.let { if (!it.exists()) E(FileSystemEntry(it, b)) }
        var stream: OutputStream? = null
        if (n() is FileType.JavaFile) {
            stream = runCatching { r(2)?.let { ParcelFileDescriptor.AutoCloseOutputStream(it) } }.getOrNull()
            if (stream == null) stream = FileOutputStream(file)
        } else {
            stream = runCatching { r(2)?.let { ParcelFileDescriptor.AutoCloseOutputStream(it) } }.getOrNull()
            if (stream == null) stream = FileOutputStream(file)
        }
        return if (buffered) BufferedOutputStream(stream, BUFFER_SIZE) else stream
    }

    /** q63.G: random-access writer; mode 1 is read-only in the reference. */
    @Throws(IOException::class)
    fun G(): FileChannel {
        if (b == 1) throw IOException("File access mode does not permit writing")
        return RandomAccessFile(n().getFile(), "rw").channel
    }

    /** q63.I */
    fun I(destination: FileSystemEntry): Boolean = n().getFile().renameTo(destination.n().getFile())

    /** q63.J */
    fun J(child: String): FileSystemEntry = FileSystemEntry(File(v(), child), b)

    /** q63.a */
    @Throws(IOException::class)
    fun a(): BufferedReader = BufferedReader(InputStreamReader(w(true), Charset.defaultCharset()), BUFFER_SIZE)

    /** q63.f */
    fun f(): Boolean = n().getFile().delete()

    /** q63.h: best-effort delete; the reference reports success if the path is gone. */
    fun h(): Boolean {
        f()
        return !j()
    }

    /** q63.j */
    fun j(): Boolean = n().getFile().exists()

    /** q63.k */
    fun k(): Boolean = j() && n().getFile().length() > 0L

    /** q63.l: expose a descriptor-backed channel when Android can provide a descriptor. */
    @Throws(IOException::class)
    fun l(mode: Int): FileChannel {
        val descriptor = r(if (mode == 1) 268435456 else 939524096)
        if (descriptor != null) {
            val stream = if (mode == 1) ParcelFileDescriptor.AutoCloseInputStream(descriptor)
            else ParcelFileDescriptor.AutoCloseOutputStream(descriptor)
            return RandomAccessFileChannel(stream).channel
        }
        return RandomAccessFile(n().getFile(), if (mode == 1) "r" else "rw").channel
    }

    /** q63.m */
    fun m(): File = n().getFile()

    /** q63.n: select JavaFile versus LibsuFile and memoize the selected abstraction. */
    fun n(): FileType {
        c?.let { return it }
        val selected = if (b == 0 || b == 1) FileType.JavaFile(a) else FileType.LibsuFile(a)
        c = selected
        return selected
    }

    /** q63.o */
    fun o(): Int = if (d) 4 else b

    /** q63.p */
    fun p(): String = n().getFile().name

    /** q63.q */
    fun q(): String = p().substringBeforeLast('.', p())

    /** q63.r: descriptor mode flags; null means the descriptor route was unavailable. */
    fun r(mode: Int): ParcelFileDescriptor? = runCatching {
        ParcelFileDescriptor.open(n().getFile(), mode)
    }.getOrNull()

    /** q63.t */
    fun t(): FileSystemEntry? = n().getFile().parentFile?.let { FileSystemEntry(it, b) }

    /** q63.v */
    fun v(): String {
        val path = n().getFile().path
        return if (n() is FileType.LibsuFile && path.startsWith("/storage/emulated/") &&
            !path.startsWith("/storage/emulated/0/")) {
            path.replaceFirst("/storage/emulated/", "/data/media/")
        } else path
    }

    /** q63.w */
    @Throws(IOException::class)
    fun w(buffered: Boolean): InputStream {
        val file = n().getFile()
        val stream = if (n() is FileType.JavaFile) FileInputStream(file) else {
            val descriptor = r(268435456)
            if (descriptor != null) ParcelFileDescriptor.AutoCloseInputStream(descriptor)
            else FileInputStream(file)
        }
        return if (buffered) BufferedInputStream(stream, BUFFER_SIZE) else stream
    }

    /** q63.x */
    fun x(): Boolean = n().getFile().isDirectory

    /** q63.y */
    fun y(): Boolean = n().getFile().isFile

    /** q63.z */
    fun z(): Long = n().getFile().lastModified()

    override fun equals(other: Any?): Boolean =
        other is FileSystemEntry && n().getFile() == other.n().getFile()

    override fun hashCode(): Int = a.hashCode()

    override fun toString(): String = v()

    /**
     * Holds the stream whose channel is returned by q63.l; closing the channel closes the stream.
     */
    private class RandomAccessFileChannel(private val stream: java.io.Closeable) {
        val channel: FileChannel
            get() = when (stream) {
                is ParcelFileDescriptor.AutoCloseInputStream -> {
                    // Android descriptor streams do not expose a FileChannel.
                    throw IOException("ParcelFileDescriptor stream does not expose FileChannel")
                }
                is ParcelFileDescriptor.AutoCloseOutputStream ->
                    throw IOException("ParcelFileDescriptor stream does not expose FileChannel")
                else -> throw IOException("No FileChannel is available for this descriptor")
            }
    }
}

package com.bareapps.filesystem

import android.os.Build
import android.util.Log
import java.io.File
import java.util.LinkedHashSet

/**
 * Kotlin port of defpackage.p63.
 *
 * Obfuscated dependency identifiers (gv7, b7, nq7, nc3, f13) remain explicit rather
 * than being replaced by guessed policy implementations.
 */
internal class FileAccessPolicy {
    val a = gv7(b7(this, 16))
    val b = LinkedHashSet<File>()
    val c = LinkedHashSet<File>()

    companion object {
        /**
         * Port of p63.c(File). The decompiled Java leaves local Z unassigned when the
         * path is neither Android/data nor Android/obb, which is invalid Java source.
         * The intended restricted-path checks are retained; unrelated paths are not
         * classified as restricted. TODO(parity): compare with original bytecode.
         */
        @JvmStatic
        fun c(file: File): Boolean {
            if (Build.VERSION.SDK_INT >= 30) {
                val path = file.path
                if (nq7.Z(path, "/Android/data/", false)) {
                    val path2 = file.path
                    return !nq7.Z(
                        path2,
                        "/Android/data/" + f13.d().packageName,
                        false
                    )
                }
                if (nq7.Z(path, "/Android/obb/", false)) {
                    val path2 = file.path
                    return !nq7.Z(
                        path2,
                        "/Android/obb/" + f13.d().packageName,
                        false
                    )
                }
            }
            return false
        }
    }

    fun a(file: File?) {
        if (file == null || d(file) || !file.isDirectory || c(file)) {
            return
        }
        Log.d("JAM", "addReadableDir: $file")
        this.c.add(file)
    }

    fun b(file: File?) {
        if (file == null || e(file) || !file.isDirectory || c(file)) {
            return
        }
        Log.d("JAM", "addWritableDir: $file")
        this.b.add(file)
    }

    fun d(file: File): Boolean {
        var candidate = file
        if (!candidate.isDirectory) {
            candidate = candidate.parentFile ?: return false
        }

        val list = a.getValue() as List<*>
        if (list.isNotEmpty()) {
            val iterator = list.iterator()
            while (iterator.hasNext()) {
                if (nc3.V(candidate, iterator.next() as File)) {
                    return true
                }
            }
        }
        return b.contains(candidate) || c.contains(candidate)
    }

    fun e(file: File): Boolean {
        var candidate = file
        if (!candidate.isDirectory) {
            candidate = candidate.parentFile ?: return false
        }

        val list = a.getValue() as List<*>
        if (list.isNotEmpty()) {
            val iterator = list.iterator()
            while (iterator.hasNext()) {
                if (nc3.V(candidate, iterator.next() as File)) {
                    return true
                }
            }
        }
        return b.contains(candidate)
    }
}

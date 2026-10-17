package com.bareapps.filesystem

import defpackage.h70
import defpackage.q63
import defpackage.qy5
import defpackage.uq7
import defpackage.yn7
import defpackage.zn7

/**
 * Kotlin port of the storage-root selection branch in synthetic reference
 * defpackage.g70 (switch case 0), used by the m70 trash-directory resolver.
 *
 * The source normalizes the requested path and configured root paths through h70.a,
 * keeps roots that contain the requested path (or are `/`), chooses the longest
 * matching root while preserving the first root on ties, and returns that root's
 * `.trash/atomic-delete` child with access mode 2.
 */
internal object TrashDirectoryResolver {
    @JvmStatic
    fun resolve(entry: q63): q63? {
        val requestedPath = h70.a(entry.v())
        var selectedRoot: zn7? = null
        var selectedPathLength = -1

        for (candidate in yn7.a()) {
            val rootPath = h70.a(candidate.n().v())
            if (
                rootPath == "/" ||
                requestedPath == rootPath ||
                uq7.V(requestedPath, rootPath + "/", false)
            ) {
                if (rootPath.length > selectedPathLength) {
                    selectedRoot = candidate
                    selectedPathLength = rootPath.length
                }
            }
        }

        val root = selectedRoot ?: return null
        return q63(qy5.d(root), ".trash/atomic-delete", 2)
    }
}

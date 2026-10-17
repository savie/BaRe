package com.bareapps.filesystem

import java.io.File

/**
 * Kotlin port of defpackage.m70.
 *
 * Obfuscated dependencies and enum dispatch remain source-shaped until their definitions
 * are ported. The related g70 resolver is kept as the source's static field b.
 */
internal abstract class StoragePathMapper {
    companion object {
        val a = gv7(b7(6))
        var b: g70? = null

        @JvmStatic
        fun a(str: String, o93Var: o93): String? {
            val i = k70.a[o93Var.ordinal()]
            if (i == 1) {
                return zv1.r(str)
            }
            if (i != 2 && i != 3) {
                q.j()
                return null
            }
            if (!uq7.V(str, "/storage/emulated/", false) ||
                uq7.V(str, "/storage/emulated/0/", false)
            ) {
                return str
            }
            val path = File(uq7.T(str, "/storage/emulated/", "/data/media/")).path
            return path
        }
    }
}

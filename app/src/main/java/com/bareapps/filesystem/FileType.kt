package com.bareapps.filesystem

import java.io.File
import java.io.Serializable

/**
 * Kotlin port of `org.swiftapps.filesystem.File$FileType`.
 *
 * The reference type is Serializable and stores the File returned by its
 * constructor. JavaFile keeps the supplied File. LibsuFile instead stores the
 * result of `jr7.g(file.getPath())`, a root/alternate-shell-aware File subtype.
 */
abstract class FileType private constructor(
    private val file: File
) : Serializable {

    open fun getFile(): File = file

    override fun toString(): String = "${javaClass.simpleName}:${getFile()}"

    class JavaFile(file: File) : FileType(file) {
        private val javaFile: File = file

        override fun getFile(): File = javaFile

        override fun toString(): String = "${JavaFile::class.java.simpleName}:${getFile()}"
    }

    /**
     * Variant corresponding to the reference's nested LibsuFile.
     *
     * This constructor intentionally refuses to masquerade a plain java.io.File
     * as the reference's root-aware File. Port `defpackage.jr7.g(path)` and its
     * root/alternate-shell dependencies before enabling this variant.
     */
    class LibsuFile(file: File) : FileType(file) {
        init {
            // Match the reference's eager null dereference/check for the argument.
            file.path
        }

        override fun getFile(): File =
            throw UnsupportedOperationException(
                "TODO(reference-port): migrate defpackage.jr7.g(path) before using LibsuFile"
            )

        override fun toString(): String = "${LibsuFile::class.java.simpleName}:${getFile()}"
    }
}

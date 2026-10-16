package com.bareapps.filesystem

import java.io.File
import java.io.Serializable

/**
 * Kotlin port of `org.swiftapps.filesystem.File$FileType`.
 *
 * The reference type is Serializable and stores the File returned by its
 * constructor. Its nested JavaFile and LibsuFile variants override getFile()
 * only for JavaFile; both provide variant-specific toString() output.
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
     * Reference: `new LibsuFile(file)` stores `jr7.g(file.getPath())`, not the
     * original File. jr7 is a custom java.io.File subclass that redirects file
     * operations through the configured root/alternate-shell mechanism.
     *
     * TODO(reference-port): migrate jr7 and its root/shell selection dependencies,
     * then call its equivalent of g(file.path) here. Storing the original File
     * here would be observably incorrect, so this constructor is deliberately
     * not pretending that the LibsuFile behavior is complete.
     */
    class LibsuFile private constructor(file: File, marker: Unit) : FileType(file) {
        companion object {
            /**
             * Not exposed as a usable factory until the reference's jr7.g(path)
             * dependency has been ported. Kept private to avoid silently creating
             * a plain File under the LibsuFile name.
             */
            private fun unresolvedReferenceFactory(): Nothing =
                throw UnsupportedOperationException(
                    "TODO(reference-port): migrate defpackage.jr7.g(path) before constructing LibsuFile"
                )
        }

        override fun toString(): String = "${LibsuFile::class.java.simpleName}:${getFile()}"
    }
}

package com.bareapps.filesystem

import java.io.File
import java.io.Serializable

/**
 * Kotlin port of `org.swiftapps.filesystem.File$FileType`.
 *
 * Reference semantics:
 * - JavaFile stores the supplied java.io.File directly.
 * - LibsuFile stores the result of `jr7.g(file.getPath())`.
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

    class LibsuFile(file: File) : FileType(RootAwareFile.create(file.path)) {
        override fun toString(): String = "${LibsuFile::class.java.simpleName}:${getFile()}"
    }
}

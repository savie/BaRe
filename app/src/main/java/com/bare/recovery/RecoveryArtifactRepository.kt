package com.bare.recovery

import android.content.Context
import android.content.ContentResolver
import android.net.Uri
import android.provider.DocumentsContract
import androidx.documentfile.provider.DocumentFile
import java.io.ByteArrayOutputStream
import java.io.IOException

class RecoveryArtifactRepository(
    private val context: Context,
) {
    private val contentResolver: ContentResolver = context.contentResolver

    fun export(
        treeUri: Uri,
        payload: RecoveryPackageCodec.Payload,
        masterKey: ByteArray,
        password: CharArray,
        fileName: String = "bare-recovery-v2.bare",
    ): Uri {
        require(treeUri.scheme == "content" && DocumentsContract.isTreeUri(treeUri)) {
            "recovery storage must be a document-tree URI"
        }

        val parentDocumentUri = DocumentsContract.buildDocumentUriUsingTree(
            treeUri,
            DocumentsContract.getTreeDocumentId(treeUri),
        )
        val partialName = "$fileName.partial"
        val partialUri = DocumentsContract.createDocument(
            contentResolver,
            parentDocumentUri,
            "application/octet-stream",
            partialName,
        ) ?: throw IOException("unable to create recovery artifact")

        try {
            val bytes = RecoveryPackageCodec.encode(payload, masterKey, password)
            contentResolver.openOutputStream(partialUri, "w")?.use { output ->
                output.write(bytes)
                output.flush()
            } ?: throw IOException("unable to open recovery artifact for writing")

            val verified = read(partialUri)
            RecoveryPackageCodec.decode(verified, password)

            return DocumentsContract.renameDocument(contentResolver, partialUri, fileName)
                ?: throw IOException("unable to finalize recovery artifact")
        } catch (error: Throwable) {
            runCatching { DocumentsContract.deleteDocument(contentResolver, partialUri) }
            throw error
        }
    }

    fun exportToDirectory(
        directoryUri: Uri,
        payload: RecoveryPackageCodec.Payload,
        password: CharArray,
        fileName: String = "bare-recovery-v2.bare",
    ): Uri {
        require(directoryUri.scheme == "content") { "recovery directory must be a content URI" }
        val directory = DocumentFile.fromTreeUri(context, directoryUri)
            ?: throw IOException("recovery directory is unavailable")
        require(directory.isDirectory && directory.canWrite()) {
            "recovery directory is not writable"
        }

        directory.findFile(fileName)?.let { existing ->
            if (existing.isFile) {
                runCatching { existing.delete() }
            }
        }
        val partial = directory.createFile("application/octet-stream", "$fileName.partial")
            ?: throw IOException("unable to create recovery artifact")
        try {
            val bytes = RecoveryPackageCodec.encode(payload, password)
            contentResolver.openOutputStream(partial.uri, "w")?.use { output ->
                output.write(bytes)
                output.flush()
            } ?: throw IOException("unable to open recovery artifact for writing")

            RecoveryPackageCodec.decode(read(partial.uri), password)
            return DocumentsContract.renameDocument(contentResolver, partial.uri, fileName)
                ?: throw IOException("unable to finalize recovery artifact")
        } catch (error: Throwable) {
            runCatching { DocumentsContract.deleteDocument(contentResolver, partial.uri) }
            throw error
        }
    }


    fun exportToFile(
        directory: java.io.File,
        payload: RecoveryPackageCodec.Payload,
        password: CharArray,
        fileName: String = "bare-recovery-v2.bare",
    ): java.io.File {
        require(directory.isDirectory && directory.canWrite()) {
            "recovery directory is not writable"
        }
        val finalFile = java.io.File(directory, fileName)
        val partialFile = java.io.File(directory, "$fileName.partial")
        runCatching { partialFile.delete() }
        try {
            val bytes = RecoveryPackageCodec.encode(payload, password)
            partialFile.outputStream().use { output ->
                output.write(bytes)
                output.flush()
            }
            RecoveryPackageCodec.decode(partialFile.readBytes(), password)
            if (finalFile.exists()) {
                check(finalFile.delete()) { "unable to replace recovery artifact" }
            }
            check(partialFile.renameTo(finalFile)) { "unable to finalize recovery artifact" }
            return finalFile
        } catch (error: Throwable) {
            runCatching { partialFile.delete() }
            throw error
        }
    }

    fun import(
        artifactUri: Uri,
        password: CharArray,
    ): RecoveryPackageCodec.DecodedPackage {
        return RecoveryPackageCodec.decode(read(artifactUri), password)
    }

    private fun read(uri: Uri): ByteArray {
        return contentResolver.openInputStream(uri)?.use { input ->
            ByteArrayOutputStream().use { output ->
                input.copyTo(output)
                output.toByteArray()
            }
        } ?: throw IOException("unable to read recovery artifact")
    }
}

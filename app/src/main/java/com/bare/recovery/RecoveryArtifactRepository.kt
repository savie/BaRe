package com.bare.recovery

import android.content.ContentResolver
import android.net.Uri
import android.provider.DocumentsContract
import java.io.ByteArrayOutputStream
import java.io.IOException

class RecoveryArtifactRepository(
    private val contentResolver: ContentResolver,
) {
    fun export(
        treeUri: Uri,
        payload: RecoveryPackageCodec.Payload,
        password: CharArray,
        fileName: String = "bare-recovery-v1.bare",
    ): Uri {
        require(treeUri.scheme == "content") { "recovery storage must be a document-tree URI" }

        val partialName = "$fileName.partial"
        val partialUri = DocumentsContract.createDocument(
            contentResolver,
            treeUri,
            "application/octet-stream",
            partialName,
        ) ?: throw IOException("unable to create recovery artifact")

        try {
            val bytes = RecoveryPackageCodec.encode(payload, password)
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

    fun import(
        artifactUri: Uri,
        password: CharArray,
    ): RecoveryPackageCodec.Payload {
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

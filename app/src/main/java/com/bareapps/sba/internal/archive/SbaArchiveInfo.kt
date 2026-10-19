package com.bareapps.sba.internal.archive

data class SbaArchiveEntry(
    val name: String,
    val entryOffset: Long,
    val payloadOffset: Long,
    val storedSize: Long,
    val compressedSize: Long,
    val tarSize: Long,
    val flags: Int,
    val tarEntryCount: Long? = null,
    val regularFileCount: Long? = null,
    val directoryCount: Long? = null,
)

data class SbaArchiveInfo(
    val version: Int,
    val createdAtMillis: Long,
    val compressionMethod: Int,
    val compressionLevel: Int,
    val metadata: ByteArray,
    val entries: List<SbaArchiveEntry>,
    val fileSize: Long,
    val indexOffset: Long,
    val indexSize: Long,
    val indexCrc32: Int = 0,
    val footerCrc32: Int = 0,
    val encryptionMethod: Int = 0,
    val kdfMethod: Int = 0,
    val kdfIterations: Int = 0,
    val keyCheck: ByteArray = ByteArray(0),
    val salt: ByteArray = ByteArray(0),
    val nonceSeed: ByteArray = ByteArray(0),
    val chunkSize: Int = 0,
    val kdfMemoryKiB: Int = 0,
    val kdfParallelism: Int = 0,
    val indexMac: ByteArray = ByteArray(0),
) {
    val isEncrypted: Boolean get() = encryptionMethod != 0
}

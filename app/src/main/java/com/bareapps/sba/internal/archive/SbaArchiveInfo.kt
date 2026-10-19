package com.bareapps.sba.internal.archive

data class SbaArchiveEntry(
    val name: String,
    val entryOffset: Long,
    val payloadOffset: Long,
    val storedSize: Long,
    val compressedSize: Long,
    val tarSize: Long,
    val flags: Int,
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
)

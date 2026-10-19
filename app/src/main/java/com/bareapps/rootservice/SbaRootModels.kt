package com.bareapps.rootservice

import android.os.Parcel
import android.os.Parcelable

data class SbaCreateEntry(
    val name: String,
    val sourcePath: String,
    val includeRootDirectory: Boolean,
    val includePaths: ArrayList<String>?,
    val excludePaths: ArrayList<String>?,
    val fallbackSourcePath: String?,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readString().orEmpty(), p.readInt() != 0,
        p.createStringArrayList(), p.createStringArrayList(), p.readString(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(name); p.writeString(sourcePath); p.writeInt(if (includeRootDirectory) 1 else 0)
        p.writeStringList(includePaths); p.writeStringList(excludePaths); p.writeString(fallbackSourcePath)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaCreateEntry> = object : Parcelable.Creator<SbaCreateEntry> {
            override fun createFromParcel(p: Parcel) = SbaCreateEntry(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaCreateEntry>(size)
        }
    }
}

data class SbaCreateRequest(
    val outputPath: String,
    val entries: ArrayList<SbaCreateEntry>,
    val mode: Int,
    val compressionMethod: Int,
    val compressionLevel: Int,
    val encryptionMethod: Int,
    val password: CharArray?,
    val metadataJson: String?,
    val progressIntervalMs: Long,
    val useShizuku: Boolean,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.createTypedArrayList(SbaCreateEntry.CREATOR) ?: arrayListOf(),
        p.readInt(), p.readInt(), p.readInt(), p.readInt(),
        p.createCharArray(), p.readString(), p.readLong(), p.readInt() != 0,
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(outputPath); p.writeTypedList(entries); p.writeInt(mode); p.writeInt(compressionMethod)
        p.writeInt(compressionLevel); p.writeInt(encryptionMethod)
        p.writeCharArray(password); p.writeString(metadataJson); p.writeLong(progressIntervalMs)
        p.writeInt(if (useShizuku) 1 else 0)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaCreateRequest> = object : Parcelable.Creator<SbaCreateRequest> {
            override fun createFromParcel(p: Parcel) = SbaCreateRequest(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaCreateRequest>(size)
        }
    }
}

data class SbaExtractRequest(
    val sourcePath: String,
    val targetPath: String,
    val entryName: String?,
    val restoreProfile: Int,
    val password: CharArray?,
    val includePaths: ArrayList<String>?,
    val progressIntervalMs: Long,
    val option: Boolean,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readString().orEmpty(), p.readString(), p.readInt(),
        p.createCharArray(), p.createStringArrayList(), p.readLong(), p.readInt() != 0,
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(sourcePath); p.writeString(targetPath); p.writeString(entryName); p.writeInt(restoreProfile)
        p.writeCharArray(password); p.writeStringList(includePaths); p.writeLong(progressIntervalMs)
        p.writeInt(if (option) 1 else 0)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaExtractRequest> = object : Parcelable.Creator<SbaExtractRequest> {
            override fun createFromParcel(p: Parcel) = SbaExtractRequest(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaExtractRequest>(size)
        }
    }
}

data class SbaTarExtractRequest(
    val sourcePath: String,
    val targetDirectory: String,
    val restoreProfile: Int,
    val includePaths: ArrayList<String>?,
    val progressIntervalMs: Long,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readString().orEmpty(), p.readInt(), p.createStringArrayList(), p.readLong(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(sourcePath); p.writeString(targetDirectory); p.writeInt(restoreProfile)
        p.writeStringList(includePaths); p.writeLong(progressIntervalMs)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaTarExtractRequest> = object : Parcelable.Creator<SbaTarExtractRequest> {
            override fun createFromParcel(p: Parcel) = SbaTarExtractRequest(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaTarExtractRequest>(size)
        }
    }
}

data class SbaOperationResult(
    val operationId: Long,
    val state: Int,
    val errorCode: Int,
    val errorSubCode: Int,
    val errorMessage: String?,
    val outputPath: String?,
    val bytesProcessed: Long,
    val durationMillis: Long,
    val diagnostics: String?,
    val tarEntryCount: Long,
    val regularFileCount: Long,
    val directoryCount: Long,
    val symlinkCount: Long,
    val hardlinkCount: Long,
    val otherEntryCount: Long,
    val skippedEntryCount: Long,
    val regularFileBytes: Long,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readLong(), p.readInt(), p.readInt(), p.readInt(), p.readString(), p.readString(),
        p.readLong(), p.readLong(), p.readString(), p.readLong(), p.readLong(), p.readLong(),
        p.readLong(), p.readLong(), p.readLong(), p.readLong(), p.readLong(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeLong(operationId); p.writeInt(state); p.writeInt(errorCode); p.writeInt(errorSubCode)
        p.writeString(errorMessage); p.writeString(outputPath); p.writeLong(bytesProcessed)
        p.writeLong(durationMillis); p.writeString(diagnostics); p.writeLong(tarEntryCount)
        p.writeLong(regularFileCount); p.writeLong(directoryCount); p.writeLong(symlinkCount)
        p.writeLong(hardlinkCount); p.writeLong(otherEntryCount); p.writeLong(skippedEntryCount)
        p.writeLong(regularFileBytes)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaOperationResult> = object : Parcelable.Creator<SbaOperationResult> {
            override fun createFromParcel(p: Parcel) = SbaOperationResult(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaOperationResult>(size)
        }
    }
}

data class SbaArchiveEntry(
    val name: String,
    val order: Int,
    val entryOffset: Long,
    val payloadOffset: Long,
    val payloadSize: Long,
    val compressedSize: Long,
    val tarSize: Long,
    val compressionDescriptor: String,
    val encryptionName: String,
    val flags: Int,
    val tarEntryCount: Long,
    val regularFileCount: Long,
    val directoryCount: Long,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readInt(), p.readLong(), p.readLong(), p.readLong(), p.readLong(),
        p.readLong(), p.readString().orEmpty(), p.readString().orEmpty(), p.readInt(),
        p.readLong(), p.readLong(), p.readLong(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(name); p.writeInt(order); p.writeLong(entryOffset); p.writeLong(payloadOffset)
        p.writeLong(payloadSize); p.writeLong(compressedSize); p.writeLong(tarSize)
        p.writeString(compressionDescriptor); p.writeString(encryptionName); p.writeInt(this.flags)
        p.writeLong(tarEntryCount); p.writeLong(regularFileCount); p.writeLong(directoryCount)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaArchiveEntry> = object : Parcelable.Creator<SbaArchiveEntry> {
            override fun createFromParcel(p: Parcel) = SbaArchiveEntry(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaArchiveEntry>(size)
        }
    }
}

data class SbaArchiveInfo(
    val formatName: String,
    val magic: String,
    val version: Int,
    val fileSize: Long,
    val metadataJson: String,
    val createdAtMillis: Long,
    val compressionMethod: Int,
    val compressionLevel: Int,
    val encryptionMethod: Int,
    val indexOffset: Long,
    val indexSize: Long,
    val indexCrc32: Int,
    val indexCrc32Hex: String,
    val footerOffset: Long,
    val footerSize: Long,
    val footerCrc32: Int,
    val footerCrc32Hex: String,
    val entries: ArrayList<SbaArchiveEntry>,
    val nextEntryStartIndex: Int,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readString().orEmpty(), p.readInt(), p.readLong(),
        p.readString().orEmpty(), p.readLong(), p.readInt(), p.readInt(), p.readInt(),
        p.readLong(), p.readLong(), p.readInt(), p.readString().orEmpty(),
        p.readLong(), p.readLong(), p.readInt(), p.readString().orEmpty(),
        p.createTypedArrayList(SbaArchiveEntry.CREATOR) ?: arrayListOf(), p.readInt(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(formatName); p.writeString(magic); p.writeInt(version); p.writeLong(fileSize)
        p.writeString(metadataJson); p.writeLong(createdAtMillis); p.writeInt(compressionMethod)
        p.writeInt(compressionLevel); p.writeInt(encryptionMethod); p.writeLong(indexOffset)
        p.writeLong(indexSize); p.writeInt(indexCrc32); p.writeString(indexCrc32Hex)
        p.writeLong(footerOffset); p.writeLong(footerSize); p.writeInt(footerCrc32)
        p.writeString(footerCrc32Hex); p.writeTypedList(entries); p.writeInt(nextEntryStartIndex)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaArchiveInfo> = object : Parcelable.Creator<SbaArchiveInfo> {
            override fun createFromParcel(p: Parcel) = SbaArchiveInfo(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaArchiveInfo>(size)
        }
    }
}

data class SbaArchiveInfoPage(
    val formatName: String,
    val magic: String,
    val version: Int,
    val fileSize: Long,
    val metadataJson: String,
    val entries: ArrayList<SbaArchiveEntry>,
    val nextEntryStartIndex: Int,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readString().orEmpty(), p.readInt(), p.readLong(),
        p.readString().orEmpty(), p.createTypedArrayList(SbaArchiveEntry.CREATOR) ?: arrayListOf(), p.readInt(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(formatName); p.writeString(magic); p.writeInt(version); p.writeLong(fileSize)
        p.writeString(metadataJson); p.writeTypedList(entries); p.writeInt(nextEntryStartIndex)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaArchiveInfoPage> = object : Parcelable.Creator<SbaArchiveInfoPage> {
            override fun createFromParcel(p: Parcel) = SbaArchiveInfoPage(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaArchiveInfoPage>(size)
        }
    }
}

data class SbaTarEntry(
    val name: String,
    val typeName: String,
    val linkName: String?,
    val mode: Int,
    val size: Long,
    val realSize: Long,
    val modificationTimeMillis: Long,
    val sparse: Boolean,
    val xattrNames: ArrayList<String>,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.readString().orEmpty(), p.readString().orEmpty(), p.readString(), p.readInt(),
        p.readLong(), p.readLong(), p.readLong(), p.readInt() != 0,
        p.createStringArrayList() ?: arrayListOf(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeString(name); p.writeString(typeName); p.writeString(linkName); p.writeInt(mode)
        p.writeLong(size); p.writeLong(realSize); p.writeLong(modificationTimeMillis)
        p.writeInt(if (sparse) 1 else 0); p.writeStringList(xattrNames)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaTarEntry> = object : Parcelable.Creator<SbaTarEntry> {
            override fun createFromParcel(p: Parcel) = SbaTarEntry(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaTarEntry>(size)
        }
    }
}

data class SbaTarEntryPage(
    val entries: ArrayList<SbaTarEntry>,
    val nextStartIndex: Int,
) : Parcelable {
    private constructor(p: Parcel) : this(
        p.createTypedArrayList(SbaTarEntry.CREATOR) ?: arrayListOf(), p.readInt(),
    )
    override fun writeToParcel(p: Parcel, flags: Int) {
        p.writeTypedList(entries); p.writeInt(nextStartIndex)
    }
    override fun describeContents() = 0
    companion object {
        @JvmField val CREATOR: Parcelable.Creator<SbaTarEntryPage> = object : Parcelable.Creator<SbaTarEntryPage> {
            override fun createFromParcel(p: Parcel) = SbaTarEntryPage(p)
            override fun newArray(size: Int) = arrayOfNulls<SbaTarEntryPage>(size)
        }
    }
}

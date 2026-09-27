package com.bare.feature.apps2.task

/**
 * Artifact boundary derived from the Reference backup/cloud/restore paths.
 *
 * The descriptor identifies availability and validity; it does not extract,
 * download, install, copy, or delete the artifact.
 */
enum class Apps2ArtifactType {
    BASE_APK,
    SPLIT_APK,
    SHARED_LIBRARY,
    DATA,
    EXTDATA,
    EXPANSION,
    MEDIA,
    SPECIAL_DATA,
}

data class Apps2ArtifactDescriptor(
    val type: Apps2ArtifactType,
    val available: Boolean,
    val valid: Boolean,
    val sizeBytes: Long?,
    val location: String?,
)

data class Apps2ArtifactSet(
    val packageName: String,
    val artifacts: List<Apps2ArtifactDescriptor>,
) {
    fun forPart(part: Apps2TaskPart): List<Apps2ArtifactDescriptor> =
        when (part) {
            Apps2TaskPart.APP ->
                artifacts.filter {
                    it.type == Apps2ArtifactType.BASE_APK ||
                        it.type == Apps2ArtifactType.SPLIT_APK ||
                        it.type == Apps2ArtifactType.SHARED_LIBRARY
                }

            Apps2TaskPart.DATA ->
                artifacts.filter { it.type == Apps2ArtifactType.DATA }

            Apps2TaskPart.EXTDATA ->
                artifacts.filter { it.type == Apps2ArtifactType.EXTDATA }

            Apps2TaskPart.EXPANSION ->
                artifacts.filter { it.type == Apps2ArtifactType.EXPANSION }

            Apps2TaskPart.MEDIA ->
                artifacts.filter { it.type == Apps2ArtifactType.MEDIA }
        }

    fun hasAvailableValidArtifact(part: Apps2TaskPart): Boolean =
        forPart(part).any { it.available && it.valid }
}

package com.bare.feature.apps2.task

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class Apps2ArtifactTest {

    @Test
    fun appPartRequiresAnAvailableValidApkFamilyArtifact() {
        val artifacts = Apps2ArtifactSet(
            packageName = "com.example.app",
            artifacts = listOf(
                Apps2ArtifactDescriptor(
                    type = Apps2ArtifactType.BASE_APK,
                    available = true,
                    valid = true,
                    sizeBytes = 1024L,
                    location = "artifact.apk",
                ),
            ),
        )

        assertTrue(artifacts.hasAvailableValidArtifact(Apps2TaskPart.APP))
    }

    @Test
    fun invalidArtifactDoesNotSatisfyPart() {
        val artifacts = Apps2ArtifactSet(
            packageName = "com.example.app",
            artifacts = listOf(
                Apps2ArtifactDescriptor(
                    type = Apps2ArtifactType.DATA,
                    available = true,
                    valid = false,
                    sizeBytes = 2048L,
                    location = "data.archive",
                ),
            ),
        )

        assertFalse(artifacts.hasAvailableValidArtifact(Apps2TaskPart.DATA))
    }

    @Test
    fun expansionRemainsItsOwnArtifactBoundary() {
        val artifacts = Apps2ArtifactSet(
            packageName = "com.example.app",
            artifacts = listOf(
                Apps2ArtifactDescriptor(
                    type = Apps2ArtifactType.EXPANSION,
                    available = true,
                    valid = true,
                    sizeBytes = 4096L,
                    location = "main.obb.archive",
                ),
            ),
        )

        assertTrue(artifacts.hasAvailableValidArtifact(Apps2TaskPart.EXPANSION))
        assertFalse(artifacts.hasAvailableValidArtifact(Apps2TaskPart.MEDIA))
    }
}

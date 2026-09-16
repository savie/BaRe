package com.bare.backup

import java.io.File
import org.junit.Assert.assertEquals
import org.junit.Test

class Sha256Test {
    @Test
    fun computesKnownDigest() {
        val file = File.createTempFile("bare-sha", ".txt")
        try {
            file.writeText("BaRe")
            assertEquals("75a9d21fd19082df8d2f1170caf91de9d7205f659092a5b6efa31bbfd8b2713e", Sha256.file(file))
        } finally {
            file.delete()
        }
    }
}

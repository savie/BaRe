package com.bare.backup

import java.io.File

internal object BackupDestinationAllocator {
    fun next(backupDir: File, safeName: String, versionCode: Long): File {
        val baseName = "$safeName-$versionCode"
        val first = File(backupDir, "$baseName.bare.zip")
        if (!first.exists()) return first

        var sequence = 2
        while (true) {
            val candidate = File(backupDir, "$baseName-$sequence.bare.zip")
            if (!candidate.exists()) return candidate
            sequence++
        }
    }
}

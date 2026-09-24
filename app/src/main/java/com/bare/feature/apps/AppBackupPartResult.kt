package com.bare.feature.apps

import java.io.File

sealed interface AppBackupPartResult {
    data class Completed(val files: List<File>) : AppBackupPartResult
    data class Failed(val reason: String) : AppBackupPartResult
}

package com.bareapps.barebackup.intro

import android.os.Build
import android.os.Environment

internal object EnvironmentCompat {
    fun hasAllFilesAccess(): Boolean =
        Build.VERSION.SDK_INT < Build.VERSION_CODES.R || Environment.isExternalStorageManager()
}

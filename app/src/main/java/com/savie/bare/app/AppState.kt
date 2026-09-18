package com.savie.bare.app

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Settings
import androidx.annotation.StringRes
import com.savie.bare.R
import androidx.compose.ui.graphics.vector.ImageVector

enum class Tab(@StringRes val titleRes: Int, val icon: ImageVector) {
    HOME(R.string.home, Icons.Default.Home),
    APPS(R.string.apps, Icons.Default.Apps),
    SCHEDULES(R.string.schedules, Icons.Default.Schedule),
    ACCOUNT(R.string.account, Icons.Default.Settings),
}

enum class Screen(val title: String) {
    NONE(""), SEARCH("Search"), APP_DETAIL("App"), APP_CONFIG("App configuration"),
    FOLDERS("Folders"), MESSAGES("Messages"), CALL_LOGS("Call Logs"), WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"), STORAGE("Storage"), CLOUD("Cloud sync"),
    MANAGEMENT("Management"), DIAGNOSTICS("Diagnostics"), SETTINGS("Settings"),
    IMPORT_EXPORT("Import / Export"), TASK("Task"), SCHEDULE_DETAIL("Schedule")
}

enum class StartScreen { WELCOME, LOGIN, STORAGE_SETUP, ACCESS_METHOD, APP }

enum class AccessMethod(@StringRes val titleRes: Int, @StringRes val descriptionRes: Int) {
    NON_ROOT(R.string.non_root, R.string.non_root_description),
    ROOT(R.string.root, R.string.root_description)
}

data class AppItem(
    val name: String,
    val packageName: String,
    val category: String,
    val size: String,
    val protected: Boolean = false,
    val favorite: Boolean = false,
)

val demoApps = listOf(
    AppItem("BaRe", "com.savie.bare", "User app", "42 MB", protected = true, favorite = true),
    AppItem("Messages", "com.google.android.apps.messaging", "User app", "118 MB"),
    AppItem("Chrome", "com.android.chrome", "User app", "286 MB", favorite = true),
    AppItem("Files", "com.google.android.documentsui", "System app", "31 MB"),
    AppItem("Settings", "com.android.settings", "System app", "18 MB", protected = true),
)

val tabs = Tab.entries

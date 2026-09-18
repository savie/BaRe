package com.savie.bare.app

import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Apps
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.Settings
import androidx.compose.ui.graphics.vector.ImageVector

enum class Tab(val title: String, val icon: ImageVector) {
    HOME("Home", Icons.Default.Home),
    APPS("Apps", Icons.Default.Apps),
    SCHEDULES("Schedules", Icons.Default.Schedule),
    ACCOUNT("Account", Icons.Default.Settings),
}

enum class Screen(val title: String) {
    NONE(""), SEARCH("Search"), APP_DETAIL("App"), APP_CONFIG("App configuration"),
    FOLDERS("Folders"), MESSAGES("Messages"), CALL_LOGS("Call Logs"), WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"), STORAGE("Storage"), CLOUD("Cloud sync"),
    MANAGEMENT("Management"), DIAGNOSTICS("Diagnostics"), SETTINGS("Settings"),
    IMPORT_EXPORT("Import / Export"), TASK("Task"), SCHEDULE_DETAIL("Schedule")
}

enum class StartScreen { WELCOME, LOGIN, STORAGE_SETUP, ACCESS_METHOD, APP }

enum class AccessMethod(val title: String, val description: String) {
    NON_ROOT("Non-root", "Mode Android standar. Capability yang membutuhkan akses khusus akan ditampilkan sesuai kondisi perangkat."),
    ROOT("Root", "Gunakan akses root bila tersedia. Pilihan ini hanya mockup dan bukan bukti root aktif.")
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

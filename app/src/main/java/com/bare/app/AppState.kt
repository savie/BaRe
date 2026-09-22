package com.bare.app

import androidx.annotation.StringRes
import androidx.compose.ui.graphics.vector.ImageVector
import com.bare.R
import com.bare.ui.BareIcons

enum class Tab(@StringRes val titleRes: Int, val icon: ImageVector) {
    HOME(R.string.home, BareIcons.Home),
    APPS(R.string.apps, BareIcons.Grid),
    SCHEDULES(R.string.schedules, BareIcons.Schedule),
    ACCOUNT(R.string.account, BareIcons.Account),
}

enum class Screen(val title: String) {
    NONE(""), SEARCH("Search"), APPS_SEARCH("Apps search"), APPS_TOOLS("Apps tools"), APP_DETAIL("App"), APP_BACKUP("App backup"), APP_BACKUPS("App backups"), APP_MANAGEMENT("App management"), APP_CONFIG("App configuration"), APP_DIAGNOSTICS("App diagnostics"), APP_RESTORE("App restore"),
    FOLDERS("Folders"), MESSAGES("Messages"), CALL_LOGS("Call Logs"), WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"), STORAGE("Storage"), CLOUD("Cloud sync"),
    MANAGEMENT("Management"), MANAGE_SPACE("Manage space"), DIAGNOSTICS("Diagnostics"), SETTINGS("Settings"), BARE_LABS("BaRe Labs"), BARE_LOGGER("BaRe Logger"), APP_VISIBILITY_DIAGNOSTICS("App visibility diagnostics"), LOCAL_BACKUP_SCAN("Scan local app backups"), ENCRYPTION_PASSWORD_STRATEGY("Encryption password strategy"), USER_PASSWORD("Set user password"),
    IMPORT_EXPORT("Import / Export"), TASK("Task"), SCHEDULE_DETAIL("Schedule")
}

enum class StartScreen {
    WELCOME,
    LOGIN,
    FORGOT_PASSWORD,
    SIGN_UP,
    STORAGE_SETUP,
    ACCESS_METHOD,
    APP,
}

enum class IdentityType {
    LOCAL,
    ACCOUNT,
}

enum class AccessMethod(@StringRes val titleRes: Int, @StringRes val descriptionRes: Int) {
    NON_ROOT(R.string.non_root, R.string.non_root_description),
    ROOT(R.string.root, R.string.root_description)
}

data class AppItem(
    val name: String,
    val packageName: String,
    val category: String,
    val size: String,
    val isSystem: Boolean = false,
    val isEnabled: Boolean = true,
    val protected: Boolean = false,
    val favorite: Boolean = false,
    val firstInstallTime: Long? = null,
    val lastUpdateTime: Long? = null,
    val apkSizeBytes: Long? = null,
    val installedFromGooglePlay: Boolean? = null,
)

val demoApps = listOf(
    AppItem("BaRe", "com.bare", "User app", "42 MB", protected = true, favorite = true),
    AppItem("Messages", "com.google.android.apps.messaging", "User app", "118 MB"),
    AppItem("Chrome", "com.android.chrome", "User app", "286 MB", favorite = true),
    AppItem("Files", "com.google.android.documentsui", "System app", "31 MB"),
    AppItem("Settings", "com.android.settings", "System app", "18 MB", protected = true),
)

val tabs = Tab.entries

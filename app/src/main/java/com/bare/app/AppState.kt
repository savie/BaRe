package com.bare.app

import android.graphics.drawable.Drawable
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
    NONE(""), SEARCH("Search"), APPS_SEARCH("Apps search"), APP_DETAIL("App"), APP_BACKUP("App backup"), APP_BACKUPS("App backups"), APP_MANAGEMENT("App management"), APP_CONFIG("App configuration"), APP_DIAGNOSTICS("App diagnostics"), APP_RESTORE("App restore"), APP_QUICK_ACTIONS("Apps quick actions"), APP_LABELS("App labels"), APP_CUSTOM_CONFIG("Custom configurations"), APP_BLACKLIST("Blacklist apps"), APP_BACKUP_SETTINGS("App backups settings"),
    FOLDERS("Folders"), MESSAGES("Messages"), CALL_LOGS("Call Logs"), WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"), STORAGE("Storage"), CLOUD("Cloud sync"),
    MANAGEMENT("Management"), MANAGE_SPACE("Manage space"), DIAGNOSTICS("Diagnostics"), SETTINGS("Settings"), BARE_LABS("BaRe Labs"), BARE_LOGGER("BaRe Logger"), APP_VISIBILITY_DIAGNOSTICS("App visibility diagnostics"), LOCAL_BACKUP_SCAN("Scan local app backups"), ENCRYPTION_PASSWORD_STRATEGY("Encryption password strategy"), USER_PASSWORD("Set user password"),
    IMPORT_EXPORT("Import / Export"), TASK("Task"), SCHEDULE_DETAIL("Schedule")
}

enum class StartScreen {
    RECOVERY_ONBOARDING,
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
    val isUpdatedSystemApp: Boolean = false,
    val canLaunch: Boolean = false,
    val isEnabled: Boolean = true,
    val protected: Boolean = false,
    val favorite: Boolean = false,
    val firstInstallTime: Long? = null,
    val lastUpdateTime: Long? = null,
    val apkSizeBytes: Long? = null,
    val installedSizeBytes: Long? = null,
    val dataSizeBytes: Long? = null,
    val cacheSizeBytes: Long? = null,
    val totalSizeBytes: Long? = null,
    val installedFromGooglePlay: Boolean? = null,
    val backupCount: Int = 0,
    val backupSizeBytes: Long? = null,
    val latestBackupTime: Long? = null,
    val icon: Drawable? = null,
)

val demoApps = listOf(
    AppItem("BaRe", "com.bare", "User app", "42 MB", protected = true, favorite = true),
    AppItem("Messages", "com.google.android.apps.messaging", "User app", "118 MB"),
    AppItem("Chrome", "com.android.chrome", "User app", "286 MB", favorite = true),
    AppItem("Files", "com.google.android.documentsui", "System app", "31 MB"),
    AppItem("Settings", "com.android.settings", "System app", "18 MB", protected = true),
)

val tabs = Tab.entries

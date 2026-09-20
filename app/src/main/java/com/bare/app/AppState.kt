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
    NONE(""), SEARCH("Search"), APP_DETAIL("App"), APP_CONFIG("App configuration"),
    FOLDERS("Folders"), MESSAGES("Messages"), CALL_LOGS("Call Logs"), WIFI("Wi-Fi"),
    WALLPAPERS("Wallpapers"), STORAGE("Storage"), CLOUD("Cloud sync"),
    MANAGEMENT("Management"), DIAGNOSTICS("Diagnostics"), SETTINGS("Settings"),
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
    val protected: Boolean = false,
    val favorite: Boolean = false,
)

val tabs = Tab.entries

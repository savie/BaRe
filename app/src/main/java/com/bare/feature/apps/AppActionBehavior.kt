package com.bare.feature.apps

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.provider.Settings

/**
 * Shared entry point for app actions.
 *
 * UI screens should ask this behavior layer to perform an app action instead
 * of rebuilding the same Android/root/fallback flow in every screen.
 */
object AppActionBehavior {

    enum class Result {
        COMPLETED,
        ROOT_REQUIRED,
        FAILED,
        UNAVAILABLE,
        OPENED_SYSTEM,
    }

    fun launch(context: Context, packageName: String): Result {
        val intent = context.packageManager.getLaunchIntentForPackage(packageName)
            ?: return Result.UNAVAILABLE
        return runCatching {
            context.startActivity(intent)
            Result.OPENED_SYSTEM
        }.getOrElse { Result.UNAVAILABLE }
    }

    fun openAppInfo(context: Context, packageName: String): Result {
        val intent = Intent(
            Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
            Uri.parse("package:$packageName"),
        )
        return if (intent.resolveActivity(context.packageManager) != null) {
            runCatching {
                context.startActivity(intent)
                Result.OPENED_SYSTEM
            }.getOrElse { Result.UNAVAILABLE }
        } else {
            Result.UNAVAILABLE
        }
    }

    fun openPlayStore(context: Context, packageName: String): Result {
        val market = Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=$packageName"))
        val web = Intent(
            Intent.ACTION_VIEW,
            Uri.parse("https://play.google.com/store/apps/details?id=$packageName"),
        )
        return when {
            market.resolveActivity(context.packageManager) != null -> runCatching {
                context.startActivity(market)
                Result.OPENED_SYSTEM
            }.getOrElse { Result.UNAVAILABLE }
            web.resolveActivity(context.packageManager) != null -> runCatching {
                context.startActivity(web)
                Result.OPENED_SYSTEM
            }.getOrElse { Result.UNAVAILABLE }
            else -> Result.UNAVAILABLE
        }
    }

    fun uninstallWithSystemFallback(context: Context, packageName: String): Result {
        if (RootAppActionExecutor.isRootAvailable() &&
            RootAppActionExecutor.uninstall(packageName)
        ) {
            return Result.COMPLETED
        }

        val intent = Intent(
            Intent.ACTION_UNINSTALL_PACKAGE,
            Uri.parse("package:$packageName"),
        ).apply {
            putExtra(Intent.EXTRA_RETURN_RESULT, true)
        }
        return if (intent.resolveActivity(context.packageManager) != null) {
            runCatching {
                context.startActivity(intent)
                Result.OPENED_SYSTEM
            }.getOrElse { Result.UNAVAILABLE }
        } else {
            Result.UNAVAILABLE
        }
    }

    fun disable(packageName: String): Result = rootAction(packageName) {
        RootAppActionExecutor.disable(it)
    }

    fun enable(packageName: String): Result = rootAction(packageName) {
        RootAppActionExecutor.enable(it)
    }

    fun forceStop(packageName: String): Result = rootAction(packageName) {
        RootAppActionExecutor.forceStop(it)
    }

    fun clearData(packageName: String): Result = rootAction(packageName) {
        RootAppActionExecutor.clearData(it)
    }

    fun addToHomeScreen(context: Context, packageName: String, label: String): Result {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return Result.UNAVAILABLE

        val shortcutManager = context.getSystemService(android.content.pm.ShortcutManager::class.java)
            ?: return Result.UNAVAILABLE
        if (!shortcutManager.isRequestPinShortcutSupported) return Result.UNAVAILABLE

        val launchIntent = context.packageManager.getLaunchIntentForPackage(packageName)
            ?: return Result.UNAVAILABLE

        val shortcut = android.content.pm.ShortcutInfo.Builder(
            context,
            "bare_$packageName",
        )
            .setShortLabel(label)
            .setLongLabel(label)
            .setIntent(launchIntent)
            .build()

        return runCatching {
            shortcutManager.requestPinShortcut(shortcut, null)
            Result.OPENED_SYSTEM
        }.getOrElse { Result.UNAVAILABLE }
    }

    fun setBatteryOptimization(context: Context, packageName: String, exempt: Boolean): Result {
        if (RootAppActionExecutor.isRootAvailable()) {
            return if (RootAppActionExecutor.setBatteryOptimizationExempt(packageName, exempt)) {
                Result.COMPLETED
            } else {
                Result.FAILED
            }
        }

        if (!exempt) return Result.UNAVAILABLE

        val intent = Intent(
            Settings.ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS,
            Uri.parse("package:$packageName"),
        )
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M &&
            intent.resolveActivity(context.packageManager) != null
        ) {
            runCatching {
                context.startActivity(intent)
                Result.OPENED_SYSTEM
            }.getOrElse { Result.UNAVAILABLE }
        } else {
            Result.UNAVAILABLE
        }
    }

    private fun rootAction(
        packageName: String,
        action: (String) -> Boolean,
    ): Result {
        if (!RootAppActionExecutor.isRootAvailable()) return Result.ROOT_REQUIRED
        return if (runCatching { action(packageName) }.getOrDefault(false)) {
            Result.COMPLETED
        } else {
            Result.FAILED
        }
    }
}

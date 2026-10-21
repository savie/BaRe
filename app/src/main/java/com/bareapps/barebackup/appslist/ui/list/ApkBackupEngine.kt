package com.bareapps.barebackup.appslist.ui.list

import android.content.Context
import android.content.pm.ApplicationInfo
import android.net.Uri
import android.os.Build
import com.bareapps.barebackup.common.CsvBackupUtils
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileInputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

/** Shared engine for user-initiated and scheduled APK archive creation. */
internal object ApkBackupEngine {
    private const val HISTORY_PREFS = "bare_apk_backup_history"

    suspend fun exportAll(context: Context, destination: Uri, actionId: String = "ID_BACKUP_ALL_APPS"): Int = withContext(Dispatchers.IO) {
        val packageManager = context.packageManager
        val history = context.getSharedPreferences(HISTORY_PREFS, Context.MODE_PRIVATE)
        val installed = packageManager.getInstalledApplications(0).filter { app ->
            val flags = app.flags
            val source = app.sourceDir?.let(::File)
            app.packageName != context.packageName &&
                (flags and ApplicationInfo.FLAG_SYSTEM == 0 || flags and ApplicationInfo.FLAG_UPDATED_SYSTEM_APP != 0) &&
                source != null && source.isFile && source.canRead() &&
                app.splitSourceDirs.orEmpty().all { File(it).isFile && File(it).canRead() }
        }.sortedBy { it.packageName }
        val apps = when (actionId) {
            "ID_BACKUP_PENDING_APPS" -> installed.filter { !history.contains(historyKey(it.packageName)) }
            "ID_BACKUP_UPDATED_APPS" -> installed.filter { app ->
                history.contains(historyKey(app.packageName)) && versionCode(context, app) > history.getLong(historyKey(app.packageName), -1L)
            }
            "ID_BACKUP_REDO_APPS", "ID_BACKUP_SYNC_APPS" -> installed.filter { history.contains(historyKey(it.packageName)) }
            else -> installed
        }
        check(apps.isNotEmpty()) {
            when (actionId) {
                "ID_BACKUP_PENDING_APPS" -> "No unbacked-up apps were found"
                "ID_BACKUP_UPDATED_APPS" -> "No apps with newer APK versions were found"
                "ID_BACKUP_REDO_APPS", "ID_BACKUP_SYNC_APPS" -> "No previous APK backups are recorded on this device"
                else -> "No readable user application APKs found"
            }
        }
        context.contentResolver.openOutputStream(destination).use { raw ->
            val output = checkNotNull(raw) { "Could not open ZIP destination" }
            ZipOutputStream(output).use { zip ->
                zip.putNextEntry(ZipEntry("manifest.csv"))
                zip.write((CsvBackupUtils.row(listOf("package", "label", "version", "version_code", "apk_count")) + "\n").toByteArray(Charsets.UTF_8))
                apps.forEach { app ->
                    val versionName = try {
                        @Suppress("DEPRECATION")
                        packageManager.getPackageInfo(app.packageName, 0).versionName ?: ""
                    } catch (_: Exception) { "" }
                    val versionCode = versionCode(context, app)
                    val row = CsvBackupUtils.row(listOf(
                        app.packageName,
                        packageManager.getApplicationLabel(app).toString(),
                        versionName,
                        versionCode.toString(),
                        (1 + app.splitSourceDirs.orEmpty().size).toString()
                    )) + "\n"
                    zip.write(row.toByteArray(Charsets.UTF_8))
                }
                zip.closeEntry()
                apps.forEach { app ->
                    val files = listOf(File(app.sourceDir)) + app.splitSourceDirs.orEmpty().map(::File)
                    files.forEachIndexed { index, file ->
                        val name = if (index == 0) "base.apk" else "split_" + index + ".apk"
                        zip.putNextEntry(ZipEntry(app.packageName + "/" + name))
                        FileInputStream(file).use { it.copyTo(zip) }
                        zip.closeEntry()
                    }
                }
            }
        }
        history.edit().apply { apps.forEach { putLong(historyKey(it.packageName), versionCode(context, it)) } }.apply()
        apps.size
    }

    fun recordAppBackup(context: Context, app: ApplicationInfo) {
        val version = versionCode(context, app)
        context.getSharedPreferences(HISTORY_PREFS, Context.MODE_PRIVATE).edit()
            .putLong(historyKey(app.packageName), version)
            .apply()
    }

    private fun versionCode(context: Context, app: ApplicationInfo): Long = try {
        val info = context.packageManager.getPackageInfo(app.packageName, 0)
        @Suppress("DEPRECATION")
        val legacyVersionCode = info.versionCode.toLong()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) info.longVersionCode else legacyVersionCode
    } catch (_: Exception) {
        0L
    }

    private fun historyKey(packageName: String) = "version:" + packageName
}

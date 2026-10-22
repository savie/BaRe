package com.bareapps.barebackup.home.schedule

import android.Manifest
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.content.pm.PackageManager
import android.os.Build
import androidx.core.app.NotificationCompat
import androidx.work.CoroutineWorker
import androidx.work.WorkerParameters
import androidx.work.workDataOf
import com.bareapps.barebackup.appslist.ui.list.ApkBackupEngine
import com.bareapps.barebackup.common.CloudStorageDestination
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/** Persistent worker for scheduled APK-only backups to the user's selected SAF destination. */
class ScheduledApkBackupWorker(context: Context, parameters: WorkerParameters) : CoroutineWorker(context, parameters) {
    override suspend fun doWork(): Result {
        val prefs = applicationContext.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        val stamp = SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(Date())
        val destination = CloudStorageDestination.createFile(
            applicationContext,
            "application/zip",
            "bare-scheduled-" + stamp + ".zip"
        )
        if (destination == null) {
            val message = "Choose a storage destination in the Cloud tab first"
            prefs.edit().putString(KEY_LAST_RESULT, "No writable storage destination selected").apply()
            notifyResult("Scheduled backup needs a destination", message)
            return Result.failure(workDataOf(KEY_RESULT_MESSAGE to message))
        }
        return try {
            val count = ApkBackupEngine.exportAll(applicationContext, destination)
            prefs.edit()
                .putLong(KEY_LAST_RUN, System.currentTimeMillis())
                .putString(KEY_LAST_RESULT, "Success: " + count + " applications")
                .apply()
            notifyResult("Scheduled backup complete", count.toString() + " application APKs saved")
            Result.success(workDataOf(KEY_RESULT_COUNT to count))
        } catch (error: Exception) {
            val message = error.message ?: "I/O error"
            prefs.edit()
                .putLong(KEY_LAST_RUN, System.currentTimeMillis())
                .putString(KEY_LAST_RESULT, "Failed: " + message)
                .apply()
            notifyResult("Scheduled backup failed", message)
            if (runAttemptCount < 2) Result.retry()
            else Result.failure(workDataOf(KEY_RESULT_MESSAGE to message))
        }
    }

    private fun notifyResult(title: String, message: String) {
        if (Build.VERSION.SDK_INT >= 33 &&
            applicationContext.checkSelfPermission(Manifest.permission.POST_NOTIFICATIONS) != PackageManager.PERMISSION_GRANTED
        ) return
        val manager = applicationContext.getSystemService(NotificationManager::class.java)
        if (Build.VERSION.SDK_INT >= 26) {
            manager.createNotificationChannel(
                NotificationChannel(CHANNEL_ID, "Scheduled backups", NotificationManager.IMPORTANCE_DEFAULT)
            )
        }
        val notification = NotificationCompat.Builder(applicationContext, CHANNEL_ID)
            .setSmallIcon(android.R.drawable.stat_sys_download_done)
            .setContentTitle(title)
            .setContentText(message)
            .setAutoCancel(true)
            .build()
        manager.notify(NOTIFICATION_ID, notification)
    }

    companion object {
        const val PREFS_NAME = "bare_schedule"
        const val KEY_ENABLED = "enabled"
        const val KEY_INTERVAL_DAYS = "interval_days"
        const val KEY_LAST_RUN = "last_run"
        const val KEY_LAST_RESULT = "last_result"
        const val KEY_RESULT_COUNT = "result_count"
        const val KEY_RESULT_MESSAGE = "result_message"
        const val UNIQUE_WORK_NAME = "bare-scheduled-apk-backup"
        private const val CHANNEL_ID = "bare_scheduled_backups"
        private const val NOTIFICATION_ID = 6101
    }
}

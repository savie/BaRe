package com.bare.apps.task
import android.content.Context
import com.bare.apps.model.*
class TaskManager(private val context:Context){
 fun executeBackup(request:BackupRequest)=AppsTask(AppBackupManager(context),AppRestoreManager(context)).runBackup(request)
 fun executeRestore(request:RestoreRequest)=AppsTask(AppBackupManager(context),AppRestoreManager(context)).runRestore(request)
}
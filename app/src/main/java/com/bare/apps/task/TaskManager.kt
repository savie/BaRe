package com.bare.apps.task
import android.content.Context
import com.bare.apps.model.*
class TaskManager(private val context:Context){
 private val store by lazy{AppsTaskStore(context)}
 fun executeBackup(request:BackupRequest):AppsTaskState{
  val task=AppsTask(AppBackupManager(context),AppRestoreManager(context));val state=task.runBackup(request);store.save(state);return state
 }
 fun executeRestore(request:RestoreRequest):AppsTaskState{
  val task=AppsTask(AppBackupManager(context),AppRestoreManager(context));val state=task.runRestore(request);store.save(state);return state
 }
}

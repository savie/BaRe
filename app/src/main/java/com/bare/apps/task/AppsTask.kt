package com.bare.apps.task
import com.bare.apps.model.*
enum class AppsTaskMode{BACKUP,RESTORE}
sealed class AppsTaskState{data object Pending:AppsTaskState();data class Running(val progress:Int):AppsTaskState();data class Success(val message:String):AppsTaskState();data class Error(val message:String):AppsTaskState();data object Cancelled:AppsTaskState()}
class AppsTask(private val backup:AppBackupManager,private val restore:AppRestoreManager){
 @Volatile var state:AppsTaskState=AppsTaskState.Pending;private var cancelled=false
 fun cancel(){cancelled=true;state=AppsTaskState.Cancelled}
 fun runBackup(request:BackupRequest):AppsTaskState{if(cancelled)return state;state=AppsTaskState.Running(0);return runCatching{backup.backup(request){if(!cancelled)state=AppsTaskState.Running(50)};if(cancelled)AppsTaskState.Cancelled else AppsTaskState.Success("Backup completed")}.getOrElse{AppsTaskState.Error(it.message?:"Backup failed")}.also{state=it}}
 fun runRestore(request:RestoreRequest):AppsTaskState{if(cancelled)return state;state=AppsTaskState.Running(0);return restore.restore(request){if(!cancelled)state=AppsTaskState.Running(50)}.let{if(cancelled)AppsTaskState.Cancelled else if(it.success)AppsTaskState.Success(it.message)else AppsTaskState.Error(it.message)}.also{state=it}}
}
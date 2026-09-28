package com.bare.apps.task
import android.content.Context
import com.bare.apps.model.AppPart
import java.io.File
data class LocalBackupRecord(val packageName:String,val backupId:String,val date:Long,val parts:Set<AppPart>)
class BackupCatalog(context:Context){
 private val root=File(context.filesDir,"apps-backups").apply{mkdirs()}
 fun create(packageName:String)=File(root,packageName,System.currentTimeMillis().toString()).apply{mkdirs()}
 fun list(packageName:String):List<LocalBackupRecord>{
  return File(root,packageName).listFiles()?.filter{it.isDirectory}.mapNotNull{dir->val parts=dir.listFiles()?.mapNotNull{f->runCatching{if(f.name=="base.apk")AppPart.APP else AppPart.valueOf(f.name.substringBefore(".").uppercase())}.getOrNull()}.orEmpty().toSet();LocalBackupRecord(packageName,dir.name,dir.name.toLongOrNull()?:0,parts)}?.sortedByDescending{it.date}.orEmpty()
 }
 fun latest(packageName:String)=list(packageName).firstOrNull()
}
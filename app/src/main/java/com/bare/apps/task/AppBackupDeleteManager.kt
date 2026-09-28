package com.bare.apps.task
import android.content.Context
import com.bare.apps.model.AppPart
import java.io.File

data class DeleteResult(val success:Boolean,val deletedParts:Set<AppPart>,val message:String)

class AppBackupDeleteManager(private val context:Context){
 private val catalog=BackupCatalog(context)
 fun delete(packageName:String,backupId:String,parts:Set<AppPart>):DeleteResult{
  val record=catalog.list(packageName).firstOrNull{it.backupId==backupId}?:return DeleteResult(false,emptySet(),"Backup not found")
  val root=File(context.filesDir,"apps-backups").resolve(packageName).resolve(record.backupId)
  val deleted=linkedSetOf<AppPart>()
  parts.forEach{part->
   val file=if(part==AppPart.APP)File(root,"base.apk") else File(root,part.id.lowercase()+".zip")
   if(file.exists()&&file.delete())deleted+=part
   else if(!file.exists()){}
   else return DeleteResult(false,deleted,"Failed to delete "+part.id)
  }
  val remaining=root.listFiles()?.filter{it.name!="metadata.properties"}?.isNotEmpty()==true
  if(!remaining)root.deleteRecursively()
  val packageDir=File(context.filesDir,"apps-backups").resolve(packageName)
  if(packageDir.exists()&&packageDir.listFiles().isNullOrEmpty())packageDir.delete()
  return DeleteResult(true,deleted,"Backup artifacts deleted")
 }
}

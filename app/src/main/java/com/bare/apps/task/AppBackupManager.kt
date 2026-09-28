package com.bare.apps.task
import android.content.Context
import com.bare.apps.domain.AppsCapability
import com.bare.apps.model.*
import com.bare.apps.settings.AppBackupLimitsStore
import java.io.File

class AppBackupManager(private val context:Context){
 private val root=File(context.filesDir,"apps-backups").apply{mkdirs()}
 private val catalog=BackupCatalog(context)
 private val limits=AppBackupLimitsStore(context)

 fun backup(request:BackupRequest,onProgress:(Long)->Unit={}):LocalMetadata{
  require(request.locations.all{it==BackupLocation.LOCAL}){"Cloud backup transport is not configured in Apps2"}
  val app=request.app
  request.parts.forEach{part->
   require(AppsCapability.isPossible(part)){"Capability unavailable for "+part.id}
   val source=sourceFor(app,part)
   val estimated=source?.let(::sizeOf)?:0L
   require(!limits.exceeds(part,estimated,false)){"Backup limit exceeded for "+part.id}
  }
  val backupDir=catalog.create(app.packageName)
  val metadata=app.localMetadata?:LocalMetadata(app.packageName,app.name,app.versionCode,app.versionName.orEmpty(),app.installerPackage)
  metadata.dateBackup=System.currentTimeMillis()
  metadata.dateBackupUpdated=metadata.dateBackup
  request.parts.forEach{part->
   val source=sourceFor(app,part)?:return@forEach
   val target=if(part==AppPart.APP)File(backupDir,"base.apk") else File(backupDir,part.id.lowercase()+".zip")
   target.parentFile?.mkdirs()
   if(source.exists()){
    if(part==AppPart.APP){
     source.inputStream().use{input->target.outputStream().use{output->input.copyTo(output)}}
     onProgress(target.length())
    }else ArchiveEngine.pack(source,target,onProgress)
    metadata.updatePart(part,target.length())
   }
  }
  metadata.specialData=AppSpecialDataPayload()
  saveMetadata(metadata,backupDir)
  app.localMetadata=metadata
  return metadata
 }

 private fun sourceFor(app:CanonicalApp,part:AppPart):File?=when(part){
  AppPart.APP->app.sourceDir?.let(::File)
  AppPart.SPLITS->app.splitSourceDirs.firstOrNull()?.let(::File)
  AppPart.SHARED_LIBS->app.sharedLibSourceDirs.firstOrNull()?.let(::File)
  AppPart.DATA->app.dataDir?.let(::File)
  AppPart.EXTDATA->app.externalDataDir?.let(::File)
  AppPart.EXPANSION->app.expansionDir?.let(::File)
  AppPart.MEDIA->app.mediaDir?.let(::File)
 }

 private fun sizeOf(file:File):Long=if(file.isFile)file.length() else file.walkTopDown().filter{it.isFile}.sumOf{it.length()}

 fun artifact(app:CanonicalApp,part:AppPart,backupId:String?=null):File?{
  val record=backupId?.let{id->catalog.list(app.packageName).firstOrNull{it.backupId==id}}?:catalog.latest(app.packageName)?:return null
  val dir=File(root,app.packageName).resolve(record.backupId)
  return if(part==AppPart.APP)File(dir,"base.apk").takeIf{it.exists()} else File(dir,part.id.lowercase()+".zip").takeIf{it.exists()}
 }

 private fun saveMetadata(m:LocalMetadata,backupDir:File){
  val f=File(backupDir,"metadata.properties")
  f.parentFile?.mkdirs()
  f.writeText(
   "packageName="+m.packageName+"\n"+
   "name="+m.name+"\n"+
   "versionCode="+m.versionCode+"\n"+
   "versionName="+m.versionName+"\n"+
   "dateBackup="+(m.dateBackup?:0)+"\n"+
   "parts="+m.backupParts.joinToString(","){it.id}
  )
 }
}

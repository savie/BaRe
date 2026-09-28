package com.bare.apps.task
import android.content.Context
import com.bare.apps.model.*
import java.io.File
class AppBackupManager(private val context:Context){
 private val root=File(context.filesDir,"apps-backups").apply{mkdirs()}
 private val catalog=BackupCatalog(context)
 fun backup(request:BackupRequest,onProgress:(Long)->Unit={}):LocalMetadata{
  val app=request.app;val backupDir=catalog.create(app.packageName);val metadata=app.localMetadata?:LocalMetadata(app.packageName,app.name,app.versionCode,app.versionName.orEmpty(),app.installerPackage)
  metadata.dateBackup=System.currentTimeMillis();metadata.dateBackupUpdated=metadata.dateBackup
  request.parts.forEach{part->
   val source=sourceFor(app,part)?:return@forEach
   val target=if(part==AppPart.APP)File(backupDir,"base.apk") else File(backupDir,part.id.lowercase()+".zip")
   target.parentFile?.mkdirs()
   if(source.exists()){
    if(part==AppPart.APP){source.inputStream().use{input->target.outputStream().use{output->input.copyTo(output)}};onProgress(target.length())}
    else ArchiveEngine.pack(source,target,onProgress)
    metadata.updatePart(part,target.length())
   }
  }
  metadata.specialData=AppSpecialDataPayload();saveMetadata(metadata);app.localMetadata=metadata;return metadata
 }
 private fun sourceFor(app:CanonicalApp,part:AppPart):File?=when(part){
  AppPart.APP->app.sourceDir?.let(::File);AppPart.DATA->app.dataDir?.let(::File);AppPart.EXTDATA->app.externalDataDir?.let(::File);AppPart.EXPANSION->app.expansionDir?.let(::File);AppPart.MEDIA->app.mediaDir?.let(::File);else->null
 }
 fun artifact(app:CanonicalApp,part:AppPart):File?{val dir=catalog.latest(app.packageName)?.let{File(root,app.packageName,it.backupId)}?:return null;return if(part==AppPart.APP)File(dir,"base.apk").takeIf{it.exists()} else File(dir,part.id.lowercase()+".zip").takeIf{it.exists()}}
 private fun saveMetadata(m:LocalMetadata){val dir=catalog.latest(m.packageName)?.let{File(root,m.packageName,it.backupId)}?:return;val f=File(dir,"metadata.properties");f.parentFile?.mkdirs();f.writeText("packageName="+m.packageName+"\nname="+m.name+"\nversionCode="+m.versionCode+"\nversionName="+m.versionName+"\ndateBackup="+(m.dateBackup?:0)+"\nparts="+m.backupParts.joinToString(","){it.id})}
}
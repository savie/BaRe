package com.bare.apps.task
import android.content.Context
import com.bare.apps.domain.RestorePreconditions
import com.bare.apps.model.*
import java.io.File
class AppRestoreManager(private val context:Context){
 private val backup=AppBackupManager(context)
 private val privileged=PrivilegedCommandExecutor(context)
 fun restore(request:RestoreRequest,onProgress:(Long)->Unit={}):RestoreResult{
  val pre=RestorePreconditions.check(request);if(!pre.allowed)return RestoreResult(false,pre.reason?:"Restore precondition failed")
  val app=request.app
  if(request.parts.any{it!=AppPart.APP}&&!app.installed)return RestoreResult(false,"App is not installed; data restore skipped.")
  request.parts.forEach{part->
   val artifact=backup.artifact(app,part,request.localBackupId)?:return RestoreResult(false,"Backup artifact missing: "+part.id)
   when(part){
    AppPart.APP->{if(!InstallerSourceProxy(context).install(artifact,app.packageName))return RestoreResult(false,"APK installation failed")}
    AppPart.DATA->{if(!restoreDirectoryArchive(artifact,app.dataDir,app.deDataDir,onProgress))return RestoreResult(false,"DATA restore failed")}
    AppPart.EXTDATA->{if(!restoreDirectoryArchive(artifact,app.externalDataDir,null,onProgress))return RestoreResult(false,"EXTDATA restore failed")}
    AppPart.EXPANSION->{if(!restoreDirectoryArchive(artifact,app.expansionDir,null,onProgress))return RestoreResult(false,"EXPANSION restore failed")}
    AppPart.MEDIA->{if(!restoreDirectoryArchive(artifact,app.mediaDir,null,onProgress))return RestoreResult(false,"MEDIA restore failed")}
    AppPart.SPLITS,AppPart.SHARED_LIBS->{ArchiveEngine.unpack(artifact,AppsWorkingDir(context).app(app.packageName),onProgress)}
   }
  }
  return RestoreResult(true,"Restore task completed")
 }
 private fun restoreDirectoryArchive(archive:File,targetPath:String?,deTarget:String?,onProgress:(Long)->Unit):Boolean{
  val target=targetPath?.let(::File)?:return false
  val working=AppsWorkingDir(context).app("restore-"+System.nanoTime())
  return runCatching{
   ArchiveEngine.unpack(archive,working,onProgress)
   val payload=File(working,"payload")
   if(!payload.exists())return@runCatching false
   if(privileged.run("mkdir -p '"+target.absolutePath+"' && cp -a '"+payload.absolutePath+"/.' '"+target.absolutePath+"/'").code!=0)return@runCatching false
   if(deTarget!=null){
    val de=File(deTarget);val deSource=File(working,"payload_de")
    if(deSource.exists()&&privileged.run("mkdir -p '"+de.absolutePath+"' && cp -a '"+deSource.absolutePath+"/.' '"+de.absolutePath+"/'").code!=0)return@runCatching false
   }
   true
  }.getOrDefault(false).also{working.deleteRecursively()}
 }
}
data class RestoreResult(val success:Boolean,val message:String)

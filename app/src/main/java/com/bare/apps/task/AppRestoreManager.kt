package com.bare.apps.task
import android.content.Context
import com.bare.apps.model.*
import com.bare.apps.domain.RestorePreconditions
import java.io.File
class AppRestoreManager(private val context:Context){
 private val backup=AppBackupManager(context)
 fun restore(request:RestoreRequest,onProgress:(Long)->Unit={}):RestoreResult{
  val pre=RestorePreconditions.check(request);if(!pre.allowed)return RestoreResult(false,pre.reason?:"Restore precondition failed")
  val app=request.app
  if(request.parts.any{it!=AppPart.APP}&&!app.installed)return RestoreResult(false,"App is not installed; data restore skipped.")
  request.parts.forEach{part->
   val artifact=backup.artifact(app,part)?:return RestoreResult(false,"Backup artifact missing: "+part.id)
   when(part){
    AppPart.APP->{if(!InstallerSourceProxy(context).install(artifact,app.packageName))return RestoreResult(false,"APK installation failed")}
    AppPart.DATA,AppPart.EXTDATA,AppPart.EXPANSION,AppPart.MEDIA->{val target=target(app,part)?:return RestoreResult(false,"Restore target unavailable: "+part.id);ArchiveEngine.unpack(artifact,target,onProgress)}
    else->ArchiveEngine.unpack(artifact,AppsWorkingDir(context).app(app.packageName),onProgress)
   }
  }
  return RestoreResult(true,"Restore task completed")
 }
 private fun target(app:CanonicalApp,part:AppPart)=when(part){AppPart.DATA->app.dataDir;AppPart.EXTDATA->app.externalDataDir;AppPart.EXPANSION->app.expansionDir;AppPart.MEDIA->app.mediaDir;else->null}?.let(::File)
}
data class RestoreResult(val success:Boolean,val message:String)
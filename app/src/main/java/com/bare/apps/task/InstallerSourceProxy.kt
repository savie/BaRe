package com.bare.apps.task
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInstaller
import android.os.Build
import java.io.File

class InstallerSourceProxy(private val context:Context){
 fun install(apk:File,packageName:String):Boolean{
  if(!apk.exists()||apk.length()<=0L)return false
  val installer=context.packageManager.packageInstaller
  val params=PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL).apply{
   setAppPackageName(packageName)
   if(Build.VERSION.SDK_INT>=31)setRequireUserAction(PackageInstaller.SessionParams.USER_ACTION_NOT_REQUIRED)
   if(Build.VERSION.SDK_INT>=31)setInstallReason(android.content.pm.PackageManager.INSTALL_REASON_USER)
   if(Build.VERSION.SDK_INT>=31)runCatching{setInstallerPackageName(context.packageName)}
   if(Build.VERSION.SDK_INT>=31)runCatching{setPackageSource(PackageInstaller.SessionParams.PACKAGE_SOURCE_LOCAL)}
   setSize(apk.length())
  }
  val id=runCatching{installer.createSession(params)}.getOrElse{return false}
  val session=runCatching{installer.openSession(id)}.getOrElse{installer.abandonSession(id);return false}
  return try{
   session.openWrite("base.apk",0,apk.length()).use{out->apk.inputStream().use{it.copyTo(out)};out.fsync()}
   val intent=Intent(context,InstallResultReceiver::class.java).setPackage(context.packageName)
   val pi=PendingIntent.getBroadcast(context,id,intent,PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE)
   session.commit(pi.intentSender)
   waitForInstall(packageName,120_000L)
  }catch(_:Exception){runCatching{session.abandon()};false}finally{session.close()}
 }
 private fun waitForInstall(packageName:String,timeoutMs:Long):Boolean{
  val deadline=System.currentTimeMillis()+timeoutMs
  while(System.currentTimeMillis()<deadline){
   val installed=runCatching{context.packageManager.getPackageInfo(packageName,0)}.getOrNull()
   if(installed!=null){
    val source=if(Build.VERSION.SDK_INT>=30)runCatching{context.packageManager.getInstallSourceInfo(packageName).initiatingPackageName}.getOrNull() else runCatching{context.packageManager.getInstallerPackageName(packageName)}.getOrNull()
    if(source==null||source==context.packageName)return true
   }
   Thread.sleep(250L)
  }
  return false
 }
}

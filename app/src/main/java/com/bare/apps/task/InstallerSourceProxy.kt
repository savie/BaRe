package com.bare.apps.task
import android.app.PendingIntent
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInstaller
import android.os.Build
import java.io.File
class InstallerSourceProxy(private val context:Context){
 fun install(apk:File,packageName:String):Boolean{
  val installer=context.packageManager.packageInstaller
  val params=PackageInstaller.SessionParams(PackageInstaller.SessionParams.MODE_FULL_INSTALL).apply{setAppPackageName(packageName);if(Build.VERSION.SDK_INT>=31)setRequireUserAction(PackageInstaller.SessionParams.USER_ACTION_NOT_REQUIRED)}
  val id=installer.createSession(params);val session=installer.openSession(id)
  return try{session.openWrite("base.apk",0,apk.length()).use{out->apk.inputStream().use{it.copyTo(out)};out.fsync()};val intent=Intent(context,InstallResultReceiver::class.java).setPackage(context.packageName);val pi=PendingIntent.getBroadcast(context,id,intent,PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_MUTABLE);session.commit(pi.intentSender);true}catch(e:Exception){session.abandon();false}finally{session.close()}
 }
}
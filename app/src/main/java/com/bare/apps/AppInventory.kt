package com.bare.apps

import android.content.Context
import android.content.pm.ApplicationInfo
import android.content.pm.PackageManager
import android.os.Build

object AppInventory {
 fun load(context:Context,showSystemApps:Boolean):List<AppItem>{
  val pm=context.packageManager
  val packages=if(Build.VERSION.SDK_INT>=33) pm.getInstalledPackages(PackageManager.PackageInfoFlags.of(0)) else @Suppress("DEPRECATION") pm.getInstalledPackages(0)
  return packages.asSequence().mapNotNull{info->
   val app=info.applicationInfo?:return@mapNotNull null
   val system=(app.flags and ApplicationInfo.FLAG_SYSTEM)!=0
   if(!showSystemApps&&system)return@mapNotNull null
   val label=runCatching{pm.getApplicationLabel(app).toString()}.getOrDefault(info.packageName)
   val code=if(Build.VERSION.SDK_INT>=28)info.longVersionCode else @Suppress("DEPRECATION") info.versionCode.toLong()
   AppItem(info.packageName,label,info.versionName,code,info.firstInstallTime,info.lastUpdateTime,system,app.enabled,pm.getLaunchIntentForPackage(info.packageName)!=null)
  }.sortedWith(compareBy(String.CASE_INSENSITIVE_ORDER){it.label}).toList()
 }
}
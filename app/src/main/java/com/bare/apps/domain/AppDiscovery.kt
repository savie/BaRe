package com.bare.apps.domain

import android.content.Context
import android.content.pm.ApplicationInfo
import android.os.Build
import com.bare.apps.model.AppSize
import com.bare.apps.model.CanonicalApp

object AppDiscovery {
 fun installed(context:Context,showSystemApps:Boolean):List<CanonicalApp>{
  val pm=context.packageManager
  val packages=if(Build.VERSION.SDK_INT>=33)pm.getInstalledPackages(android.content.pm.PackageManager.PackageInfoFlags.of(0)) else @Suppress("DEPRECATION") pm.getInstalledPackages(0)
  return packages.asSequence().mapNotNull{info->
   val ai=info.applicationInfo?:return@mapNotNull null
   val system=(ai.flags and ApplicationInfo.FLAG_SYSTEM)!=0
   if(!showSystemApps&&system)return@mapNotNull null
   val label=runCatching{pm.getApplicationLabel(ai).toString()}.getOrDefault(info.packageName)
   val code=if(Build.VERSION.SDK_INT>=28)info.longVersionCode else @Suppress("DEPRECATION") info.versionCode.toLong()
   CanonicalApp(info.packageName,label,info.packageName,info.versionName,code,info.firstInstallTime,info.lastUpdateTime,true,system,ai.enabled,pm.getLaunchIntentForPackage(info.packageName)!=null,false,false,false,installerPackage=if(Build.VERSION.SDK_INT>=30)info.installSourceInfo.initiatingPackageName else null,size=AppSize(),sourceDir=ai.sourceDir,dataDir="/data/user/0/"+info.packageName,deDataDir="/data/user_de/0/"+info.packageName,externalDataDir="/sdcard/Android/data/"+info.packageName,mediaDir="/sdcard/Android/media/"+info.packageName,expansionDir="/sdcard/Android/obb/"+info.packageName)
  }.sortedWith(compareBy(String.CASE_INSENSITIVE_ORDER){it.name}).toList()
 }
}
package com.bare.apps.domain

import java.io.File

import android.content.Context
import android.content.pm.ApplicationInfo
import android.os.Build
import com.bare.apps.labels.LabelsData
import com.bare.apps.model.AppSize
import com.bare.apps.model.CanonicalApp
import com.bare.apps.repository.LocalMetadataStore

object AppDiscovery{
 fun installed(context:Context,showSystemApps:Boolean):List<CanonicalApp>{
  val pm=context.packageManager
  val metadataStore=LocalMetadataStore(context)
  val favoriteStore=AppFavoriteStore(context)
  val labels=LabelsData(context)
  val packages=if(Build.VERSION.SDK_INT>=33)pm.getInstalledPackages(android.content.pm.PackageManager.PackageInfoFlags.of(0)) else @Suppress("DEPRECATION") pm.getInstalledPackages(0)
  return packages.asSequence().mapNotNull{info->
   val ai=info.applicationInfo?:return@mapNotNull null
   val system=(ai.flags and ApplicationInfo.FLAG_SYSTEM)!=0
   if(!showSystemApps&&system)return@mapNotNull null
   val label=runCatching{pm.getApplicationLabel(ai).toString()}.getOrDefault(info.packageName)
   val code=if(Build.VERSION.SDK_INT>=28)info.longVersionCode else @Suppress("DEPRECATION") info.versionCode.toLong()
   val splits=ai.splitSourceDirs?.toList().orEmpty()
   val sharedLibs=runCatching { ai.sharedLibraryFiles?.toList().orEmpty() }.getOrDefault(emptyList())
   val size=runCatching { AppSize(
    apk=ai.sourceDir?.let(::File)?.length() ?: 0L,
    splits=splits.sumOf { File(it).length() },
    sharedLibs=sharedLibs.sumOf { File(it).length() }
   ) }.getOrDefault(AppSize())
   CanonicalApp(
    packageName=info.packageName,name=label,appId=info.packageName,versionName=info.versionName,versionCode=code,
    firstInstallTime=info.firstInstallTime,lastUpdateTime=info.lastUpdateTime,installed=true,bundled=system,
    enabled=ai.enabled,launchable=pm.getLaunchIntentForPackage(info.packageName)!=null,
    favorite=favoriteStore.isFavorite(info.packageName),cloudApp=false,
    installerPackage=if(Build.VERSION.SDK_INT>=30)info.installSourceInfo.initiatingPackageName else null,
    labels=labels.labelsFor(info.packageName).toMutableSet(),size=size,
    localMetadata=metadataStore.load(info.packageName),localBackupCount=metadataStore.backupCount(info.packageName),sourceDir=ai.sourceDir,
    dataDir="/data/user/0/"+info.packageName,deDataDir="/data/user_de/0/"+info.packageName,
    externalDataDir="/sdcard/Android/data/"+info.packageName,mediaDir="/sdcard/Android/media/"+info.packageName,
    expansionDir="/sdcard/Android/obb/"+info.packageName,splitSourceDirs=ai.splitSourceDirs?.toList().orEmpty()
   )
  }.sortedWith(compareBy(String.CASE_INSENSITIVE_ORDER){it.name}).toList()
 }
}

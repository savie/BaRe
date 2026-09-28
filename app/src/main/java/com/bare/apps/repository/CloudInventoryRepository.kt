package com.bare.apps.repository

import com.bare.apps.model.AppCloudBackup
import com.bare.apps.model.AppCloudBackups
import com.bare.apps.model.CanonicalApp

sealed class CloudInventoryResult{
 data object Loading:CloudInventoryResult()
 data class Success(val apps:List<CanonicalApp>):CloudInventoryResult()
 data object Empty:CloudInventoryResult()
 data object DriveNotConnected:CloudInventoryResult()
 data object NetworkError:CloudInventoryResult()
 data class CloudError(val message:String):CloudInventoryResult()
}

interface CloudInventoryProvider{
 fun load():CloudInventoryResult
}

object CloudInventoryMapper{
 fun map(backups:List<AppCloudBackup>):List<CanonicalApp>{
  return backups
   .filter{it.isValid}
   .groupBy{it.metadata.packageName}
   .mapNotNull{(packageName,records)->
    val ordered=records.sortedByDescending{it.dateBackedUpOrUpdated}
    val latest=ordered.firstOrNull()?:return@mapNotNull null
    val metadata=latest.metadata
    CanonicalApp(
     packageName=packageName,
     name=metadata.name.ifBlank{packageName},
     appId=packageName,
     versionName=metadata.versionName,
     versionCode=metadata.versionCode,
     installed=false,
     bundled=false,
     enabled=false,
     launchable=false,
     favorite=false,
     cloudApp=true,
     cloudBackups=AppCloudBackups(ordered)
    )
   }
   .sortedWith(compareBy(String.CASE_INSENSITIVE_ORDER){it.name})
 }

 fun map(collections:List<AppCloudBackups>):List<CanonicalApp> =
  map(collections.flatMap{it.backups})
}
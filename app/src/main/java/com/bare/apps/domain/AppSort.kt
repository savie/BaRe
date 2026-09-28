package com.bare.apps.domain

import android.content.Context
import com.bare.apps.model.CanonicalApp

enum class AppSortMode { Name, InstallDate, UpdateDate, BackupDate, AppSize, BackupSize, DateUsed }

class AppSortState(context:Context){
 private val prefs=context.getSharedPreferences("bare_apps",Context.MODE_PRIVATE)
 var mode:AppSortMode get()=runCatching{AppSortMode.valueOf(prefs.getString("app_sort_mode",AppSortMode.Name.name)!!)}.getOrDefault(AppSortMode.Name) set(v){prefs.edit().putString("app_sort_mode",v.name).apply()}
 var ascending:Boolean get()=prefs.getBoolean("app_sort_ascending",true) set(v){prefs.edit().putBoolean("app_sort_ascending",v).apply()}
 fun apply(apps:List<CanonicalApp>):List<CanonicalApp>{
  val comparator=when(mode){
   AppSortMode.Name->compareBy(String.CASE_INSENSITIVE_ORDER){it.name}
   AppSortMode.InstallDate->compareBy<CanonicalApp>{it.firstInstallTime}
   AppSortMode.UpdateDate->compareBy{it.lastUpdateTime}
   AppSortMode.BackupDate->compareBy{it.localMetadata?.dateBackup?:it.cloudBackups?.latestBackup?.dateBackup?:0L}
   AppSortMode.AppSize->compareBy{it.size.total}
   AppSortMode.BackupSize->compareBy{it.localMetadata?.getTotalSize()?:it.cloudBackups?.totalSize?:0L}
   AppSortMode.DateUsed->compareBy{0L}
  }
  return if(ascending)apps.sortedWith(comparator)else apps.sortedWith(comparator.reversed())
 }
}
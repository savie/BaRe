package com.bare.apps.domain

import android.app.usage.UsageStatsManager
import android.content.Context
import com.bare.apps.model.CanonicalApp

enum class AppSortMode { Name, InstallDate, UpdateDate, BackupDate, AppSize, BackupSize, DateUsed }

class AppSortState(private val context:Context){
 private val prefs=context.getSharedPreferences("bare_apps",Context.MODE_PRIVATE)
 var mode:AppSortMode
  get()=runCatching{AppSortMode.valueOf(prefs.getString("app_sort_mode",AppSortMode.Name.name)!!)}.getOrDefault(AppSortMode.Name)
  set(v){prefs.edit().putString("app_sort_mode",v.name).apply()}
 var ascending:Boolean
  get()=prefs.getBoolean("app_sort_ascending",true)
  set(v){prefs.edit().putBoolean("app_sort_ascending",v).apply()}

 fun apply(apps:List<CanonicalApp>):List<CanonicalApp>{
  val comparator=when(mode){
   AppSortMode.Name->compareBy(String.CASE_INSENSITIVE_ORDER){it.name}
   AppSortMode.InstallDate->compareBy<CanonicalApp>{it.firstInstallTime}
   AppSortMode.UpdateDate->compareBy{it.lastUpdateTime}
   AppSortMode.BackupDate->compareBy{it.localMetadata?.dateBackup?:it.cloudBackups?.latestBackup?.dateBackup?:0L}
   AppSortMode.AppSize->compareBy{it.size.total}
   AppSortMode.BackupSize->compareBy{it.localMetadata?.getTotalSize()?:it.cloudBackups?.totalSize?:0L}
   AppSortMode.DateUsed->{
    val usage=usageLastUsed()
    if(usage==null){
     mode=AppSortMode.Name
     return apps.sortedWith(compareBy(String.CASE_INSENSITIVE_ORDER){it.name})
    }
    compareBy<CanonicalApp>{usage[it.packageName]?:0L}
   }
  }
  return if(ascending)apps.sortedWith(comparator)else apps.sortedWith(comparator.reversed())
 }

 private fun usageLastUsed():Map<String,Long>?{
  val manager=context.getSystemService(Context.USAGE_STATS_SERVICE) as? UsageStatsManager?:return null
  val now=System.currentTimeMillis()
  val stats=runCatching{manager.queryAndAggregateUsageStats(now-30L*24L*60L*60L*1000L,now)}.getOrNull()?:return null
  if(stats.isEmpty())return null
  return stats.mapValues{it.value.lastTimeUsed}
 }
}

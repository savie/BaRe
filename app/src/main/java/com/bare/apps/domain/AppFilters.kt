package com.bare.apps.domain

import android.content.Context
import com.bare.apps.model.CanonicalApp

enum class SystemAppFilter { USER, SYSTEM, ALL }
enum class AppTypeFilter { ALL, INSTALLED, UNINSTALLED, BUNDLED }
enum class BackupFilter { ALL, BACKED_UP, NOT_BACKED_UP }
enum class SyncFilter { ALL, SYNCED, NOT_SYNCED }
enum class InstallFilter { ALL, INSTALLED, NOT_INSTALLED }
enum class EnabledFilter { ALL, ENABLED, DISABLED }
enum class BackupAgeFilter { ALL, LAST_7_DAYS, LAST_30_DAYS, OLDER }

data class AppFilterState(
 var system:SystemAppFilter=SystemAppFilter.USER,
 var type:AppTypeFilter=AppTypeFilter.ALL,
 var backup:BackupFilter=BackupFilter.ALL,
 var sync:SyncFilter=SyncFilter.ALL,
 var install:InstallFilter=InstallFilter.ALL,
 var enabled:EnabledFilter=EnabledFilter.ALL,
 var age:BackupAgeFilter=BackupAgeFilter.ALL,
 var favoriteOnly:Boolean=false,
 var labels:Set<String>=emptySet()
)

class AppFilterStore(context:Context){
 private val prefs=context.getSharedPreferences("bare_apps",Context.MODE_PRIVATE)

 fun load()=AppFilterState(
  system=runCatching{SystemAppFilter.valueOf(prefs.getString("filter_system",SystemAppFilter.USER.name)!!)}.getOrDefault(SystemAppFilter.USER),
  type=runCatching{AppTypeFilter.valueOf(prefs.getString("filter_type",AppTypeFilter.ALL.name)!!)}.getOrDefault(AppTypeFilter.ALL),
  favoriteOnly=prefs.getBoolean("key_filter_favorites",false),
  backup=runCatching{BackupFilter.valueOf(prefs.getString("key_filter_app_backup",BackupFilter.ALL.name)!!)}.getOrDefault(BackupFilter.ALL),
  sync=runCatching{SyncFilter.valueOf(prefs.getString("key_filter_app_synced",SyncFilter.ALL.name)!!)}.getOrDefault(SyncFilter.ALL),
  install=runCatching{InstallFilter.valueOf(prefs.getString("key_filter_app_install",InstallFilter.ALL.name)!!)}.getOrDefault(InstallFilter.ALL),
  enabled=runCatching{EnabledFilter.valueOf(prefs.getString("key_filter_app_enabled",EnabledFilter.ALL.name)!!)}.getOrDefault(EnabledFilter.ALL),
  age=runCatching{BackupAgeFilter.valueOf(prefs.getString("key_filter_app_backup_age",BackupAgeFilter.ALL.name)!!)}.getOrDefault(BackupAgeFilter.ALL)
 )

 fun save(s:AppFilterState){
  prefs.edit()
   .putString("filter_system",s.system.name)
   .putString("filter_type",s.type.name)
   .putBoolean("key_filter_favorites",s.favoriteOnly)
   .putString("key_filter_app_backup",s.backup.name)
   .putString("key_filter_app_synced",s.sync.name)
   .putString("key_filter_app_install",s.install.name)
   .putString("key_filter_app_enabled",s.enabled.name)
   .putString("key_filter_app_backup_age",s.age.name)
   .apply()
 }
}

object AppFilterEngine {
 fun apply(apps:List<CanonicalApp>,cloud:Boolean,state:AppFilterState):List<CanonicalApp>{
  val now=System.currentTimeMillis()
  return apps.filter{a->
   (state.system==SystemAppFilter.ALL||(state.system==SystemAppFilter.SYSTEM&&a.bundled)||(state.system==SystemAppFilter.USER&&!a.bundled)) &&
   (state.type==AppTypeFilter.ALL||(state.type==AppTypeFilter.INSTALLED&&a.installed)||(state.type==AppTypeFilter.UNINSTALLED&&!a.installed)||(state.type==AppTypeFilter.BUNDLED&&a.bundled)) &&
   (state.backup==BackupFilter.ALL||(state.backup==BackupFilter.BACKED_UP&&(a.hasLocalBackup||a.hasCloudBackup))||(state.backup==BackupFilter.NOT_BACKED_UP&&!a.hasLocalBackup&&!a.hasCloudBackup)) &&
   (state.sync==SyncFilter.ALL||(state.sync==SyncFilter.SYNCED&&a.hasCloudBackup)||(state.sync==SyncFilter.NOT_SYNCED&&!a.hasCloudBackup)) &&
   (state.install==InstallFilter.ALL||(state.install==InstallFilter.INSTALLED&&a.installed)||(state.install==InstallFilter.NOT_INSTALLED&&!a.installed)) &&
   (state.enabled==EnabledFilter.ALL||(state.enabled==EnabledFilter.ENABLED&&a.enabled)||(state.enabled==EnabledFilter.DISABLED&&!a.enabled)) &&
   (!state.favoriteOnly||a.favorite) &&
   (state.labels.isEmpty()||state.labels.all{a.labels.contains(it)}) &&
   when(state.age){
    BackupAgeFilter.ALL->true
    BackupAgeFilter.LAST_7_DAYS->(a.localMetadata?.dateBackup?.let{now-it}?:Long.MAX_VALUE)<=7*86400000L
    BackupAgeFilter.LAST_30_DAYS->(a.localMetadata?.dateBackup?.let{now-it}?:Long.MAX_VALUE)<=30*86400000L
    BackupAgeFilter.OLDER->(a.localMetadata?.dateBackup?.let{now-it}?:Long.MIN_VALUE)>30*86400000L
   }
  }
 }
}

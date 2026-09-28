package com.bare.apps.config
import android.content.Context
import com.bare.apps.model.*
class ConfigsData(context:Context){
 private val p=context.getSharedPreferences("bare_app_configs",Context.MODE_PRIVATE)
 fun list():List<Config>=p.getStringSet("ids",emptySet()).mapNotNull{load(it)}.sortedBy{it.name.lowercase()}
 fun load(id:String):Config?{
  val name=p.getString("name_"+id,null)?:return null
  val parts=p.getString("parts_"+id,AppPart.APP.id).split(",").mapNotNull{x->runCatching{AppPart.valueOf(x)}.getOrNull()}.toSet()
  val locations=p.getString("locations_"+id,BackupLocation.LOCAL.name).split(",").mapNotNull{x->runCatching{BackupLocation.valueOf(x)}.getOrNull()}.toSet()
  val settings=ConfigSettings(parts,locations,
   runCatching{SyncOption.valueOf(p.getString("sync_"+id,SyncOption.NONE.name)!!)}.getOrDefault(SyncOption.NONE),
   runCatching{MultipleBackupStrategy.valueOf(p.getString("strategy_"+id,MultipleBackupStrategy.KEEP_ALL.name)!!)}.getOrDefault(MultipleBackupStrategy.KEEP_ALL),
   p.getString("limit_"+id,null)?.toIntOrNull(),p.getInt("compression_"+id,6),p.getBoolean("cache_"+id,false),
   runCatching{RestorePermissionMode.valueOf(p.getString("permission_"+id,RestorePermissionMode.RESTORE.name)!!)}.getOrDefault(RestorePermissionMode.RESTORE),
   p.getBoolean("special_"+id,true),p.getBoolean("ssaid_"+id,false),p.getBoolean("redo_"+id,false),p.getBoolean("enabled_"+id,true))
  return Config(id,name,settings)
 }
 fun save(c:Config){
  val ids=list().map{it.id}.toMutableSet();ids+=c.id
  p.edit().putStringSet("ids",ids).putString("name_"+c.id,c.name)
   .putString("parts_"+c.id,c.settings.parts.joinToString(","){it.id})
   .putString("locations_"+c.id,c.settings.locations.joinToString(","){it.name})
   .putString("sync_"+c.id,c.settings.syncOption.name).putString("strategy_"+c.id,c.settings.multipleBackupStrategy.name)
   .putString("limit_"+c.id,c.settings.backupLimit?.toString()).putInt("compression_"+c.id,c.settings.compressionLevel)
   .putBoolean("cache_"+c.id,c.settings.includeCache).putString("permission_"+c.id,c.settings.restorePermissionMode.name)
   .putBoolean("special_"+c.id,c.settings.restoreSpecialPermissions).putBoolean("ssaid_"+c.id,c.settings.restoreSsaid)
   .putBoolean("redo_"+c.id,c.settings.forceRedo).putBoolean("enabled_"+c.id,c.settings.enabled).apply()
 }
 fun delete(id:String){p.edit().putStringSet("ids",list().map{it.id}.filter{it!=id}.toSet()).remove("name_"+id).apply()}
}

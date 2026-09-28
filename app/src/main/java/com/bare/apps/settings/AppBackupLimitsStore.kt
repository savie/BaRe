package com.bare.apps.settings
import android.content.Context
import com.bare.apps.model.AppPart
class AppBackupLimitsStore(context:Context){
 private val p=context.getSharedPreferences("bare_app_backup_limits",Context.MODE_PRIVATE)
 fun localBytes(part:AppPart):Long=p.getLong("local_"+part.id,0L)
 fun cloudBytes(part:AppPart):Long=p.getLong("cloud_"+part.id,0L)
 fun setLocalMb(part:AppPart,mb:Long){p.edit().putLong("local_"+part.id,mb.coerceAtLeast(0)*1024L*1024L).apply()}
 fun setCloudMb(part:AppPart,mb:Long){p.edit().putLong("cloud_"+part.id,mb.coerceAtLeast(0)*1024L*1024L).apply()}
 fun exceeds(part:AppPart,size:Long,cloud:Boolean=false):Boolean{val limit=if(cloud)cloudBytes(part)else localBytes(part);return limit>0&&size>limit}
}

package com.bare.apps.cloud
import android.content.Context
import com.bare.apps.model.*
interface AppsCloudStore{fun list(packageName:String):AppCloudBackups?;fun put(packageName:String,metadata:CloudMetadata):Boolean;fun delete(packageName:String,backupTag:String):Boolean}
class SupabaseAppsCloudStore(private val context:Context):AppsCloudStore{
 override fun list(packageName:String):AppCloudBackups?=null
 override fun put(packageName:String,metadata:CloudMetadata):Boolean=false
 override fun delete(packageName:String,backupTag:String):Boolean=false
}
package com.bare.apps.cloud
import com.bare.apps.model.CloudMetadata
class CloudSyncCoordinator(private val store:AppsCloudStore){
 fun upload(packageName:String,metadata:CloudMetadata):Boolean{metadata.prepareForUpload();return store.put(packageName,metadata)}
 fun delete(packageName:String,backupTag:String):Boolean{return store.delete(packageName,backupTag)}
}
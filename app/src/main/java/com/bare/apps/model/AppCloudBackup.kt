package com.bare.apps.model

data class AppCloudBackup(val backupTag:String,val metadata:CloudMetadata){
 val dateBackedUpOrUpdated:Long get()=metadata.dateBackupUpdated?:metadata.dateBackup?:0L
 val dateBackup:Long? get()=metadata.dateBackup
 val isValid:Boolean get()=metadata.isValidCloudDetails()
}
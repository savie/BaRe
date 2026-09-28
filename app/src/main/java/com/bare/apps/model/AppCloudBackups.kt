package com.bare.apps.model

data class AppCloudBackups(val backups:List<AppCloudBackup>){
 init{require(backups.isNotEmpty()){"Backups empty!"}}
 val latestBackup:AppCloudBackup get()=backups.maxBy{it.dateBackedUpOrUpdated}
 val totalSize:Long get()=backups.sumOf{it.metadata.getTotalSize()}
 fun hasBackups()=backups.any{it.metadata.hasBackups()}
}
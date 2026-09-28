package com.bare.apps.config
import com.bare.apps.model.*
data class ConfigSettings(
 var parts:Set<AppPart>=setOf(AppPart.APP,AppPart.DATA),
 var locations:Set<BackupLocation>=setOf(BackupLocation.LOCAL),
 var syncOption:SyncOption=SyncOption.NONE,
 var multipleBackupStrategy:MultipleBackupStrategy=MultipleBackupStrategy.KEEP_ALL,
 var backupLimit:Int?=null,
 var compressionLevel:Int=6,
 var includeCache:Boolean=false,
 var restorePermissionMode:RestorePermissionMode=RestorePermissionMode.RESTORE,
 var restoreSpecialPermissions:Boolean=true,
 var restoreSsaid:Boolean=false,
 var forceRedo:Boolean=false,
 var enabled:Boolean=true
)

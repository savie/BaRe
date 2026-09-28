package com.bare.apps.model

enum class RestorePermissionMode { NONE, GRANT, RESTORE }

data class RestoreRequest(
 val app:CanonicalApp,
 val parts:Set<AppPart>,
 val permissionMode:RestorePermissionMode=RestorePermissionMode.RESTORE,
 val restoreSpecialPermissions:Boolean=true,
 val restoreSsaid:Boolean=false,
 val localBackup:LocalMetadata?=app.localMetadata,
 val localBackupId:String?=null,
 val cloudBackup:AppCloudBackup?=app.cloudBackups?.latestBackup,
 val forceRedo:Boolean=false
){init{require(parts.isNotEmpty()){"At least one AppPart is required"}}}

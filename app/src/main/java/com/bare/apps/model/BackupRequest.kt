package com.bare.apps.model

enum class SyncOption { NONE, DEVICE_TO_CLOUD, CLOUD_TO_DEVICE }
enum class MultipleBackupStrategy { KEEP_ALL, REPLACE_LATEST, LIMIT }
data class BackupRequest(
 val app:CanonicalApp,
 val parts:Set<AppPart>,
 val locations:Set<BackupLocation>,
 val syncOption:SyncOption=SyncOption.NONE,
 val backupCache:Boolean=false,
 val compressionLevel:Int=6,
 val multipleBackupStrategy:MultipleBackupStrategy=MultipleBackupStrategy.KEEP_ALL,
 val backupLimit:Int?=null
){init{require(parts.isNotEmpty());require(locations.isNotEmpty())}}
enum class BackupLocation { LOCAL, CLOUD }
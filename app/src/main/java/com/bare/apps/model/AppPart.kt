package com.bare.apps.model

enum class AppPart(val id:String,val requires:BackupRequirement){
 APP("APP",BackupRequirement.NONE),
 DATA("DATA",BackupRequirement.ROOT),
 EXTDATA("EXTDATA",BackupRequirement.ROOT_OR_SHIZUKU),
 EXPANSION("EXPANSION",BackupRequirement.ROOT_OR_SHIZUKU),
 MEDIA("MEDIA",BackupRequirement.NONE),
 SPLITS("SPLITS",BackupRequirement.NONE),
 SHARED_LIBS("SHARED_LIBS",BackupRequirement.NONE)
}
enum class BackupRequirement { NONE, ROOT, ROOT_OR_SHIZUKU }
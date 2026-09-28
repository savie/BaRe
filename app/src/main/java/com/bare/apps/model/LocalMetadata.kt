package com.bare.apps.model

data class LocalMetadata(
 val packageName:String,
 var name:String="",
 var versionCode:Long=0,
 var versionName:String="",
 var installerPackage:String?=null,
 var dateBackup:Long?=null,
 var dateBackupUpdated:Long?=null,
 var apkBackupSize:Long?=null,
 var splitsBackupSize:Long?=null,
 var sharedLibsBackupSize:Long?=null,
 var dataBackupSize:Long?=null,
 var extDataBackupSize:Long?=null,
 var expansionBackupSize:Long?=null,
 var mediaBackupSize:Long?=null,
 var specialData:AppSpecialDataPayload?=null,
 var note:String?=null,
 var protectedBackup:Boolean=false,
 var backupParts:MutableSet<AppPart> = linkedSetOf()
){
 companion object { const val SB_VERSION_CODE_REQUIRED=580L; const val SB_VERSION_NAME_REQUIRED="v5.0.0" }
 fun hasBackups()=backupParts.isNotEmpty()
 fun getTotalSize()=listOf(apkBackupSize,splitsBackupSize,sharedLibsBackupSize,dataBackupSize,extDataBackupSize,expansionBackupSize,mediaBackupSize).sumOf{it?:0L}
 fun updatePart(part:AppPart,size:Long){backupParts+=part;when(part){AppPart.APP->apkBackupSize=size;AppPart.SPLITS->splitsBackupSize=size;AppPart.SHARED_LIBS->sharedLibsBackupSize=size;AppPart.DATA->dataBackupSize=size;AppPart.EXTDATA->extDataBackupSize=size;AppPart.EXPANSION->expansionBackupSize=size;AppPart.MEDIA->mediaBackupSize=size}}
 fun clearPart(part:AppPart){backupParts-=part;when(part){AppPart.APP->apkBackupSize=null;AppPart.SPLITS->splitsBackupSize=null;AppPart.SHARED_LIBS->sharedLibsBackupSize=null;AppPart.DATA->dataBackupSize=null;AppPart.EXTDATA->extDataBackupSize=null;AppPart.EXPANSION->expansionBackupSize=null;AppPart.MEDIA->mediaBackupSize=null}}
 fun getSBVersionCodesRequired():Set<Long>=setOf(SB_VERSION_CODE_REQUIRED)}

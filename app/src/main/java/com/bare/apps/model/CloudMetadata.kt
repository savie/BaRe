package com.bare.apps.model

data class CloudMetadata(
 val packageName:String,
 var name:String="",
 var versionCode:Long=0,
 var versionName:String="",
 var dateBackup:Long?=null,
 var dateBackupUpdated:Long?=null,
 var apkLink:String?=null,
 var splitsLink:String?=null,
 var sharedLibsLink:String?=null,
 var dataLink:String?=null,
 var extDataLink:String?=null,
 var expansionLink:String?=null,
 var mediaLink:String?=null,
 var specialDataLink:String?=null,
 var apkSize:Long=0,
 var splitsSize:Long=0,
 var sharedLibsSize:Long=0,
 var dataSize:Long=0,
 var extDataSize:Long=0,
 var expansionSize:Long=0,
 var mediaSize:Long=0,
 var specialDataSize:Long=0,
 var minSBVersionCodeRequired:Long=0,
 var protectedBackup:Boolean=false,
 var note:String?=null
){
 fun hasBackups()=listOf(apkLink,splitsLink,sharedLibsLink,dataLink,extDataLink,expansionLink,mediaLink).any{!it.isNullOrBlank()}
 fun getTotalSize()=apkSize+splitsSize+sharedLibsSize+dataSize+extDataSize+expansionSize+mediaSize+specialDataSize
 fun getSBVersionCodesRequired()=setOf(minSBVersionCodeRequired).filter{it>0}.ifEmpty{setOf(LocalMetadata.SB_VERSION_CODE_REQUIRED)}
 fun prepareForUpload(){if(hasBackups())minSBVersionCodeRequired=LocalMetadata.SB_VERSION_CODE_REQUIRED}
 fun removePart(part:AppPart){when(part){AppPart.APP->{apkLink=null;apkSize=0};AppPart.SPLITS->{splitsLink=null;splitsSize=0};AppPart.SHARED_LIBS->{sharedLibsLink=null;sharedLibsSize=0};AppPart.DATA->{dataLink=null;dataSize=0};AppPart.EXTDATA->{extDataLink=null;extDataSize=0};AppPart.EXPANSION->{expansionLink=null;expansionSize=0};AppPart.MEDIA->{mediaLink=null;mediaSize=0}}}
 fun removeSpecialDataDetails(){specialDataLink=null;specialDataSize=0}
 fun isValidCloudDetails()=packageName.isNotBlank() && hasBackups()
}
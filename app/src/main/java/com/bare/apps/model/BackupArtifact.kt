package com.bare.apps.model

data class BackupArtifact(
 val part:AppPart,
 val link:String?=null,
 val localPath:String?=null,
 val size:Long=0,
 val archiveFormat:Int=6,
 val encrypted:Boolean=false
)
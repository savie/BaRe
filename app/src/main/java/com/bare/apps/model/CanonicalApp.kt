package com.bare.apps.model

data class CanonicalApp(
 val packageName:String,
 var name:String,
 var appId:String=packageName,
 var versionName:String?=null,
 var versionCode:Long=0,
 var firstInstallTime:Long=0,
 var lastUpdateTime:Long=0,
 var installed:Boolean=true,
 var bundled:Boolean=false,
 var enabled:Boolean=true,
 var launchable:Boolean=false,
 var favorite:Boolean=false,
 var cloudApp:Boolean=false,
 var installerPackage:String?=null,
 var labels:MutableSet<String> = linkedSetOf(),
 var size:AppSize=AppSize(),
 var localMetadata:LocalMetadata?=null,
 var cloudBackups:AppCloudBackups?=null,
 var sourceDir:String?=null,
 var dataDir:String?=null,
 var deDataDir:String?=null,
 var externalDataDir:String?=null,
 var mediaDir:String?=null,
 var expansionDir:String?=null,
 var splitSourceDirs:List<String> = emptyList(),
 var sharedLibSourceDirs:List<String> = emptyList()
){
 val itemId get()=packageName
 val hasLocalBackup get()=localMetadata?.hasBackups()==true
 val hasCloudBackup get()=cloudBackups?.hasBackups()==true
}
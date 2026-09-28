package com.bare.apps.repository
import android.content.Context
import com.bare.apps.model.*
import java.io.File

class LocalMetadataStore(private val context:Context){
 private val root=File(context.filesDir,"apps-backups")
 fun load(packageName:String):LocalMetadata? = load(packageName, null)

 fun load(packageName:String, backupId:String?):LocalMetadata?{
  val f=File(root,packageName)
  val dirs=f.listFiles()?.filter{it.isDirectory}
   ?.let{all->if(backupId!=null) all.filter{it.name==backupId} else all.sortedByDescending{it.name.toLongOrNull()?:0L}}
   .orEmpty()
  if(dirs.isEmpty())return null
  val props=java.util.Properties()
  val meta=File(dirs.first(),"metadata.properties")
  if(!meta.exists())return null
  meta.inputStream().use{props.load(it)}
  val m=LocalMetadata(packageName,props.getProperty("name",""),props.getProperty("versionCode","0").toLongOrNull()?:0,props.getProperty("versionName",""))
  m.dateBackup=props.getProperty("dateBackup")?.toLongOrNull()
  m.dateBackupUpdated=props.getProperty("dateBackupUpdated")?.toLongOrNull()
  m.note=props.getProperty("note")
  m.protectedBackup=props.getProperty("protectedBackup","false").toBoolean()
  m.specialData=AppSpecialDataPayload(
   version=props.getProperty("specialDataVersion","1").toIntOrNull()?:1,
   permissionStatesCsv=props.getProperty("permissionStatesCsv")?.takeIf{it.isNotBlank()},
   ssaid=props.getProperty("ssaid")?.takeIf{it.isNotBlank()},
   ntfAccessComponent=props.getProperty("ntfAccessComponent")?.takeIf{it.isNotBlank()},
   accessibilityComponent=props.getProperty("accessibilityComponent")?.takeIf{it.isNotBlank()},
   notificationPolicyXml=props.getProperty("notificationPolicyXmlB64")?.takeIf{it.isNotBlank()}?.let{runCatching{String(android.util.Base64.decode(it,android.util.Base64.NO_WRAP),Charsets.UTF_8)}.getOrNull()}
  )
  props.getProperty("parts","").split(",").filter{it.isNotBlank()}.forEach{runCatching{m.backupParts+=AppPart.valueOf(it)}}
  return m
 }
 fun save(packageName:String,metadata:LocalMetadata,backupId:String?=null):Boolean{
  val dir=if(backupId!=null)File(root,packageName).resolve(backupId)
   else File(root,packageName).listFiles()?.filter{it.isDirectory}?.maxByOrNull{it.name.toLongOrNull()?:0L}?:return false
  val file=File(dir,"metadata.properties")
  return runCatching{
   file.parentFile?.mkdirs()
   file.writeText(
    "packageName="+metadata.packageName+"\n"+
    "name="+metadata.name+"\n"+
    "versionCode="+metadata.versionCode+"\n"+
    "versionName="+metadata.versionName+"\n"+
    "dateBackup="+(metadata.dateBackup?:0)+"\n"+
    "dateBackupUpdated="+(metadata.dateBackupUpdated?:0)+"\n"+
    "note="+(metadata.note?:"")+"\n"+
    "protectedBackup="+metadata.protectedBackup+"\n"+
   "specialDataVersion="+(metadata.specialData?.version?:1)+"\n"+
   "permissionStatesCsv="+(metadata.specialData?.permissionStatesCsv?:"")+"\n"+
   "ssaid="+(metadata.specialData?.ssaid?:"")+"\n"+
   "ntfAccessComponent="+(metadata.specialData?.ntfAccessComponent?:"")+"\n"+
   "accessibilityComponent="+(metadata.specialData?.accessibilityComponent?:"")+"\n"+
   "notificationPolicyXmlB64="+(metadata.specialData?.notificationPolicyXml?.let{android.util.Base64.encodeToString(it.toByteArray(Charsets.UTF_8),android.util.Base64.NO_WRAP)}?:"")+"\n"+
    "parts="+metadata.backupParts.joinToString(","){it.id}
   )
   true
  }.getOrDefault(false)
 }
}

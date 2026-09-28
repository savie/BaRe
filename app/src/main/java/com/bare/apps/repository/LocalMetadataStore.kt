package com.bare.apps.repository
import android.content.Context
import com.bare.apps.model.*
import java.io.File
class LocalMetadataStore(context:Context){
 private val root=File(context.filesDir,"apps-backups")
 fun load(packageName:String):LocalMetadata?{
  val f=File(root,packageName);val dirs=f.listFiles()?.filter{it.isDirectory}?.sortedByDescending{it.name.toLongOrNull()?:0L}.orEmpty();if(dirs.isEmpty())return null
  val props=java.util.Properties();val meta=File(dirs.first(),"metadata.properties");if(!meta.exists())return null;meta.inputStream().use{props.load(it)}
  val m=LocalMetadata(packageName,props.getProperty("name",""),props.getProperty("versionCode","0").toLongOrNull()?:0,props.getProperty("versionName",""))
  m.dateBackup=props.getProperty("dateBackup")?.toLongOrNull();props.getProperty("parts","").split(",").filter{it.isNotBlank()}.forEach{runCatching{m.backupParts+=AppPart.valueOf(it)}};return m
 }
}
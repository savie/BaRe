package com.bare.apps.specialdata
import android.content.Context
import android.util.Base64
import com.bare.apps.model.AppSpecialDataPayload
import com.github.luben.zstd.Zstd
import java.io.File
import java.nio.charset.StandardCharsets

class AppSpecialDataStore(private val context:Context){
 private fun file(packageName:String)=File(context.filesDir,"apps-special-data/"+packageName+".v1.zst").apply{parentFile?.mkdirs()}
 fun write(packageName:String,payload:AppSpecialDataPayload){
  val raw=listOf(payload.permissionStatesCsv,payload.ssaid,payload.ntfAccessComponent,payload.accessibilityComponent,payload.notificationPolicyXml).joinToString("\u001f"){it.orEmpty()}.toByteArray(StandardCharsets.UTF_8)
  val encoded=Base64.encodeToString(Zstd.compress(raw),Base64.NO_WRAP)
  val target=file(packageName);val tmp=File(target.parentFile,target.name+".tmp");tmp.writeText(encoded);if(!tmp.renameTo(target)){target.delete();tmp.renameTo(target)}
 }
 fun read(packageName:String):AppSpecialDataPayload?=runCatching{
  val raw=Zstd.decompress(Base64.decode(file(packageName).readText(),Base64.DEFAULT),1024*1024).toString(StandardCharsets.UTF_8)
  val p=raw.split("\u001f");AppSpecialDataPayload(p.getOrNull(0)?.ifBlank{null},p.getOrNull(1)?.ifBlank{null},p.getOrNull(2)?.ifBlank{null},p.getOrNull(3)?.ifBlank{null},p.getOrNull(4)?.ifBlank{null})
 }.getOrNull()
}
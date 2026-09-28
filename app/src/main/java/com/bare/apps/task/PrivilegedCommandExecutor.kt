package com.bare.apps.task
import android.content.Context
import com.bare.intro.RootPermissionManager
import rikka.shizuku.Shizuku
import java.lang.reflect.Method
data class CommandResult(val code:Int,val output:String)
class PrivilegedCommandExecutor(private val context:Context){
 fun run(command:String):CommandResult{
  val root=runCatching{ProcessBuilder("su","-c",command).redirectErrorStream(true).start()}.getOrNull()
  if(root!=null){val out=root.inputStream.bufferedReader().readText();val code=root.waitFor();if(code==0)return CommandResult(code,out)}
  if(RootPermissionManager.shizukuAvailable()&&RootPermissionManager.shizukuPermissionGranted())return runShizuku(command)
  return CommandResult(1,"Privileged execution unavailable")
 }
 private fun runShizuku(command:String):CommandResult=runCatching{
  val method:Method=Shizuku::class.java.getDeclaredMethod("newProcess",Array<String>::class.java,Array<String>::class.java,String::class.java)
  method.isAccessible=true
  val process=method.invoke(null,arrayOf("sh","-c",command),null,null) as Process
  val out=process.inputStream.bufferedReader().readText();CommandResult(process.waitFor(),out)
 }.getOrElse{CommandResult(1,it.message?:"Shizuku execution failed")}
}

package com.bare.apps
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.bare.apps.domain.AppDiscovery
class AppInfoActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.app_info_activity)
  val pkg=intent.getStringExtra("package_name")?:return finish()
  val app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==pkg}?:return finish()
  findViewById<TextView>(R.id.app_info_title).text=buildString{
   append(app.name);append("\n\nPackage: ").append(app.packageName)
   append("\nVersion: ").append(app.versionName?:"-").append(" (").append(app.versionCode).append(")")
   append("\nSource: ").append(app.sourceDir?:"-")
   append("\nData: ").append(app.dataDir?:"-")
   append("\nDE-data: ").append(app.deDataDir?:"-")
   append("\nSplits: ").append(if(app.splitSourceDirs.isEmpty())"-" else app.splitSourceDirs.joinToString("\n"))
   append("\nUID: ").append(runCatching{applicationInfo.uid}.getOrDefault(-1))
   append("\nInstaller: ").append(app.installerPackage?:"-")
  }
 }
}

package com.bare.apps.settings
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
class AppVisibilityDiagnosticsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.app_visibility_diagnostics_activity)
  val pm=packageManager
  val packages=runCatching{pm.getInstalledPackages(0)}.getOrElse{emptyList()}
  val own=packageName
  val androidVisible=packages.any{it.packageName=="android"}
  val ctsVisible=packages.any{it.packageName=="com.android.cts.ctsshim"}
  findViewById<TextView>(R.id.visibility_diagnostics_text).text=
   "Raw packages: "+packages.size+"\nOwn package visible: "+packages.any{it.packageName==own}+
   "\nandroid visible: "+androidVisible+"\ncom.android.cts.ctsshim visible: "+ctsVisible+
   "\n\n"+packages.take(50).joinToString("\n"){it.packageName}
 }
}

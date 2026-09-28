package com.bare.apps
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
class RestoreSpecialDataDetailsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(com.bare.R.layout.restore_special_data_details_activity)
  val pkg=intent.getStringExtra("package_name")?:return finish()
  val app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==pkg}?:return finish()
  val meta=app.localMetadata
  val text=buildString{
   append("Package: ").append(app.packageName)
   append("\nRestore special permissions: ").append(true)
   append("\nRestore SSAID: ").append(false)
   append("\nNotification access: ").append(meta?.specialData?.ntfAccessComponent?:"not saved")
   append("\nAccessibility: ").append(meta?.specialData?.accessibilityComponent?:"not saved")
   append("\nSSAID: ").append(meta?.specialData?.ssaid?.takeIf{it.isNotBlank()}?:"not saved")
   append("\nNotification policy: ").append(if(meta?.specialData?.notificationPolicyXml.isNullOrBlank())"not saved" else "saved")
  }
  (findViewById<android.view.ViewGroup>(android.R.id.content)).addView(TextView(this).apply{text=text;padding=24})
 }
}

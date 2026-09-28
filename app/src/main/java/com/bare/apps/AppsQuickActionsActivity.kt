package com.bare.apps
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
class AppsQuickActionsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(com.bare.R.layout.apps_quick_actions_activity)
  bind(com.bare.R.id.apps_quick_backup,"all")
  bind(com.bare.R.id.apps_quick_pending,"pending")
  bind(com.bare.R.id.apps_quick_updated,"updated")
  bind(com.bare.R.id.apps_quick_redo,"redo")
  bind(com.bare.R.id.apps_quick_sync,"sync")
  bind(com.bare.R.id.apps_quick_restore_all,"restore_all")
  bind(com.bare.R.id.apps_quick_restore_missing,"restore_missing")
  bind(com.bare.R.id.apps_quick_restore_newer,"restore_newer")
 }
 private fun bind(id:Int,mode:String){findViewById<android.view.View>(id).setOnClickListener{
  if(mode=="sync"){android.widget.Toast.makeText(this,"Cloud sync transport is not configured in Apps2",android.widget.Toast.LENGTH_SHORT).show();return@setOnClickListener}
  startActivity(Intent(this,AppsBatchActivity::class.java).putExtra("batch_mode",mode))
 }}
}

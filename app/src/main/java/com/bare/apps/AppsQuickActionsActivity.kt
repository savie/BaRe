package com.bare.apps
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
class AppsQuickActionsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.apps_quick_actions_activity);listOf(com.bare.R.id.apps_quick_backup,com.bare.R.id.apps_quick_pending,com.bare.R.id.apps_quick_updated,com.bare.R.id.apps_quick_redo,com.bare.R.id.apps_quick_sync,com.bare.R.id.apps_quick_restore_all,com.bare.R.id.apps_quick_restore_missing,com.bare.R.id.apps_quick_restore_newer).forEach{id->findViewById<android.view.View>(id).setOnClickListener{startActivity(Intent(this,AppsBatchActivity::class.java))}}}
}
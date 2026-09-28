package com.bare.apps
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.bare.apps.config.ConfigsData
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
import com.bare.apps.task.TaskManager
class AppsConfigRunActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.apps_config_run_activity)
  val id=intent.getStringExtra("id")?:intent.getStringExtra("config_id")?:return finish()
  val config=ConfigsData(this).load(id)?:return finish()
  findViewById<TextView>(R.id.apps_config_run_title).text=config.name
  val run=TextView(this).apply{text="Run configuration";setPadding(24,24,24,24)}
  (findViewById<android.view.ViewGroup>(R.id.apps_config_run_title).parent as android.view.ViewGroup).addView(run)
  run.setOnClickListener{execute(config)}
 }
 private fun execute(config:com.bare.apps.config.Config){
  if(!config.isValid()){Toast.makeText(this,"Invalid configuration",Toast.LENGTH_SHORT).show();return}
  var success=0;val apps=AppDiscovery.installed(this,true)
  apps.forEach{app->
   val settings=config.settings
   if(settings.locations.any{it==BackupLocation.CLOUD}){Toast.makeText(this,"Cloud backup transport is not configured in Apps2",Toast.LENGTH_SHORT).show();return}
   val request=BackupRequest(app,settings.parts,settings.locations,settings.syncOption,settings.includeCache,settings.compressionLevel,settings.multipleBackupStrategy,settings.backupLimit)
   if(TaskManager(this).executeBackup(request) is com.bare.apps.task.AppsTaskState.Success)success++
  }
  Toast.makeText(this,"Configuration completed for "+success+" / "+apps.size,Toast.LENGTH_SHORT).show()
 }
}

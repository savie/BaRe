package com.bare.apps
import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
import com.bare.apps.task.TaskManager
class DetailActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.detail_activity);val pkg=intent.getStringExtra("package_name")?:"";val app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==pkg}
  val title=findViewById<TextView>(R.id.detail_title);val info=findViewById<TextView>(R.id.detail_info);val status=findViewById<TextView>(R.id.detail_backup_status)
  title.text=app?.name?:pkg;info.text=listOfNotNull(app?.packageName,app?.versionName?.let{"v$it"},app?.versionCode?.toString()).joinToString(" · ");status.text=app?.localMetadata?.let{"Backed up: "+it.backupParts.joinToString(", "){p->p.id}}?:"No local backup"
  findViewById<TextView>(R.id.detail_restore).setOnClickListener{if(app?.localMetadata!=null){TaskManager(this).executeRestore(RestoreRequest(app,setOf(AppPart.APP),localBackup=app.localMetadata));Toast.makeText(this,"Restore started",Toast.LENGTH_SHORT).show()}else Toast.makeText(this,"No local backup available",Toast.LENGTH_SHORT).show()}
  findViewById<TextView>(R.id.detail_backup).setOnClickListener{if(app!=null){TaskManager(this).executeBackup(BackupRequest(app,setOf(AppPart.APP),setOf(BackupLocation.LOCAL)));Toast.makeText(this,"Backup started",Toast.LENGTH_SHORT).show()}}
  findViewById<TextView>(R.id.detail_protect).setOnClickListener{app?.localMetadata?.let{it.protectedBackup=!it.protectedBackup;Toast.makeText(this,"Backup protection updated",Toast.LENGTH_SHORT).show()}}
  findViewById<TextView>(R.id.detail_note).setOnClickListener{app?.localMetadata?.let{it.note="";Toast.makeText(this,"Backup note updated",Toast.LENGTH_SHORT).show()}}
  findViewById<TextView>(R.id.detail_delete).setOnClickListener{Toast.makeText(this,"Delete backup requires confirmation",Toast.LENGTH_SHORT).show()}
  findViewById<TextView>(R.id.detail_app_info).setOnClickListener{startActivity(Intent(this,AppInfoActivity::class.java).putExtra("package_name",pkg))}
 }
}
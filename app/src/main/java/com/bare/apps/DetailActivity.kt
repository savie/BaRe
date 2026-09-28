package com.bare.apps

import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
import com.bare.apps.task.AppsTaskState
import com.bare.apps.task.BackupCatalog
import com.bare.apps.task.TaskManager

class DetailActivity:AppCompatActivity(){
 private lateinit var app:CanonicalApp
 private lateinit var history:List<com.bare.apps.task.LocalBackupRecord>

 override fun onCreate(s:Bundle?){
  super.onCreate(s)
  setContentView(R.layout.detail_activity)
  val pkg=intent.getStringExtra("package_name")?:return finish()
  val discovered=AppDiscovery.installed(this,true).firstOrNull{it.packageName==pkg}?:return finish()
  app=discovered
  history=BackupCatalog(this).list(pkg)

  findViewById<TextView>(R.id.detail_title).text=app.name
  findViewById<TextView>(R.id.detail_info).text=listOfNotNull(app.packageName,app.versionName?.let{"v$it"},app.versionCode.takeIf{it>0}?.toString()).joinToString(" · ")
  renderHistory()

  findViewById<TextView>(R.id.detail_restore).setOnClickListener{
   val latest=history.firstOrNull()
   if(latest==null){toast("No local backup available");return@setOnClickListener}
   val result=TaskManager(this).executeRestore(RestoreRequest(app,latest.parts,localBackupId=latest.backupId))
   toast(resultMessage(result))
  }

  findViewById<TextView>(R.id.detail_backup).setOnClickListener{
   val result=TaskManager(this).executeBackup(BackupRequest(app,setOf(AppPart.APP),setOf(BackupLocation.LOCAL)))
   toast(resultMessage(result))
   refreshHistory()
  }

  findViewById<TextView>(R.id.detail_protect).setOnClickListener{
   val metadata=app.localMetadata
   if(metadata==null){toast("No local backup available");return@setOnClickListener}
   metadata.protectedBackup=!metadata.protectedBackup
   toast(if(metadata.protectedBackup)"Backup protected" else "Backup unprotected")
  }

  findViewById<TextView>(R.id.detail_note).setOnClickListener{
   app.localMetadata?.let{
    it.note=if(it.note.isNullOrBlank())"Note" else null
    toast(if(it.note==null)"Note cleared" else "Note added")
   }?:toast("No local backup available")
  }

  findViewById<TextView>(R.id.detail_delete).setOnClickListener{
   toast("Backup deletion is not wired to avoid deleting artifacts without a confirmed backup identity.")
  }

  findViewById<TextView>(R.id.detail_app_info).setOnClickListener{
   startActivity(android.content.Intent(this,AppInfoActivity::class.java).putExtra("package_name",pkg))
  }
 }

 private fun refreshHistory(){
  history=BackupCatalog(this).list(app.packageName)
  app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==app.packageName}?:app
  renderHistory()
 }

 private fun renderHistory(){
  val status=findViewById<TextView>(R.id.detail_backup_status)
  val historyView=findViewById<TextView>(R.id.detail_history)
  status.text=if(history.isEmpty())"No local backup" else "Local backups: "+history.size
  historyView.text=if(history.isEmpty())"No backup records." else history.joinToString("\n"){record->
   val parts=record.parts.joinToString(", "){it.id}
   record.backupId+" · "+parts
  }
 }

 private fun resultMessage(result:AppsTaskState)=when(result){
  is AppsTaskState.Success->result.message
  is AppsTaskState.Error->result.message
  AppsTaskState.Cancelled->"Task cancelled"
  is AppsTaskState.Running->"Task running"
  AppsTaskState.Pending->"Task pending"
 }

 private fun toast(message:String)=Toast.makeText(this,message,Toast.LENGTH_SHORT).show()
}

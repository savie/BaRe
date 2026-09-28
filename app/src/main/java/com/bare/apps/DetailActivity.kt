package com.bare.apps

import android.app.AlertDialog
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
import com.bare.apps.repository.LocalMetadataStore
import com.bare.apps.task.*
import com.bare.apps.labels.LabelsData

class DetailActivity:AppCompatActivity(){
 private lateinit var app:CanonicalApp
 private lateinit var history:List<LocalBackupRecord>
 private val metadataStore by lazy{LocalMetadataStore(this)}
 private val deleteManager by lazy{AppBackupDeleteManager(this)}

 override fun onCreate(s:Bundle?){
  super.onCreate(s)
  setContentView(R.layout.detail_activity)
  val pkg=intent.getStringExtra("package_name")?:return finish()
  app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==pkg}?:return finish()
  history=BackupCatalog(this).list(pkg)
  findViewById<TextView>(R.id.detail_title).text=app.name
  findViewById<TextView>(R.id.detail_info).text=listOfNotNull(app.packageName,app.versionName?.let{"v$it"},app.versionCode.takeIf{it>0}?.toString()).joinToString(" · ")
  renderHistory()

  findViewById<TextView>(R.id.detail_restore).setOnClickListener{
   val latest=history.firstOrNull()?:return@setOnClickListener toast("No local backup available")
   val result=TaskManager(this).executeRestore(RestoreRequest(app,latest.parts,localBackupId=latest.backupId))
   toast(resultMessage(result))
  }
  findViewById<TextView>(R.id.detail_backup).setOnClickListener{
   val result=TaskManager(this).executeBackup(BackupRequest(app,setOf(AppPart.APP),setOf(BackupLocation.LOCAL)))
   toast(resultMessage(result));refreshHistory()
  }
  findViewById<TextView>(R.id.detail_protect).setOnClickListener{
   val record=history.firstOrNull()?:return@setOnClickListener toast("No local backup available")
   val metadata=metadataStore.load(app.packageName)?:return@setOnClickListener toast("Backup metadata unavailable")
   metadata.protectedBackup=!metadata.protectedBackup
   metadataStore.save(app.packageName,metadata,record.backupId)
   app.localMetadata=metadata
   toast(if(metadata.protectedBackup)"Backup protected" else "Backup unprotected")
  }
  findViewById<TextView>(R.id.detail_note).setOnClickListener{
   val record=history.firstOrNull()?:return@setOnClickListener toast("No local backup available")
   val metadata=metadataStore.load(app.packageName)?:return@setOnClickListener toast("Backup metadata unavailable")
   metadata.note=if(metadata.note.isNullOrBlank())"Note" else null
   metadataStore.save(app.packageName,metadata,record.backupId)
   app.localMetadata=metadata
   toast(if(metadata.note==null)"Note cleared" else "Note added")
  }
  findViewById<TextView>(R.id.detail_delete).setOnClickListener{
   val record=history.firstOrNull()?:return@setOnClickListener toast("No local backup available")
   val metadata=metadataStore.load(app.packageName)
   if(metadata?.protectedBackup==true){
    AlertDialog.Builder(this).setTitle("Protected backup").setMessage("This backup is protected. Delete it anyway?")
     .setNegativeButton("Cancel",null).setPositiveButton("Delete"){_,_->deleteBackup(record)}.show()
   }else{
    AlertDialog.Builder(this).setTitle("Delete backup").setMessage("Delete the latest local backup?").setNegativeButton("Cancel",null)
     .setPositiveButton("Delete"){_,_->deleteBackup(record)}.show()
   }
  }
  findViewById<TextView>(R.id.detail_app_info).setOnClickListener{
   startActivity(android.content.Intent(this,AppInfoActivity::class.java).putExtra("package_name",pkg))
  }
 }
 private fun deleteBackup(record:LocalBackupRecord){
  val result=deleteManager.delete(app.packageName,record.backupId,record.parts)
  toast(result.message);refreshHistory()
 }
 private fun refreshHistory(){
  history=BackupCatalog(this).list(app.packageName)
  app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==app.packageName}?:app
  renderHistory()
 }
 private fun renderHistory(){
  findViewById<TextView>(R.id.detail_backup_status).text=if(history.isEmpty())"No local backup" else "Local backups: "+history.size
  findViewById<TextView>(R.id.detail_history).text=if(history.isEmpty())"No backup records." else history.joinToString("\n"){record->
   record.backupId+" · "+record.parts.joinToString(", "){it.id}
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

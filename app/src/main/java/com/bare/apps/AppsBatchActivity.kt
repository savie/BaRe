package com.bare.apps

import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.labels.LabelsData
import com.bare.apps.model.*
import com.bare.apps.task.AppBackupDeleteManager
import com.bare.apps.task.BackupCatalog
import com.bare.apps.task.TaskManager
import com.bare.apps.ui.AppSelectionModel

class AppsBatchActivity:AppCompatActivity(){
 private val selection=AppSelectionModel()
 private var allItems=emptyList<CanonicalApp>()
 private var items=emptyList<CanonicalApp>()
 private var mode:String="all"

 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.apps_batch_activity)
  mode=intent.getStringExtra("batch_mode")?:"all"
  allItems=AppDiscovery.installed(this,true);items=applyMode(allItems)
  findViewById<androidx.appcompat.widget.Toolbar>(R.id.apps_batch_toolbar).title=modeTitle()
  val list=findViewById<RecyclerView>(R.id.apps_batch_list)
  list.layoutManager=LinearLayoutManager(this)
  list.adapter=AppBatchAdapter(items,selection){updateCount()}
  findViewById<TextView>(R.id.apps_batch_selected).text="0 / "+items.size
  findViewById<TextView>(R.id.apps_batch_backup).setOnClickListener{executeBackup()}
  findViewById<TextView>(R.id.apps_batch_restore).setOnClickListener{executeRestore()}
 }

 override fun onCreateOptionsMenu(menu:android.view.Menu):Boolean{
  menu.add("Select all").setOnMenuItemClickListener{selection.selectAll(items.map{it.packageName});findViewById<RecyclerView>(R.id.apps_batch_list).adapter?.notifyDataSetChanged();updateCount();true}
  menu.add("Clear selection").setOnMenuItemClickListener{selection.clear();findViewById<RecyclerView>(R.id.apps_batch_list).adapter?.notifyDataSetChanged();updateCount();true}
  menu.add("Delete backups").setOnMenuItemClickListener{deleteBackups();true}
  menu.add("Apply labels").setOnMenuItemClickListener{applyLabels();true}
  menu.add("Enable / Disable").setOnMenuItemClickListener{toggleEnabled();true}
  menu.add("Uninstall").setOnMenuItemClickListener{uninstall();true}
  menu.add("Export apps list").setOnMenuItemClickListener{exportList();true}
  return true
 }

 private fun selectedApps()=items.filter{it.packageName in selection.selectedIds()}
 private fun applyMode(source:List<CanonicalApp>):List<CanonicalApp>=when(mode){
  "pending"->source.filter{!it.hasLocalBackup}
  "updated"->source.filter{it.localMetadata?.dateBackup?.let{b->it.lastUpdateTime>b}==true}
  "redo"->source.filter{it.hasLocalBackup}
  "restore_all"->source.filter{it.hasLocalBackup}
  "restore_newer"->source.filter{it.hasLocalBackup&&it.localMetadata!!.versionCode<it.versionCode}
  else->source
 }
 private fun modeTitle()=when(mode){
  "pending"->"Pending backups";"updated"->"Updated apps";"redo"->"Redo backups";"restore_all"->"Restore apps";"restore_newer"->"Restore newer versions";else->"Batch actions"
 }
 private fun requireSelection():List<CanonicalApp>{
  val selected=selectedApps();if(selected.isEmpty())Toast.makeText(this,R.string.apps_select_first,Toast.LENGTH_SHORT).show();return selected
 }
 private fun executeBackup(){
  val apps=requireSelection();if(apps.isEmpty())return
  var ok=0;apps.forEach{if(TaskManager(this).executeBackup(BackupRequest(it,setOf(AppPart.APP),setOf(BackupLocation.LOCAL))) is com.bare.apps.task.AppsTaskState.Success)ok++}
  Toast.makeText(this,"Backed up "+ok+" / "+apps.size,Toast.LENGTH_SHORT).show()
 }
 private fun executeRestore(){
  val apps=requireSelection();if(apps.isEmpty())return
  var ok=0;apps.forEach{recordOrNull(it)?.let{record->if(TaskManager(this).executeRestore(RestoreRequest(it,record.parts,localBackupId=record.backupId)) is com.bare.apps.task.AppsTaskState.Success)ok++}}
  Toast.makeText(this,"Restore completed for "+ok+" / "+apps.size,Toast.LENGTH_SHORT).show()
 }
 private fun recordOrNull(app:CanonicalApp)=BackupCatalog(this).latest(app.packageName)
 private fun deleteBackups(){
  val apps=requireSelection();if(apps.isEmpty())return
  AlertDialog.Builder(this).setTitle("Delete backups").setMessage("Delete the latest local backup for "+apps.size+" selected apps?")
   .setNegativeButton("Cancel",null).setPositiveButton("Delete"){_,_->
    var ok=0;var protected=0;apps.forEach{recordOrNull(it)?.let{record->val metadata=it.localMetadata;if(metadata?.protectedBackup==true){protected++;return@let};if(AppBackupDeleteManager(this).delete(it.packageName,record.backupId,record.parts).success)ok++}}
    Toast.makeText(this,"Deleted "+ok+" / "+apps.size+"; protected skipped: "+protected,Toast.LENGTH_SHORT).show()
   }.show()
 }
 private fun applyLabels(){
  val apps=requireSelection();if(apps.isEmpty())return
  val labels=LabelsData(this).labels().toList();if(labels.isEmpty()){Toast.makeText(this,"No labels available",Toast.LENGTH_SHORT).show();return}
  val checked=BooleanArray(labels.size)
  AlertDialog.Builder(this).setTitle("Apply labels").setMultiChoiceItems(labels.toTypedArray(),checked){_,which,isChecked->checked[which]=isChecked}
   .setNegativeButton("Cancel",null).setPositiveButton("Set"){_,_->
    val chosen=labels.filterIndexed{index,_->checked[index]}.toSet();apps.forEach{LabelsData(this).setFor(it.packageName,chosen)};Toast.makeText(this,"Labels applied",Toast.LENGTH_SHORT).show()
   }.show()
 }
 private fun toggleEnabled(){
  val apps=requireSelection();if(apps.isEmpty())return
  apps.forEach{runShell("pm "+if(it.enabled)"disable-user --user 0 "+it.packageName else "enable "+it.packageName)}
  Toast.makeText(this,"Enable / disable command sent",Toast.LENGTH_SHORT).show()
 }
 private fun uninstall(){
  val apps=requireSelection();if(apps.isEmpty())return
  AlertDialog.Builder(this).setTitle("Uninstall apps").setMessage("Open uninstall confirmation for "+apps.size+" selected apps?")
   .setNegativeButton("Cancel",null).setPositiveButton("Continue"){_,_->apps.firstOrNull{!it.bundled}?.let{startActivity(Intent(Intent.ACTION_DELETE,android.net.Uri.parse("package:"+it.packageName)))}}.show()
 }
 private fun exportList(){
  val text=items.joinToString("\n"){it.packageName+"\t"+it.name}
  startActivity(Intent.createChooser(Intent(Intent.ACTION_SEND).setType("text/plain").putExtra(Intent.EXTRA_TEXT,text),"Export apps list"))
 }
 private fun runShell(command:String){runCatching{ProcessBuilder("su","-c",command).redirectErrorStream(true).start().waitFor()}}
 private fun updateCount(){findViewById<TextView>(R.id.apps_batch_selected).text=selection.count().toString()+" / "+items.size}
}
private class AppBatchAdapter(private val items:List<CanonicalApp>,private val selection:AppSelectionModel,private val click:()->Unit):RecyclerView.Adapter<AppBatchAdapter.H>(){
 class H(v:android.view.View):RecyclerView.ViewHolder(v)
 override fun onCreateViewHolder(p:android.view.ViewGroup,t:Int)=H(TextView(p.context).apply{setPadding(32,24,32,24)})
 override fun onBindViewHolder(h:H,i:Int){
  val app=items[i];val tv=h.itemView as TextView
  tv.text=(if(selection.isSelected(app.packageName))"✓ " else "")+app.name+"\n"+app.packageName
  h.itemView.setOnClickListener{selection.toggle(app.packageName);click();notifyItemChanged(i)}
 }
 override fun getItemCount()=items.size
}

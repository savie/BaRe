package com.bare.apps
import android.os.Bundle
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
import com.bare.apps.task.TaskManager
import com.bare.apps.ui.AppSelectionModel
class AppsBatchActivity:AppCompatActivity(){
 private val selection=AppSelectionModel()
 private var items=emptyList<CanonicalApp>()
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.apps_batch_activity);items=AppDiscovery.installed(this,false)
  val list=findViewById<RecyclerView>(R.id.apps_batch_list);list.layoutManager=LinearLayoutManager(this);list.adapter=AppBatchAdapter(items){selection.toggle(it.packageName);findViewById<TextView>(R.id.apps_batch_selected).text=selection.count().toString()}
  findViewById<TextView>(R.id.apps_batch_selected).text="0"
  findViewById<TextView>(R.id.apps_batch_backup).setOnClickListener{executeBackup()}
  findViewById<TextView>(R.id.apps_batch_restore).setOnClickListener{executeRestore()}
 }
 private fun selectedApps()=items.filter{it.packageName in selection.selectedIds()}
 private fun executeBackup(){val apps=selectedApps();if(apps.isEmpty()){Toast.makeText(this,R.string.apps_select_first,Toast.LENGTH_SHORT).show();return};apps.forEach{TaskManager(this).executeBackup(BackupRequest(it,setOf(AppPart.APP),setOf(BackupLocation.LOCAL)))};Toast.makeText(this,R.string.backup_all_apps,Toast.LENGTH_SHORT).show()}
 private fun executeRestore(){val apps=selectedApps();if(apps.isEmpty()){Toast.makeText(this,R.string.apps_select_first,Toast.LENGTH_SHORT).show();return};apps.forEach{it.localMetadata?.let{m->TaskManager(this).executeRestore(RestoreRequest(it,setOf(AppPart.APP),localBackup=m))}};Toast.makeText(this,R.string.restore_all_apps,Toast.LENGTH_SHORT).show()}
}
private class AppBatchAdapter(private val items:List<CanonicalApp>,private val click:(CanonicalApp)->Unit):RecyclerView.Adapter<AppBatchAdapter.H>(){
 class H(v:android.view.View):RecyclerView.ViewHolder(v)
 override fun onCreateViewHolder(p:android.view.ViewGroup,t:Int)=H(android.widget.TextView(p.context).apply{setPadding(32,24,32,24)})
 override fun onBindViewHolder(h:H,i:Int){(h.itemView as TextView).text=items[i].name+"\n"+items[i].packageName;h.itemView.setOnClickListener{click(items[i])}}
 override fun getItemCount()=items.size
}
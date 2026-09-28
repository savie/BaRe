package com.bare.apps
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.ui.AppSelectionModel
class AppsBatchActivity:AppCompatActivity(){
 private val selection=AppSelectionModel()
 override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(R.layout.apps_batch_activity);val list=findViewById<RecyclerView>(R.id.apps_batch_list);val items=AppDiscovery.installed(this,false);list.layoutManager=LinearLayoutManager(this);list.adapter=AppBatchAdapter(items){selection.toggle(it.packageName);findViewById<TextView>(R.id.apps_batch_selected).text=selection.count().toString()};findViewById<TextView>(R.id.apps_batch_selected).text="0"}
}
private class AppBatchAdapter(private val items:List<com.bare.apps.model.CanonicalApp>,private val click:(com.bare.apps.model.CanonicalApp)->Unit):RecyclerView.Adapter<AppBatchAdapter.H>(){
 class H(v:android.view.View):RecyclerView.ViewHolder(v)
 override fun onCreateViewHolder(p:android.view.ViewGroup,t:Int)=H(android.widget.TextView(p.context).apply{setPadding(32,24,32,24)})
 override fun onBindViewHolder(h:H,i:Int){(h.itemView as TextView).text=items[i].name+"\n"+items[i].packageName;h.itemView.setOnClickListener{click(items[i])}}
 override fun getItemCount()=items.size
}
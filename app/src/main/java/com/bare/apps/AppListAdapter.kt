package com.bare.apps

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bare.R
import com.bare.apps.model.CanonicalApp

class AppListAdapter(private var items:List<CanonicalApp>,private val onItemClick:(CanonicalApp)->Unit):RecyclerView.Adapter<AppListAdapter.Holder>(){
 class Holder(v:View):RecyclerView.ViewHolder(v){
  val icon:ImageView=v.findViewById(R.id.app_item_icon)
  val title:TextView=v.findViewById(R.id.app_item_title)
  val subtitle:TextView=v.findViewById(R.id.app_item_subtitle)
  val status:TextView=v.findViewById(R.id.app_item_status)
  val menu:View=v.findViewById(R.id.app_item_menu)
 }
 fun submitList(v:List<CanonicalApp>){items=v;notifyDataSetChanged()}
 override fun onCreateViewHolder(p:ViewGroup,t:Int)=Holder(LayoutInflater.from(p.context).inflate(R.layout.app_item,p,false))
 override fun onBindViewHolder(h:Holder,position:Int){
  val x=items[position];val pm=h.itemView.context.packageManager
  h.icon.setImageDrawable(runCatching{pm.getApplicationIcon(x.packageName)}.getOrNull())
  h.title.text=x.name
  h.subtitle.text=x.packageName
  val backup=if(x.hasLocalBackup||x.hasCloudBackup)" · "+h.itemView.context.getString(R.string.apps_backed_up) else ""
  h.status.text=when{!x.enabled->h.itemView.context.getString(R.string.apps_status_disabled);x.bundled->h.itemView.context.getString(R.string.apps_status_system);else->h.itemView.context.getString(R.string.apps_status_installed)}+backup
  h.itemView.setOnClickListener{onItemClick(x)}
  h.menu.setOnClickListener{onItemClick(x)}
 }
 override fun getItemCount()=items.size
}
package com.bare.apps

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import com.bare.R

class AppListAdapter(private var items:List<AppItem>,private val onItemClick:(AppItem)->Unit):RecyclerView.Adapter<AppListAdapter.Holder>(){
 class Holder(v:View):RecyclerView.ViewHolder(v){val icon:ImageView=v.findViewById(R.id.app_item_icon);val title:TextView=v.findViewById(R.id.app_item_title);val subtitle:TextView=v.findViewById(R.id.app_item_subtitle);val status:TextView=v.findViewById(R.id.app_item_status);val menu:View=v.findViewById(R.id.app_item_menu)}
 fun submitList(v:List<AppItem>){items=v;notifyDataSetChanged()}
 override fun onCreateViewHolder(p:ViewGroup,t:Int)=Holder(LayoutInflater.from(p.context).inflate(R.layout.app_item,p,false))
 override fun onBindViewHolder(h:Holder,position:Int){val x=items[position];val pm=h.itemView.context.packageManager;h.icon.setImageDrawable(runCatching{pm.getApplicationIcon(x.packageName)}.getOrNull());h.title.text=x.label;h.subtitle.text=x.packageName;h.status.text=when{!x.enabled->h.itemView.context.getString(R.string.apps_status_disabled);x.systemApp->h.itemView.context.getString(R.string.apps_status_system);else->h.itemView.context.getString(R.string.apps_status_installed)};h.itemView.setOnClickListener{onItemClick(x)};h.menu.setOnClickListener{pm.getLaunchIntentForPackage(x.packageName)?.let{intent->h.itemView.context.startActivity(intent)}}}
 override fun getItemCount()=items.size
}
package com.bare.apps.config
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
class ConfigListActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(com.bare.R.layout.config_list_activity)
  val store=ConfigsData(this);val list=findViewById<ListView>(com.bare.R.id.config_list)
  fun refresh(){list.adapter=ArrayAdapter(this,android.R.layout.simple_list_item_1,store.list().map{it.name})}
  refresh()
  list.setOnItemClickListener{_,_,i,_->startActivity(android.content.Intent(this,ConfigEditActivity::class.java).putExtra("id",store.list()[i].id))}
  list.setOnItemLongClickListener{_,_,i,_->store.delete(store.list()[i].id);refresh();true}
 }
 override fun onCreateOptionsMenu(menu:android.view.Menu):Boolean{menu.add("New configuration").setOnMenuItemClickListener{startActivity(android.content.Intent(this,ConfigEditActivity::class.java));true};return true}
}

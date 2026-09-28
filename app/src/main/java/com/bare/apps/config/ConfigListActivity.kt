package com.bare.apps.config
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.ListView
import androidx.appcompat.app.AppCompatActivity
class ConfigListActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.config_list_activity);val l=findViewById<ListView>(com.bare.R.id.config_list);l.adapter=ArrayAdapter(this,android.R.layout.simple_list_item_1,ConfigsData(this).list().map{it.name});l.setOnItemClickListener{_,_,i,_->startActivity(android.content.Intent(this,ConfigEditActivity::class.java).putExtra("id",ConfigsData(this).list()[i].id))}}}
package com.bare.apps.config
import android.os.Bundle
import android.widget.EditText
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
class ConfigEditActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.config_edit_activity)
  val store=ConfigsData(this);val id=intent.getStringExtra("id")?:System.currentTimeMillis().toString()
  val existing=store.load(id)
  val name=findViewById<EditText>(R.id.config_name);name.setText(existing?.name?:"")
  findViewById<android.view.View>(R.id.config_save).setOnClickListener{
   val value=name.text.toString().trim()
   if(value.isBlank()){name.error="Name required";return@setOnClickListener}
   val duplicate=store.list().any{it.id!=id&&it.name.equals(value,true)}
   if(duplicate){name.error="Configuration name already exists";return@setOnClickListener}
   store.save(existing?.apply{this.name=value}?:Config(id,value))
   startActivity(android.content.Intent(this,ConfigSettingsActivity::class.java).putExtra("id",id))
   finish()
  }
 }
}

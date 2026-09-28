package com.bare.apps.config
import android.os.Bundle
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity
class ConfigEditActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.config_edit_activity);val name=findViewById<EditText>(com.bare.R.id.config_name);findViewById<android.view.View>(com.bare.R.id.config_save).setOnClickListener{if(name.text.isNotBlank())ConfigsData(this).save(Config(intent.getStringExtra("id")?:System.currentTimeMillis().toString(),name.text.toString()));finish()}}}
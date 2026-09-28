package com.bare.apps
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class AppInfoActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.app_info_activity);findViewById<TextView>(com.bare.R.id.app_info_title).text=intent.getStringExtra("package_name")?:"App info"}}
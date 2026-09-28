package com.bare.apps
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class AppsConfigRunActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.apps_config_run_activity);findViewById<TextView>(com.bare.R.id.apps_config_run_title).text="Run configuration"}}
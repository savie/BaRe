package com.bare.apps
import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class AppsQuickActionsActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.apps_quick_actions_activity);findViewById<TextView>(com.bare.R.id.apps_quick_backup).setOnClickListener{startActivity(Intent(this,AppsBatchActivity::class.java))}}}
package com.bare.apps.settings
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class AppVisibilityDiagnosticsActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.app_visibility_diagnostics_activity);findViewById<TextView>(com.bare.R.id.visibility_diagnostics_text).text="Installed app visibility diagnostics"}}
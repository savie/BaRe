package com.bare.apps
import android.content.Intent
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
class DetailActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.detail_activity);val pkg=intent.getStringExtra("package_name")?:"";findViewById<TextView>(com.bare.R.id.detail_title).text=pkg;findViewById<TextView>(com.bare.R.id.detail_info).text="Backup history and AppPart restore controls";findViewById<TextView>(com.bare.R.id.detail_restore).setOnClickListener{finish()};findViewById<TextView>(com.bare.R.id.detail_app_info).setOnClickListener{startActivity(Intent(this,AppInfoActivity::class.java).putExtra("package_name",pkg))}}
}
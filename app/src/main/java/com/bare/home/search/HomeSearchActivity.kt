package com.bare.home.search

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.EditText
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.core.widget.doAfterTextChanged
import com.bare.R
import com.bare.apps.DetailActivity
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.domain.AppSearch

class HomeSearchActivity:AppCompatActivity(){
 private var apps=emptyList<com.bare.apps.model.CanonicalApp>()
 override fun onCreate(state:Bundle?){
  super.onCreate(state);setContentView(R.layout.home_search_activity)
  val toolbar=findViewById<com.google.android.material.appbar.MaterialToolbar>(R.id.search_toolbar);setSupportActionBar(toolbar);supportActionBar?.setDisplayShowTitleEnabled(false);toolbar.setNavigationOnClickListener{finish()}
  val input=findViewById<EditText>(R.id.et_search);val clear=findViewById<View>(R.id.btn_clear);apps=runCatching{AppDiscovery.installed(this,false)}.getOrDefault(emptyList())
  clear.setOnClickListener{input.text.clear()};input.doAfterTextChanged{clear.visibility=if(it.isNullOrEmpty())View.GONE else View.VISIBLE;renderApps(it?.toString().orEmpty())};input.requestFocus();window.setSoftInputMode(android.view.WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE)
 }
 private fun renderApps(query:String){
  val card=findViewById<View>(R.id.apps_card);val container=findViewById<View>(R.id.rv_home_search_apps) as View
  val parent=container as android.view.ViewGroup;parent.removeAllViews();val results=AppSearch.query(query,apps).take(20)
  card.visibility=if(results.isEmpty())View.GONE else View.VISIBLE
  results.forEach{app->parent.addView(TextView(this).apply{text=app.name+"\n"+app.packageName;setPadding(32,24,32,24);setOnClickListener{startActivity(Intent(this@HomeSearchActivity,DetailActivity::class.java).putExtra("package_name",app.packageName))}})}
 }
 override fun onSupportNavigateUp():Boolean{finish();return true}
}
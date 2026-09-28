package com.bare.apps.labels
import android.os.Bundle
import android.widget.ArrayAdapter
import android.widget.ListView
import androidx.appcompat.app.AppCompatActivity
class LabelsActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.labels_activity);val data=LabelsData(this);findViewById<ListView>(com.bare.R.id.labels_list).adapter=ArrayAdapter(this,android.R.layout.simple_list_item_1,data.labels().toList());findViewById<android.view.View>(com.bare.R.id.labels_add).setOnClickListener{startActivity(android.content.Intent(this,LabelEditActivity::class.java))}}}
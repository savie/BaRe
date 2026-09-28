package com.bare.apps.labels
import android.os.Bundle
import android.widget.EditText
import androidx.appcompat.app.AppCompatActivity
class LabelEditActivity:AppCompatActivity(){override fun onCreate(s:Bundle?){super.onCreate(s);setContentView(com.bare.R.layout.label_edit_activity);val input=findViewById<EditText>(com.bare.R.id.label_name);findViewById<android.view.View>(com.bare.R.id.label_save).setOnClickListener{if(input.text.isNotBlank()){LabelsData(this).add(input.text.toString());finish()}}}}
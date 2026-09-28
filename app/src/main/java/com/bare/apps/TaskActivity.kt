package com.bare.apps
import android.os.Bundle
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.bare.R
import com.bare.apps.task.AppsTaskStore
class TaskActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(R.layout.task_activity)
  val store=AppsTaskStore(this)
  findViewById<TextView>(R.id.task_status).text=store.kind()+"\n"+store.message()
 }
}

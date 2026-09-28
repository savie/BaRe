package com.bare.apps.settings
import android.os.Bundle
import android.text.InputType
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.bare.apps.model.AppPart
class AppBackupLimitsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s)
  val store=AppBackupLimitsStore(this)
  val root=LinearLayout(this).apply{orientation=LinearLayout.VERTICAL;padding=24}
  root.addView(TextView(this).apply{text="Backup limits (MB). Zero means unlimited."})
  AppPart.values().forEach{part->
   val row=LinearLayout(this).apply{orientation=LinearLayout.HORIZONTAL}
   row.addView(TextView(this).apply{text=part.id;layoutParams=LinearLayout.LayoutParams(0,LinearLayout.LayoutParams.WRAP_CONTENT,1f)})
   val local=EditText(this).apply{inputType=InputType.TYPE_CLASS_NUMBER;hint="Local";setText((store.localBytes(part)/(1024*1024)).toString())}
   val cloud=EditText(this).apply{inputType=InputType.TYPE_CLASS_NUMBER;hint="Cloud";setText((store.cloudBytes(part)/(1024*1024)).toString())}
   row.addView(local,LinearLayout.LayoutParams(180,LinearLayout.LayoutParams.WRAP_CONTENT));row.addView(cloud,LinearLayout.LayoutParams(180,LinearLayout.LayoutParams.WRAP_CONTENT))
   root.addView(row)
   row.tag=Triple(part,local,cloud)
  }
  root.addView(Button(this).apply{text="Save";setOnClickListener{
   (0 until root.childCount).mapNotNull{root.getChildAt(it).tag as? Triple<*,*,*>}.forEach{triple->
    val part=triple.first as AppPart;val local=triple.second as EditText;val cloud=triple.third as EditText
    store.setLocalMb(part,local.text.toString().toLongOrNull()?:0);store.setCloudMb(part,cloud.text.toString().toLongOrNull()?:0)
   }
   finish()
  }})
  setContentView(root)
 }
}

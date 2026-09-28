package com.bare.apps
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.*
import com.bare.apps.task.BackupCatalog
import com.bare.apps.task.TaskManager
class MultipleBackupsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s);setContentView(com.bare.R.layout.multiple_backups_activity)
  val pkg=intent.getStringExtra("package_name")?:return finish()
  val app=AppDiscovery.installed(this,true).firstOrNull{it.packageName==pkg}?:return finish()
  val records=BackupCatalog(this).list(pkg)
  val list=LinearLayout(this).apply{orientation=LinearLayout.VERTICAL}
  records.forEach{record->
   list.addView(Button(this).apply{
    text=record.backupId+" · "+record.parts.joinToString(","){it.id}
    setOnClickListener{
     val result=TaskManager(this@MultipleBackupsActivity).executeRestore(RestoreRequest(app,record.parts,localBackupId=record.backupId))
     Toast.makeText(this@MultipleBackupsActivity,result.toString(),Toast.LENGTH_SHORT).show()
    }
   })
  }
  (findViewById<android.view.ViewGroup>(android.R.id.content)).addView(list)
 }
}

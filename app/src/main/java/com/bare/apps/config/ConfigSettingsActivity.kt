package com.bare.apps.config
import android.os.Bundle
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.bare.apps.model.*
class ConfigSettingsActivity:AppCompatActivity(){
 override fun onCreate(s:Bundle?){
  super.onCreate(s)
  val id=intent.getStringExtra("id")?:return finish()
  val store=ConfigsData(this);val config=store.load(id)?:return finish()
  val root=LinearLayout(this).apply{orientation=LinearLayout.VERTICAL;padding=24}
  root.addView(TextView(this).apply{text="App parts"})
  AppPart.values().forEach{part->root.addView(CheckBox(this).apply{text=part.id;isChecked=part in config.settings.parts;tag=part})}
  root.addView(TextView(this).apply{text="Backup location"})
  BackupLocation.values().forEach{location->root.addView(CheckBox(this).apply{text=location.name;isChecked=location in config.settings.locations;tag=location})}
  val compression=EditText(this).apply{hint="Compression level";inputType=2;setText(config.settings.compressionLevel.toString())};root.addView(compression)
  val cache=CheckBox(this).apply{text="Backup app cache";isChecked=config.settings.includeCache};root.addView(cache)
  val special=CheckBox(this).apply{text="Restore special permissions";isChecked=config.settings.restoreSpecialPermissions};root.addView(special)
  val ssaid=CheckBox(this).apply{text="Restore SSAID";isChecked=config.settings.restoreSsaid};root.addView(ssaid)
  val redo=CheckBox(this).apply{text="Force redo";isChecked=config.settings.forceRedo};root.addView(redo)
  root.addView(Button(this).apply{text="Save";setOnClickListener{
   val parts=root.children<CheckBox>().filter{it.tag is AppPart&&it.isChecked}.map{it.tag as AppPart}.toSet()
   val locations=root.children<CheckBox>().filter{it.tag is BackupLocation&&it.isChecked}.map{it.tag as BackupLocation}.toSet()
   if(parts.isEmpty()||locations.isEmpty()){Toast.makeText(this,"Select at least one app part and location",Toast.LENGTH_SHORT).show();return@setOnClickListener}
   config.settings.parts=parts;config.settings.locations=locations;config.settings.compressionLevel=compression.text.toString().toIntOrNull()?.coerceIn(0,9)?:6
   config.settings.includeCache=cache.isChecked;config.settings.restoreSpecialPermissions=special.isChecked;config.settings.restoreSsaid=ssaid.isChecked;config.settings.forceRedo=redo.isChecked
   store.save(config);finish()
  }})
  setContentView(root)
 }
 private inline fun <reified T:android.view.View>LinearLayout.children():List<T>{return (0 until childCount).mapNotNull{getChildAt(it) as? T}}
}

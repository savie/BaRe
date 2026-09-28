package com.bare.apps.labels
import android.content.Context
class LabelsData(private val context:Context){
 private val p=context.getSharedPreferences("bare_app_labels",Context.MODE_PRIVATE)
 fun labels():Set<String>=p.getStringSet("labels",emptySet())?.toSet()?:emptySet()
 fun add(label:String){if(label.isBlank())return;p.edit().putStringSet("labels",(labels()+label.trim()).toMutableSet()).apply()}
 fun remove(label:String){
  p.edit().putStringSet("labels",(labels()-label).toMutableSet()).apply()
  p.edit().remove("labelled_"+label).apply()
 }
 fun labelsFor(packageName:String):Set<String>=p.getStringSet("labelled_"+packageName,emptySet())?.toSet()?:emptySet()
 fun setFor(packageName:String,value:Set<String>){
  val valid=value.intersect(labels())
  p.edit().putStringSet("labelled_"+packageName,valid.toMutableSet()).apply()
 }
 fun addTo(packageName:String,value:Set<String>)=setFor(packageName,labelsFor(packageName)+value)
 fun clearFor(packageName:String)=setFor(packageName,emptySet())
 fun packagesFor(label:String):Set<String>{
  return p.all.keys.filter{it.startsWith("labelled_")&&label in (p.getStringSet(it,emptySet())?:emptySet())}.map{it.removePrefix("labelled_")}.toSet()
 }
}

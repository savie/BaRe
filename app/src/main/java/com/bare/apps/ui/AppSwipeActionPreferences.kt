package com.bare.apps.ui
import android.content.Context
class AppSwipeActionPreferences(context:Context){
 private val p=context.getSharedPreferences("bare_app_swipe_actions",Context.MODE_PRIVATE)
 fun right():List<AppActionId>=read("app_list_right_swipe_actions",listOf(AppActionId.LAUNCH))
 fun left():List<AppActionId>=read("app_list_left_swipe_actions",listOf(AppActionId.UNINSTALL))
 fun setRight(actions:List<AppActionId>){write("app_list_right_swipe_actions",actions)}
 fun setLeft(actions:List<AppActionId>){write("app_list_left_swipe_actions",actions)}
 private fun read(key:String,defaults:List<AppActionId>):List<AppActionId>{
  val raw=p.getString(key,null)?:return defaults
  return raw.split(",").mapNotNull{runCatching{AppActionId.valueOf(it)}.getOrNull()}.ifEmpty{defaults}
 }
 private fun write(key:String,actions:List<AppActionId>){p.edit().putString(key,actions.joinToString(","){it.name}).apply()}
}

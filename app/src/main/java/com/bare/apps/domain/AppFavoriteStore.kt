package com.bare.apps.domain

import android.content.Context

class AppFavoriteStore(context:Context){
 private val prefs=context.getSharedPreferences("bare_apps_favorites",Context.MODE_PRIVATE)

 fun isFavorite(packageName:String)=prefs.getBoolean(packageName,false)

 fun setFavorite(packageName:String,favorite:Boolean){
  prefs.edit().putBoolean(packageName,favorite).apply()
 }

 fun toggle(packageName:String):Boolean{
  val next=!isFavorite(packageName)
  setFavorite(packageName,next)
  return next
 }
}
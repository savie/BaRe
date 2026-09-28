package com.bare.apps

data class AppItem(val packageName:String,val label:String,val versionName:String?,val versionCode:Long,val firstInstallTime:Long,val lastUpdateTime:Long,val systemApp:Boolean,val enabled:Boolean,val launchable:Boolean,val favorite:Boolean=false)
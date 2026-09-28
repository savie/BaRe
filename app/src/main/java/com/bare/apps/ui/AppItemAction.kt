package com.bare.apps.ui

import com.bare.apps.model.CanonicalApp

enum class AppActionId { LAUNCH, ENABLE_DISABLE, UNINSTALL, FORCE_STOP, PLAY_STORE, CLEAR_DATA, APP_INFO, SHARE_APK }

data class AppItemAction(val id:AppActionId,val title:String,val destructive:Boolean=false,val enabled:Boolean=true)

object AppItemActions{
 fun resolve(app:CanonicalApp,rootAvailable:Boolean):List<AppItemAction>{
  return listOf(
   AppItemAction(AppActionId.LAUNCH,"Launch",enabled=app.installed&&app.enabled&&app.launchable),
   AppItemAction(AppActionId.ENABLE_DISABLE,if(app.enabled)"Disable" else "Enable",enabled=rootAvailable&&app.installed),
   AppItemAction(AppActionId.UNINSTALL,"Uninstall",destructive=true,enabled=app.installed&&!app.bundled),
   AppItemAction(AppActionId.FORCE_STOP,"Force stop",destructive=true,enabled=rootAvailable&&app.installed&&app.enabled),
   AppItemAction(AppActionId.PLAY_STORE,"Play Store"),
   AppItemAction(AppActionId.CLEAR_DATA,"Clear data",destructive=true),
   AppItemAction(AppActionId.APP_INFO,"App info"),
   AppItemAction(AppActionId.SHARE_APK,"Share APK",enabled=app.installed)
  )
 }
}
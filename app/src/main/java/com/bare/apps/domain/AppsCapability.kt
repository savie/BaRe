package com.bare.apps.domain

import com.bare.intro.RootPermissionManager
import com.bare.apps.model.AppPart
import com.bare.apps.model.BackupRequirement

object AppsCapability {
 fun isPossible(part:AppPart):Boolean=when(part.requires){
  BackupRequirement.NONE->true
  BackupRequirement.ROOT->runCatching { ProcessBuilder("su","-c","id").start().waitFor()==0 }.getOrDefault(false)
  BackupRequirement.ROOT_OR_SHIZUKU->RootPermissionManager.isRootAvailable()||RootPermissionManager.shizukuAvailable()
 }
}
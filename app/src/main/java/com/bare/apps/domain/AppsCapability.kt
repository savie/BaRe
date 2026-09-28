package com.bare.apps.domain

import com.bare.root.RootPermissionManager
import com.bare.apps.model.AppPart
import com.bare.apps.model.BackupRequirement

object AppsCapability {
 fun isPossible(part:AppPart):Boolean=when(part.requires){
  BackupRequirement.NONE->true
  BackupRequirement.ROOT->RootPermissionManager.isRootAvailable()
  BackupRequirement.ROOT_OR_SHIZUKU->RootPermissionManager.isRootAvailable()||RootPermissionManager.isShizukuAvailable()
 }
}
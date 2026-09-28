package com.bare.apps.repository

import com.bare.apps.model.AppCloudBackup
import com.bare.apps.model.CloudMetadata
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Test

class CloudInventoryMapperTest{
 @Test
 fun groupsBackupsByPackageAndUsesLatestMetadata(){
  val older=AppCloudBackup(
   "old",
   CloudMetadata("com.example","Example",1,"1.0",1000,1000,apkLink="old.apk",apkSize=10)
  )
  val newer=AppCloudBackup(
   "new",
   CloudMetadata("com.example","Example",2,"2.0",2000,2000,apkLink="new.apk",apkSize=20)
  )

  val result=CloudInventoryMapper.map(listOf(older,newer))

  assertEquals(1,result.size)
  assertEquals("com.example",result.single().packageName)
  assertEquals(2,result.single().versionCode)
  assertEquals("2.0",result.single().versionName)
  assertEquals(true,result.single().cloudApp)
  assertFalse(result.single().installed)
  assertEquals(2,result.single().cloudBackups?.backups?.size)
 }
}
package com.bare.apps.repository

import android.content.Context
import com.bare.apps.model.CanonicalApp

class CloudAppRepository(private val context:Context):AppRepository{
 private val cache=RepositoryCache()
 override fun load(showSystemApps:Boolean):List<CanonicalApp>{
  // Cloud inventory is intentionally isolated from local PackageManager discovery.
  // It becomes populated when a Supabase-backed cloud manifest is available.
  cache.replace(emptyList());return emptyList()
 }
 override fun snapshot()=cache.values()
}
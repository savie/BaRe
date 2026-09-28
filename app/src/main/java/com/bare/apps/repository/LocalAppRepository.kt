package com.bare.apps.repository

import android.content.Context
import com.bare.apps.domain.AppDiscovery
import com.bare.apps.model.CanonicalApp

class LocalAppRepository(private val context:Context):AppRepository{
 private val cache=RepositoryCache()
 override fun load(showSystemApps:Boolean):List<CanonicalApp>{val items=AppDiscovery.installed(context,showSystemApps);cache.replace(items);return items}
 override fun snapshot()=cache.values()
}
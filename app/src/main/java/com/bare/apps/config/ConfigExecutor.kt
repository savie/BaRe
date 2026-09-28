package com.bare.apps.config
import android.content.Context
import com.bare.apps.domain.AppDiscovery
class ConfigExecutor(private val context:Context){fun resolve(config:Config)=AppDiscovery.installed(context,true).filter{it.packageName in config.packageNames}}
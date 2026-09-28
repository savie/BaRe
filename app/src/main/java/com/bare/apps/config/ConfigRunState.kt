package com.bare.apps.config
data class ConfigRunState(val configId:String,val selectedPackages:Set<String>,val running:Boolean=false,val error:String?=null)
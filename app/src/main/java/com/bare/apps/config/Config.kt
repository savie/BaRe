package com.bare.apps.config
data class Config(val id:String,val name:String,val packageNames:Set<String>=emptySet(),val parts:Set<String>=emptySet())
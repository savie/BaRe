package com.bare.apps.domain
object MetadataCompatibility{
 fun isSupported(requiredCodes:Set<Long>,currentCode:Long=580L)=requiredCodes.all{it<=currentCode}
 fun minimum(requiredCodes:Set<Long>)=requiredCodes.maxOrNull()?:0L
}